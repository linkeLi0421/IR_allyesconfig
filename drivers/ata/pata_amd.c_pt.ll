; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_amd.c_pt.bc'
source_filename = "../drivers/ata/pata_amd.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_bits = type { i32, i32, i32, i32 }
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
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@__initcall__kmod_pata_amd__326_636_amd_pci_driver_init6 = internal global ptr @amd_pci_driver_init, section ".initcall6.init", align 4
@amd_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @amd, ptr @amd_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @amd_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_amd_pci_driver_exit = internal global ptr @amd_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [25 x i8] c"pata_amd.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [66 x i8] c"pata_amd.description=low-level driver for AMD and Nvidia PATA IDE\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [35 x i8] c"pata_amd.file=drivers/ata/pata_amd\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [21 x i8] c"pata_amd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version331 = internal constant [23 x i8] c"pata_amd.version=0.4.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_amd\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@amd = internal constant { [22 x %struct.pci_device_id], [160 x i8] } { [22 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 29697, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 29705, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4130, i32 29713, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4130, i32 29761, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4130, i32 29801, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4318, i32 444, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4318, i32 101, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 133, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 213, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 229, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 83, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 53, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 613, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 878, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 1004, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 1096, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 1376, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 1388, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4318, i32 1881, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4130, i32 8346, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4130, i32 8338, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id zeroinitializer], [160 x i8] zeroinitializer }, align 32
@amd_init_one.info = internal constant { [10 x %struct.ata_port_info], [72 x i8] } { [10 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @amd33_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @amd66_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @amd66_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @amd100_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @amd100_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @amd133_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @amd133_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @nv100_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @nv133_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @amd100_port_ops, ptr null }], [72 x i8] zeroinitializer }, align 32
@amd33_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @amd33_set_piomode, ptr @amd33_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@amd66_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_unknown, ptr null, ptr @amd66_set_piomode, ptr @amd66_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@amd100_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_unknown, ptr null, ptr @amd100_set_piomode, ptr @amd100_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@amd133_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_cable_detect, ptr null, ptr @amd133_set_piomode, ptr @amd133_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@nv100_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv100_set_piomode, ptr @nv100_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@nv133_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv133_set_piomode, ptr @nv133_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_base_port_ops }, [44 x i8] zeroinitializer }, align 32
@amd_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@amd_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@amd_base_port_ops = internal constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amd_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@amd_fifo_setup.fifobit = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\C00", [30 x i8] zeroinitializer }, align 32
@timing_setup.amd_cyc2udma = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\06\06\05\04\00\01\01\02\02\03\03\03\03\03\03\07", [16 x i8] zeroinitializer }, align 32
@timing_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 63, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"timing_setup\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pata_amd.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@timing_setup._entry_ptr = internal global ptr @timing_setup._entry, section ".printk_index", align 4
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@amd_pre_reset.amd_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 64, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 64, i32 1, i32 1, i32 1 }], [32 x i8] zeroinitializer }, align 32
@amd_cable_detect.bitmask = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 12], [24 x i8] zeroinitializer }, align 32
@nv_base_port_ops = internal constant { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_ignore, ptr @nv_mode_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@nv_mode_filter.udma_mask_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 7, i32 3, i32 1, i32 0, i32 15, i32 31, i32 63, i32 127], [32 x i8] zeroinitializer }, align 32
@nv_mode_filter.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv_mode_filter\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"ata%u: nv_mode_filter: 0x%lx&0x%lx->0x%lx, BIOS=0x%lx (0x%x) ACPI=0x%lx%s\0A\00", [53 x i8] zeroinitializer }, align 32
@nv_pre_reset.nv_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 80, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 80, i32 1, i32 1, i32 1 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 29697, i64 29705]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 69, i64 70]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"amd_pci_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 625, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 642, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 599, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 460, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"amd33_port_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 400, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"amd66_port_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 407, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"amd100_port_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 414, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"amd133_port_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 421, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"nv100_port_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 436, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"nv133_port_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 442, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"amd_init_one.__print_once\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"amd_sht\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 391, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"amd_base_port_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 395, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [8 x i8] c"fifobit\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 181, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"amd_cyc2udma\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 45, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 63, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"amd_enable_bits\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 134, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"bitmask\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 157, i32 19 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"nv_base_port_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 428, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"udma_mask_map\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 270, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 313, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"nv_enable_bits\00", align 1
@___asan_gen_.102 = private constant [26 x i8] c"../drivers/ata/pata_amd.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 332, i32 31 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__UNIQUE_ID_version331, ptr @__exitcall_amd_pci_driver_exit, ptr @__initcall__kmod_pata_amd__326_636_amd_pci_driver_init6, ptr @__modver_attr, ptr @amd_pci_driver_exit, ptr @timing_setup._entry, ptr @timing_setup._entry_ptr, ptr @amd_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @amd, ptr @amd_init_one.info, ptr @amd33_port_ops, ptr @amd66_port_ops, ptr @amd100_port_ops, ptr @amd133_port_ops, ptr @nv100_port_ops, ptr @nv133_port_ops, ptr @amd_init_one.__print_once, ptr @amd_sht, ptr @amd_base_port_ops, ptr @amd_fifo_setup.fifobit, ptr @timing_setup.amd_cyc2udma, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @amd_pre_reset.amd_enable_bits, ptr @amd_cable_detect.bitmask, ptr @nv_base_port_ops, ptr @nv_mode_filter.udma_mask_map, ptr @.str.9, ptr @.str.10, ptr @nv_pre_reset.nv_enable_bits], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_init_one.info to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd33_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd66_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd100_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd133_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv100_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv133_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_base_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_fifo_setup.fifobit to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timing_setup.amd_cyc2udma to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timing_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_pre_reset.amd_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amd_cable_detect.bitmask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_base_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_mode_filter.udma_mask_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_pre_reset.nv_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @amd_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amd_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @amd_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %fifo.i = alloca i8, align 1
  %ppi = alloca [2 x ptr], align 8
  %fifo = alloca i8, align 1
  %udma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo) #6
  %3 = ptrtoint ptr %fifo to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %fifo, align 1, !annotation !77
  %.b60 = load i1, ptr @amd_init_one.__print_once, align 1
  br i1 %.b60, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @amd_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 65, ptr noundef nonnull %fifo) #6
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end20 [
    i32 1, label %if.end20.thread68
    i32 5, label %land.lhs.true11
  ]

if.end20.thread68:                                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %5 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %6)
  %cmp5 = icmp ugt i8 %6, 7
  %spec.select = select i1 %cmp5, i32 2, i32 1
  %arrayidx70 = getelementptr [10 x %struct.ata_port_info], ptr @amd_init_one.info, i32 0, i32 %spec.select
  %7 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx70, ptr %ppi, align 8
  br label %if.then24

land.lhs.true11:                                  ; preds = %if.end3
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %8 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %9)
  %cmp13 = icmp eq i16 %9, 4130
  br i1 %cmp13, label %land.lhs.true15, label %land.lhs.true11.if.end20.thread_crit_edge

land.lhs.true11.if.end20.thread_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.thread

land.lhs.true15:                                  ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %10 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14016, i16 %11)
  %cmp17 = icmp eq i16 %11, 14016
  %spec.select61 = select i1 %cmp17, i32 6, i32 5
  br label %if.end20.thread

if.end20.thread:                                  ; preds = %land.lhs.true15, %land.lhs.true11.if.end20.thread_crit_edge
  %type.1.ph = phi i32 [ %spec.select61, %land.lhs.true15 ], [ 5, %land.lhs.true11.if.end20.thread_crit_edge ]
  %arrayidx65 = getelementptr [10 x %struct.ata_port_info], ptr @amd_init_one.info, i32 0, i32 %type.1.ph
  %12 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx65, ptr %ppi, align 8
  br label %if.end26

if.end20:                                         ; preds = %if.end3
  %arrayidx = getelementptr [10 x %struct.ata_port_info], ptr @amd_init_one.info, i32 0, i32 %2
  %13 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %ppi, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp22 = icmp slt i32 %2, 3
  br i1 %cmp22, label %if.end20.if.then24_crit_edge, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end20.if.then24_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %if.end20.if.then24_crit_edge, %if.end20.thread68
  %type.172 = phi i32 [ %spec.select, %if.end20.thread68 ], [ %2, %if.end20.if.then24_crit_edge ]
  %call25 = call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %pdev) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge, %if.end20.thread
  %type.167 = phi i32 [ %type.1.ph, %if.end20.thread ], [ %type.172, %if.then24 ], [ %2, %if.end20.if.end26_crit_edge ]
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %14 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %15)
  %cmp28 = icmp eq i16 %15, 4130
  br i1 %cmp28, label %if.then30, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i) #6
  %16 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %fifo.i, align 1, !annotation !77
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 65, ptr noundef nonnull %fifo.i) #6
  %17 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fifo.i, align 1
  %19 = and i8 %18, 15
  store i8 %19, ptr %fifo.i, align 1
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext %19) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %type.1.off = add i32 %type.167, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.1.off)
  %switch = icmp ult i32 %type.1.off, 2
  br i1 %switch, label %if.then36, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %udma) #6
  %20 = ptrtoint ptr %udma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %udma, align 4, !annotation !77
  %call37 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 96, ptr noundef nonnull %udma) #6
  %21 = ptrtoint ptr %udma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %udma, align 4
  %23 = inttoptr i32 %22 to ptr
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %udma) #6
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31.if.end38_crit_edge
  %hpriv.0 = phi ptr [ %23, %if.then36 ], [ null, %if.end31.if.end38_crit_edge ]
  %call39 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @amd_sht, ptr noundef %hpriv.0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  %fifo.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %2 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %3)
  %cmp = icmp eq i16 %3, 4130
  br i1 %cmp, label %if.then3, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo.i) #6
  %4 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %fifo.i, align 1, !annotation !77
  %call.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 65, ptr noundef nonnull %fifo.i) #6
  %5 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fifo.i, align 1
  %7 = and i8 %6, 15
  store i8 %7, ptr %fifo.i, align 1
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 65, i8 noundef zeroext %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo.i) #6
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device, align 2
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %9, label %if.then3.if.end14_crit_edge [
    i16 29705, label %if.then3.if.then11_crit_edge
    i16 29697, label %if.then3.if.then11_crit_edge23
  ]

if.then3.if.then11_crit_edge23:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then3.if.then11_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.then3.if.then11_crit_edge, %if.then3.if.then11_crit_edge23
  %call12 = call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %pdev) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_clear_simplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd33_set_piomode(ptr noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amd_fifo_setup(ptr noundef %ap)
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd33_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amd_fifo_setup(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x i8], ptr @amd_fifo_setup.fifobit, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #6
  %8 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %r, align 1, !annotation !77
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %call = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #6
  %tobool.not27 = icmp eq ptr %call, null
  br i1 %tobool.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %fifo.029 = phi i8 [ %spec.select, %for.body.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %adev.028 = phi ptr [ %call2, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %class = getelementptr inbounds %struct.ata_device, ptr %adev.028, i32 0, i32 9
  %9 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp eq i32 %10, 3
  %spec.select = select i1 %cmp, i8 0, i8 %fifo.029
  %call2 = tail call ptr @ata_dev_next(ptr noundef nonnull %adev.028, ptr noundef %link, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %fifo.0.lcssa = phi i8 [ %7, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %device = getelementptr i8, ptr %3, i32 -102
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 29713, i16 %12)
  %cmp3 = icmp eq i16 %12, 29713
  %spec.select26 = select i1 %cmp3, i8 0, i8 %fifo.0.lcssa
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %call7 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 65, ptr noundef nonnull %r) #6
  %13 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no, align 4
  %arrayidx9 = getelementptr [2 x i8], ptr @amd_fifo_setup.fifobit, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %neg = xor i8 %16, -1
  %17 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %r, align 1
  %and = and i8 %18, %neg
  %or25 = or i8 %and, %spec.select26
  store i8 %or25, ptr %r, align 1
  %call16 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 65, i8 noundef zeroext %or25) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timing_setup(ptr nocapture noundef readonly %ap, ptr noundef %adev, i32 noundef %offset, i32 noundef %speed, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  %at = alloca %struct.ata_timing, align 2
  %apeer = alloca %struct.ata_timing, align 2
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #6
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %mul = shl i32 %5, 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %add = add i32 %mul, %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %at) #6
  %8 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 2
  %10 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 3
  %11 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 5
  %12 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 6
  %13 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 9
  %14 = call ptr @memset(ptr %at, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %apeer) #6
  %15 = call ptr @memset(ptr %apeer, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #6
  %16 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %t, align 1, !annotation !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clock)
  %cmp = icmp sgt i32 %clock, 1
  %spec.select = select i1 %cmp, i32 15000, i32 30000
  %conv = trunc i32 %speed to i16
  %call1 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv, ptr noundef nonnull %at, i32 noundef 30000, i32 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %if.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %speed) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6.if.end16_crit_edge, label %if.then7

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then7:                                         ; preds = %if.end6
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 12
  %17 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp.i.not = icmp eq i8 %18, -1
  br i1 %cmp.i.not, label %if.then7.if.end13_crit_edge, label %if.then10

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %conv11 = zext i8 %18 to i16
  %call12 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv11, ptr noundef nonnull %apeer, i32 noundef 30000, i32 noundef %spec.select) #6
  call void @ata_timing_merge(ptr noundef nonnull %apeer, ptr noundef nonnull %at, ptr noundef nonnull %at, i32 noundef 14) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then7.if.end13_crit_edge
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %19 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pio_mode, align 16
  %conv14 = zext i8 %20 to i16
  %call15 = call i32 @ata_timing_compute(ptr noundef nonnull %call, i16 noundef zeroext %conv14, ptr noundef nonnull %apeer, i32 noundef 30000, i32 noundef %spec.select) #6
  call void @ata_timing_merge(ptr noundef nonnull %apeer, ptr noundef nonnull %at, ptr noundef nonnull %at, i32 noundef 14) #6
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %if.end6.if.end16_crit_edge
  %21 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %speed, label %if.end16.if.end25_crit_edge [
    i32 69, label %if.end16.if.end25.sink.split_crit_edge
    i32 70, label %if.then23
  ]

if.end16.if.end25.sink.split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then23, %if.end16.if.end25.sink.split_crit_edge
  %.sink = phi i16 [ 15, %if.then23 ], [ 1, %if.end16.if.end25.sink.split_crit_edge ]
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink, ptr %13, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %if.end16.if.end25_crit_edge
  %add26 = add i32 %offset, 12
  %call27 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add26, ptr noundef nonnull %t) #6
  %23 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %t, align 1
  %conv28 = zext i8 %24 to i32
  %.neg = mul i32 %add, -2
  %shl = add i32 %.neg, 6
  %shl29 = shl i32 3, %shl
  %neg = xor i32 %shl29, -1
  %and = and i32 %conv28, %neg
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %8, align 2
  %27 = call i16 @llvm.umax.i16(i16 %26, i16 1)
  %28 = call i16 @llvm.umin.i16(i16 %27, i16 4)
  %narrow = add nuw nsw i16 %28, 255
  %sub49 = zext i16 %narrow to i32
  %shl52 = shl i32 %sub49, %shl
  %or = or i32 %shl52, %and
  %conv53 = trunc i32 %or to i8
  %29 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv53, ptr %t, align 1
  %call55 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add26, i8 noundef zeroext %conv53) #6
  %shr = ashr i32 %add, 1
  %30 = add i32 %offset, 15
  %add58 = sub i32 %30, %shr
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %9, align 2
  %33 = call i16 @llvm.umax.i16(i16 %32, i16 1)
  %34 = call i16 @llvm.umin.i16(i16 %33, i16 16)
  %35 = trunc i16 %34 to i8
  %sub82 = shl i8 %35, 4
  %shl83 = add i8 %sub82, -16
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %10, align 2
  %38 = call i16 @llvm.umax.i16(i16 %37, i16 1)
  %39 = call i16 @llvm.umin.i16(i16 %38, i16 16)
  %40 = trunc i16 %39 to i8
  %sub107 = add nsw i8 %40, -1
  %or108 = or i8 %shl83, %sub107
  %call110 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add58, i8 noundef zeroext %or108) #6
  %41 = sub i32 %offset, %add
  %add113 = add i32 %41, 11
  %42 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %11, align 2
  %44 = call i16 @llvm.umax.i16(i16 %43, i16 1)
  %45 = call i16 @llvm.umin.i16(i16 %44, i16 16)
  %46 = trunc i16 %45 to i8
  %sub137 = shl i8 %46, 4
  %shl138 = add i8 %sub137, -16
  %47 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %12, align 2
  %49 = call i16 @llvm.umax.i16(i16 %48, i16 1)
  %50 = call i16 @llvm.umin.i16(i16 %49, i16 16)
  %51 = trunc i16 %50 to i8
  %sub162 = add nsw i8 %51, -1
  %or163 = or i8 %shl138, %sub162
  %call165 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add113, i8 noundef zeroext %or163) #6
  %52 = zext i32 %clock to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %clock, label %if.end25.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb200
    i32 3, label %sw.bb235
    i32 4, label %sw.bb271
  ]

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end25
  %53 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool168.not = icmp eq i16 %54, 0
  br i1 %tobool168.not, label %sw.bb.cond.end197_crit_edge, label %cond.true169

sw.bb.cond.end197_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end197

cond.true169:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %55 = call i16 @llvm.umax.i16(i16 %54, i16 2)
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %55)
  %cmp186 = icmp ult i16 %55, 5
  %56 = trunc i16 %55 to i8
  %57 = add i8 %56, 62
  %extract.t = or i8 %57, -64
  %cond193.off0 = select i1 %cmp186, i8 %extract.t, i8 -61
  br label %cond.end197

cond.end197:                                      ; preds = %cond.true169, %sw.bb.cond.end197_crit_edge
  %cond198 = phi i8 [ %cond193.off0, %cond.true169 ], [ 3, %sw.bb.cond.end197_crit_edge ]
  %58 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %cond198, ptr %t, align 1
  br label %sw.epilog

sw.bb200:                                         ; preds = %if.end25
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool203.not = icmp eq i16 %60, 0
  br i1 %tobool203.not, label %sw.bb200.cond.end232_crit_edge, label %cond.true204

sw.bb200.cond.end232_crit_edge:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end232

cond.true204:                                     ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #8
  %61 = call i16 @llvm.umax.i16(i16 %60, i16 2)
  %62 = call i16 @llvm.umin.i16(i16 %61, i16 10)
  %63 = zext i16 %62 to i32
  %arrayidx = getelementptr [16 x i8], ptr @timing_setup.amd_cyc2udma, i32 0, i32 %63
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx, align 1
  %or230 = or i8 %65, -64
  br label %cond.end232

cond.end232:                                      ; preds = %cond.true204, %sw.bb200.cond.end232_crit_edge
  %cond233 = phi i8 [ %or230, %cond.true204 ], [ 3, %sw.bb200.cond.end232_crit_edge ]
  %66 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %cond233, ptr %t, align 1
  br label %sw.epilog

sw.bb235:                                         ; preds = %if.end25
  %67 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %13, align 2
  %69 = zext i16 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %68, label %cond.end250 [
    i16 0, label %sw.bb235.cond.end268_crit_edge
    i16 1, label %sw.bb235.cond.end250.thread_crit_edge
  ]

sw.bb235.cond.end250.thread_crit_edge:            ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end250.thread

sw.bb235.cond.end268_crit_edge:                   ; preds = %sw.bb235
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end268

cond.end250:                                      ; preds = %sw.bb235
  %phi.cast392 = zext i16 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %68)
  %cmp256 = icmp ult i16 %68, 10
  br i1 %cmp256, label %cond.end250.cond.end250.thread_crit_edge, label %cond.end250._crit_edge

cond.end250._crit_edge:                           ; preds = %cond.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %70

cond.end250.cond.end250.thread_crit_edge:         ; preds = %cond.end250
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end250.thread

cond.end250.thread:                               ; preds = %cond.end250.cond.end250.thread_crit_edge, %sw.bb235.cond.end250.thread_crit_edge
  %cond251400 = phi i32 [ %phi.cast392, %cond.end250.cond.end250.thread_crit_edge ], [ 1, %sw.bb235.cond.end250.thread_crit_edge ]
  br label %70

70:                                               ; preds = %cond.end250.thread, %cond.end250._crit_edge
  %71 = phi i32 [ %cond251400, %cond.end250.thread ], [ 10, %cond.end250._crit_edge ]
  %arrayidx264 = getelementptr [16 x i8], ptr @timing_setup.amd_cyc2udma, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx264 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx264, align 1
  %or266 = or i8 %73, -64
  br label %cond.end268

cond.end268:                                      ; preds = %70, %sw.bb235.cond.end268_crit_edge
  %cond269 = phi i8 [ %or266, %70 ], [ 3, %sw.bb235.cond.end268_crit_edge ]
  %74 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %cond269, ptr %t, align 1
  br label %sw.epilog

sw.bb271:                                         ; preds = %if.end25
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %13, align 2
  %77 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %76, label %cond.end286 [
    i16 0, label %sw.bb271.cond.end304_crit_edge
    i16 1, label %sw.bb271.cond.end286.thread_crit_edge
  ]

sw.bb271.cond.end286.thread_crit_edge:            ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end286.thread

sw.bb271.cond.end304_crit_edge:                   ; preds = %sw.bb271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end304

cond.end286:                                      ; preds = %sw.bb271
  %phi.cast = zext i16 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %76)
  %cmp292 = icmp ult i16 %76, 15
  br i1 %cmp292, label %cond.end286.cond.end286.thread_crit_edge, label %cond.end286._crit_edge

cond.end286._crit_edge:                           ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %78

cond.end286.cond.end286.thread_crit_edge:         ; preds = %cond.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end286.thread

cond.end286.thread:                               ; preds = %cond.end286.cond.end286.thread_crit_edge, %sw.bb271.cond.end286.thread_crit_edge
  %cond287403 = phi i32 [ %phi.cast, %cond.end286.cond.end286.thread_crit_edge ], [ 1, %sw.bb271.cond.end286.thread_crit_edge ]
  br label %78

78:                                               ; preds = %cond.end286.thread, %cond.end286._crit_edge
  %79 = phi i32 [ %cond287403, %cond.end286.thread ], [ 15, %cond.end286._crit_edge ]
  %arrayidx300 = getelementptr [16 x i8], ptr @timing_setup.amd_cyc2udma, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx300 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx300, align 1
  %or302 = or i8 %81, -64
  br label %cond.end304

cond.end304:                                      ; preds = %78, %sw.bb271.cond.end304_crit_edge
  %cond305 = phi i8 [ %or302, %78 ], [ 3, %sw.bb271.cond.end304_crit_edge ]
  %82 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %cond305, ptr %t, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end304, %cond.end268, %cond.end232, %cond.end197
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool308.not = icmp eq i16 %84, 0
  br i1 %tobool308.not, label %sw.epilog.cleanup_crit_edge, label %if.then309

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then309:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %add312 = add i32 %41, 19
  %85 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %t, align 1
  %call313 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add312, i8 noundef zeroext %86) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then309, %sw.epilog.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %apeer) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %at) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_timing_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @amd_pre_reset.amd_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd66_set_piomode(ptr noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amd_fifo_setup(ptr noundef %ap)
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd66_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd100_set_piomode(ptr noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amd_fifo_setup(ptr noundef %ap)
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd100_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amd_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %ata66 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ata66) #6
  %4 = ptrtoint ptr %ata66 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ata66, align 1, !annotation !77
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 66, ptr noundef nonnull %ata66) #6
  %5 = ptrtoint ptr %ata66 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ata66, align 1
  %conv = zext i8 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x i32], ptr @amd_cable_detect.bitmask, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %and = and i32 %10, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ata66) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd133_set_piomode(ptr noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @amd_fifo_setup(ptr noundef %ap)
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amd133_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 64, i32 noundef %conv, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv100_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 80, i32 noundef %conv, i32 noundef 3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv100_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 80, i32 noundef %conv, i32 noundef 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_ignore(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_mode_filter(ptr nocapture noundef readonly %dev, i32 noundef %xfer_mask) #2 align 64 {
entry:
  %acpi_str = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %acpi_str) #6
  %4 = call ptr @memset(ptr %acpi_str, i32 0, i32 32)
  %host = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %9 = ptrtoint ptr %8 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %shr = lshr i32 %9, 16
  %spec.select = select i1 %cmp, i32 %shr, i32 %9
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2 = icmp eq i32 %13, 0
  %shr4 = lshr i32 %spec.select, 8
  %udma.1 = select i1 %cmp2, i32 %shr4, i32 %spec.select
  %and = and i32 %udma.1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp6 = icmp eq i32 %and, 192
  br i1 %cmp6, label %if.then7, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and8 = and i32 %udma.1, 7
  %arrayidx = getelementptr [8 x i32], ptr @nv_mode_filter.udma_mask_map, i32 0, i32 %and8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 @ata_pack_xfermask(i32 noundef 0, i32 noundef 0, i32 noundef %15) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge
  %bios_limit.0 = phi i32 [ %call, %if.then7 ], [ 0, %entry.if.end9_crit_edge ]
  %and19 = and i32 %bios_limit.0, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or22 = or i32 %bios_limit.0, 127
  %limit.0 = select i1 %tobool20.not, i32 %or22, i32 %bios_limit.0
  %and24 = and i32 %limit.0, 1048448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %or27 = or i32 %limit.0, 1048448
  %limit.1 = select i1 %tobool25.not, i32 %or27, i32 %limit.0
  %call29 = tail call i32 @ata_pack_xfermask(i32 noundef 31, i32 noundef 7, i32 noundef 7) #6
  %or30 = or i32 %limit.1, %call29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_mode_filter.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_mode_filter, %if.then35)) #6
          to label %do.end [label %if.then35], !srcloc !78

if.then35:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %and36 = and i32 %or30, %xfer_mask
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_mode_filter.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.10, i32 noundef %17, i32 noundef %xfer_mask, i32 noundef %or30, i32 noundef %and36, i32 noundef %bios_limit.0, i32 noundef %9, i32 noundef 0, ptr noundef nonnull %acpi_str) #6
  br label %do.end

do.end:                                           ; preds = %if.then35, %if.end9
  %and39 = and i32 %or30, %xfer_mask
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %acpi_str) #6
  ret i32 %and39
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @nv_pre_reset.nv_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -136
  %call = tail call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 96, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pack_xfermask(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv133_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 80, i32 noundef %conv, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv133_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  %conv = zext i8 %1 to i32
  tail call fastcc void @timing_setup(ptr noundef %ap, ptr noundef %adev, i32 noundef 80, i32 noundef %conv, i32 noundef 4)
  ret void
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_pata_amd__326_636_amd_pci_driver_init6, !1, !"__initcall__kmod_pata_amd__326_636_amd_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_amd.c", i32 636, i32 1}
!2 = !{ptr @__exitcall_amd_pci_driver_exit, !1, !"__exitcall_amd_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author327, !4, !"__UNIQUE_ID_author327", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_amd.c", i32 638, i32 1}
!5 = !{ptr @__UNIQUE_ID_description328, !6, !"__UNIQUE_ID_description328", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_amd.c", i32 639, i32 1}
!7 = !{ptr @__UNIQUE_ID_file329, !8, !"__UNIQUE_ID_file329", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_amd.c", i32 640, i32 1}
!9 = !{ptr @__UNIQUE_ID_license330, !8, !"__UNIQUE_ID_license330", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version331, !11, !"__UNIQUE_ID_version331", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_amd.c", i32 642, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @amd_pci_driver, !17, !"amd_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_amd.c", i32 625, i32 26}
!18 = !{ptr @amd, !19, !"amd", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_amd.c", i32 599, i32 35}
!20 = !{ptr @amd_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_amd.c", i32 460, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_amd.c", i32 538, i32 2}
!24 = !{ptr @amd33_port_ops, !25, !"amd33_port_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_amd.c", i32 400, i32 35}
!26 = !{ptr @amd_fifo_setup.fifobit, !27, !"fifobit", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_amd.c", i32 181, i32 18}
!28 = !{ptr @timing_setup.amd_cyc2udma, !29, !"amd_cyc2udma", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_amd.c", i32 45, i32 29}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_amd.c", i32 63, i32 3}
!32 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @timing_setup._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @timing_setup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @amd_base_port_ops, !39, !"amd_base_port_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_amd.c", i32 395, i32 41}
!40 = !{ptr @amd_pre_reset.amd_enable_bits, !41, !"amd_enable_bits", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_amd.c", i32 134, i32 31}
!42 = !{ptr @amd66_port_ops, !43, !"amd66_port_ops", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_amd.c", i32 407, i32 35}
!44 = !{ptr @amd100_port_ops, !45, !"amd100_port_ops", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_amd.c", i32 414, i32 35}
!46 = !{ptr @amd133_port_ops, !47, !"amd133_port_ops", i1 false, i1 false}
!47 = !{!"../drivers/ata/pata_amd.c", i32 421, i32 35}
!48 = !{ptr @amd_cable_detect.bitmask, !49, !"bitmask", i1 false, i1 false}
!49 = !{!"../drivers/ata/pata_amd.c", i32 157, i32 19}
!50 = !{ptr @nv100_port_ops, !51, !"nv100_port_ops", i1 false, i1 false}
!51 = !{!"../drivers/ata/pata_amd.c", i32 436, i32 35}
!52 = !{ptr @nv_base_port_ops, !53, !"nv_base_port_ops", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_amd.c", i32 428, i32 41}
!54 = !{ptr @nv_mode_filter.udma_mask_map, !55, !"udma_mask_map", i1 false, i1 false}
!55 = !{!"../drivers/ata/pata_amd.c", i32 270, i32 28}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/pata_amd.c", i32 295, i32 40}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/ata/pata_amd.c", i32 313, i32 2}
!60 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @nv_mode_filter.__UNIQUE_ID_ddebug325, !59, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!62 = !{ptr @nv_pre_reset.nv_enable_bits, !63, !"nv_enable_bits", i1 false, i1 false}
!63 = !{!"../drivers/ata/pata_amd.c", i32 332, i32 31}
!64 = !{ptr @nv133_port_ops, !65, !"nv133_port_ops", i1 false, i1 false}
!65 = !{!"../drivers/ata/pata_amd.c", i32 442, i32 35}
!66 = !{ptr @amd_sht, !67, !"amd_sht", i1 false, i1 false}
!67 = !{!"../drivers/ata/pata_amd.c", i32 391, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148707002, i64 2148707007, i64 2148707020, i64 2148707064, i64 2148707098, i64 2148707119}
