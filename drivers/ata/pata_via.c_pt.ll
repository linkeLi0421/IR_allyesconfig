; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_via.c_pt.bc'
source_filename = "../drivers/ata/pata_via.c"
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
%struct.via_isa_bridge = type { ptr, i16, i8, i8, i8, i8 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
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
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_via__325_702_via_pci_driver_init6 = internal global ptr @via_pci_driver_init, section ".initcall6.init", align 4
@via_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @via, ptr @via_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @via_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_via_pci_driver_exit = internal global ptr @via_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [25 x i8] c"pata_via.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [51 x i8] c"pata_via.description=low-level driver for VIA PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [35 x i8] c"pata_via.file=drivers/ata/pata_via\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [21 x i8] c"pata_via.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version330 = internal constant [23 x i8] c"pata_via.version=0.3.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_via\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.3.4\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@via = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 1045, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 1393, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 1409, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 5489, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 12644, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 21284, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 50185, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4358, i32 36865, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@via_init_one.via_mwdma_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @via_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_cable_detect, ptr @via_mode_filter, ptr @via_set_piomode, ptr @via_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_tf_load, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@via_init_one.via_mwdma_info_borked = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @via_port_ops_noirq, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_port_ops_noirq = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_data_xfer32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_port_ops }, [44 x i8] zeroinitializer }, align 32
@via_init_one.via_udma33_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @via_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_init_one.via_udma66_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @via_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_init_one.via_udma100_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @via_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_init_one.via_udma133_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @via_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@via_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@via_isa_bridges = internal constant { [29 x %struct.via_isa_bridge], [68 x i8] } { [29 x %struct.via_isa_bridge] [%struct.via_isa_bridge { ptr @.str.15, i16 -31735, i8 0, i8 47, i8 127, i8 -96 }, %struct.via_isa_bridge { ptr @.str.16, i16 -31917, i8 0, i8 47, i8 127, i8 -96 }, %struct.via_isa_bridge { ptr @.str.17, i16 13314, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.18, i16 13170, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.19, i16 12935, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.20, i16 -31964, i8 0, i8 47, i8 127, i8 -96 }, %struct.via_isa_bridge { ptr @.str.21, i16 12644, i8 0, i8 47, i8 127, i8 96 }, %struct.via_isa_bridge { ptr @.str.22, i16 1045, i8 0, i8 -1, i8 127, i8 96 }, %struct.via_isa_bridge { ptr @.str.23, i16 13111, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.24, i16 12839, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.25, i16 12663, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.26, i16 12615, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge { ptr @.str.27, i16 12553, i8 0, i8 47, i8 63, i8 0 }, %struct.via_isa_bridge { ptr @.str.28, i16 12404, i8 0, i8 47, i8 63, i8 0 }, %struct.via_isa_bridge { ptr @.str.29, i16 -32207, i8 0, i8 47, i8 63, i8 0 }, %struct.via_isa_bridge { ptr @.str.30, i16 1670, i8 64, i8 79, i8 63, i8 0 }, %struct.via_isa_bridge { ptr @.str.31, i16 1670, i8 16, i8 47, i8 31, i8 0 }, %struct.via_isa_bridge { ptr @.str.32, i16 1670, i8 0, i8 15, i8 7, i8 2 }, %struct.via_isa_bridge { ptr @.str.33, i16 1430, i8 16, i8 47, i8 31, i8 0 }, %struct.via_isa_bridge { ptr @.str.34, i16 1430, i8 0, i8 15, i8 7, i8 2 }, %struct.via_isa_bridge { ptr @.str.35, i16 1414, i8 71, i8 79, i8 7, i8 4 }, %struct.via_isa_bridge { ptr @.str.35, i16 1414, i8 64, i8 70, i8 7, i8 5 }, %struct.via_isa_bridge { ptr @.str.35, i16 1414, i8 48, i8 63, i8 7, i8 4 }, %struct.via_isa_bridge { ptr @.str.36, i16 1414, i8 32, i8 47, i8 7, i8 4 }, %struct.via_isa_bridge { ptr @.str.37, i16 1414, i8 0, i8 15, i8 0, i8 4 }, %struct.via_isa_bridge { ptr @.str.38, i16 1398, i8 0, i8 47, i8 0, i8 12 }, %struct.via_isa_bridge { ptr @.str.38, i16 1398, i8 0, i8 47, i8 0, i8 28 }, %struct.via_isa_bridge { ptr @.str.39, i16 -1, i8 0, i8 47, i8 127, i8 32 }, %struct.via_isa_bridge zeroinitializer], [68 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_via.c\00", [41 x i8] zeroinitializer }, align 32
@via_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TS64GSSD25-M\00", [19 x i8] zeroinitializer }, align 32
@via_mode_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014ata%u.%02u: disabling UDMA mode due to reported lockups with this device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"via_mode_filter\00", [16 x i8] zeroinitializer }, align 32
@via_mode_filter._entry_ptr = internal global ptr @via_mode_filter._entry, section ".printk_index", align 4
@via_mode_filter._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\014ata%u.%02u: controller locks up on ATAPI DMA, forcing PIO\0A\00", [35 x i8] zeroinitializer }, align 32
@via_mode_filter._entry_ptr.10 = internal global ptr @via_mode_filter._entry.8, section ".printk_index", align 4
@via_pre_reset.via_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 64, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 64, i32 1, i32 1, i32 1 }], [32 x i8] zeroinitializer }, align 32
@via_tf_load.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_wait_idle.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vx855\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vx800\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8261\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vt8237s\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8251\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cx700\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt6410\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt6415\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vt8237a\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8237\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8235\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vt8233a\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vt8233c\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8233\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8231\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c686b\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c686a\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vt82c686\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c596b\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c596a\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c586b\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vt82c586a\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vt82c586\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vt82c576\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vtxxxx\00", [25 x i8] zeroinitializer }, align 32
@via_config_fifo.fifo_setting = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00`\00 ", [28 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1045, i64 12644]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 7, i64 31, i64 63, i64 127]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 31, i64 63, i64 127]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 31, i64 63, i64 127]
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"via_pci_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 691, i32 26 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 708, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [4 x i8] c"via\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 678, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"via_mwdma_info\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 533, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"via_port_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 450, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"via_mwdma_info_borked\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 540, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"via_port_ops_noirq\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 461, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"via_udma33_info\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 547, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"via_udma66_info\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 555, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"via_udma100_info\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 563, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"via_udma133_info\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 571, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"via_init_one.__print_once\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"via_isa_bridges\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 95, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 641, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [8 x i8] c"via_sht\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 446, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 363, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 364, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 372, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"via_enable_bits\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 217, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 2045, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 96, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 97, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 98, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 99, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 100, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 101, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 102, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 103, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 104, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 105, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 106, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 107, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 108, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 109, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 110, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 111, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 112, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 113, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 114, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 115, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 116, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 119, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 120, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 121, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 123, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"fifo_setting\00", align 1
@___asan_gen_.198 = private constant [26 x i8] c"../drivers/ata/pata_via.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 484, i32 19 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_version330, ptr @__exitcall_via_pci_driver_exit, ptr @__initcall__kmod_pata_via__325_702_via_pci_driver_init6, ptr @__modver_attr, ptr @via_mode_filter._entry, ptr @via_mode_filter._entry.8, ptr @via_mode_filter._entry_ptr, ptr @via_mode_filter._entry_ptr.10, ptr @via_pci_driver_exit, ptr @via_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @via, ptr @via_init_one.via_mwdma_info, ptr @via_port_ops, ptr @via_init_one.via_mwdma_info_borked, ptr @via_port_ops_noirq, ptr @via_init_one.via_udma33_info, ptr @via_init_one.via_udma66_info, ptr @via_init_one.via_udma100_info, ptr @via_init_one.via_udma133_info, ptr @via_init_one.__print_once, ptr @via_isa_bridges, ptr @.str.3, ptr @via_sht, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @via_pre_reset.via_enable_bits, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @via_config_fifo.fifo_setting], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_mwdma_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_mwdma_info_borked to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_port_ops_noirq to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_udma33_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_udma66_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_udma100_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.via_udma133_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_isa_bridges to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_mode_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_mode_filter._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_pre_reset.via_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_config_fifo.fifo_setting to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @via_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @via_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @via_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @via_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #7
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %enable, align 1, !annotation !135
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %.b124 = load i1, ptr @via_init_one.__print_once, align 1
  br i1 %.b124, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @via_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup96_crit_edge

if.end.cleanup96_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end3:                                          ; preds = %if.end
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ata_dummy_port_info, ptr %arrayidx, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6
  %5 = phi i16 [ -31735, %if.end6 ], [ %22, %for.inc.for.body_crit_edge ]
  %id7130 = phi ptr [ getelementptr inbounds ([29 x %struct.via_isa_bridge], ptr @via_isa_bridges, i32 0, i32 0, i32 1), %if.end6 ], [ %id7, %for.inc.for.body_crit_edge ]
  %config.0128 = phi ptr [ @via_isa_bridges, %if.end6 ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %conv = zext i16 %5 to i32
  %flags9 = getelementptr inbounds %struct.via_isa_bridge, ptr %config.0128, i32 0, i32 5
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags9, align 1
  %8 = lshr i8 %7, 4
  %.lobit = and i8 %8, 1
  %9 = zext i8 %.lobit to i32
  %add = or i32 %9, 4358
  %call16 = tail call ptr @pci_get_device(i32 noundef %add, i32 noundef %conv, ptr noundef null) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.then18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %revision = getelementptr inbounds %struct.pci_dev, ptr %call16, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  tail call void @pci_dev_put(ptr noundef nonnull %call16) #7
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then18.if.end30_crit_edge [
    i32 1045, label %if.then18.land.lhs.true_crit_edge
    i32 12644, label %if.then18.land.lhs.true_crit_edge131
  ]

if.then18.land.lhs.true_crit_edge131:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then18.land.lhs.true_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then18.land.lhs.true_crit_edge, %if.then18.land.lhs.true_crit_edge131
  %15 = ptrtoint ptr %id7130 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id7130, align 4
  %conv25 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv25)
  %cmp27.not = icmp eq i32 %13, %conv25
  br i1 %cmp27.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.then18.if.end30_crit_edge
  %rev_min = getelementptr inbounds %struct.via_isa_bridge, ptr %config.0128, i32 0, i32 2
  %17 = ptrtoint ptr %rev_min to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rev_min, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %18)
  %cmp33.not = icmp ult i8 %11, %18
  br i1 %cmp33.not, label %if.end30.for.inc_crit_edge, label %land.lhs.true35

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true35:                                  ; preds = %if.end30
  %rev_max = getelementptr inbounds %struct.via_isa_bridge, ptr %config.0128, i32 0, i32 3
  %19 = ptrtoint ptr %rev_max to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rev_max, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %20)
  %cmp38.not = icmp ugt i8 %11, %20
  br i1 %cmp38.not, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true35.for.end_crit_edge

land.lhs.true35.for.end_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true35.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.via_isa_bridge, ptr %config.0128, i32 1
  %id7 = getelementptr %struct.via_isa_bridge, ptr %config.0128, i32 1, i32 1
  %21 = ptrtoint ptr %id7 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %id7, align 4
  %cmp.not = icmp eq i16 %22, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true35.for.end_crit_edge
  %config.0.lcssa = phi ptr [ %config.0128, %land.lhs.true35.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  %flags43 = getelementptr inbounds %struct.via_isa_bridge, ptr %config.0.lcssa, i32 0, i32 5
  %23 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags43, align 1
  %25 = and i8 %24, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool46.not = icmp eq i8 %25, 0
  br i1 %tobool46.not, label %if.then47, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then47:                                        ; preds = %for.end
  %call48 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 64, ptr noundef nonnull %enable) #7
  %26 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable, align 1
  %28 = and i8 %27, 3
  store i8 %28, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp53 = icmp eq i8 %28, 0
  br i1 %cmp53, label %if.then47.cleanup96_crit_edge, label %if.then47.if.end57_crit_edge

if.then47.if.end57_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then47.cleanup96_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end57:                                         ; preds = %if.then47.if.end57_crit_edge, %for.end.if.end57_crit_edge
  %udma_mask = getelementptr inbounds %struct.via_isa_bridge, ptr %config.0.lcssa, i32 0, i32 4
  %29 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %udma_mask, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %30, label %do.end [
    i8 0, label %sw.bb
    i8 7, label %sw.bb67
    i8 31, label %sw.bb69
    i8 63, label %sw.bb71
    i8 127, label %sw.bb73
  ]

sw.bb:                                            ; preds = %if.end57
  %32 = ptrtoint ptr %flags43 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags43, align 1
  %34 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool62.not = icmp eq i8 %34, 0
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @via_init_one.via_mwdma_info_borked, ptr %ppi, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @via_init_one.via_mwdma_info, ptr %ppi, align 8
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @via_init_one.via_udma33_info, ptr %ppi, align 8
  br label %sw.epilog

sw.bb69:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @via_init_one.via_udma66_info, ptr %ppi, align 8
  br label %sw.epilog

sw.bb71:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @via_init_one.via_udma100_info, ptr %ppi, align 8
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @via_init_one.via_udma133_info, ptr %ppi, align 8
  br label %sw.epilog

do.end:                                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 641, i32 noundef 9, ptr noundef null) #7
  br label %cleanup96

sw.epilog:                                        ; preds = %sw.bb73, %sw.bb71, %sw.bb69, %sw.bb67, %if.else, %if.then63
  call fastcc void @via_fixup(ptr noundef %pdev, ptr noundef %config.0.lcssa)
  %call95 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @via_sht, ptr noundef %config.0.lcssa, i32 noundef 0) #7
  br label %cleanup96

cleanup96:                                        ; preds = %sw.epilog, %do.end, %if.then47.cleanup96_crit_edge, %if.end.cleanup96_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %call95, %sw.epilog ], [ %call, %if.end.cleanup96_crit_edge ], [ -19, %if.then47.cleanup96_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_reinit_one(ptr noundef %pdev) #2 align 64 {
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
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  tail call fastcc void @via_fixup(ptr noundef %pdev, ptr noundef %3)
  tail call void @ata_host_resume(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_fixup(ptr noundef %pdev, ptr nocapture noundef readonly %config) unnamed_addr #2 align 64 {
entry:
  %enable.i = alloca i8, align 1
  %fifo.i = alloca i8, align 1
  %timing = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timing) #7
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %timing, align 4, !annotation !135
  %flags = getelementptr inbounds %struct.via_isa_bridge, ptr %config, i32 0, i32 5
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %flags, align 1
  %conv = zext i8 %2 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable.i) #7
  %3 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %enable.i, align 1, !annotation !135
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 64, ptr noundef nonnull %enable.i) #7
  %4 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable.i, align 1
  %6 = and i8 %5, 3
  store i8 %6, ptr %enable.i, align 1
  %and2.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %entry.via_config_fifo.exit_crit_edge, label %if.then.i

entry.via_config_fifo.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %via_config_fifo.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i) #7
  %7 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %fifo.i, align 1, !annotation !135
  %call3.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 67, ptr noundef nonnull %fifo.i) #7
  %and4.i = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %8 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fifo.i, align 1
  %..i = select i1 %tobool5.not.i, i8 -97, i8 127
  %10 = and i8 %9, %..i
  %11 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable.i, align 1
  %idxprom.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr [4 x i8], ptr @via_config_fifo.fifo_setting, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %or21.i = or i8 %14, %10
  store i8 %or21.i, ptr %fifo.i, align 1
  %call16.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 67, i8 noundef zeroext %or21.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i) #7
  br label %via_config_fifo.exit

via_config_fifo.exit:                             ; preds = %if.then.i, %entry.via_config_fifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable.i) #7
  %udma_mask = getelementptr inbounds %struct.via_isa_bridge, ptr %config, i32 0, i32 4
  %15 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %udma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %16)
  %cmp = icmp eq i8 %16, 31
  br i1 %cmp, label %if.then, label %via_config_fifo.exit.if.end_crit_edge

via_config_fifo.exit.if.end_crit_edge:            ; preds = %via_config_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %via_config_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %timing) #7
  %17 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timing, align 4
  %or = or i32 %18, 524296
  store i32 %or, ptr %timing, align 4
  %call3 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 80, i32 noundef %or) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %via_config_fifo.exit.if.end_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %21 = and i8 %20, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %timing) #7
  %22 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timing, align 4
  %and8 = and i32 %23, -524297
  store i32 %and8, ptr %timing, align 4
  %call9 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 80, i32 noundef %and8) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timing) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %ata66 = alloca i32, align 4
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
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ata66) #7
  %6 = ptrtoint ptr %ata66 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ata66, align 4, !annotation !135
  %subsystem_vendor.i = getelementptr i8, ptr %5, i32 -100
  %7 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5663, i16 %8)
  %cmp.i = icmp eq i16 %8, 5663
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %subsystem_device.i = getelementptr i8, ptr %5, i32 -98
  %9 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8242, i16 %10)
  %cmp3.i = icmp eq i16 %10, 8242
  br i1 %cmp3.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool2.not = icmp sgt i8 %12, -1
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %13 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %udma_mask = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %udma_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %16)
  %cmp7 = icmp ult i8 %16, 31
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.else

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %16)
  %cmp12 = icmp ult i8 %16, 63
  br i1 %cmp12, label %if.else.cleanup_crit_edge, label %if.end16

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %ata66) #7
  %17 = ptrtoint ptr %ata66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ata66, align 4
  %port_no18 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %19 = ptrtoint ptr %port_no18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no18, align 4
  %mul = shl i32 %20, 4
  %shr = lshr i32 269484032, %mul
  %and19 = and i32 %shr, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %spec.select = select i1 %tobool20.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ], [ 4, %if.else.cleanup_crit_edge ], [ 3, %land.lhs.true.i.cleanup_crit_edge ], [ %spec.select, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ata66) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_mode_filter(ptr noundef %dev, i32 noundef %mask) #2 align 64 {
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
  %host1 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host1, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #7
  %8 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %id = getelementptr inbounds %struct.via_isa_bridge, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1414, i16 %10)
  %cmp = icmp eq i16 %10, 1414
  br i1 %cmp, label %if.then, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then:                                          ; preds = %entry
  %11 = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %11, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #7
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %model_num, ptr noundef nonnull dereferenceable(13) @.str.5, i32 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp5 = icmp eq i32 %bcmp, 0
  br i1 %cmp5, label %do.end, label %if.then.if.end30_crit_edge

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devno, align 4
  %add = add i32 %21, %19
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %add) #11
  %and = and i32 %mask, -1044481
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then.if.end30_crit_edge, %entry.if.end30_crit_edge
  %mask.addr.0 = phi i32 [ %and, %do.end ], [ %mask, %if.then.if.end30_crit_edge ], [ %mask, %entry.if.end30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #7
  ret i32 %mask.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
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
  %flags = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = lshr i8 %5, 5
  %.lobit = and i8 %6, 1
  %7 = xor i8 %.lobit, 1
  %8 = zext i8 %7 to i32
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %9 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pio_mode, align 16
  %conv1 = zext i8 %10 to i32
  %udma_mask = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %udma_mask, align 4
  %conv2 = zext i8 %12 to i32
  tail call fastcc void @via_do_set_mode(ptr noundef %ap, ptr noundef %adev, i32 noundef %conv1, i32 noundef %8, i32 noundef %conv2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
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
  %flags = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 1
  %6 = lshr i8 %5, 5
  %.lobit = and i8 %6, 1
  %7 = xor i8 %.lobit, 1
  %8 = zext i8 %7 to i32
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %9 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma_mode, align 1
  %conv1 = zext i8 %10 to i32
  %udma_mask = getelementptr inbounds %struct.via_isa_bridge, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %udma_mask, align 4
  %conv2 = zext i8 %12 to i32
  tail call fastcc void @via_do_set_mode(ptr noundef %ap, ptr noundef %adev, i32 noundef %conv1, i32 noundef %8, i32 noundef %conv2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %flags = getelementptr inbounds %struct.via_isa_bridge, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 1
  %8 = and i8 %7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @via_pre_reset.via_enable_bits, i32 0, i32 %12
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.cleanup7_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.cleanup7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup7

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #7
  br label %cleanup7

cleanup7:                                         ; preds = %if.end5, %if.then.cleanup7_crit_edge
  %retval.1 = phi i32 [ %call6, %if.end5 ], [ -2, %if.then.cleanup7_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1, i32 noundef 3520) #7
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_tf_load(ptr noundef %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tf, align 4
  %and = and i32 %3, 2
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %4 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %6 = ptrtoint ptr %last_ctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %last_ctl, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  br i1 %cmp.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %5) #7, !srcloc !137
  %10 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctl, align 1
  %12 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %last_ctl, align 1
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  %max.addr.0.i.i = phi i32 [ 1000, %if.then ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #7
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %17(ptr noundef %ap) #7
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %18 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
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
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.if.end_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.if.end_crit_edge:        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_tf_load, %if.then7.i)) #7
          to label %if.end [label %if.then7.i], !srcloc !138

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %19 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.14, i32 noundef %20, i32 noundef %conv.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.if.end_crit_edge
  %21 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tf, align 4
  %and8 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.then12, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end.thread:                                    ; preds = %entry
  %23 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tf, align 4
  %and8134 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8134)
  %tobool.not135 = icmp eq i32 %and8134, 0
  br i1 %tobool.not135, label %if.end.thread.if.end16_crit_edge, label %if.end.thread.if.then9_crit_edge

if.end.thread.if.then9_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.end.thread.if.end16_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then9:                                         ; preds = %if.end.thread.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %device, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %device_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %26) #7, !srcloc !137
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %device, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %1, align 1
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 1
  %device_addr14 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %34 = ptrtoint ptr %device_addr14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_addr14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %33) #7, !srcloc !137
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then9, %if.end.thread.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end16.if.end71_crit_edge, label %land.lhs.true

if.end16.if.end71_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

land.lhs.true:                                    ; preds = %if.end16
  %36 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tf, align 4
  %and19 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.then65_crit_edge, label %if.then21

land.lhs.true.if.then65_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

if.then21:                                        ; preds = %land.lhs.true
  %ctl_addr22 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %38 = ptrtoint ptr %ctl_addr22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl_addr22, align 4
  %tobool23.not = icmp eq ptr %39, null
  br i1 %tobool23.not, label %land.rhs, label %if.then21.if.end55_crit_edge

if.then21.if.end55_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.rhs:                                         ; preds = %if.then21
  %.b112 = load i1, ptr @via_tf_load.__already_done, align 1
  br i1 %.b112, label %land.rhs.if.end55_crit_edge, label %if.then33, !prof !139

land.rhs.if.end55_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then33:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @via_tf_load.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 411, i32 noundef 9, ptr noundef null) #7
  br label %if.end55

if.end55:                                         ; preds = %if.then33, %land.rhs.if.end55_crit_edge, %if.then21.if.end55_crit_edge
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %40 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hob_feature, align 2
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %feature_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 %41) #7, !srcloc !137
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %44 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %hob_nsect, align 1
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %46 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nsect_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %45) #7, !srcloc !137
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %48 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hob_lbal, align 4
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %50 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lbal_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %49) #7, !srcloc !137
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %52 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hob_lbam, align 1
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %54 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lbam_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %53) #7, !srcloc !137
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %56 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %hob_lbah, align 2
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %58 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lbah_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #7, !srcloc !137
  br label %if.then65

if.then65:                                        ; preds = %if.end55, %land.lhs.true.if.then65_crit_edge
  %feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %60 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %feature, align 1
  %feature_addr66 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %62 = ptrtoint ptr %feature_addr66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %feature_addr66, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %61) #7, !srcloc !137
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %64 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %nsect, align 4
  %nsect_addr67 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %66 = ptrtoint ptr %nsect_addr67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nsect_addr67, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %65) #7, !srcloc !137
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %68 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lbal, align 1
  %lbal_addr68 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %70 = ptrtoint ptr %lbal_addr68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lbal_addr68, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %71, i8 %69) #7, !srcloc !137
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %72 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %lbam, align 2
  %lbam_addr69 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %74 = ptrtoint ptr %lbam_addr69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lbam_addr69, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %75, i8 %73) #7, !srcloc !137
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %76 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %lbah, align 1
  %lbah_addr70 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %78 = ptrtoint ptr %lbah_addr70 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lbah_addr70, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %79, i8 %77) #7, !srcloc !137
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end16.if.end71_crit_edge
  %ops.i.i114 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i124

do.body.i.i124:                                   ; preds = %do.body.i.i124.do.body.i.i124_crit_edge, %if.end71
  %max.addr.0.i.i115 = phi i32 [ 1000, %if.end71 ], [ %dec.i.i118, %do.body.i.i124.do.body.i.i124_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #7
  %81 = ptrtoint ptr %ops.i.i114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i114, align 4
  %sff_check_status.i.i116 = getelementptr inbounds %struct.ata_port_operations, ptr %82, i32 0, i32 39
  %83 = ptrtoint ptr %sff_check_status.i.i116 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sff_check_status.i.i116, align 4
  %call.i.i117 = tail call zeroext i8 %84(ptr noundef %ap) #7
  %dec.i.i118 = add nsw i32 %max.addr.0.i.i115, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i117)
  %cmp.not.i.i119 = icmp eq i8 %call.i.i117, -1
  %85 = and i8 %call.i.i117, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i120 = icmp eq i8 %85, 0
  %or.cond.i.i121 = or i1 %cmp.not.i.i119, %tobool.not.i.i120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i118)
  %cmp3.not.i.i122 = icmp eq i32 %dec.i.i118, 0
  %or.cond1.i.i123 = select i1 %or.cond.i.i121, i1 true, i1 %cmp3.not.i.i122
  br i1 %or.cond1.i.i123, label %ata_sff_busy_wait.exit.i129, label %do.body.i.i124.do.body.i.i124_crit_edge

do.body.i.i124.do.body.i.i124_crit_edge:          ; preds = %do.body.i.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i124

ata_sff_busy_wait.exit.i129:                      ; preds = %do.body.i.i124
  %conv.i125 = zext i8 %call.i.i117 to i32
  %and.i126 = and i32 %conv.i125, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool.not.i127 = icmp eq i32 %and.i126, 0
  %or.cond.i128 = select i1 %cmp.not.i.i119, i1 true, i1 %tobool.not.i127
  br i1 %or.cond.i128, label %ata_sff_busy_wait.exit.i129.ata_wait_idle.exit133_crit_edge, label %do.body.i130

ata_sff_busy_wait.exit.i129.ata_wait_idle.exit133_crit_edge: ; preds = %ata_sff_busy_wait.exit.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_wait_idle.exit133

do.body.i130:                                     ; preds = %ata_sff_busy_wait.exit.i129
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@via_tf_load, %if.then7.i132)) #7
          to label %ata_wait_idle.exit133 [label %if.then7.i132], !srcloc !138

if.then7.i132:                                    ; preds = %do.body.i130
  call void @__sanitizer_cov_trace_pc() #9
  %print_id.i131 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %86 = ptrtoint ptr %print_id.i131 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %print_id.i131, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.14, i32 noundef %87, i32 noundef %conv.i125) #7
  br label %ata_wait_idle.exit133

ata_wait_idle.exit133:                            ; preds = %if.then7.i132, %do.body.i130, %ata_sff_busy_wait.exit.i129.ata_wait_idle.exit133_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_do_set_mode(ptr nocapture noundef readonly %ap, ptr noundef %adev, i32 noundef %mode, i32 noundef %set_ast, i32 noundef %udma_type) unnamed_addr #2 align 64 {
entry:
  %t = alloca %struct.ata_timing, align 2
  %p = alloca %struct.ata_timing, align 2
  %setup = alloca i8, align 1
  %udma_etc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #7
  %4 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 2
  %6 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 3
  %7 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %8 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %9 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 9
  %10 = call ptr @memset(ptr %t, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #7
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %11 = call ptr @memset(ptr %p, i32 255, i32 20)
  %12 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no, align 4
  %mul.neg = mul i32 %13, -2
  %sub = add i32 %mul.neg, 3
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %14 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %devno, align 4
  %sub1 = sub i32 %sub, %15
  %16 = zext i32 %udma_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %udma_type, label %entry.sw.epilog_crit_edge [
    i32 31, label %sw.bb
    i32 63, label %sw.bb3
    i32 127, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %UT.0 = phi i32 [ 30000, %entry.sw.epilog_crit_edge ], [ 7500, %sw.bb5 ], [ 10000, %sw.bb3 ], [ 15000, %sw.bb ]
  %conv = trunc i32 %mode to i16
  %call7 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %t, i32 noundef 30000, i32 noundef %UT.0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog.if.end13_crit_edge, label %if.then

sw.epilog.if.end13_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %sw.epilog
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %17 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pio_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %if.then.if.end13_crit_edge, label %if.then9

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %conv11 = zext i8 %18 to i16
  %call12 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv11, ptr noundef nonnull %p, i32 noundef 30000, i32 noundef %UT.0) #7
  call void @ata_timing_merge(ptr noundef nonnull %p, ptr noundef nonnull %t, ptr noundef nonnull %t, i32 noundef 14) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then.if.end13_crit_edge, %sw.epilog.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_ast)
  %tobool14.not = icmp eq i32 %set_ast, 0
  br i1 %tobool14.not, label %if.end13.if.end44_crit_edge, label %if.then15

if.end13.if.end44_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %setup) #7
  %19 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %setup, align 1, !annotation !135
  %mul16 = shl i32 %sub1, 1
  %call17 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 76, ptr noundef nonnull %setup) #7
  %shl = shl i32 3, %mul16
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %setup, align 1
  %22 = trunc i32 %shl to i8
  %23 = xor i8 %22, -1
  %conv19 = and i8 %21, %23
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %4, align 2
  %26 = call i16 @llvm.umax.i16(i16 %25, i16 1)
  %27 = call i16 @llvm.umin.i16(i16 %26, i16 4)
  %narrow = add nuw nsw i16 %27, 255
  %sub39 = zext i16 %narrow to i32
  %shl40 = shl i32 %sub39, %mul16
  %28 = trunc i32 %shl40 to i8
  %conv42 = or i8 %conv19, %28
  %29 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42, ptr %setup, align 1
  %call43 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 76, i8 noundef zeroext %conv42) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %setup) #7
  br label %if.end44

if.end44:                                         ; preds = %if.then15, %if.end13.if.end44_crit_edge
  %30 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %port_no, align 4
  %sub46 = sub i32 79, %31
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %5, align 2
  %34 = call i16 @llvm.umax.i16(i16 %33, i16 1)
  %35 = call i16 @llvm.umin.i16(i16 %34, i16 16)
  %36 = trunc i16 %35 to i8
  %sub70 = shl i8 %36, 4
  %shl71 = add i8 %sub70, -16
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %6, align 2
  %39 = call i16 @llvm.umax.i16(i16 %38, i16 1)
  %40 = call i16 @llvm.umin.i16(i16 %39, i16 16)
  %41 = trunc i16 %40 to i8
  %sub95 = add nsw i8 %41, -1
  %or96 = or i8 %shl71, %sub95
  %call98 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %sub46, i8 noundef zeroext %or96) #7
  %add = add i32 %sub1, 72
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %7, align 2
  %44 = call i16 @llvm.umax.i16(i16 %43, i16 1)
  %45 = call i16 @llvm.umin.i16(i16 %44, i16 16)
  %46 = trunc i16 %45 to i8
  %sub122 = shl i8 %46, 4
  %shl123 = add i8 %sub122, -16
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %8, align 2
  %49 = call i16 @llvm.umax.i16(i16 %48, i16 1)
  %50 = call i16 @llvm.umin.i16(i16 %49, i16 16)
  %51 = trunc i16 %50 to i8
  %sub147 = add nsw i8 %51, -1
  %or148 = or i8 %shl123, %sub147
  %call150 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %or148) #7
  %52 = zext i32 %udma_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %udma_type, label %sw.default [
    i32 127, label %sw.bb252
    i32 31, label %sw.bb184
    i32 63, label %sw.bb218
  ]

sw.default:                                       ; preds = %if.end44
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool153.not = icmp eq i16 %54, 0
  br i1 %tobool153.not, label %sw.default.sw.epilog286_crit_edge, label %cond.true154

sw.default.sw.epilog286_crit_edge:                ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog286

cond.true154:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %55 = call i16 @llvm.umax.i16(i16 %54, i16 2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %55)
  %cmp171 = icmp ult i16 %55, 5
  %56 = trunc i16 %55 to i8
  %57 = add i8 %56, 30
  %phi.cast = or i8 %57, -32
  %cond178 = select i1 %cmp171, i8 %phi.cast, i8 -29
  br label %sw.epilog286

sw.bb184:                                         ; preds = %if.end44
  %58 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool187.not = icmp eq i16 %59, 0
  br i1 %tobool187.not, label %sw.bb184.if.then288_crit_edge, label %cond.true188

sw.bb184.if.then288_crit_edge:                    ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

cond.true188:                                     ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #9
  %60 = call i16 @llvm.umax.i16(i16 %59, i16 2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %60)
  %cmp205 = icmp ult i16 %60, 9
  %61 = trunc i16 %60 to i8
  %62 = add i8 %61, 30
  %phi.cast379 = or i8 %62, -24
  %cond212 = select i1 %cmp205, i8 %phi.cast379, i8 -17
  br label %if.then288

sw.bb218:                                         ; preds = %if.end44
  %63 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool221.not = icmp eq i16 %64, 0
  br i1 %tobool221.not, label %sw.bb218.if.then288_crit_edge, label %cond.true222

sw.bb218.if.then288_crit_edge:                    ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

cond.true222:                                     ; preds = %sw.bb218
  call void @__sanitizer_cov_trace_pc() #9
  %65 = call i16 @llvm.umax.i16(i16 %64, i16 2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %65)
  %cmp239 = icmp ult i16 %65, 9
  %66 = trunc i16 %65 to i8
  %67 = add i8 %66, 30
  %phi.cast378 = or i8 %67, -32
  %cond246 = select i1 %cmp239, i8 %phi.cast378, i8 -25
  br label %if.then288

sw.bb252:                                         ; preds = %if.end44
  %68 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool255.not = icmp eq i16 %69, 0
  br i1 %tobool255.not, label %sw.bb252.if.then288_crit_edge, label %cond.true256

sw.bb252.if.then288_crit_edge:                    ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

cond.true256:                                     ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #9
  %70 = call i16 @llvm.umax.i16(i16 %69, i16 2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %70)
  %cmp273 = icmp ult i16 %70, 9
  %71 = trunc i16 %70 to i8
  %72 = add i8 %71, 30
  %phi.cast380 = or i8 %72, -32
  %cond280 = select i1 %cmp273, i8 %phi.cast380, i8 -25
  br label %if.then288

sw.epilog286:                                     ; preds = %cond.true154, %sw.default.sw.epilog286_crit_edge
  %ut.0.off0 = phi i8 [ %cond178, %cond.true154 ], [ 3, %sw.default.sw.epilog286_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %udma_type)
  %tobool287.not = icmp eq i32 %udma_type, 0
  br i1 %tobool287.not, label %sw.epilog286.if.end306_crit_edge, label %sw.epilog286.if.then288_crit_edge

sw.epilog286.if.then288_crit_edge:                ; preds = %sw.epilog286
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then288

sw.epilog286.if.end306_crit_edge:                 ; preds = %sw.epilog286
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end306

if.then288:                                       ; preds = %sw.epilog286.if.then288_crit_edge, %cond.true256, %sw.bb252.if.then288_crit_edge, %cond.true222, %sw.bb218.if.then288_crit_edge, %cond.true188, %sw.bb184.if.then288_crit_edge
  %ut.0.off0384 = phi i8 [ %ut.0.off0, %sw.epilog286.if.then288_crit_edge ], [ 7, %sw.bb252.if.then288_crit_edge ], [ %cond280, %cond.true256 ], [ 7, %sw.bb218.if.then288_crit_edge ], [ %cond246, %cond.true222 ], [ 15, %sw.bb184.if.then288_crit_edge ], [ %cond212, %cond.true188 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_etc) #7
  %73 = ptrtoint ptr %udma_etc to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %udma_etc, align 1, !annotation !135
  %add289 = add i32 %sub1, 80
  %call290 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add289, ptr noundef nonnull %udma_etc) #7
  %74 = ptrtoint ptr %udma_etc to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %udma_etc, align 1
  %76 = and i8 %75, -33
  store i8 %76, ptr %udma_etc, align 1
  %77 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool295.not = icmp eq i16 %78, 0
  br i1 %tobool295.not, label %if.then288.if.end303_crit_edge, label %if.then296

if.then288.if.end303_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end303

if.then296:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #9
  %79 = and i8 %75, 16
  %conv302 = or i8 %79, %ut.0.off0384
  %80 = ptrtoint ptr %udma_etc to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv302, ptr %udma_etc, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.then296, %if.then288.if.end303_crit_edge
  %81 = ptrtoint ptr %udma_etc to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %udma_etc, align 1
  %call305 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add289, i8 noundef zeroext %82) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_etc) #7
  br label %if.end306

if.end306:                                        ; preds = %if.end303, %sw.epilog286.if.end306_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_data_xfer32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_pata_via__325_702_via_pci_driver_init6, !1, !"__initcall__kmod_pata_via__325_702_via_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_via.c", i32 702, i32 1}
!2 = !{ptr @__exitcall_via_pci_driver_exit, !1, !"__exitcall_via_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author326, !4, !"__UNIQUE_ID_author326", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_via.c", i32 704, i32 1}
!5 = !{ptr @__UNIQUE_ID_description327, !6, !"__UNIQUE_ID_description327", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_via.c", i32 705, i32 1}
!7 = !{ptr @__UNIQUE_ID_file328, !8, !"__UNIQUE_ID_file328", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_via.c", i32 706, i32 1}
!9 = !{ptr @__UNIQUE_ID_license329, !8, !"__UNIQUE_ID_license329", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version330, !11, !"__UNIQUE_ID_version330", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_via.c", i32 708, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @via_pci_driver, !17, !"via_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_via.c", i32 691, i32 26}
!18 = !{ptr @via, !19, !"via", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_via.c", i32 678, i32 35}
!20 = !{ptr @via_init_one.via_mwdma_info, !21, !"via_mwdma_info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_via.c", i32 533, i32 36}
!22 = !{ptr @via_init_one.via_mwdma_info_borked, !23, !"via_mwdma_info_borked", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_via.c", i32 540, i32 36}
!24 = !{ptr @via_init_one.via_udma33_info, !25, !"via_udma33_info", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_via.c", i32 547, i32 36}
!26 = !{ptr @via_init_one.via_udma66_info, !27, !"via_udma66_info", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_via.c", i32 555, i32 36}
!28 = !{ptr @via_init_one.via_udma100_info, !29, !"via_udma100_info", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_via.c", i32 563, i32 36}
!30 = !{ptr @via_init_one.via_udma133_info, !31, !"via_udma133_info", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_via.c", i32 571, i32 36}
!32 = distinct !{null, !33, !"__print_once", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_via.c", i32 585, i32 2}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_via.c", i32 641, i32 3}
!36 = !{ptr @via_port_ops, !37, !"via_port_ops", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_via.c", i32 450, i32 35}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_via.c", i32 148, i32 12}
!40 = distinct !{null, !41, !"cable_dmi_table", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_via.c", i32 146, i32 35}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_via.c", i32 363, i32 25}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_via.c", i32 364, i32 4}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @via_mode_filter._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @via_mode_filter._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/pata_via.c", i32 372, i32 3}
!51 = !{ptr @via_mode_filter._entry.8, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @via_mode_filter._entry_ptr.10, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/pata_via.c", i32 129, i32 12}
!55 = distinct !{null, !56, !"no_atapi_dma_dmi_table", i1 false, i1 false}
!56 = !{!"../drivers/ata/pata_via.c", i32 127, i32 35}
!57 = distinct !{null, !58, !"via_clock", i1 false, i1 false}
!58 = !{!"../drivers/ata/pata_via.c", i32 251, i32 13}
!59 = !{ptr @via_pre_reset.via_enable_bits, !60, !"via_enable_bits", i1 false, i1 false}
!60 = !{!"../drivers/ata/pata_via.c", i32 217, i32 32}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../drivers/ata/pata_via.c", i32 411, i32 3}
!63 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!65 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, !64, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!68 = !{ptr @via_port_ops_noirq, !69, !"via_port_ops_noirq", i1 false, i1 false}
!69 = !{!"../drivers/ata/pata_via.c", i32 461, i32 35}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/ata/pata_via.c", i32 96, i32 4}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/pata_via.c", i32 97, i32 4}
!74 = !{ptr @.str.17, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/pata_via.c", i32 98, i32 4}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/pata_via.c", i32 99, i32 4}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/pata_via.c", i32 100, i32 4}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/pata_via.c", i32 101, i32 4}
!82 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ata/pata_via.c", i32 102, i32 4}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/pata_via.c", i32 103, i32 4}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/ata/pata_via.c", i32 104, i32 4}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/ata/pata_via.c", i32 105, i32 4}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/ata/pata_via.c", i32 106, i32 4}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/ata/pata_via.c", i32 107, i32 4}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/ata/pata_via.c", i32 108, i32 4}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/ata/pata_via.c", i32 109, i32 4}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ata/pata_via.c", i32 110, i32 4}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/ata/pata_via.c", i32 111, i32 4}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/ata/pata_via.c", i32 112, i32 4}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/ata/pata_via.c", i32 113, i32 4}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/ata/pata_via.c", i32 114, i32 4}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/pata_via.c", i32 115, i32 4}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/pata_via.c", i32 116, i32 4}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/pata_via.c", i32 119, i32 4}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/pata_via.c", i32 120, i32 4}
!116 = !{ptr @.str.38, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/pata_via.c", i32 121, i32 4}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/pata_via.c", i32 123, i32 4}
!120 = !{ptr @via_isa_bridges, !121, !"via_isa_bridges", i1 false, i1 false}
!121 = !{!"../drivers/ata/pata_via.c", i32 95, i32 3}
!122 = !{ptr @via_config_fifo.fifo_setting, !123, !"fifo_setting", i1 false, i1 false}
!123 = !{!"../drivers/ata/pata_via.c", i32 484, i32 19}
!124 = !{ptr @via_sht, !125, !"via_sht", i1 false, i1 false}
!125 = !{!"../drivers/ata/pata_via.c", i32 446, i32 34}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2152539145}
!137 = !{i64 4997800}
!138 = !{i64 2148709695, i64 2148709700, i64 2148709713, i64 2148709757, i64 2148709791, i64 2148709812}
!139 = !{!"branch_weights", i32 2000, i32 1}
