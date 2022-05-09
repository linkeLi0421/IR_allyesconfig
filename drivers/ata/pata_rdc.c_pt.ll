; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_rdc.c_pt.bc'
source_filename = "../drivers/ata/pata_rdc.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bits = type { i32, i32, i32, i32 }
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

@__initcall__kmod_pata_rdc__291_379_rdc_pci_driver_init6 = internal global ptr @rdc_pci_driver_init, section ".initcall6.init", align 4
@rdc_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @rdc_pci_tbl, ptr @rdc_init_one, ptr @rdc_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rdc_pci_driver_exit = internal global ptr @rdc_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [45 x i8] c"pata_rdc.author=Alan Cox (based on ata_piix)\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [68 x i8] c"pata_rdc.description=SCSI low-level driver for RDC PATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [35 x i8] c"pata_rdc.file=drivers/ata/pata_rdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"pata_rdc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [22 x i8] c"pata_rdc.version=0.01\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pata_rdc\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.01\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@rdc_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6131, i32 4113, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6131, i32 4114, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rdc_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rdc_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 63, ptr @rdc_pata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@rdc_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@rdc_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdc_pata_cable_detect, ptr null, ptr @rdc_set_piomode, ptr @rdc_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rdc_pata_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@rdc_set_piomode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@rdc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rdc_lock\00", [23 x i8] zeroinitializer }, align 32
@rdc_set_dmamode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@__const.rdc_set_dmamode.needed_pio = private unnamed_addr constant [3 x i32] [i32 8, i32 11, i32 12], align 4
@rdc_pata_prereset.rdc_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 65, i32 1, i32 128, i32 128 }, %struct.pci_bits { i32 67, i32 1, i32 128, i32 128 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"rdc_pci_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 367, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 385, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"rdc_pci_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 361, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [26 x i8] c"rdc_init_one.__print_once\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"rdc_port_info\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 282, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"rdc_sht\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 291, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"rdc_pata_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 274, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 102, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"rdc_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 75, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 181, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"rdc_enable_bits\00", align 1
@___asan_gen_.42 = private constant [26 x i8] c"../drivers/ata/pata_rdc.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 65, i32 31 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__exitcall_rdc_pci_driver_exit, ptr @__initcall__kmod_pata_rdc__291_379_rdc_pci_driver_init6, ptr @__modver_attr, ptr @rdc_pci_driver_exit, ptr @rdc_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rdc_pci_tbl, ptr @rdc_init_one.__print_once, ptr @rdc_port_info, ptr @rdc_sht, ptr @rdc_pata_ops, ptr @rdc_set_piomode.timings, ptr @rdc_lock, ptr @.str.3, ptr @rdc_set_dmamode.timings, ptr @rdc_pata_prereset.rdc_enable_bits], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_set_piomode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_set_dmamode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdc_pata_prereset.rdc_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rdc_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rdc_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @rdc_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %port_info = alloca [2 x %struct.ata_port_info], align 4
  %ppi = alloca [2 x ptr], align 4
  %host = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %port_info) #6
  %0 = call ptr @memset(ptr %port_info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %1 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port_info, ptr %ppi, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.ata_port_info], ptr %port_info, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx2, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #6
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !46
  %.b35 = load i1, ptr @rdc_init_one.__print_once, align 1
  br i1 %.b35, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rdc_init_one.__print_once, align 1
  call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = call ptr @memcpy(ptr %port_info, ptr @rdc_port_info, i32 28)
  %6 = call ptr @memcpy(ptr %arrayidx2, ptr @rdc_port_info, i32 28)
  %call = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 84, ptr noundef nonnull %call.i) #6
  %call14 = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull %host) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %private_data, align 4
  call void @pci_intx(ptr noundef %pdev, i32 noundef 1) #6
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %flags = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 4
  store i32 %or, ptr %flags, align 4
  call void @pci_set_master(ptr noundef %pdev) #6
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %call18 = call i32 @ata_pci_sff_activate_host(ptr noundef %15, ptr noundef nonnull @ata_bmdma_interrupt, ptr noundef nonnull @rdc_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end17 ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %port_info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdc_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %5) #6
  tail call void @ata_pci_remove_one(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_sff_activate_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rdc_pata_cable_detect(ptr nocapture noundef readonly %ap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %mul = shl i32 %5, 1
  %shl = shl i32 48, %mul
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %conv1 = and i32 %7, 240
  %and = and i32 %conv1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 1, i32 2
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdc_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %slave_data = alloca i8, align 1
  %udma_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool.not, i32 64, i32 66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #6
  %10 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %master_data, align 2, !annotation !46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #6
  %11 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %slave_data, align 1, !annotation !46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #6
  %12 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %udma_enable, align 1, !annotation !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp3 = icmp ugt i32 %sub, 1
  %spec.select = zext i1 %cmp3 to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %or7 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or7
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %13 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp9 = icmp eq i32 %14, 1
  %or12 = or i32 %control.1, 4
  %control.2 = select i1 %cmp9, i32 %or12, i32 %control.1
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rdc_lock) #6
  %call22 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %master_data) #6
  %15 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %master_data, align 2
  br i1 %cmp.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = and i16 %16, -16625
  %control.2.tr = trunc i32 %control.2 to i16
  %18 = shl nuw nsw i16 %control.2.tr, 4
  %19 = or i16 %18, %17
  %conv32 = or i16 %19, 16384
  %20 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv32, ptr %master_data, align 2
  %call33 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #6
  %21 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool35.not = icmp eq i32 %22, 0
  %cond36 = select i1 %tobool35.not, i8 -16, i8 15
  %23 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %slave_data, align 1
  %and38 = and i8 %cond36, %24
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @rdc_set_piomode.timings, i32 0, i32 %sub
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %shl42 = shl i8 %26, 2
  %arrayidx44 = getelementptr [5 x [2 x i8]], ptr @rdc_set_piomode.timings, i32 0, i32 %sub, i32 1
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx44, align 1
  %or46 = or i8 %shl42, %28
  %cond49 = select i1 %tobool35.not, i8 0, i8 4
  %shl50 = shl i8 %or46, %cond49
  %or52 = or i8 %shl50, %and38
  store i8 %or52, ptr %slave_data, align 1
  %29 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %master_data, align 2
  %call73.c110 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %30) #6
  %31 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %slave_data, align 1
  %call76 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %32) #6
  br label %if.end77

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %33 = and i16 %16, -13072
  %34 = trunc i32 %control.2 to i16
  %conv59 = or i16 %33, %34
  %arrayidx60 = getelementptr [5 x [2 x i8]], ptr @rdc_set_piomode.timings, i32 0, i32 %sub
  %35 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx60, align 1
  %conv62 = zext i8 %36 to i16
  %shl63 = shl i16 %conv62, 12
  %arrayidx65 = getelementptr [5 x [2 x i8]], ptr @rdc_set_piomode.timings, i32 0, i32 %sub, i32 1
  %37 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %38 to i16
  %shl67 = shl nuw i16 %conv66, 8
  %or68 = or i16 %shl63, %conv59
  %or70 = or i16 %or68, %shl67
  %39 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or70, ptr %master_data, align 2
  %call73.c = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %or70) #6
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then24
  %call78 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #6
  %40 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_no, align 4
  %mul = shl i32 %41, 1
  %42 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %devno, align 4
  %add = add i32 %mul, %43
  %shl81 = shl nuw i32 1, %add
  %44 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %udma_enable, align 1
  %46 = trunc i32 %shl81 to i8
  %47 = xor i8 %46, -1
  %conv84 = and i8 %45, %47
  store i8 %conv84, ptr %udma_enable, align 1
  %call85 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %conv84) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rdc_lock, i32 noundef %call19) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rdc_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %udma_enable = alloca i8, align 1
  %udma_timing = alloca i16, align 2
  %ideconf = alloca i16, align 2
  %slave_data = alloca i8, align 1
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
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #6
  %6 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %master_data, align 2, !annotation !46
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %7 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode, align 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %9 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devno, align 4
  %mul = shl i32 %5, 1
  %add = add i32 %10, %mul
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #6
  %11 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %udma_enable, align 1
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rdc_lock) #6
  %conv9 = select i1 %tobool.not, i32 64, i32 66
  %call10 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %conv9, ptr noundef nonnull %master_data) #6
  %call11 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %8)
  %cmp13 = icmp ugt i8 %8, 63
  %12 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode, align 1
  %conv16 = zext i8 %13 to i32
  br i1 %cmp13, label %if.then, label %if.else55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %conv16, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %udma_timing) #6
  %14 = ptrtoint ptr %udma_timing to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %udma_timing, align 2, !annotation !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ideconf) #6
  %15 = ptrtoint ptr %ideconf to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %ideconf, align 2, !annotation !46
  %and = and i32 %conv16, 1
  %sub17 = sub nuw nsw i32 2, %and
  %16 = call i32 @llvm.umin.i32(i32 %sub17, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp22 = icmp eq i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp25 = icmp ugt i32 %sub, 2
  %. = zext i1 %cmp25 to i32
  %u_clock.0 = select i1 %cmp22, i32 4096, i32 %.
  %shl = shl nuw i32 1, %add
  %17 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %udma_enable, align 1
  %19 = trunc i32 %shl to i8
  %conv31 = or i8 %18, %19
  store i8 %conv31, ptr %udma_enable, align 1
  %call32 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %udma_timing) #6
  %mul33 = shl i32 %add, 2
  %shl34 = shl i32 3, %mul33
  %20 = ptrtoint ptr %udma_timing to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %udma_timing, align 2
  %22 = trunc i32 %shl34 to i16
  %23 = xor i16 %22, -1
  %conv37 = and i16 %21, %23
  %shl39 = shl i32 %16, %mul33
  %24 = trunc i32 %shl39 to i16
  %conv42 = or i16 %conv37, %24
  store i16 %conv42, ptr %udma_timing, align 2
  %call43 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext %conv42) #6
  %call44 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ideconf) #6
  %shl45 = shl i32 4097, %add
  %25 = ptrtoint ptr %ideconf to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ideconf, align 2
  %27 = trunc i32 %shl45 to i16
  %28 = xor i16 %27, -1
  %conv49 = and i16 %26, %28
  %shl50 = shl i32 %u_clock.0, %add
  %29 = trunc i32 %shl50 to i16
  %conv53 = or i16 %conv49, %29
  store i16 %conv53, ptr %ideconf, align 2
  %call54 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 84, i16 noundef zeroext %conv53) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ideconf) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %udma_timing) #6
  br label %if.end127

if.else55:                                        ; preds = %entry
  %sub58 = add nsw i32 %conv16, -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #6
  %30 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %slave_data, align 1, !annotation !46
  %arrayidx = getelementptr [3 x i32], ptr @__const.rdc_set_dmamode.needed_pio, i32 0, i32 %sub58
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %sub59 = add i32 %32, -8
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %33 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pio_mode, align 16
  %conv60 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv60)
  %cmp62 = icmp ugt i32 %32, %conv60
  %spec.select = select i1 %cmp62, i16 11, i16 3
  %35 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool68.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %master_data, align 2
  br i1 %tobool68.not, label %if.else100, label %if.then69

if.then69:                                        ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  %39 = and i16 %38, -177
  %40 = shl nuw nsw i16 %spec.select, 4
  %conv76 = or i16 %39, %40
  %41 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv76, ptr %master_data, align 2
  %call77 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #6
  %42 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool79.not = icmp eq i32 %43, 0
  %cond80 = select i1 %tobool79.not, i8 -16, i8 15
  %44 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %slave_data, align 1
  %and82 = and i8 %cond80, %45
  %arrayidx84 = getelementptr [5 x [2 x i8]], ptr @rdc_set_dmamode.timings, i32 0, i32 %sub59
  %46 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx84, align 1
  %shl87 = shl i8 %47, 2
  %arrayidx89 = getelementptr [5 x [2 x i8]], ptr @rdc_set_dmamode.timings, i32 0, i32 %sub59, i32 1
  %48 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx89, align 1
  %or91 = or i8 %shl87, %49
  %cond94 = select i1 %tobool79.not, i8 0, i8 4
  %shl95 = shl i8 %or91, %cond94
  %or97 = or i8 %shl95, %and82
  store i8 %or97, ptr %slave_data, align 1
  %call99 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %or97) #6
  br label %if.end119

if.else100:                                       ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #8
  %50 = and i16 %38, -13068
  %conv106 = or i16 %50, %spec.select
  %arrayidx107 = getelementptr [5 x [2 x i8]], ptr @rdc_set_dmamode.timings, i32 0, i32 %sub59
  %51 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx107, align 1
  %conv109 = zext i8 %52 to i16
  %shl110 = shl i16 %conv109, 12
  %arrayidx112 = getelementptr [5 x [2 x i8]], ptr @rdc_set_dmamode.timings, i32 0, i32 %sub59, i32 1
  %53 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %54 to i16
  %shl114 = shl nuw i16 %conv113, 8
  %or115 = or i16 %shl110, %conv106
  %or117 = or i16 %or115, %shl114
  %55 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %or117, ptr %master_data, align 2
  br label %if.end119

if.end119:                                        ; preds = %if.else100, %if.then69
  %shl120 = shl nuw i32 1, %add
  %56 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %udma_enable, align 1
  %58 = trunc i32 %shl120 to i8
  %59 = xor i8 %58, -1
  %conv124 = and i8 %57, %59
  store i8 %conv124, ptr %udma_enable, align 1
  %60 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %master_data, align 2
  %call126 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %conv9, i16 noundef zeroext %61) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #6
  br label %if.end127

if.end127:                                        ; preds = %if.end119, %if.then
  %62 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %udma_enable, align 1
  %call128 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %63) #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rdc_lock, i32 noundef %call6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdc_pata_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @rdc_pata_prereset.rdc_enable_bits, i32 0, i32 %7
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
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_pata_rdc__291_379_rdc_pci_driver_init6, !1, !"__initcall__kmod_pata_rdc__291_379_rdc_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_rdc.c", i32 379, i32 1}
!2 = !{ptr @__exitcall_rdc_pci_driver_exit, !1, !"__exitcall_rdc_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_rdc.c", i32 381, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_rdc.c", i32 382, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_rdc.c", i32 383, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version296, !11, !"__UNIQUE_ID_version296", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_rdc.c", i32 385, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @rdc_pci_driver, !17, !"rdc_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_rdc.c", i32 367, i32 26}
!18 = !{ptr @rdc_pci_tbl, !19, !"rdc_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_rdc.c", i32 361, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_rdc.c", i32 319, i32 2}
!22 = !{ptr @rdc_port_info, !23, !"rdc_port_info", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_rdc.c", i32 282, i32 35}
!24 = !{ptr @rdc_pata_ops, !25, !"rdc_pata_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_rdc.c", i32 274, i32 35}
!26 = !{ptr @rdc_set_piomode.timings, !27, !"timings", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_rdc.c", i32 102, i32 5}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_rdc.c", i32 75, i32 8}
!30 = !{ptr @rdc_lock, !29, !"rdc_lock", i1 false, i1 false}
!31 = !{ptr @rdc_set_dmamode.timings, !32, !"timings", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_rdc.c", i32 181, i32 5}
!33 = !{ptr @rdc_pata_prereset.rdc_enable_bits, !34, !"rdc_enable_bits", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_rdc.c", i32 65, i32 31}
!35 = !{ptr @rdc_sht, !36, !"rdc_sht", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_rdc.c", i32 291, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
