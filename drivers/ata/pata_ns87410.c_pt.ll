; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_ns87410.c_pt.bc'
source_filename = "../drivers/ata/pata_ns87410.c"
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
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_ns87410__301_157_ns87410_pci_driver_init6 = internal global ptr @ns87410_pci_driver_init, section ".initcall6.init", align 4
@ns87410_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ns87410, ptr @ns87410_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ns87410_pci_driver_exit = internal global ptr @ns87410_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [29 x i8] c"pata_ns87410.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [61 x i8] c"pata_ns87410.description=low-level driver for Nat Semi 87410\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [43 x i8] c"pata_ns87410.file=drivers/ata/pata_ns87410\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [25 x i8] c"pata_ns87410.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [27 x i8] c"pata_ns87410.version=0.4.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_ns87410\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ns87410 = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4107, i32 53249, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ns87410_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 15, i32 0, i32 0, ptr @ns87410_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ns87410_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr @ns87410_qc_issue, ptr null, ptr @ata_cable_40wire, ptr null, ptr @ns87410_set_piomode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns87410_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.ns87410_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @ns87410_init_one.info, ptr null], align 8
@ns87410_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ns87410_set_piomode.activebits = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\00\01\02\03\04\05\05\06\06\06\06\07\07\07\07", [17 x i8] zeroinitializer }, align 32
@ns87410_set_piomode.recoverbits = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\00\01\02\03\04\05\06\06\07\07\07\07", [20 x i8] zeroinitializer }, align 32
@ns87410_set_piomode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 75, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown mode %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ns87410_set_piomode\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/pata_ns87410.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ns87410_set_piomode._entry_ptr = internal global ptr @ns87410_set_piomode._entry, section ".printk_index", align 4
@ns87410_pre_reset.ns87410_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 67, i32 1, i32 8, i32 8 }, %struct.pci_bits { i32 71, i32 1, i32 8, i32 8 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"ns87410_pci_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 146, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 163, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [8 x i8] c"ns87410\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 140, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 131, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"ns87410_port_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 121, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"ns87410_sht\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 117, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"activebits\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 57, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"recoverbits\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 63, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 75, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"ns87410_enable_bits\00", align 1
@___asan_gen_.57 = private constant [30 x i8] c"../drivers/ata/pata_ns87410.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 30, i32 31 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_version306, ptr @__exitcall_ns87410_pci_driver_exit, ptr @__initcall__kmod_pata_ns87410__301_157_ns87410_pci_driver_init6, ptr @__modver_attr, ptr @ns87410_pci_driver_exit, ptr @ns87410_set_piomode._entry, ptr @ns87410_set_piomode._entry_ptr, ptr @ns87410_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ns87410, ptr @ns87410_init_one.info, ptr @ns87410_port_ops, ptr @ns87410_sht, ptr @ns87410_set_piomode.activebits, ptr @ns87410_set_piomode.recoverbits, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ns87410_pre_reset.ns87410_enable_bits], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_set_piomode.activebits to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_set_piomode.recoverbits to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_set_piomode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ns87410_pre_reset.ns87410_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ns87410_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ns87410_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ns87410_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ns87410_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns87410_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = load i64, ptr @__const.ns87410_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %call = call i32 @ata_pci_sff_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @ns87410_sht, ptr noundef null, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
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
declare dso_local i32 @ata_pci_sff_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns87410_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pio_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ns87410_set_piomode(ptr noundef %1, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ns87410_set_piomode(ptr nocapture noundef %ap, ptr noundef %adev) #2 align 64 {
entry:
  %idefr = alloca i8, align 1
  %at = alloca %struct.ata_timing, align 2
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
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %mul = shl i32 %5, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %idefr) #6
  %6 = ptrtoint ptr %idefr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %idefr, align 1, !annotation !49
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %at) #6
  %add1 = add i32 %mul, 67
  %7 = call ptr @memset(ptr %at, i32 255, i32 20)
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add1, ptr noundef nonnull %idefr) #6
  %call2 = call i32 @ata_pio_need_iordy(ptr noundef %adev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %8 = ptrtoint ptr %idefr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idefr, align 1
  %10 = and i8 %9, -5
  %masksel = select i1 %tobool.not, i8 0, i8 4
  %storemerge = or i8 %10, %masksel
  store i8 %storemerge, ptr %idefr, align 1
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %11 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pio_mode, align 16
  %conv6 = zext i8 %12 to i16
  %call7 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv6, ptr noundef nonnull %at, i32 noundef 30303, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pio_mode, align 16
  %conv12 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %conv12) #9
  br label %cleanup

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 6
  %16 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ata_timing, ptr %at, i32 0, i32 1
  %add = add i32 %mul, 64
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %16, align 2
  %20 = call i16 @llvm.umax.i16(i16 %19, i16 2)
  %21 = call i16 @llvm.umin.i16(i16 %20, i16 16)
  %conv33 = add nsw i16 %21, -2
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv33, ptr %16, align 2
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %17, align 2
  %25 = call i16 @llvm.umax.i16(i16 %24, i16 1)
  %26 = call i16 @llvm.umin.i16(i16 %25, i16 4)
  %conv59 = add nsw i16 %26, -1
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv59, ptr %17, align 2
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %15, align 2
  %30 = call i16 @llvm.umax.i16(i16 %29, i16 1)
  %31 = call i16 @llvm.umin.i16(i16 %30, i16 12)
  %conv85 = add nsw i16 %31, -1
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv85, ptr %15, align 2
  %conv88 = trunc i16 %conv59 to i8
  %shl = shl nuw i8 %conv88, 6
  %idxprom = zext i16 %conv85 to i32
  %arrayidx = getelementptr [12 x i8], ptr @ns87410_set_piomode.recoverbits, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx, align 1
  %shl91 = shl i8 %34, 3
  %or92 = or i8 %shl, %shl91
  %idxprom94 = zext i16 %conv33 to i32
  %arrayidx95 = getelementptr [15 x i8], ptr @ns87410_set_piomode.activebits, i32 0, i32 %idxprom94
  %35 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx95, align 1
  %or97 = or i8 %or92, %36
  %call99 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add, i8 noundef zeroext %or97) #6
  %37 = ptrtoint ptr %idefr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %idefr, align 1
  %call101 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add1, i8 noundef zeroext %38) #6
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %39 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %adev, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %at) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %idefr) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ns87410_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @ns87410_pre_reset.ns87410_enable_bits, i32 0, i32 %7
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
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_timing_compute(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

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
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_pata_ns87410__301_157_ns87410_pci_driver_init6, !1, !"__initcall__kmod_pata_ns87410__301_157_ns87410_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_ns87410.c", i32 157, i32 1}
!2 = !{ptr @__exitcall_ns87410_pci_driver_exit, !1, !"__exitcall_ns87410_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_ns87410.c", i32 159, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_ns87410.c", i32 160, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_ns87410.c", i32 161, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version306, !11, !"__UNIQUE_ID_version306", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_ns87410.c", i32 163, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @ns87410_pci_driver, !17, !"ns87410_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_ns87410.c", i32 146, i32 26}
!18 = !{ptr @ns87410, !19, !"ns87410", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_ns87410.c", i32 140, i32 35}
!20 = !{ptr @ns87410_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_ns87410.c", i32 131, i32 36}
!22 = !{ptr @ns87410_port_ops, !23, !"ns87410_port_ops", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_ns87410.c", i32 121, i32 35}
!24 = !{ptr @ns87410_set_piomode.activebits, !25, !"activebits", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_ns87410.c", i32 57, i32 18}
!26 = !{ptr @ns87410_set_piomode.recoverbits, !27, !"recoverbits", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_ns87410.c", i32 63, i32 18}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_ns87410.c", i32 75, i32 3}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ns87410_set_piomode._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ns87410_set_piomode._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ns87410_pre_reset.ns87410_enable_bits, !37, !"ns87410_enable_bits", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_ns87410.c", i32 30, i32 31}
!38 = !{ptr @ns87410_sht, !39, !"ns87410_sht", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_ns87410.c", i32 117, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
