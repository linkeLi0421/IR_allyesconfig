; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_oldpiix.c_pt.bc'
source_filename = "../drivers/ata/pata_oldpiix.c"
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
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_oldpiix__289_268_oldpiix_pci_driver_init6 = internal global ptr @oldpiix_pci_driver_init, section ".initcall6.init", align 4
@oldpiix_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @oldpiix_pci_tbl, ptr @oldpiix_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_oldpiix_pci_driver_exit = internal global ptr @oldpiix_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [29 x i8] c"pata_oldpiix.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [81 x i8] c"pata_oldpiix.description=SCSI low-level driver for early PIIX series controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"pata_oldpiix.file=drivers/ata/pata_oldpiix\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"pata_oldpiix.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"pata_oldpiix.version=0.5.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_oldpiix\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.5.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@oldpiix_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 4656, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@oldpiix_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 0, ptr @oldpiix_pata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@oldpiix_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @oldpiix_qc_issue, ptr null, ptr @ata_cable_40wire, ptr null, ptr @oldpiix_set_piomode, ptr @oldpiix_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @oldpiix_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.oldpiix_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @oldpiix_init_one.info, ptr null], align 8
@oldpiix_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@oldpiix_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@oldpiix_set_piomode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@oldpiix_set_dmamode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@__const.oldpiix_set_dmamode.needed_pio = private unnamed_addr constant [3 x i32] [i32 8, i32 11, i32 12], align 4
@oldpiix_pre_reset.oldpiix_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 65, i32 1, i32 128, i32 128 }, %struct.pci_bits { i32 67, i32 1, i32 128, i32 128 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"oldpiix_pci_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 257, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 274, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"oldpiix_pci_tbl\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 251, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 238, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"oldpiix_pata_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 211, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [30 x i8] c"oldpiix_init_one.__print_once\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"oldpiix_sht\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 207, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 79, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 133, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"oldpiix_enable_bits\00", align 1
@___asan_gen_.35 = private constant [30 x i8] c"../drivers/ata/pata_oldpiix.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 42, i32 31 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_oldpiix_pci_driver_exit, ptr @__initcall__kmod_pata_oldpiix__289_268_oldpiix_pci_driver_init6, ptr @__modver_attr, ptr @oldpiix_pci_driver_exit, ptr @oldpiix_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @oldpiix_pci_tbl, ptr @oldpiix_init_one.info, ptr @oldpiix_pata_ops, ptr @oldpiix_init_one.__print_once, ptr @oldpiix_sht, ptr @oldpiix_set_piomode.timings, ptr @oldpiix_set_dmamode.timings, ptr @oldpiix_pre_reset.oldpiix_enable_bits], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_set_piomode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_set_dmamode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oldpiix_pre_reset.oldpiix_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @oldpiix_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @oldpiix_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @oldpiix_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @oldpiix_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oldpiix_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.oldpiix_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b2 = load i1, ptr @oldpiix_init_one.__print_once, align 1
  br i1 %.b2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @oldpiix_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @oldpiix_sht, ptr noundef null, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #4
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
define internal i32 @oldpiix_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  %idetm_data.i14 = alloca i16, align 2
  %idetm_data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %pio_mode.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pio_mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pio_mode.i, align 16
  %conv.i = zext i8 %7 to i32
  %sub.i = add nsw i32 %conv.i, -8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %dev1.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 -136
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %cond.i = select i1 %tobool.not.i, i32 64, i32 66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data.i) #4
  %14 = ptrtoint ptr %idetm_data.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %idetm_data.i, align 2, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp ugt i32 %sub.i, 1
  %spec.select.i = zext i1 %cmp.i to i32
  %call.i = tail call i32 @ata_pio_need_iordy(ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %or5.i = or i32 %spec.select.i, 2
  %control.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %or5.i
  %class.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp7.i = icmp eq i32 %16, 1
  %or10.i = or i32 %control.1.i, 4
  %control.2.i = select i1 %cmp7.i, i32 %or10.i, i32 %control.1.i
  %call12.i = call i32 @pci_read_config_word(ptr noundef %add.ptr.i, i32 noundef %cond.i, ptr noundef nonnull %idetm_data.i) #4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp13.i = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %idetm_data.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idetm_data.i, align 2
  %21 = and i16 %20, -13298
  %control.2.tr.i = trunc i32 %control.2.i to i16
  %22 = shl nuw nsw i16 %control.2.tr.i, 4
  %conv26.i = or i16 %22, %21
  %23 = and i16 %20, -13088
  %conv20.i = or i16 %23, %control.2.tr.i
  %storemerge.i = select i1 %cmp13.i, i16 %conv20.i, i16 %conv26.i
  %arrayidx.i = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_piomode.timings, i32 0, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i, align 1
  %conv29.i = zext i8 %25 to i16
  %shl30.i = shl i16 %conv29.i, 12
  %arrayidx32.i = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_piomode.timings, i32 0, i32 %sub.i, i32 1
  %26 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx32.i, align 1
  %conv33.i = zext i8 %27 to i16
  %shl34.i = shl nuw i16 %conv33.i, 8
  %or35.i = or i16 %storemerge.i, %shl30.i
  %or37.i = or i16 %or35.i, %shl34.i
  store i16 %or37.i, ptr %idetm_data.i, align 2
  %call39.i = call i32 @pci_write_config_word(ptr noundef %add.ptr.i, i32 noundef %cond.i, i16 noundef zeroext %or37.i) #4
  %28 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data.i) #4
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 12
  %29 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp.i12.not = icmp eq i8 %30, -1
  br i1 %cmp.i12.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %host.i, align 4
  %dev1.i16 = getelementptr inbounds %struct.ata_host, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %dev1.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %34, i32 -136
  %35 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i19 = icmp eq i32 %36, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data.i14) #4
  %37 = ptrtoint ptr %idetm_data.i14 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %idetm_data.i14, align 2, !annotation !43
  %conv2.i = zext i8 %30 to i32
  %sub.i21 = add nsw i32 %conv2.i, -32
  %arrayidx.i22 = getelementptr [3 x i32], ptr @__const.oldpiix_set_dmamode.needed_pio, i32 0, i32 %sub.i21
  %38 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i22, align 4
  %conv4.i = select i1 %tobool.not.i19, i32 64, i32 66
  %call.i23 = call i32 @pci_read_config_word(ptr noundef %add.ptr.i17, i32 noundef %conv4.i, ptr noundef nonnull %idetm_data.i14) #4
  %40 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i25 = icmp eq i32 %41, 1
  %spec.select.i26 = select i1 %cmp.i25, i32 7, i32 3
  %42 = ptrtoint ptr %pio_mode.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pio_mode.i, align 16
  %conv6.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv6.i)
  %cmp8.i = icmp ugt i32 %39, %conv6.i
  %or11.i = or i32 %spec.select.i26, 8
  %control.1.i28 = select i1 %cmp8.i, i32 %or11.i, i32 %spec.select.i26
  %44 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp13.i30 = icmp eq i32 %45, 0
  %46 = ptrtoint ptr %idetm_data.i14 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %idetm_data.i14, align 2
  %48 = and i16 %47, -13298
  %control.1.tr.i = trunc i32 %control.1.i28 to i16
  %49 = shl nuw nsw i16 %control.1.tr.i, 4
  %conv26.i31 = or i16 %49, %48
  %50 = and i16 %47, -13088
  %conv20.i32 = or i16 %50, %control.1.tr.i
  %storemerge.i33 = select i1 %cmp13.i30, i16 %conv20.i32, i16 %conv26.i31
  %sub3.i = add i32 %39, -8
  %arrayidx28.i = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_dmamode.timings, i32 0, i32 %sub3.i
  %51 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx28.i, align 1
  %conv30.i = zext i8 %52 to i16
  %shl31.i = shl i16 %conv30.i, 12
  %arrayidx33.i = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_dmamode.timings, i32 0, i32 %sub3.i, i32 1
  %53 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %54 to i16
  %shl35.i = shl nuw i16 %conv34.i, 8
  %or36.i = or i16 %shl35.i, %shl31.i
  %or38.i = or i16 %or36.i, %storemerge.i33
  store i16 %or38.i, ptr %idetm_data.i14, align 2
  %call41.i = call i32 @pci_write_config_word(ptr noundef %add.ptr.i17, i32 noundef %conv4.i, i16 noundef zeroext %or38.i) #4
  %55 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %3, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data.i14) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #4
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oldpiix_set_piomode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  %idetm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data) #4
  %8 = ptrtoint ptr %idetm_data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %idetm_data, align 2, !annotation !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1
  %spec.select = zext i1 %cmp to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %or5 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %9 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7 = icmp eq i32 %10, 1
  %or10 = or i32 %control.1, 4
  %control.2 = select i1 %cmp7, i32 %or10, i32 %control.1
  %call12 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %idetm_data) #4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %11 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13 = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %idetm_data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idetm_data, align 2
  %15 = and i16 %14, -13298
  %control.2.tr = trunc i32 %control.2 to i16
  %16 = shl nuw nsw i16 %control.2.tr, 4
  %conv26 = or i16 %15, %16
  %17 = and i16 %14, -13088
  %18 = trunc i32 %control.2 to i16
  %conv20 = or i16 %17, %18
  %storemerge = select i1 %cmp13, i16 %conv20, i16 %conv26
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_piomode.timings, i32 0, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv29 = zext i8 %20 to i16
  %shl30 = shl i16 %conv29, 12
  %arrayidx32 = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_piomode.timings, i32 0, i32 %sub, i32 1
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %22 to i16
  %shl34 = shl nuw i16 %conv33, 8
  %or35 = or i16 %shl30, %storemerge
  %or37 = or i16 %or35, %shl34
  store i16 %or37, ptr %idetm_data, align 2
  %call39 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %or37) #4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %23 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %adev, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oldpiix_set_dmamode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  %idetm_data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %idetm_data) #4
  %6 = ptrtoint ptr %idetm_data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %idetm_data, align 2, !annotation !43
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %7 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dma_mode, align 1
  %conv2 = zext i8 %8 to i32
  %sub = add nsw i32 %conv2, -32
  %arrayidx = getelementptr [3 x i32], ptr @__const.oldpiix_set_dmamode.needed_pio, i32 0, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %conv4 = select i1 %tobool.not, i32 64, i32 66
  %call = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %conv4, ptr noundef nonnull %idetm_data) #4
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %11 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  %spec.select = select i1 %cmp, i32 7, i32 3
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %13 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pio_mode, align 16
  %conv6 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv6)
  %cmp8 = icmp ugt i32 %10, %conv6
  %or11 = or i32 %spec.select, 8
  %control.1 = select i1 %cmp8, i32 %or11, i32 %spec.select
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp eq i32 %16, 0
  %17 = ptrtoint ptr %idetm_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idetm_data, align 2
  %19 = and i16 %18, -13298
  %control.1.tr = trunc i32 %control.1 to i16
  %20 = shl nuw nsw i16 %control.1.tr, 4
  %conv26 = or i16 %19, %20
  %21 = and i16 %18, -13088
  %22 = trunc i32 %control.1 to i16
  %conv20 = or i16 %21, %22
  %storemerge = select i1 %cmp13, i16 %conv20, i16 %conv26
  %sub3 = add i32 %10, -8
  %arrayidx28 = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_dmamode.timings, i32 0, i32 %sub3
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx28, align 1
  %conv30 = zext i8 %24 to i16
  %shl31 = shl i16 %conv30, 12
  %arrayidx33 = getelementptr [5 x [2 x i8]], ptr @oldpiix_set_dmamode.timings, i32 0, i32 %sub3, i32 1
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %26 to i16
  %shl35 = shl nuw i16 %conv34, 8
  %or36 = or i16 %shl31, %storemerge
  %or38 = or i16 %or36, %shl35
  store i16 %or38, ptr %idetm_data, align 2
  %call41 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %conv4, i16 noundef zeroext %or38) #4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %27 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %adev, ptr %private_data, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %idetm_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oldpiix_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @oldpiix_pre_reset.oldpiix_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_pata_oldpiix__289_268_oldpiix_pci_driver_init6, !1, !"__initcall__kmod_pata_oldpiix__289_268_oldpiix_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_oldpiix.c", i32 268, i32 1}
!2 = !{ptr @__exitcall_oldpiix_pci_driver_exit, !1, !"__exitcall_oldpiix_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_oldpiix.c", i32 270, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_oldpiix.c", i32 271, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_oldpiix.c", i32 272, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_oldpiix.c", i32 274, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @oldpiix_pci_driver, !17, !"oldpiix_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_oldpiix.c", i32 257, i32 26}
!18 = !{ptr @oldpiix_pci_tbl, !19, !"oldpiix_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_oldpiix.c", i32 251, i32 35}
!20 = !{ptr @oldpiix_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_oldpiix.c", i32 238, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_oldpiix.c", i32 246, i32 2}
!24 = !{ptr @oldpiix_pata_ops, !25, !"oldpiix_pata_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_oldpiix.c", i32 211, i32 35}
!26 = !{ptr @oldpiix_set_piomode.timings, !27, !"timings", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_oldpiix.c", i32 79, i32 5}
!28 = !{ptr @oldpiix_set_dmamode.timings, !29, !"timings", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_oldpiix.c", i32 133, i32 5}
!30 = !{ptr @oldpiix_pre_reset.oldpiix_enable_bits, !31, !"oldpiix_enable_bits", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_oldpiix.c", i32 42, i32 31}
!32 = !{ptr @oldpiix_sht, !33, !"oldpiix_sht", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_oldpiix.c", i32 207, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
