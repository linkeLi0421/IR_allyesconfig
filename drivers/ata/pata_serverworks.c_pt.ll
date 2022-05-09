; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_serverworks.c_pt.bc'
source_filename = "../drivers/ata/pata_serverworks.c"
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
%struct.sv_cable_table = type { i32, i32, ptr }
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

@__initcall__kmod_pata_serverworks__289_488_serverworks_pci_driver_init6 = internal global ptr @serverworks_pci_driver_init, section ".initcall6.init", align 4
@serverworks_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @serverworks, ptr @serverworks_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @serverworks_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_serverworks_pci_driver_exit = internal global ptr @serverworks_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [33 x i8] c"pata_serverworks.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [77 x i8] c"pata_serverworks.description=low-level driver for Serverworks OSB4/CSB5/CSB6\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [51 x i8] c"pata_serverworks.file=drivers/ata/pata_serverworks\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"pata_serverworks.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [31 x i8] c"pata_serverworks.version=0.4.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pata_serverworks\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@serverworks = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4454, i32 529, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 530, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4454, i32 531, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4454, i32 535, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4454, i32 532, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@serverworks_init_one.info = internal constant { [4 x %struct.ata_port_info], [48 x i8] } { [4 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @serverworks_osb4_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @serverworks_osb4_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @serverworks_csb_port_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @serverworks_csb_port_ops, ptr null }], [48 x i8] zeroinitializer }, align 32
@serverworks_osb4_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @ata_bmdma_dumb_qc_prep, ptr null, ptr null, ptr @serverworks_cable_detect, ptr @serverworks_osb4_filter, ptr @serverworks_set_piomode, ptr @serverworks_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@serverworks_csb_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr @ata_bmdma_qc_prep, ptr null, ptr null, ptr null, ptr @serverworks_csb_filter, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @serverworks_osb4_port_ops }, [44 x i8] zeroinitializer }, align 32
@serverworks_csb_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@serverworks_osb4_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 64, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@cable_detect = internal constant { [9 x %struct.sv_cable_table], [52 x i8] } { [9 x %struct.sv_cable_table] [%struct.sv_cable_table { i32 530, i32 4136, ptr @oem_cable }, %struct.sv_cable_table { i32 531, i32 4136, ptr @oem_cable }, %struct.sv_cable_table { i32 530, i32 4238, ptr @oem_cable }, %struct.sv_cable_table { i32 529, i32 -1, ptr @ata_cable_40wire }, %struct.sv_cable_table { i32 530, i32 -1, ptr @ata_cable_unknown }, %struct.sv_cable_table { i32 531, i32 -1, ptr @ata_cable_unknown }, %struct.sv_cable_table { i32 535, i32 -1, ptr @ata_cable_unknown }, %struct.sv_cable_table { i32 532, i32 -1, ptr @ata_cable_unknown }, %struct.sv_cable_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@serverworks_set_piomode.pio_mode = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"]G4\22 ", [27 x i8] zeroinitializer }, align 32
@serverworks_set_dmamode.dma_mode = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"w! ", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST320011A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST340016A\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST360021A\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ST380021A\00", [22 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@serverworks_fixup_osb4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 289, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"UDMA not BIOS enabled.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"serverworks_fixup_osb4\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/ata/pata_serverworks.c\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@serverworks_fixup_osb4._entry_ptr = internal global ptr @serverworks_fixup_osb4._entry, section ".printk_index", align 4
@serverworks_fixup_osb4._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 295, ptr @.str.14, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to find bridge.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@serverworks_fixup_osb4._entry_ptr.15 = internal global ptr @serverworks_fixup_osb4._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 529, i64 530, i64 531, i64 535]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 16, i64 529, i64 530, i64 531, i64 532, i64 535]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 16, i64 529, i64 530, i64 531, i64 532, i64 535]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 16, i64 530, i64 531, i64 532, i64 535]
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"serverworks_pci_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 477, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 494, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"serverworks\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 467, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 388, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"serverworks_osb4_port_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 265, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"serverworks_csb_port_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 274, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"serverworks_csb_sht\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 261, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"serverworks_osb4_sht\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 255, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"cable_detect\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 83, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"pio_mode\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 199, i32 18 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"dma_mode\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 229, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 53, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 54, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 55, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 56, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 289, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [34 x i8] c"../drivers/ata/pata_serverworks.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 295, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_serverworks_pci_driver_exit, ptr @__initcall__kmod_pata_serverworks__289_488_serverworks_pci_driver_init6, ptr @__modver_attr, ptr @serverworks_fixup_osb4._entry, ptr @serverworks_fixup_osb4._entry.12, ptr @serverworks_fixup_osb4._entry_ptr, ptr @serverworks_fixup_osb4._entry_ptr.15, ptr @serverworks_pci_driver_exit, ptr @serverworks_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @serverworks, ptr @serverworks_init_one.info, ptr @serverworks_osb4_port_ops, ptr @serverworks_csb_port_ops, ptr @serverworks_csb_sht, ptr @serverworks_osb4_sht, ptr @cable_detect, ptr @serverworks_set_piomode.pio_mode, ptr @serverworks_set_dmamode.dma_mode, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_init_one.info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_osb4_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_csb_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_csb_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_osb4_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cable_detect to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_set_piomode.pio_mode to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_set_dmamode.dma_mode to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_fixup_osb4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serverworks_fixup_osb4._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @serverworks_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @serverworks_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @serverworks_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @serverworks_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serverworks_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #8
  %0 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.ata_port_info], ptr @serverworks_init_one.info, i32 0, i32 %2
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @serverworks_fixup(ptr noundef %pdev)
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %6, label %if.end.if.end36_crit_edge [
    i16 529, label %if.then3
    i16 530, label %if.end.if.then22_crit_edge
    i16 531, label %if.end.if.then22_crit_edge50
    i16 535, label %if.end.if.then22_crit_edge51
  ]

if.end.if.then22_crit_edge51:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.if.then22_crit_edge50:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4 = icmp slt i32 %call1, 0
  br i1 %cmp4, label %if.then6, label %if.then3.if.end36_crit_edge

if.then3.if.end36_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([4 x %struct.ata_port_info], ptr @serverworks_init_one.info, i32 0, i32 1), ptr %ppi, align 4
  br label %if.end36

if.then22:                                        ; preds = %if.end.if.then22_crit_edge, %if.end.if.then22_crit_edge50, %if.end.if.then22_crit_edge51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp23 = icmp eq i32 %call1, 3
  br i1 %cmp23, label %if.then25, label %if.then22.if.end27_crit_edge

if.then22.if.end27_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr getelementptr inbounds ([4 x %struct.ata_port_info], ptr @serverworks_init_one.info, i32 0, i32 3), ptr %ppi, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.then22.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 535, i16 %6)
  %cmp30 = icmp eq i16 %6, 535
  br i1 %cmp30, label %if.then32, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ata_dummy_port_info, ptr %0, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end27.if.end36_crit_edge, %if.then6, %if.then3.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %sht.0 = phi ptr [ @serverworks_csb_sht, %if.then32 ], [ @serverworks_csb_sht, %if.end27.if.end36_crit_edge ], [ @serverworks_osb4_sht, %if.then6 ], [ @serverworks_osb4_sht, %if.then3.if.end36_crit_edge ], [ @serverworks_csb_sht, %if.end.if.end36_crit_edge ]
  %call37 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull %sht.0, ptr noundef null, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serverworks_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @serverworks_fixup(ptr noundef %pdev)
  tail call void @ata_host_resume(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @serverworks_fixup(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %btr.i16 = alloca i8, align 1
  %btr.i = alloca i8, align 1
  %reg4c.i = alloca i32, align 4
  %reg41.i = alloca i8, align 1
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 64) #8
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 529, label %sw.bb
    i16 530, label %sw.bb2
    i16 531, label %entry.sw.bb4_crit_edge
    i16 535, label %entry.sw.bb4_crit_edge19
    i16 532, label %sw.bb6
  ]

entry.sw.bb4_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg.i, align 4, !annotation !68
  %call.i = tail call ptr @pci_get_device(i32 noundef 4454, i32 noundef 512, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end9.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call1.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i, i32 noundef 100, ptr noundef nonnull %reg.i) #8
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %5, -8193
  store i32 %and.i, ptr %reg.i, align 4
  %and2.i = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %7, 16384
  store i32 %or.i, ptr %reg.i, align 4
  %call5.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i, i32 noundef 100, i32 noundef %or.i) #8
  call void @pci_dev_put(ptr noundef nonnull %call.i) #8
  br label %serverworks_fixup_osb4.exit

do.end9.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev10.i, ptr noundef nonnull @.str.13) #11
  br label %serverworks_fixup_osb4.exit

serverworks_fixup_osb4.exit:                      ; preds = %do.end9.i, %if.end.i
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -19, %do.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %pdev) #8
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %btr.i) #8
  %8 = ptrtoint ptr %btr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %btr.i, align 1, !annotation !68
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %9 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn.i, align 4
  %and1.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i12 = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i12, label %if.then.i14, label %if.else.i

if.then.i14:                                      ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg4c.i) #8
  %11 = ptrtoint ptr %reg4c.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg4c.i, align 4
  %call.i13 = tail call ptr @pci_get_device(i32 noundef 4454, i32 noundef 513, ptr noundef null) #8
  %tobool2.not.i = icmp eq ptr %call.i13, null
  br i1 %tobool2.not.i, label %if.then.i14.if.end.i15_crit_edge, label %if.then3.i

if.then.i14.if.end.i15_crit_edge:                 ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i15

if.then3.i:                                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call.i13, i32 noundef 76, ptr noundef nonnull %reg4c.i) #8
  %12 = ptrtoint ptr %reg4c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg4c.i, align 4
  %and5.i = and i32 %13, -2048
  %or6.i = or i32 %and5.i, 96
  store i32 %or6.i, ptr %reg4c.i, align 4
  %call7.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call.i13, i32 noundef 76, i32 noundef %or6.i) #8
  call void @pci_dev_put(ptr noundef nonnull %call.i13) #8
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then3.i, %if.then.i14.if.end.i15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg4c.i) #8
  br label %if.end17.i

if.else.i:                                        ; preds = %sw.bb4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg41.i) #8
  %14 = ptrtoint ptr %reg41.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %reg41.i, align 1
  %call9.i = tail call ptr @pci_get_device(i32 noundef 4454, i32 noundef 515, ptr noundef null) #8
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.else.i.if.end16.i_crit_edge, label %if.then11.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call9.i, i32 noundef 65, ptr noundef nonnull %reg41.i) #8
  %15 = ptrtoint ptr %reg41.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg41.i, align 1
  %17 = and i8 %16, -65
  store i8 %17, ptr %reg41.i, align 1
  %call15.i = call i32 @pci_write_config_byte(ptr noundef nonnull %call9.i, i32 noundef 65, i8 noundef zeroext %17) #8
  call void @pci_dev_put(ptr noundef nonnull %call9.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i, %if.else.i.if.end16.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg41.i) #8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end16.i, %if.end.i15
  %call18.i = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 90, ptr noundef nonnull %btr.i) #8
  %18 = ptrtoint ptr %btr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %btr.i, align 1
  %20 = and i8 %19, -65
  %21 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devfn.i, align 4
  %and24.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = or i8 %20, 2
  br label %serverworks_fixup_csb.exit

if.else30.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %24 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %25)
  %cmp.i = icmp ugt i8 %25, -111
  %cond.i = select i1 %cmp.i, i8 3, i8 2
  %or34.i = or i8 %cond.i, %20
  br label %serverworks_fixup_csb.exit

serverworks_fixup_csb.exit:                       ; preds = %if.else30.i, %if.then26.i
  %storemerge.i = phi i8 [ %23, %if.then26.i ], [ %or34.i, %if.else30.i ]
  %26 = ptrtoint ptr %btr.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge.i, ptr %btr.i, align 1
  %call37.i = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 90, i8 noundef zeroext %storemerge.i) #8
  %27 = ptrtoint ptr %btr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %btr.i, align 1
  %conv38.i = zext i8 %28 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %btr.i) #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %btr.i16) #8
  %29 = ptrtoint ptr %btr.i16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %btr.i16, align 1, !annotation !68
  %call.i17 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 90, ptr noundef nonnull %btr.i16) #8
  %30 = ptrtoint ptr %btr.i16 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %btr.i16, align 1
  %32 = and i8 %31, -68
  %33 = or i8 %32, 3
  store i8 %33, ptr %btr.i16, align 1
  %call4.i18 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 90, i8 noundef zeroext %33) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %btr.i16) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %serverworks_fixup_csb.exit, %serverworks_fixup_osb4.exit, %entry.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb6 ], [ %conv38.i, %serverworks_fixup_csb.exit ], [ %retval.0.i, %serverworks_fixup_osb4.exit ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_dumb_qc_prep(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serverworks_cable_detect(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %device2 = getelementptr i8, ptr %3, i32 -102
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device2, align 2
  %subsystem_vendor = getelementptr i8, ptr %3, i32 -100
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %5, label %if.end.7 [
    i16 530, label %land.lhs.true
    i16 531, label %land.lhs.true.1
    i16 529, label %entry.if.then_crit_edge
    i16 535, label %if.then.fold.split
    i16 532, label %if.then.fold.split38
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %7 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %8)
  %cmp5 = icmp eq i16 %8, 4136
  br i1 %cmp5, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.2

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true.1, %if.then.fold.split38, %if.then.fold.split, %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %cb.023.lcssa = phi ptr [ @cable_detect, %land.lhs.true.if.then_crit_edge ], [ getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 3), %entry.if.then_crit_edge ], [ %spec.select37, %land.lhs.true.2 ], [ %spec.select, %land.lhs.true.1 ], [ getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 6), %if.then.fold.split ], [ getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 7), %if.then.fold.split38 ]
  %cable_detect = getelementptr inbounds %struct.sv_cable_table, ptr %cb.023.lcssa, i32 0, i32 2
  %9 = ptrtoint ptr %cable_detect to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cable_detect, align 4
  %call = tail call i32 %10(ptr noundef %ap) #8
  ret i32 %call

land.lhs.true.1:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4136, i16 %12)
  %cmp5.1 = icmp eq i16 %12, 4136
  %spec.select = select i1 %cmp5.1, ptr getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 1), ptr getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 5)
  br label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4238, i16 %14)
  %cmp5.2 = icmp eq i16 %14, 4238
  %spec.select37 = select i1 %cmp5.2, ptr getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 2), ptr getelementptr inbounds ([9 x %struct.sv_cable_table], ptr @cable_detect, i32 0, i32 4)
  br label %if.then

if.end.7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_serverworks.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 117, 0\0A.popsection", ""() #8, !srcloc !69
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @serverworks_osb4_filter(ptr nocapture noundef readonly %adev, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %and = and i32 %mask, -1044481
  %spec.select = select i1 %cmp, i32 %and, i32 %mask
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serverworks_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %csb5_pio = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no, align 4
  %mul = shl i32 %1, 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devno, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %csb5_pio) #8
  %4 = ptrtoint ptr %csb5_pio to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %csb5_pio, align 2, !annotation !68
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 -136
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %9 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %10 to i32
  %sub6 = add nsw i32 %conv, -8
  %sub = add i32 %mul, 65
  %add7 = sub i32 %sub, %3
  %arrayidx = getelementptr [5 x i8], ptr @serverworks_set_piomode.pio_mode, i32 0, i32 %sub6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %call = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add7, i8 noundef zeroext %12) #8
  %device.i = getelementptr i8, ptr %8, i32 -102
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %14, label %entry.if.end_crit_edge [
    i16 530, label %entry.if.then_crit_edge
    i16 531, label %entry.if.then_crit_edge27
    i16 535, label %entry.if.then_crit_edge28
    i16 532, label %entry.if.then_crit_edge29
  ]

entry.if.then_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge27, %entry.if.then_crit_edge28, %entry.if.then_crit_edge29
  %add4 = add i32 %mul, %3
  %mul5 = shl i32 %add4, 2
  %call9 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %csb5_pio) #8
  %shl = shl i32 15, %mul5
  %16 = ptrtoint ptr %csb5_pio to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %csb5_pio, align 2
  %18 = trunc i32 %shl to i16
  %19 = xor i16 %18, -1
  %conv11 = and i16 %17, %19
  store i16 %conv11, ptr %csb5_pio, align 2
  %shl13 = shl i32 %sub6, %mul5
  %20 = trunc i32 %shl13 to i16
  %conv14 = or i16 %conv11, %20
  %call15 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext %conv14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %csb5_pio) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @serverworks_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %ultra = alloca i8, align 1
  %ultra_cfg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %0 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_no, align 4
  %mul = shl i32 %1, 1
  %add = or i32 %mul, 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %2 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devno, align 4
  %sub = sub i32 %add, %3
  %add4 = add i32 %mul, %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra) #8
  %4 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ultra, align 1, !annotation !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra_cfg) #8
  %5 = ptrtoint ptr %ultra_cfg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %ultra_cfg, align 1, !annotation !68
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 -136
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ultra_cfg) #8
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no, align 4
  %add6 = add i32 %11, 86
  %call7 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add6, ptr noundef nonnull %ultra) #8
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  %mul9 = shl i32 %13, 2
  %shl = shl i32 15, %mul9
  %14 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ultra, align 1
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv10 = and i8 %15, %17
  store i8 %conv10, ptr %ultra, align 1
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %18 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %19)
  %cmp = icmp ugt i8 %19, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add13 = add i32 %sub, 68
  %call14 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add13, i8 noundef zeroext 32) #8
  %20 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_mode, align 1
  %conv16 = zext i8 %21 to i32
  %sub17 = add nuw nsw i32 %conv16, 192
  %22 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %devno, align 4
  %mul19 = shl i32 %23, 2
  %shl20 = shl i32 %sub17, %mul19
  %24 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ultra, align 1
  %26 = trunc i32 %shl20 to i8
  %conv22 = or i8 %25, %26
  store i8 %conv22, ptr %ultra, align 1
  %shl23 = shl nuw i32 1, %add4
  %27 = ptrtoint ptr %ultra_cfg to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ultra_cfg, align 1
  %29 = trunc i32 %shl23 to i8
  %conv26 = or i8 %28, %29
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv11 = zext i8 %19 to i32
  %add27 = add i32 %sub, 68
  %sub30 = add nsw i32 %conv11, -32
  %arrayidx = getelementptr [3 x i8], ptr @serverworks_set_dmamode.dma_mode, i32 0, i32 %sub30
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %call31 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add27, i8 noundef zeroext %31) #8
  %shl32 = shl nuw i32 1, %add4
  %32 = ptrtoint ptr %ultra_cfg to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ultra_cfg, align 1
  %34 = trunc i32 %shl32 to i8
  %35 = xor i8 %34, -1
  %conv36 = and i8 %33, %35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i8 [ %conv36, %if.else ], [ %conv26, %if.then ]
  %36 = ptrtoint ptr %ultra_cfg to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge, ptr %ultra_cfg, align 1
  %37 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_no, align 4
  %add38 = add i32 %38, 86
  %39 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ultra, align 1
  %call39 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add38, i8 noundef zeroext %40) #8
  %41 = ptrtoint ptr %ultra_cfg to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ultra_cfg, align 1
  %call40 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 84, i8 noundef zeroext %42) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra_cfg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @oem_cable(ptr nocapture noundef readonly %ap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %subsystem_device = getelementptr i8, ptr %3, i32 -98
  %4 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_device, align 2
  %conv = zext i16 %5 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %add = add i32 %7, 14
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_prep(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serverworks_csb_filter(ptr noundef %adev, i32 noundef %mask) #2 align 64 {
entry:
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #8
  %0 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %1 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  call void @ata_id_c_string(ptr noundef %3, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #8
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.3, ptr noundef nonnull dereferenceable(10) %model_num, i32 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %and = and i32 %mask, -917505
  %bcmp14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.4, ptr noundef nonnull dereferenceable(10) %model_num, i32 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp14)
  %tobool.not.1 = icmp eq i32 %bcmp14, 0
  %bcmp15 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.5, ptr noundef nonnull dereferenceable(10) %model_num, i32 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp15)
  %tobool.not.2 = icmp eq i32 %bcmp15, 0
  %bcmp16 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.6, ptr noundef nonnull dereferenceable(10) %model_num, i32 10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16)
  %tobool.not.3 = icmp eq i32 %bcmp16, 0
  %4 = select i1 %tobool.not.3, i1 true, i1 %tobool.not.2
  %5 = select i1 %4, i1 true, i1 %tobool.not.1
  %6 = select i1 %5, i1 true, i1 %tobool.not
  %spec.select.3 = select i1 %6, i32 %and, i32 %mask
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask, %entry.cleanup_crit_edge ], [ %spec.select.3, %if.end ]
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @ata_pci_bmdma_clear_simplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_pata_serverworks__289_488_serverworks_pci_driver_init6, !1, !"__initcall__kmod_pata_serverworks__289_488_serverworks_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_serverworks.c", i32 488, i32 1}
!2 = !{ptr @__exitcall_serverworks_pci_driver_exit, !1, !"__exitcall_serverworks_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_serverworks.c", i32 490, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_serverworks.c", i32 491, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_serverworks.c", i32 492, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_serverworks.c", i32 494, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @serverworks_pci_driver, !17, !"serverworks_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_serverworks.c", i32 477, i32 26}
!18 = !{ptr @serverworks, !19, !"serverworks", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_serverworks.c", i32 467, i32 35}
!20 = !{ptr @serverworks_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_serverworks.c", i32 388, i32 36}
!22 = !{ptr @serverworks_osb4_port_ops, !23, !"serverworks_osb4_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_serverworks.c", i32 265, i32 35}
!24 = !{ptr @cable_detect, !25, !"cable_detect", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_serverworks.c", i32 83, i32 30}
!26 = !{ptr @serverworks_set_piomode.pio_mode, !27, !"pio_mode", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_serverworks.c", i32 199, i32 18}
!28 = !{ptr @serverworks_set_dmamode.dma_mode, !29, !"dma_mode", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_serverworks.c", i32 229, i32 18}
!30 = !{ptr @serverworks_csb_port_ops, !31, !"serverworks_csb_port_ops", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_serverworks.c", i32 274, i32 35}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_serverworks.c", i32 53, i32 2}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_serverworks.c", i32 54, i32 2}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_serverworks.c", i32 55, i32 2}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_serverworks.c", i32 56, i32 2}
!40 = distinct !{null, !41, !"csb_bad_ata100", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_serverworks.c", i32 52, i32 20}
!42 = !{ptr @serverworks_csb_sht, !43, !"serverworks_csb_sht", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_serverworks.c", i32 261, i32 34}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/pata_serverworks.c", i32 289, i32 4}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @serverworks_fixup_osb4._entry, !45, !"_entry", i1 false, i1 false}
!51 = !{ptr @serverworks_fixup_osb4._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/ata/pata_serverworks.c", i32 295, i32 2}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @serverworks_fixup_osb4._entry.12, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @serverworks_fixup_osb4._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @serverworks_osb4_sht, !58, !"serverworks_osb4_sht", i1 false, i1 false}
!58 = !{!"../drivers/ata/pata_serverworks.c", i32 255, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i64 2155700609, i64 2155701104, i64 2155700646, i64 2155700702, i64 2155700736, i64 2155700760, i64 2155700801, i64 2155700822, i64 2155700850, i64 2155700884}
