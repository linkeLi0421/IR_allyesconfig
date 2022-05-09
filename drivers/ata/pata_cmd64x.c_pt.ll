; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_cmd64x.c_pt.bc'
source_filename = "../drivers/ata/pata_cmd64x.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_cmd64x__290_528_cmd64x_pci_driver_init6 = internal global ptr @cmd64x_pci_driver_init, section ".initcall6.init", align 4
@cmd64x_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cmd64x, ptr @cmd64x_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @cmd64x_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cmd64x_pci_driver_exit = internal global ptr @cmd64x_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"pata_cmd64x.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [76 x i8] c"pata_cmd64x.description=low-level driver for CMD64x series PATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [41 x i8] c"pata_cmd64x.file=drivers/ata/pata_cmd64x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [24 x i8] c"pata_cmd64x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [27 x i8] c"pata_cmd64x.version=0.2.18\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_cmd64x\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.2.18\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cmd64x = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4245, i32 1603, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4245, i32 1606, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4245, i32 1608, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4245, i32 1609, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cmd64x_init_one.cmd_info = internal constant { [7 x %struct.ata_port_info], [60 x i8] } { [7 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @cmd64x_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @cmd64x_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @cmd646r3_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @cmd646r3_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @cmd646r1_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @cmd648_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @cmd648_port_ops, ptr null }], [60 x i8] zeroinitializer }, align 32
@cmd64x_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_sff_irq_check, ptr @cmd64x_sff_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_base_ops }, [44 x i8] zeroinitializer }, align 32
@cmd646r3_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd648_sff_irq_check, ptr @cmd648_sff_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_base_ops }, [44 x i8] zeroinitializer }, align 32
@cmd646r1_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_sff_irq_check, ptr @cmd64x_sff_irq_clear, ptr null, ptr null, ptr null, ptr @cmd646r1_bmdma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_base_ops }, [44 x i8] zeroinitializer }, align 32
@cmd648_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd648_cable_detect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd648_sff_irq_check, ptr @cmd648_sff_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_base_ops }, [44 x i8] zeroinitializer }, align 32
@cmd64x_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Mobility Bridge detected, ignoring CNTRL port enable/disable\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmd64x_init_one\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/pata_cmd64x.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cmd64x_init_one._entry_ptr = internal global ptr @cmd64x_init_one._entry, section ".printk_index", align 4
@cmd64x_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 479, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Primary port is disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@cmd64x_init_one._entry_ptr.10 = internal global ptr @cmd64x_init_one._entry.8, section ".printk_index", align 4
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@cmd64x_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Secondary port is disabled\0A\00", [36 x i8] zeroinitializer }, align 32
@cmd64x_init_one._entry_ptr.13 = internal global ptr @cmd64x_init_one._entry.11, section ".printk_index", align 4
@cmd64x_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cmd64x_base_ops = internal constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cmd64x_set_piomode, ptr @cmd64x_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@__const.cmd64x_set_timing.setup_data = private unnamed_addr constant [5 x i8] c"@@@\80\00", align 1
@__const.cmd64x_set_timing.arttim_port = private unnamed_addr constant [2 x [2 x i8]] [[2 x i8] c"SU", [2 x i8] c"WW"], align 1
@__const.cmd64x_set_timing.drwtim_port = private unnamed_addr constant [2 x [2 x i8]] [[2 x i8] c"TV", [2 x i8] c"X["], align 1
@cmd64x_set_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ata%u.%02u: pata_cmd64x: mode computation failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmd64x_set_timing\00", [46 x i8] zeroinitializer }, align 32
@cmd64x_set_timing._entry_ptr = internal global ptr @cmd64x_set_timing._entry, section ".printk_index", align 4
@cmd64x_set_timing.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ata%u.%02u: pata_cmd64x: active %d recovery %d setup %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cmd64x_set_dmamode.udma_data = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0 \10 \10\00", [26 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"cmd64x_pci_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 517, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 534, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"cmd64x\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 508, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"cmd_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 379, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"cmd64x_port_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 332, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"cmd646r3_port_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 347, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"cmd646r1_port_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 339, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"cmd648_port_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 354, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 477, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 479, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 484, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [11 x i8] c"cmd64x_sht\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 322, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"cmd64x_base_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 326, i32 41 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 119, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 133, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"udma_data\00", align 1
@___asan_gen_.96 = private constant [29 x i8] c"../drivers/ata/pata_cmd64x.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 193, i32 18 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_version295, ptr @__exitcall_cmd64x_pci_driver_exit, ptr @__initcall__kmod_pata_cmd64x__290_528_cmd64x_pci_driver_init6, ptr @__modver_attr, ptr @cmd64x_init_one._entry, ptr @cmd64x_init_one._entry.11, ptr @cmd64x_init_one._entry.8, ptr @cmd64x_init_one._entry_ptr, ptr @cmd64x_init_one._entry_ptr.10, ptr @cmd64x_init_one._entry_ptr.13, ptr @cmd64x_pci_driver_exit, ptr @cmd64x_set_timing._entry, ptr @cmd64x_set_timing._entry_ptr, ptr @cmd64x_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cmd64x, ptr @cmd64x_init_one.cmd_info, ptr @cmd64x_port_ops, ptr @cmd646r3_port_ops, ptr @cmd646r1_port_ops, ptr @cmd648_port_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @cmd64x_sht, ptr @cmd64x_base_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cmd64x_set_dmamode.udma_data], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_init_one.cmd_info to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd646r3_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd646r1_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd648_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_base_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_set_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd64x_set_dmamode.udma_data to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd64x_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cmd64x_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cmd64x_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @cmd64x_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd64x_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %mrdmode.i = alloca i8, align 1
  %ppi = alloca [3 x ptr], align 4
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ppi) #5
  %0 = getelementptr inbounds [3 x ptr], ptr %ppi, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %ppi, i32 0, i32 2
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 %3
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %ppi, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %reg, align 1, !annotation !69
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5362, i16 %13)
  %cmp = icmp ne i16 %13, 5362
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %14 = phi i1 [ true, %entry.land.end_crit_edge ], [ %cmp, %land.rhs ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp ne i32 %3, 0
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %land.end.cleanup_crit_edge

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.end
  %15 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10 = icmp eq i32 %16, 0
  br i1 %cmp10, label %if.then12, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %pdev) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end.if.end14_crit_edge
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1606, i16 %18)
  %cmp16 = icmp eq i16 %18, 1606
  br i1 %cmp16, label %if.then18, label %if.end14.if.end28_crit_edge

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then18:                                        ; preds = %if.end14
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %19 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %revision, align 4
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %sw.default [
    i8 3, label %if.then18.sw.bb_crit_edge
    i8 4, label %if.then18.sw.bb_crit_edge82
    i8 1, label %sw.bb24
    i8 2, label %if.then18.if.end28_crit_edge
    i8 0, label %if.then18.if.end28_crit_edge83
  ]

if.then18.if.end28_crit_edge83:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then18.sw.bb_crit_edge82:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.then18.sw.bb_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.default:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 3), ptr %ppi, align 4
  br label %if.end28.sink.split

sw.bb:                                            ; preds = %if.then18.sw.bb_crit_edge, %if.then18.sw.bb_crit_edge82
  %23 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 2), ptr %ppi, align 4
  br label %if.end28.sink.split

sw.bb24:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 4), ptr %ppi, align 4
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %sw.bb24, %sw.bb, %sw.default
  %.sink = phi ptr [ getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 4), %sw.bb24 ], [ getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 3), %sw.default ], [ getelementptr inbounds ([7 x %struct.ata_port_info], ptr @cmd64x_init_one.cmd_info, i32 0, i32 2), %sw.bb ]
  %cntrl_ch0_ok.0.shrunk.ph = phi i1 [ false, %sw.bb24 ], [ %cmp6, %sw.default ], [ %cmp6, %sw.bb ]
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.sink, ptr %0, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.then18.if.end28_crit_edge, %if.then18.if.end28_crit_edge83, %if.end14.if.end28_crit_edge
  %cntrl_ch0_ok.0.shrunk = phi i1 [ %cmp6, %if.end14.if.end28_crit_edge ], [ false, %if.then18.if.end28_crit_edge ], [ false, %if.then18.if.end28_crit_edge83 ], [ %cntrl_ch0_ok.0.shrunk.ph, %if.end28.sink.split ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mrdmode.i) #5
  %26 = ptrtoint ptr %mrdmode.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %mrdmode.i, align 1, !annotation !69
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 64) #5
  %call1.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 113, ptr noundef nonnull %mrdmode.i) #5
  %27 = ptrtoint ptr %mrdmode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %mrdmode.i, align 1
  %29 = and i8 %28, -51
  %30 = or i8 %29, 2
  store i8 %30, ptr %mrdmode.i, align 1
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 113, i8 noundef zeroext %30) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mrdmode.i) #5
  %call29 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 81, ptr noundef nonnull %reg) #5
  br i1 %14, label %land.lhs.true.critedge, label %do.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %if.end56

land.lhs.true.critedge:                           ; preds = %if.end28
  br i1 %cntrl_ch0_ok.0.shrunk, label %land.lhs.true35, label %land.lhs.true.critedge.land.lhs.true46_crit_edge

land.lhs.true.critedge.land.lhs.true46_crit_edge: ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

land.lhs.true35:                                  ; preds = %land.lhs.true.critedge
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg, align 1
  %33 = and i8 %32, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool37.not = icmp eq i8 %33, 0
  br i1 %tobool37.not, label %do.end41, label %land.lhs.true35.land.lhs.true46_crit_edge

land.lhs.true35.land.lhs.true46_crit_edge:        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true46

do.end41:                                         ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev42, ptr noundef nonnull @.str.9) #8
  %34 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ata_dummy_port_info, ptr %ppi, align 4
  br label %land.lhs.true46

land.lhs.true46:                                  ; preds = %do.end41, %land.lhs.true35.land.lhs.true46_crit_edge, %land.lhs.true.critedge.land.lhs.true46_crit_edge
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %reg, align 1
  %37 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool49.not = icmp eq i8 %37, 0
  br i1 %tobool49.not, label %do.end53, label %land.lhs.true46.if.end56_crit_edge

land.lhs.true46.if.end56_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

do.end53:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev54, ptr noundef nonnull @.str.12) #8
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @ata_dummy_port_info, ptr %0, align 4
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %land.lhs.true46.if.end56_crit_edge, %do.end
  %call57 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @cmd64x_sht, ptr noundef null, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end56 ], [ %call, %land.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ppi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd64x_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  %mrdmode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mrdmode.i) #5
  %2 = ptrtoint ptr %mrdmode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %mrdmode.i, align 1, !annotation !69
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 64) #5
  %call1.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 113, ptr noundef nonnull %mrdmode.i) #5
  %3 = ptrtoint ptr %mrdmode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mrdmode.i, align 1
  %5 = and i8 %4, -51
  %6 = or i8 %5, 2
  store i8 %6, ptr %mrdmode.i, align 1
  %call5.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 113, i8 noundef zeroext %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mrdmode.i) #5
  call void @ata_host_resume(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_clear_simplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cmd64x_sff_irq_check(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %irq_stat = alloca i8, align 1
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 4, i32 16
  %cond3 = select i1 %tobool.not, i32 80, i32 87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_stat) #5
  %6 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %irq_stat, align 1, !annotation !69
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %cond3, ptr noundef nonnull %irq_stat) #5
  %7 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %irq_stat, align 1
  %conv = zext i8 %8 to i32
  %and = and i32 %cond, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4 = icmp ne i32 %and, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_stat) #5
  ret i1 %tobool4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd64x_sff_irq_clear(ptr noundef %ap) #2 align 64 {
entry:
  %irq_stat = alloca i8, align 1
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 80, i32 87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_stat) #5
  %6 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %irq_stat, align 1, !annotation !69
  tail call void @ata_bmdma_irq_clear(ptr noundef %ap) #5
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %irq_stat) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_stat) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_irq_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd64x_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @cmd64x_set_timing(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd64x_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %regU = alloca i8, align 1
  %regD = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regU) #5
  %4 = ptrtoint ptr %regU to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %regU, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regD) #5
  %5 = ptrtoint ptr %regD to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %regD, align 1, !annotation !69
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 3
  %add = add i32 %mul, 115
  %add3 = add i32 %mul, 114
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devno, align 4
  %mul4 = shl i32 %9, 1
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add3, ptr noundef nonnull %regD) #5
  %call5 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %regU) #5
  %10 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %devno, align 4
  %shl = shl i32 32, %11
  %12 = ptrtoint ptr %regD to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %regD, align 1
  %14 = trunc i32 %shl to i8
  %15 = xor i8 %14, -1
  %conv7 = and i8 %13, %15
  store i8 %conv7, ptr %regD, align 1
  %shl8 = shl i32 48, %mul4
  %16 = ptrtoint ptr %regU to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regU, align 1
  %shl14 = shl i32 5, %11
  %18 = or i32 %shl14, %shl8
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, -1
  %conv18 = and i8 %17, %20
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %21 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %22)
  %cmp = icmp ugt i8 %22, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv19 = zext i8 %22 to i32
  %sub = add nsw i32 %conv19, -64
  %arrayidx = getelementptr [6 x i8], ptr @cmd64x_set_dmamode.udma_data, i32 0, i32 %sub
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %24 to i32
  %shl24 = shl i32 %conv23, %mul4
  %25 = trunc i32 %shl24 to i8
  %shl28 = shl nuw i32 1, %11
  %26 = trunc i32 %shl28 to i8
  %conv26 = or i8 %conv18, %26
  %conv31 = or i8 %conv26, %25
  %27 = ptrtoint ptr %regU to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv31, ptr %regU, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %22)
  %cmp34 = icmp ugt i8 %22, 66
  br i1 %cmp34, label %if.then36, label %if.then.if.end49_crit_edge

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then36:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %shl38 = shl i32 4, %11
  %28 = trunc i32 %shl38 to i8
  %conv41 = or i8 %conv31, %28
  %29 = ptrtoint ptr %regU to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41, ptr %regU, align 1
  br label %if.end49

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl43 = shl nuw i32 1, %11
  %30 = trunc i32 %shl43 to i8
  %31 = xor i8 %30, -1
  %conv47 = and i8 %conv18, %31
  %32 = ptrtoint ptr %regU to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv47, ptr %regU, align 1
  call fastcc void @cmd64x_set_timing(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %22)
  br label %if.end49

if.end49:                                         ; preds = %if.else, %if.then36, %if.then.if.end49_crit_edge
  %33 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devno, align 4
  %shl51 = shl i32 32, %34
  %35 = ptrtoint ptr %regD to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regD, align 1
  %37 = trunc i32 %shl51 to i8
  %conv54 = or i8 %36, %37
  store i8 %conv54, ptr %regD, align 1
  %38 = ptrtoint ptr %regU to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %regU, align 1
  %call55 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %39) #5
  %40 = ptrtoint ptr %regD to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %regD, align 1
  %call56 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add3, i8 noundef zeroext %41) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regD) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regU) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cmd64x_set_timing(ptr nocapture noundef readonly %ap, ptr noundef %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %t = alloca %struct.ata_timing, align 2
  %reg = alloca i8, align 1
  %tp = alloca %struct.ata_timing, align 2
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %t) #5
  %4 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %6 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %7 = call ptr @memset(ptr %t, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %reg, align 1, !annotation !69
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %9 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_no, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %11 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devno, align 4
  %arrayidx1 = getelementptr [2 x [2 x i8]], ptr @__const.cmd64x_set_timing.arttim_port, i32 0, i32 %10, i32 %12
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %14 to i32
  %arrayidx5 = getelementptr [2 x [2 x i8]], ptr @__const.cmd64x_set_timing.drwtim_port, i32 0, i32 %10, i32 %12
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %16 to i32
  %conv7 = zext i8 %mode to i16
  %call = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv7, ptr noundef nonnull %t, i32 noundef 30303, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adev, align 128
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pmp, align 4
  %25 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %devno, align 4
  %add = add i32 %26, %24
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %22, i32 noundef %add) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %27 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %if.end.do.body23_crit_edge, label %if.then15

if.end.do.body23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

if.then15:                                        ; preds = %if.end
  %call16 = call ptr @ata_dev_pair(ptr noundef %adev) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.do.body23_crit_edge, label %if.then18

if.then15.do.body23_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body23

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tp) #5
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %call16, i32 0, i32 11
  %29 = call ptr @memset(ptr %tp, i32 255, i32 20)
  %30 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pio_mode, align 16
  %conv19 = zext i8 %31 to i16
  %call20 = call i32 @ata_timing_compute(ptr noundef nonnull %call16, i16 noundef zeroext %conv19, ptr noundef nonnull %tp, i32 noundef 30303, i32 noundef 0) #5
  call void @ata_timing_merge(ptr noundef nonnull %t, ptr noundef nonnull %tp, ptr noundef nonnull %t, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tp) #5
  br label %do.body23

do.body23:                                        ; preds = %if.then18, %if.then15.do.body23_crit_edge, %if.end.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cmd64x_set_timing.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cmd64x_set_timing, %if.then29)) #5
          to label %do.end42 [label %if.then29], !srcloc !70

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adev, align 128
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  %print_id32 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %print_id32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %print_id32, align 4
  %pmp34 = getelementptr inbounds %struct.ata_link, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %pmp34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pmp34, align 4
  %40 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %devno, align 4
  %add36 = add i32 %41, %39
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %5, align 2
  %conv37 = zext i16 %43 to i32
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %6, align 2
  %conv38 = zext i16 %45 to i32
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %4, align 2
  %conv39 = zext i16 %47 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cmd64x_set_timing.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.16, i32 noundef %37, i32 noundef %add36, i32 noundef %conv37, i32 noundef %conv38, i32 noundef %conv39) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then29, %do.body23
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %49)
  %cmp45 = icmp ugt i16 %49, 16
  br i1 %cmp45, label %if.then47, label %if.end55thread-pre-split

if.then47:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i16 %49, -16
  %50 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %5, align 2
  %add52 = add i16 %sub, %51
  store i16 %add52, ptr %5, align 2
  %52 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 16, ptr %6, align 2
  br label %if.end55

if.end55thread-pre-split:                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %53)
  %.pr = load i16, ptr %5, align 2
  br label %if.end55

if.end55:                                         ; preds = %if.end55thread-pre-split, %if.then47
  %54 = phi i16 [ %.pr, %if.end55thread-pre-split ], [ %add52, %if.then47 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %54)
  %cmp58 = icmp ugt i16 %54, 16
  br i1 %cmp58, label %if.then60, label %if.end55.if.end62_crit_edge

if.end55.if.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 16, ptr %5, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end55.if.end62_crit_edge
  %56 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %57)
  %cmp65 = icmp eq i16 %57, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %57)
  %cmp71 = icmp ugt i16 %57, 1
  %dec = add i16 %57, -1
  %spec.select = select i1 %cmp71, i16 %dec, i16 15
  %dec.sink = select i1 %cmp65, i16 0, i16 %spec.select
  %58 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %dec.sink, ptr %6, align 2
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %60)
  %cmp81 = icmp ugt i16 %60, 4
  br i1 %cmp81, label %if.end62.if.end90_crit_edge, label %if.else85

if.end62.if.end90_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

if.else85:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %conv80 = zext i16 %60 to i32
  %arrayidx87 = getelementptr [5 x i8], ptr @__const.cmd64x_set_timing.setup_data, i32 0, i32 %conv80
  %61 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %62 to i16
  br label %if.end90

if.end90:                                         ; preds = %if.else85, %if.end62.if.end90_crit_edge
  %storemerge = phi i16 [ %conv88, %if.else85 ], [ 192, %if.end62.if.end90_crit_edge ]
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %storemerge, ptr %4, align 2
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %5, align 2
  %66 = and i16 %65, 15
  store i16 %66, ptr %5, align 2
  %call94 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %conv, ptr noundef nonnull %reg) #5
  %67 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reg, align 1
  %69 = and i8 %68, 63
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %4, align 2
  %conv99 = trunc i16 %71 to i8
  %or = or i8 %69, %conv99
  store i8 %or, ptr %reg, align 1
  %call102 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %conv, i8 noundef zeroext %or) #5
  %72 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %5, align 2
  %conv104 = trunc i16 %73 to i8
  %shl = shl i8 %conv104, 4
  %74 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %6, align 2
  %conv106 = trunc i16 %75 to i8
  %or107 = or i8 %shl, %conv106
  %call109 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %conv6, i8 noundef zeroext %or107) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %t) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cmd648_sff_irq_check(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
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
  %arrayidx = getelementptr i8, ptr %3, i32 1064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 4, i32 8
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %conv = zext i8 %9 to i32
  %and4 = and i32 %cond, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  ret i1 %tobool5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd648_sff_irq_clear(ptr noundef %ap) #2 align 64 {
entry:
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
  %arrayidx = getelementptr i8, ptr %3, i32 1064
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i8 4, i8 8
  tail call void @ata_bmdma_irq_clear(ptr noundef %ap) #5
  %add = add i32 %5, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %8 = inttoptr i32 %add1 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #5, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %10 = and i8 %9, -13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %or = or i8 %10, %cond
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %or) #5, !srcloc !75
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmd646r1_bmdma_stop(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ata_bmdma_stop(ptr noundef %qc) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmd648_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %r = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #5
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %r, align 1, !annotation !69
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 121, ptr noundef nonnull %r) #5
  %5 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %r, align 1
  %conv = zext i8 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #5
  ret i32 %.
}

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_pata_cmd64x__290_528_cmd64x_pci_driver_init6, !1, !"__initcall__kmod_pata_cmd64x__290_528_cmd64x_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_cmd64x.c", i32 528, i32 1}
!2 = !{ptr @__exitcall_cmd64x_pci_driver_exit, !1, !"__exitcall_cmd64x_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_cmd64x.c", i32 530, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_cmd64x.c", i32 531, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_cmd64x.c", i32 532, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_cmd64x.c", i32 534, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @cmd64x_pci_driver, !17, !"cmd64x_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_cmd64x.c", i32 517, i32 26}
!18 = !{ptr @cmd64x, !19, !"cmd64x", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_cmd64x.c", i32 508, i32 35}
!20 = !{ptr @cmd64x_init_one.cmd_info, !21, !"cmd_info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_cmd64x.c", i32 379, i32 36}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_cmd64x.c", i32 477, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cmd64x_init_one._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @cmd64x_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_cmd64x.c", i32 479, i32 3}
!32 = !{ptr @cmd64x_init_one._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cmd64x_init_one._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_cmd64x.c", i32 484, i32 3}
!36 = !{ptr @cmd64x_init_one._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cmd64x_init_one._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @cmd64x_port_ops, !39, !"cmd64x_port_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_cmd64x.c", i32 332, i32 35}
!40 = !{ptr @cmd64x_base_ops, !41, !"cmd64x_base_ops", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_cmd64x.c", i32 326, i32 41}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_cmd64x.c", i32 119, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cmd64x_set_timing._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cmd64x_set_timing._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pata_cmd64x.c", i32 133, i32 2}
!49 = !{ptr @cmd64x_set_timing.__UNIQUE_ID_ddebug289, !48, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!50 = !{ptr @cmd64x_set_dmamode.udma_data, !51, !"udma_data", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_cmd64x.c", i32 193, i32 18}
!52 = !{ptr @cmd646r3_port_ops, !53, !"cmd646r3_port_ops", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_cmd64x.c", i32 347, i32 35}
!54 = !{ptr @cmd646r1_port_ops, !55, !"cmd646r1_port_ops", i1 false, i1 false}
!55 = !{!"../drivers/ata/pata_cmd64x.c", i32 339, i32 35}
!56 = !{ptr @cmd648_port_ops, !57, !"cmd648_port_ops", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_cmd64x.c", i32 354, i32 35}
!58 = !{ptr @cmd64x_sht, !59, !"cmd64x_sht", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_cmd64x.c", i32 322, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i64 2148702886, i64 2148702891, i64 2148702904, i64 2148702948, i64 2148702982, i64 2148703003}
!71 = !{i64 4991386}
!72 = !{i64 2155711213}
!73 = !{i64 2155712800}
!74 = !{i64 2155713024}
!75 = !{i64 4990991}
