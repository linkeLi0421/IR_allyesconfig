; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_it8213.c_pt.bc'
source_filename = "../drivers/ata/pata_it8213.c"
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

@__initcall__kmod_pata_it8213__291_293_it8213_pci_driver_init6 = internal global ptr @it8213_pci_driver_init, section ".initcall6.init", align 4
@it8213_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @it8213_pci_tbl, ptr @it8213_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_it8213_pci_driver_exit = internal global ptr @it8213_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"pata_it8213.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [63 x i8] c"pata_it8213.description=SCSI low-level driver for the ITE 8213\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [41 x i8] c"pata_it8213.file=drivers/ata/pata_it8213\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"pata_it8213.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version296 = internal constant [26 x i8] c"pata_it8213.version=0.0.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pata_it8213\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@it8213_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4739, i32 33299, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@it8213_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 127, ptr @it8213_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@it8213_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it8213_cable_detect, ptr null, ptr @it8213_set_piomode, ptr @it8213_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @it8213_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_dummy_port_info = external dso_local constant %struct.ata_port_info, align 4
@__const.it8213_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @it8213_init_one.info, ptr @ata_dummy_port_info], align 8
@it8213_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@it8213_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@it8213_set_piomode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@it8213_set_dmamode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@it8213_set_dmamode.needed_pio = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8, i32 11, i32 12], [20 x i8] zeroinitializer }, align 32
@it8213_pre_reset.it8213_enable_bits = internal constant { [1 x %struct.pci_bits], [16 x i8] } { [1 x %struct.pci_bits] [%struct.pci_bits { i32 65, i32 1, i32 128, i32 128 }], [16 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"it8213_pci_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 282, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 299, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"it8213_pci_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 276, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 261, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"it8213_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 236, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"it8213_init_one.__print_once\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"it8213_sht\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 231, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 89, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 149, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"needed_pio\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 195, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"it8213_enable_bits\00", align 1
@___asan_gen_.38 = private constant [29 x i8] c"../drivers/ata/pata_it8213.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 35, i32 31 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_version296, ptr @__exitcall_it8213_pci_driver_exit, ptr @__initcall__kmod_pata_it8213__291_293_it8213_pci_driver_init6, ptr @__modver_attr, ptr @it8213_pci_driver_exit, ptr @it8213_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @it8213_pci_tbl, ptr @it8213_init_one.info, ptr @it8213_ops, ptr @it8213_init_one.__print_once, ptr @it8213_sht, ptr @it8213_set_piomode.timings, ptr @it8213_set_dmamode.timings, ptr @it8213_set_dmamode.needed_pio, ptr @it8213_pre_reset.it8213_enable_bits], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_set_piomode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_set_dmamode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_set_dmamode.needed_pio to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @it8213_pre_reset.it8213_enable_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @it8213_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @it8213_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @it8213_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @it8213_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it8213_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %0 = load i64, ptr @__const.it8213_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b2 = load i1, ptr @it8213_init_one.__print_once, align 1
  br i1 %.b2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @it8213_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @it8213_sht, ptr noundef null, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_resume(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it8213_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %tmp1 = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1) #5
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp1, align 1, !annotation !45
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 66, ptr noundef nonnull %tmp1) #5
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it8213_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %slave_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 64, i32 66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #5
  %8 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %master_data, align 2, !annotation !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1
  %spec.select = zext i1 %cmp to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %or5 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %9 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7.not = icmp eq i32 %10, 1
  %or10 = or i32 %control.1, 4
  %control.2 = select i1 %cmp7.not, i32 %control.1, i32 %or10
  %call12 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %master_data) #5
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %11 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13 = icmp eq i32 %12, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %master_data, align 2
  %15 = and i16 %14, -13072
  %16 = trunc i32 %control.2 to i16
  %conv20 = or i16 %15, %16
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @it8213_set_piomode.timings, i32 0, i32 %sub
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %18 to i16
  %shl = shl i16 %conv22, 12
  %arrayidx24 = getelementptr [5 x [2 x i8]], ptr @it8213_set_piomode.timings, i32 0, i32 %sub, i32 1
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %20 to i16
  %shl26 = shl nuw i16 %conv25, 8
  %or27 = or i16 %shl, %conv20
  %or29 = or i16 %or27, %shl26
  store i16 %or29, ptr %master_data, align 2
  br label %if.end54

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #5
  %21 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %slave_data, align 1, !annotation !45
  %22 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %master_data, align 2
  %24 = and i16 %23, -241
  %control.2.tr = trunc i32 %control.2 to i16
  %25 = shl nuw nsw i16 %control.2.tr, 4
  %conv37 = or i16 %24, %25
  store i16 %conv37, ptr %master_data, align 2
  %call38 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #5
  %26 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %slave_data, align 1
  %28 = and i8 %27, -16
  %arrayidx42 = getelementptr [5 x [2 x i8]], ptr @it8213_set_piomode.timings, i32 0, i32 %sub
  %29 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx42, align 1
  %shl45 = shl i8 %30, 2
  %arrayidx47 = getelementptr [5 x [2 x i8]], ptr @it8213_set_piomode.timings, i32 0, i32 %sub, i32 1
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx47, align 1
  %or49 = or i8 %32, %28
  %or51 = or i8 %or49, %shl45
  store i8 %or51, ptr %slave_data, align 1
  %call53 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %or51) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #5
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then15
  %33 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %master_data, align 2
  %35 = or i16 %34, 16384
  store i16 %35, ptr %master_data, align 2
  %call58 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %35) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @it8213_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %udma_enable = alloca i8, align 1
  %udma_timing = alloca i16, align 2
  %ideconf = alloca i16, align 2
  %slave_data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #5
  %4 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %master_data, align 2, !annotation !45
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %5 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dma_mode, align 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %7 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devno, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #5
  %9 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %udma_enable, align 1, !annotation !45
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %master_data) #5
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %6)
  %cmp = icmp ugt i8 %6, 63
  %10 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dma_mode, align 1
  %conv5 = zext i8 %11 to i32
  br i1 %cmp, label %if.then, label %if.else42

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %conv5, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %udma_timing) #5
  %12 = ptrtoint ptr %udma_timing to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %udma_timing, align 2, !annotation !45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ideconf) #5
  %13 = ptrtoint ptr %ideconf to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %ideconf, align 2, !annotation !45
  %and = and i32 %conv5, 1
  %sub6 = sub nuw nsw i32 2, %and
  %14 = call i32 @llvm.umin.i32(i32 %sub6, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp10 = icmp ugt i32 %sub, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp13 = icmp ugt i32 %sub, 2
  %. = zext i1 %cmp13 to i32
  %u_clock.0 = select i1 %cmp10, i32 4096, i32 %.
  %shl = shl nuw i32 1, %8
  %15 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %udma_enable, align 1
  %17 = trunc i32 %shl to i8
  %conv19 = or i8 %16, %17
  store i8 %conv19, ptr %udma_enable, align 1
  %call20 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %udma_timing) #5
  %mul = shl i32 %8, 2
  %shl21 = shl i32 3, %mul
  %18 = ptrtoint ptr %udma_timing to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %udma_timing, align 2
  %20 = trunc i32 %shl21 to i16
  %21 = xor i16 %20, -1
  %conv24 = and i16 %19, %21
  %shl26 = shl i32 %14, %mul
  %22 = trunc i32 %shl26 to i16
  %conv29 = or i16 %conv24, %22
  store i16 %conv29, ptr %udma_timing, align 2
  %call30 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext %conv29) #5
  %call31 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ideconf) #5
  %shl32 = shl i32 4097, %8
  %23 = ptrtoint ptr %ideconf to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ideconf, align 2
  %25 = trunc i32 %shl32 to i16
  %26 = xor i16 %25, -1
  %conv36 = and i16 %24, %26
  %shl37 = shl i32 %u_clock.0, %8
  %27 = trunc i32 %shl37 to i16
  %conv40 = or i16 %conv36, %27
  store i16 %conv40, ptr %ideconf, align 2
  %call41 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 84, i16 noundef zeroext %conv40) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ideconf) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %udma_timing) #5
  br label %if.end107

if.else42:                                        ; preds = %entry
  %sub45 = add nsw i32 %conv5, -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #5
  %28 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %slave_data, align 1, !annotation !45
  %arrayidx = getelementptr [3 x i32], ptr @it8213_set_dmamode.needed_pio, i32 0, i32 %sub45
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %sub46 = add i32 %30, -8
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %31 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pio_mode, align 16
  %conv47 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv47)
  %cmp49 = icmp ugt i32 %30, %conv47
  %spec.select = select i1 %cmp49, i16 11, i16 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %33 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %master_data, align 2
  br i1 %tobool.not, label %if.else81, label %if.then54

if.then54:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #7
  %35 = and i16 %34, -177
  %36 = shl nuw nsw i16 %spec.select, 4
  %conv61 = or i16 %35, %36
  %37 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv61, ptr %master_data, align 2
  %call62 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #5
  %38 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %slave_data, align 1
  %40 = and i8 %39, -16
  %arrayidx66 = getelementptr [5 x [2 x i8]], ptr @it8213_set_dmamode.timings, i32 0, i32 %sub46
  %41 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx66, align 1
  %shl69 = shl i8 %42, 2
  %arrayidx71 = getelementptr [5 x [2 x i8]], ptr @it8213_set_dmamode.timings, i32 0, i32 %sub46, i32 1
  %43 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx71, align 1
  %or73 = or i8 %shl69, %44
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %45 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool74.not = icmp eq i32 %46, 0
  %cond75 = select i1 %tobool74.not, i8 0, i8 4
  %shl76 = shl i8 %or73, %cond75
  %or78 = or i8 %shl76, %40
  %47 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or78, ptr %slave_data, align 1
  %call80 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %or78) #5
  br label %if.end100

if.else81:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #7
  %48 = and i16 %34, -13068
  %conv87 = or i16 %48, %spec.select
  %arrayidx88 = getelementptr [5 x [2 x i8]], ptr @it8213_set_dmamode.timings, i32 0, i32 %sub46
  %49 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx88, align 1
  %conv90 = zext i8 %50 to i16
  %shl91 = shl i16 %conv90, 12
  %arrayidx93 = getelementptr [5 x [2 x i8]], ptr @it8213_set_dmamode.timings, i32 0, i32 %sub46, i32 1
  %51 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %52 to i16
  %shl95 = shl nuw i16 %conv94, 8
  %or96 = or i16 %shl91, %conv87
  %or98 = or i16 %or96, %shl95
  %53 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %or98, ptr %master_data, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.else81, %if.then54
  %shl101 = shl nuw i32 1, %8
  %54 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %udma_enable, align 1
  %56 = trunc i32 %shl101 to i8
  %57 = xor i8 %56, -1
  %conv105 = and i8 %55, %57
  store i8 %conv105, ptr %udma_enable, align 1
  %58 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %master_data, align 2
  %call106 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 64, i16 noundef zeroext %59) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #5
  br label %if.end107

if.end107:                                        ; preds = %if.end100, %if.then
  %60 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %udma_enable, align 1
  %call108 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %61) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @it8213_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %arrayidx = getelementptr [1 x %struct.pci_bits], ptr @it8213_pre_reset.it8213_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_pata_it8213__291_293_it8213_pci_driver_init6, !1, !"__initcall__kmod_pata_it8213__291_293_it8213_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_it8213.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_it8213_pci_driver_exit, !1, !"__exitcall_it8213_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author292, !4, !"__UNIQUE_ID_author292", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_it8213.c", i32 295, i32 1}
!5 = !{ptr @__UNIQUE_ID_description293, !6, !"__UNIQUE_ID_description293", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_it8213.c", i32 296, i32 1}
!7 = !{ptr @__UNIQUE_ID_file294, !8, !"__UNIQUE_ID_file294", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_it8213.c", i32 297, i32 1}
!9 = !{ptr @__UNIQUE_ID_license295, !8, !"__UNIQUE_ID_license295", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version296, !11, !"__UNIQUE_ID_version296", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_it8213.c", i32 299, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @it8213_pci_driver, !17, !"it8213_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_it8213.c", i32 282, i32 26}
!18 = !{ptr @it8213_pci_tbl, !19, !"it8213_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_it8213.c", i32 276, i32 35}
!20 = !{ptr @it8213_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_it8213.c", i32 261, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_it8213.c", i32 271, i32 2}
!24 = !{ptr @it8213_ops, !25, !"it8213_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_it8213.c", i32 236, i32 35}
!26 = !{ptr @it8213_set_piomode.timings, !27, !"timings", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_it8213.c", i32 89, i32 5}
!28 = !{ptr @it8213_set_dmamode.timings, !29, !"timings", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_it8213.c", i32 149, i32 5}
!30 = !{ptr @it8213_set_dmamode.needed_pio, !31, !"needed_pio", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_it8213.c", i32 195, i32 29}
!32 = !{ptr @it8213_pre_reset.it8213_enable_bits, !33, !"it8213_enable_bits", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_it8213.c", i32 35, i32 31}
!34 = !{ptr @it8213_sht, !35, !"it8213_sht", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_it8213.c", i32 231, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
