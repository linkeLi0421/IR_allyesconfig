; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_efar.c_pt.bc'
source_filename = "../drivers/ata/pata_efar.c"
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

@__initcall__kmod_pata_efar__289_298_efar_pci_driver_init6 = internal global ptr @efar_pci_driver_init, section ".initcall6.init", align 4
@efar_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @efar_pci_tbl, ptr @efar_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_efar_pci_driver_exit = internal global ptr @efar_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [26 x i8] c"pata_efar.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [65 x i8] c"pata_efar.description=SCSI low-level driver for EFAR PIIX clones\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"pata_efar.file=drivers/ata/pata_efar\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [22 x i8] c"pata_efar.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [24 x i8] c"pata_efar.version=0.4.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pata_efar\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.5\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@efar_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4181, i32 37168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@efar_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 31, ptr @efar_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@efar_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efar_cable_detect, ptr null, ptr @efar_set_piomode, ptr @efar_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efar_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.efar_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @efar_init_one.info, ptr @efar_init_one.info], align 8
@efar_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@efar_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@efar_set_piomode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@efar_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"efar_lock\00", [22 x i8] zeroinitializer }, align 32
@efar_set_dmamode.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@__const.efar_set_dmamode.needed_pio = private unnamed_addr constant [3 x i32] [i32 8, i32 11, i32 12], align 4
@efar_pre_reset.efar_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 65, i32 1, i32 128, i32 128 }, %struct.pci_bits { i32 67, i32 1, i32 128, i32 128 }], [32 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"efar_pci_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 287, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 304, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"efar_pci_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 281, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 266, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"efar_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 241, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"efar_init_one.__print_once\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"efar_sht\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 237, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 100, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"efar_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 71, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 169, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"efar_enable_bits\00", align 1
@___asan_gen_.42 = private constant [27 x i8] c"../drivers/ata/pata_efar.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 39, i32 31 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_efar_pci_driver_exit, ptr @__initcall__kmod_pata_efar__289_298_efar_pci_driver_init6, ptr @__modver_attr, ptr @efar_pci_driver_exit, ptr @efar_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @efar_pci_tbl, ptr @efar_init_one.info, ptr @efar_ops, ptr @efar_init_one.__print_once, ptr @efar_sht, ptr @efar_set_piomode.timings, ptr @efar_lock, ptr @.str.3, ptr @efar_set_dmamode.timings, ptr @efar_pre_reset.efar_enable_bits], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_set_piomode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_set_dmamode.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efar_pre_reset.efar_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @efar_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @efar_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @efar_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @efar_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efar_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = load i64, ptr @__const.efar_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b2 = load i1, ptr @efar_init_one.__print_once, align 1
  br i1 %.b2, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @efar_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @efar_sht, ptr noundef null, i32 noundef 4) #4
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
define internal i32 @efar_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  %tmp1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1) #4
  %4 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp1, align 1, !annotation !46
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 71, ptr noundef nonnull %tmp1) #4
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %conv = zext i8 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %shr = lshr i32 2, %8
  %and = and i32 %shr, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efar_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %udma_enable = alloca i8, align 1
  %slave_data = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #4
  %8 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %master_data, align 2, !annotation !46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #4
  %9 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %udma_enable, align 1, !annotation !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1
  %spec.select = zext i1 %cmp to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %or5 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool3.not, i32 %spec.select, i32 %or5
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %10 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  %or10 = or i32 %control.1, 4
  %control.2 = select i1 %cmp7, i32 %or10, i32 %control.1
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @efar_lock) #4
  %call20 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %master_data) #4
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp21 = icmp eq i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %master_data, align 2
  %16 = and i16 %15, -13072
  %17 = trunc i32 %control.2 to i16
  %conv28 = or i16 %16, %17
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @efar_set_piomode.timings, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv30 = zext i8 %19 to i16
  %shl = shl i16 %conv30, 12
  %arrayidx32 = getelementptr [5 x [2 x i8]], ptr @efar_set_piomode.timings, i32 0, i32 %sub, i32 1
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %21 to i16
  %shl34 = shl nuw i16 %conv33, 8
  %or35 = or i16 %shl, %conv28
  %or37 = or i16 %or35, %shl34
  store i16 %or37, ptr %master_data, align 2
  br label %if.end67

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_no, align 4
  %mul = shl i32 %23, 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #4
  %24 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %slave_data, align 1, !annotation !46
  %25 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %master_data, align 2
  %27 = and i16 %26, -241
  %control.2.tr = trunc i32 %control.2 to i16
  %28 = shl nuw nsw i16 %control.2.tr, 4
  %conv46 = or i16 %27, %28
  store i16 %conv46, ptr %master_data, align 2
  %call47 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #4
  %29 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool49.not = icmp eq i32 %30, 0
  %cond50 = select i1 %tobool49.not, i8 -16, i8 15
  %31 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %slave_data, align 1
  %and52 = and i8 %cond50, %32
  %arrayidx54 = getelementptr [5 x [2 x i8]], ptr @efar_set_piomode.timings, i32 0, i32 %sub
  %33 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx54, align 1
  %conv56 = zext i8 %34 to i32
  %shl57 = shl nuw nsw i32 %conv56, 2
  %arrayidx59 = getelementptr [5 x [2 x i8]], ptr @efar_set_piomode.timings, i32 0, i32 %sub, i32 1
  %35 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %36 to i32
  %or61 = or i32 %shl57, %conv60
  %shl62 = shl i32 %or61, %mul
  %37 = trunc i32 %shl62 to i8
  %conv65 = or i8 %and52, %37
  store i8 %conv65, ptr %slave_data, align 1
  %call66 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %conv65) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then23
  %38 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %master_data, align 2
  %40 = or i16 %39, 16384
  store i16 %40, ptr %master_data, align 2
  %call71 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %40) #4
  %call72 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #4
  %41 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_no, align 4
  %mul74 = shl i32 %42, 1
  %43 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %devno, align 4
  %add = add i32 %mul74, %44
  %shl76 = shl nuw i32 1, %add
  %45 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %udma_enable, align 1
  %47 = trunc i32 %shl76 to i8
  %48 = xor i8 %47, -1
  %conv79 = and i8 %46, %48
  store i8 %conv79, ptr %udma_enable, align 1
  %call80 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %conv79) #4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @efar_lock, i32 noundef %call17) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efar_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %udma_enable = alloca i8, align 1
  %udma_timing = alloca i16, align 2
  %slave_data = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #4
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #4
  %11 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %udma_enable, align 1, !annotation !46
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @efar_lock) #4
  %conv9 = select i1 %tobool.not, i32 64, i32 66
  %call10 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %conv9, ptr noundef nonnull %master_data) #4
  %call11 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %8)
  %cmp13 = icmp ugt i8 %8, 63
  %12 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dma_mode, align 1
  %conv16 = zext i8 %13 to i32
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = add nuw nsw i32 %conv16, 65472
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %udma_timing) #4
  %14 = ptrtoint ptr %udma_timing to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %udma_timing, align 2, !annotation !46
  %shl = shl nuw i32 1, %add
  %15 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %udma_enable, align 1
  %17 = trunc i32 %shl to i8
  %conv18 = or i8 %16, %17
  store i8 %conv18, ptr %udma_enable, align 1
  %call19 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %udma_timing) #4
  %mul20 = shl i32 %add, 2
  %shl21 = shl i32 7, %mul20
  %18 = ptrtoint ptr %udma_timing to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %udma_timing, align 2
  %20 = trunc i32 %shl21 to i16
  %21 = xor i16 %20, -1
  %conv23 = and i16 %19, %21
  %shl25 = shl i32 %sub, %mul20
  %22 = trunc i32 %shl25 to i16
  %conv28 = or i16 %conv23, %22
  store i16 %conv28, ptr %udma_timing, align 2
  %call29 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext %conv28) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %udma_timing) #4
  br label %if.end100

if.else:                                          ; preds = %entry
  %sub32 = add nsw i32 %conv16, -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #4
  %23 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %slave_data, align 1, !annotation !46
  %arrayidx = getelementptr [3 x i32], ptr @__const.efar_set_dmamode.needed_pio, i32 0, i32 %sub32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %sub33 = add i32 %25, -8
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %26 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pio_mode, align 16
  %conv34 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %conv34)
  %cmp36 = icmp ugt i32 %25, %conv34
  %spec.select = select i1 %cmp36, i16 11, i16 3
  %28 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool41.not = icmp eq i32 %29, 0
  %30 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %master_data, align 2
  br i1 %tobool41.not, label %if.else73, label %if.then42

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %32 = and i16 %31, -177
  %33 = shl nuw nsw i16 %spec.select, 4
  %conv49 = or i16 %32, %33
  %34 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv49, ptr %master_data, align 2
  %call50 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #4
  %35 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool52.not = icmp eq i32 %36, 0
  %cond53 = select i1 %tobool52.not, i8 -16, i8 15
  %37 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %slave_data, align 1
  %and55 = and i8 %cond53, %38
  %arrayidx57 = getelementptr [5 x [2 x i8]], ptr @efar_set_dmamode.timings, i32 0, i32 %sub33
  %39 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx57, align 1
  %shl60 = shl i8 %40, 2
  %arrayidx62 = getelementptr [5 x [2 x i8]], ptr @efar_set_dmamode.timings, i32 0, i32 %sub33, i32 1
  %41 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx62, align 1
  %or64 = or i8 %shl60, %42
  %cond67 = select i1 %tobool52.not, i8 0, i8 4
  %shl68 = shl i8 %or64, %cond67
  %or70 = or i8 %shl68, %and55
  store i8 %or70, ptr %slave_data, align 1
  %call72 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %or70) #4
  br label %if.end92

if.else73:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %43 = and i16 %31, -13068
  %conv79 = or i16 %43, %spec.select
  %arrayidx80 = getelementptr [5 x [2 x i8]], ptr @efar_set_dmamode.timings, i32 0, i32 %sub33
  %44 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx80, align 1
  %conv82 = zext i8 %45 to i16
  %shl83 = shl i16 %conv82, 12
  %arrayidx85 = getelementptr [5 x [2 x i8]], ptr @efar_set_dmamode.timings, i32 0, i32 %sub33, i32 1
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %47 to i16
  %shl87 = shl nuw i16 %conv86, 8
  %or88 = or i16 %shl83, %conv79
  %or90 = or i16 %or88, %shl87
  %48 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %or90, ptr %master_data, align 2
  br label %if.end92

if.end92:                                         ; preds = %if.else73, %if.then42
  %shl93 = shl nuw i32 1, %add
  %49 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %udma_enable, align 1
  %51 = trunc i32 %shl93 to i8
  %52 = xor i8 %51, -1
  %conv97 = and i8 %50, %52
  store i8 %conv97, ptr %udma_enable, align 1
  %53 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %master_data, align 2
  %call99 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %conv9, i16 noundef zeroext %54) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #4
  br label %if.end100

if.end100:                                        ; preds = %if.end92, %if.then
  %55 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %udma_enable, align 1
  %call101 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %56) #4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @efar_lock, i32 noundef %call6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efar_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @efar_pre_reset.efar_enable_bits, i32 0, i32 %7
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
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_pata_efar__289_298_efar_pci_driver_init6, !1, !"__initcall__kmod_pata_efar__289_298_efar_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_efar.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_efar_pci_driver_exit, !1, !"__exitcall_efar_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_efar.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_efar.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_efar.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_efar.c", i32 304, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @efar_pci_driver, !17, !"efar_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_efar.c", i32 287, i32 26}
!18 = !{ptr @efar_pci_tbl, !19, !"efar_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_efar.c", i32 281, i32 35}
!20 = !{ptr @efar_init_one.info, !21, !"info", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_efar.c", i32 266, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_efar.c", i32 275, i32 2}
!24 = !{ptr @efar_ops, !25, !"efar_ops", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_efar.c", i32 241, i32 35}
!26 = !{ptr @efar_set_piomode.timings, !27, !"timings", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_efar.c", i32 100, i32 5}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_efar.c", i32 71, i32 8}
!30 = !{ptr @efar_lock, !29, !"efar_lock", i1 false, i1 false}
!31 = !{ptr @efar_set_dmamode.timings, !32, !"timings", i1 false, i1 false}
!32 = !{!"../drivers/ata/pata_efar.c", i32 169, i32 5}
!33 = !{ptr @efar_pre_reset.efar_enable_bits, !34, !"efar_enable_bits", i1 false, i1 false}
!34 = !{!"../drivers/ata/pata_efar.c", i32 39, i32 31}
!35 = !{ptr @efar_sht, !36, !"efar_sht", i1 false, i1 false}
!36 = !{!"../drivers/ata/pata_efar.c", i32 237, i32 34}
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
