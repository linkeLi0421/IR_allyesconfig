; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_qstor.c_pt.bc'
source_filename = "../drivers/ata/sata_qstor.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.qs_port_priv = type { ptr, i32, i32 }

@__initcall__kmod_sata_qstor__290_591_qs_ata_pci_driver_init6 = internal global ptr @qs_ata_pci_driver_init, section ".initcall6.init", align 4
@qs_ata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @qs_ata_pci_tbl, ptr @qs_ata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qs_ata_pci_driver_exit = internal global ptr @qs_ata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"sata_qstor.author=Mark Lord\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [79 x i8] c"sata_qstor.description=Pacific Digital Corporation QStor SATA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"sata_qstor.file=drivers/ata/sata_qstor\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [23 x i8] c"sata_qstor.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [24 x i8] c"sata_qstor.version=0.09\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sata_qstor\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.09\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@qs_ata_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5609, i32 8296, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qs_port_info = internal constant { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 514, i32 0, i32 16, i32 0, i32 127, ptr @qs_ata_ops, ptr null }], [36 x i8] zeroinitializer }, align 32
@qs_ata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@qs_ata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@qs_ata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @qs_check_atapi_dma, ptr @qs_qc_prep, ptr @qs_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qs_freeze, ptr @qs_thaw, ptr @qs_prereset, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qs_error_handler, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @qs_scr_read, ptr @qs_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qs_port_start, ptr null, ptr @qs_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@qs_set_dma_masks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 536, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qs_set_dma_masks\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/sata_qstor.c\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qs_set_dma_masks._entry_ptr = internal global ptr @qs_set_dma_masks._entry, section ".printk_index", align 4
@qs_intr_pkt.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.7, ptr @.str.11, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qs_intr_pkt\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SFF=%08x%08x: sHST=%d sDST=%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status 0x%02X\00", [18 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"qs_ata_pci_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 154, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 597, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"qs_ata_pci_tbl\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 148, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"qs_port_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 138, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"qs_ata_init_one.__print_once\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 579, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 580, i32 47 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"qs_ata_sht\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 111, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"qs_ata_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 117, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 536, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 370, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [28 x i8] c"../drivers/ata/sata_qstor.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 341, i32 26 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_version295, ptr @__exitcall_qs_ata_pci_driver_exit, ptr @__initcall__kmod_sata_qstor__290_591_qs_ata_pci_driver_init6, ptr @__modver_attr, ptr @qs_ata_pci_driver_exit, ptr @qs_set_dma_masks._entry, ptr @qs_set_dma_masks._entry_ptr, ptr @qs_ata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @qs_ata_pci_tbl, ptr @qs_port_info, ptr @qs_ata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @qs_ata_sht, ptr @qs_ata_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_ata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_ata_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_ata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_ata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_ata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qs_set_dma_masks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_ata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @qs_ata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qs_ata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @qs_ata_pci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_ata_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #8
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct.ata_port_info], ptr @qs_port_info, i32 0, i32 %1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %.b59 = load i1, ptr @qs_ata_init_one.__print_once, align 1
  br i1 %.b59, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @qs_ata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 4) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 16, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call ptr @pcim_iomap_table(ptr noundef %pdev) #8
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %iomap, align 4
  %arrayidx18 = getelementptr ptr, ptr %call16, i32 4
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %11 = and i32 %10, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %cond.i = select i1 %tobool.not.i, i32 32, i32 64
  br i1 %tobool.not.i, label %cond.false.i, label %if.end15.cond.end.i_crit_edge

if.end15.cond.end.i_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom.i = zext i32 %cond.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i = xor i64 %notmask.i, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end15.cond.end.i_crit_edge
  %cond2.i = phi i64 [ %sub.i, %cond.false.i ], [ -1, %if.end15.cond.end.i_crit_edge ]
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef %cond2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %qs_set_dma_masks.exit, label %qs_set_dma_masks.exit.thread

qs_set_dma_masks.exit.thread:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %cond.i) #11
  br label %cleanup

qs_set_dma_masks.exit:                            ; preds = %cond.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %cond2.i) #8
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2361.not = icmp eq i32 %13, 0
  br i1 %cmp2361.not, label %qs_set_dma_masks.exit.for.end_crit_edge, label %qs_set_dma_masks.exit.for.body_crit_edge

qs_set_dma_masks.exit.for.body_crit_edge:         ; preds = %qs_set_dma_masks.exit
  br label %for.body

qs_set_dma_masks.exit.for.end_crit_edge:          ; preds = %qs_set_dma_masks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %qs_set_dma_masks.exit.for.body_crit_edge
  %port_no.062 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %qs_set_dma_masks.exit.for.body_crit_edge ]
  %arrayidx24 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 %port_no.062
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx24, align 4
  %mul = shl i32 %port_no.062, 14
  %16 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomap, align 4
  %arrayidx26 = getelementptr ptr, ptr %17, i32 4
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx26, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %mul
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8
  %add.ptr.i60 = getelementptr i8, ptr %add.ptr, i32 1024
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i60, ptr %data_addr.i, align 4
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i60, ptr %ioaddr, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i32 1032
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr1.i, ptr %feature_addr.i, align 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr1.i, ptr %error_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 1040
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr2.i, ptr %nsect_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 1048
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 5
  %25 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr3.i, ptr %lbal_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 1056
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 6
  %26 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr4.i, ptr %lbam_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i32 1064
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr5.i, ptr %lbah_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr, i32 1072
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 8
  %28 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr6.i, ptr %device_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr, i32 1080
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 10
  %29 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr7.i, ptr %command_addr.i, align 4
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 9
  %30 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr7.i, ptr %status_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 1088
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 12
  %31 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr8.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 11
  %32 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr8.i, ptr %altstatus_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i32 3072
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 8, i32 14
  %33 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr9.i, ptr %scr_addr.i, align 4
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.3) #8
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef 4, i32 noundef %mul, ptr noundef nonnull @.str.4) #8
  %inc = add nuw i32 %port_no.062, 1
  %34 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_ports, align 4
  %cmp23 = icmp ult i32 %inc, %35
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %qs_set_dma_masks.exit.for.end_crit_edge
  call fastcc void @qs_host_init(ptr noundef nonnull %call)
  call void @pci_set_master(ptr noundef %pdev) #8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call27 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %37, ptr noundef nonnull @qs_intr, i32 noundef 128, ptr noundef nonnull @qs_ata_sht) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %qs_set_dma_masks.exit.thread, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call.i.i, %qs_set_dma_masks.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @qs_host_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %3, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %add.ptr4 = getelementptr i8, ptr %3, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #8, !srcloc !58
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %4 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %entry.do.body16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %port_no.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %port_no.02, 14
  %add.ptr5 = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @arm_heavy_mb() #8
  %add.ptr9 = getelementptr i8, ptr %add.ptr5, i32 2305
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 18) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %add.ptr13 = getelementptr i8, ptr %add.ptr5, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13, i8 2) #8, !srcloc !58
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %inc = add nuw i32 %port_no.02, 1
  %7 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body16_crit_edge

for.body.do.body16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body16:                                        ; preds = %for.body.do.body16_crit_edge, %entry.do.body16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %add.ptr19 = getelementptr i8, ptr %3, i32 915
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 -16) #8, !srcloc !58
  %9 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp223.not = icmp eq i32 %10, 0
  br i1 %cmp223.not, label %do.body16.do.body50_crit_edge, label %do.body16.for.body23_crit_edge

do.body16.for.body23_crit_edge:                   ; preds = %do.body16
  br label %for.body23

do.body16.do.body50_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %do.body16.for.body23_crit_edge
  %port_no.14 = phi i32 [ %inc48, %for.body23.for.body23_crit_edge ], [ 0, %do.body16.for.body23_crit_edge ]
  %mul25 = shl i32 %port_no.14, 14
  %add.ptr26 = getelementptr i8, ptr %3, i32 %mul25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @arm_heavy_mb() #8
  %add.ptr30 = getelementptr i8, ptr %add.ptr26, i32 2048
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 8192) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  tail call void @arm_heavy_mb() #8
  %add.ptr34 = getelementptr i8, ptr %add.ptr26, i32 2052
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 8192) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  tail call void @arm_heavy_mb() #8
  %add.ptr38 = getelementptr i8, ptr %add.ptr26, i32 2056
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38, i16 2560) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %add.ptr42 = getelementptr i8, ptr %add.ptr26, i32 2060
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 2048) #8, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %add.ptr46 = getelementptr i8, ptr %add.ptr26, i32 1816
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 6) #8, !srcloc !58
  %inc48 = add nuw i32 %port_no.14, 1
  %11 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ports, align 4
  %cmp22 = icmp ult i32 %inc48, %12
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.do.body50_crit_edge

for.body23.do.body50_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

do.body50:                                        ; preds = %for.body23.do.body50_crit_edge, %do.body16.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #8, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_intr(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #8
  %call5 = tail call fastcc i32 @qs_intr_pkt(ptr noundef %dev_instance)
  %n_ports.i = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %0 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27.not.i = icmp eq i32 %1, 0
  br i1 %cmp27.not.i, label %entry.qs_intr_mmio.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.qs_intr_mmio.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %qs_intr_mmio.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %port_no.029.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %handled.028.i = phi i32 [ %handled.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %port_no.029.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 3
  %6 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %8 = icmp ugt i32 %7, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %7
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %8, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i.i, !prof !72

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %7, i32 6
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %14, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end.i.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %call1.i = tail call zeroext i8 @ata_sff_check_status(ptr noundef %3) #8
  br label %cleanup.i

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %lor.lhs.false.i.i.if.end.i_crit_edge
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3.not.i = icmp eq i32 %16, 0
  br i1 %cmp3.not.i, label %if.end5.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %tf.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %7, i32 4
  %17 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tf.i, align 4
  %and.i = and i32 %18, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.cleanup.i_crit_edge

if.end5.i.cleanup.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @ata_sff_port_intr(ptr noundef %3, ptr noundef nonnull %arrayidx.i.i.i) #8
  %or.i = or i32 %call8.i, %handled.028.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then7.i, %if.end5.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %if.then.i
  %handled.2.i = phi i32 [ 1, %if.then.i ], [ %handled.028.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %handled.028.i, %if.end.i.cleanup.i_crit_edge ], [ %handled.028.i, %if.end5.i.cleanup.i_crit_edge ], [ %or.i, %if.then7.i ]
  %inc.i = add nuw i32 %port_no.029.i, 1
  %19 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.qs_intr_mmio.exit_crit_edge

cleanup.i.qs_intr_mmio.exit_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qs_intr_mmio.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

qs_intr_mmio.exit:                                ; preds = %cleanup.i.qs_intr_mmio.exit_crit_edge, %entry.qs_intr_mmio.exit_crit_edge
  %handled.0.lcssa.i = phi i32 [ 0, %entry.qs_intr_mmio.exit_crit_edge ], [ %handled.2.i, %cleanup.i.qs_intr_mmio.exit_crit_edge ]
  %or = or i32 %handled.0.lcssa.i, %call5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp ne i32 %or, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qs_check_atapi_dma(ptr nocapture noundef readnone %qc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %13, 14
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.not = icmp eq i8 %17, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %18 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.not.i = icmp eq i32 %19, 0
  br i1 %cmp14.not.i, label %if.end.qs_fill_sg.exit_crit_edge, label %for.body.preheader.i

if.end.qs_fill_sg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %qs_fill_sg.exit

for.body.preheader.i:                             ; preds = %if.end
  %sg2.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %20 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg2.i, align 4
  %22 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qc, align 4
  %private_data.i48 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 48
  %24 = ptrtoint ptr %private_data.i48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i48, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr.i49 = getelementptr i8, ptr %27, i32 64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.017.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %21, %for.body.preheader.i ]
  %prd.016.i = phi ptr [ %add.ptr4.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i49, %for.body.preheader.i ]
  %si.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i, i32 0, i32 3
  %28 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_address.i, align 4
  %conv.i = zext i32 %29 to i64
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #8
  %31 = ptrtoint ptr %prd.016.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %prd.016.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %prd.016.i, i32 8
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.017.i, i32 0, i32 4
  %32 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  %35 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %add.ptr3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %prd.016.i, i32 16
  %inc.i = add nuw i32 %si.015.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.017.i) #8
  %36 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.qs_fill_sg.exit_crit_edge

for.body.i.qs_fill_sg.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %qs_fill_sg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

qs_fill_sg.exit:                                  ; preds = %for.body.i.qs_fill_sg.exit_crit_edge, %if.end.qs_fill_sg.exit_crit_edge
  %si.0.lcssa.i = phi i32 [ 0, %if.end.qs_fill_sg.exit_crit_edge ], [ %inc.i, %for.body.i.qs_fill_sg.exit_crit_edge ]
  %38 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tf, align 4
  %and = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i8 56, i8 57
  %and10 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %dflags.0 = select i1 %tobool11.not, i8 4, i8 12
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %5, align 1
  %arrayidx17 = getelementptr i8, ptr %5, i32 1
  %41 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select, ptr %arrayidx17, align 1
  %nbytes = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %42 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbytes, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx18 = getelementptr i8, ptr %5, i32 4
  %45 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx18, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %si.0.lcssa.i)
  %arrayidx19 = getelementptr i8, ptr %5, i32 8
  %47 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx19, align 4
  %pkt_dma = getelementptr inbounds %struct.qs_port_priv, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pkt_dma, align 4
  %conv20 = zext i32 %49 to i64
  %add = add nuw nsw i64 %conv20, 64
  %50 = tail call i64 @llvm.bswap.i64(i64 %add)
  %arrayidx21 = getelementptr i8, ptr %5, i32 16
  %51 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr i8, ptr %5, i32 24
  %52 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr i8, ptr %5, i32 28
  %53 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %dflags.0, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr i8, ptr %5, i32 32
  tail call void @ata_tf_to_fis(ptr noundef %tf, i8 noundef zeroext 0, i32 noundef 1, ptr noundef %arrayidx25) #8
  br label %cleanup

cleanup:                                          ; preds = %qs_fill_sg.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %protocol, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %sw.epilog [
    i8 2, label %sw.bb
    i8 10, label %do.body
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.qs_port_priv, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %state, align 4
  %8 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 31
  %10 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %17, 14
  %add.ptr.i = getelementptr i8, ptr %15, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void @arm_heavy_mb() #8
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 4) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 117506048) #8, !srcloc !78
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #8, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_qstor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 319, 0\0A.popsection", ""() #8, !srcloc !80
  unreachable

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state5 = getelementptr inbounds %struct.qs_port_priv, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state5, align 4
  %call = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qs_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %5, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !58
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %12 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %13, 14
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qs_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 14
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %5, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #8, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 14
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2305
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 16) #8, !srcloc !58
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %iomap.i.i.i = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %iomap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomap.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %14, i32 4
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i.i, align 4
  %17 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_no.i, align 4
  %mul.i.i = shl i32 %18, 14
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %mul.i.i
  %private_data.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %19 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.qs_port_priv, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i.i, i8 2) #8, !srcloc !58
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %call = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qs_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 14
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @ata_sff_error_handler(ptr noundef %ap) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 3
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !55
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 14
  %3 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 3
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #8, !srcloc !78
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qs_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 14
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_dma = getelementptr inbounds %struct.qs_port_priv, ptr %call.i, i32 0, i32 1
  %call.i34 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 2112, ptr noundef %pkt_dma, i32 noundef 3264, i32 noundef 0) #8
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i34, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call.i34, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %private_data, align 4
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %18 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no, align 4
  %mul.i = shl i32 %19, 14
  %add.ptr.i = getelementptr i8, ptr %17, i32 %mul.i
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 2304
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %22 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %24) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %add.ptr17 = getelementptr i8, ptr %add.ptr11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #8, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qs_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %3, i32 228
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %add.ptr4 = getelementptr i8, ptr %3, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 1) #8, !srcloc !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qs_intr_pkt(ptr nocapture noundef readonly %host) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 256
  %add.ptr6 = getelementptr i8, ptr %3, i32 260
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup45.do.body_crit_edge, %entry
  %handled.0 = phi i32 [ 0, %entry ], [ %handled.2, %cleanup45.do.body_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !55
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !55
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %8 = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body.cleanup45_crit_edge, label %if.then

do.body.cleanup45_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.then:                                          ; preds = %do.body
  %shr12 = lshr i32 %5, 16
  %9 = trunc i32 %7 to i8
  %conv15 = and i8 %9, 63
  %shr16 = lshr i32 %7, 8
  %and17 = and i32 %shr16, 3
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %and17
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qs_intr_pkt.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qs_intr_pkt, %if.then24)) #8
          to label %do.end [label %if.then24], !srcloc !93

if.then24:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %conv25 = zext i8 %conv15 to i32
  %conv26 = and i32 %shr12, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qs_intr_pkt.__UNIQUE_ID_ddebug289, ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %7, i32 noundef %5, i32 noundef %conv25, i32 noundef %conv26) #8
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.then
  %tobool27.not = icmp eq ptr %13, null
  br i1 %tobool27.not, label %do.end.cleanup45_crit_edge, label %lor.lhs.false

do.end.cleanup45_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

lor.lhs.false:                                    ; preds = %do.end
  %state = getelementptr inbounds %struct.qs_port_priv, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not = icmp eq i32 %17, 1
  br i1 %cmp.not, label %if.end30, label %lor.lhs.false.cleanup45_crit_edge

lor.lhs.false.cleanup45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.end30:                                         ; preds = %lor.lhs.false
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 25, i32 3
  %18 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %20 = icmp ugt i32 %19, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %11, i32 0, i32 19, i32 %19
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %20, %tobool.not11.i
  br i1 %tobool.not.i, label %if.end30.cleanup45_crit_edge, label %lor.lhs.false.i, !prof !72

if.end30.cleanup45_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

lor.lhs.false.i:                                  ; preds = %if.end30
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %11, i32 0, i32 19, i32 %19, i32 6
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %if.end.i.cleanup45_crit_edge

if.end.i.cleanup45_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %11, i32 0, i32 19, i32 %19, i32 4
  %27 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tf, align 4
  %and33 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %land.lhs.true.cleanup45_crit_edge

land.lhs.true.cleanup45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

if.then35:                                        ; preds = %land.lhs.true
  %conv36 = zext i8 %conv15 to i32
  %29 = zext i32 %conv36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %conv36, label %if.then35.cleanup45_crit_edge [
    i32 0, label %if.then35.sw.bb_crit_edge
    i32 3, label %if.then35.sw.bb_crit_edge83
  ]

if.then35.sw.bb_crit_edge83:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then35.sw.bb_crit_edge:                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.then35.cleanup45_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup45

sw.bb:                                            ; preds = %if.then35.sw.bb_crit_edge, %if.then35.sw.bb_crit_edge83
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 31
  %32 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i77 = getelementptr ptr, ptr %35, i32 4
  %36 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i.i77, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 7
  %38 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %39, 14
  %add.ptr.i = getelementptr i8, ptr %37, i32 2304
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 48
  %40 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %private_data.i, align 4
  %state.i = getelementptr inbounds %struct.qs_port_priv, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 2) #8, !srcloc !58
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  %44 = and i32 %5, 8912896
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  %45 = and i32 %5, 2162688
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool3.not.i.i = icmp ne i32 %45, 0
  %..i.i = zext i1 %tobool3.not.i.i to i32
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %..i.i, i32 2
  %err_mask.i = getelementptr %struct.ata_port, ptr %11, i32 0, i32 19, i32 %19, i32 20
  %46 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err_mask.i, align 4
  %or.i = or i32 %47, %retval.0.i.i
  store i32 %or.i, ptr %err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool.not.i78 = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i78, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ata_qc_complete(ptr noundef nonnull %arrayidx.i.i) #8
  br label %cleanup45

if.else.i:                                        ; preds = %sw.bb
  %conv.i.i = and i32 %shr12, 255
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info.i) #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.12, i32 noundef %conv.i.i) #8
  %50 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp.i79 = icmp eq i32 %51, 1
  br i1 %cmp.i79, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 @ata_port_abort(ptr noundef %49) #8
  br label %cleanup45

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = tail call i32 @ata_port_freeze(ptr noundef %49) #8
  br label %cleanup45

cleanup45:                                        ; preds = %if.else7.i, %if.then5.i, %if.then.i, %if.then35.cleanup45_crit_edge, %land.lhs.true.cleanup45_crit_edge, %if.end.i.cleanup45_crit_edge, %if.end30.cleanup45_crit_edge, %lor.lhs.false.cleanup45_crit_edge, %do.end.cleanup45_crit_edge, %do.body.cleanup45_crit_edge
  %handled.2 = phi i32 [ %handled.0, %do.body.cleanup45_crit_edge ], [ 1, %land.lhs.true.cleanup45_crit_edge ], [ 1, %if.then35.cleanup45_crit_edge ], [ 1, %lor.lhs.false.cleanup45_crit_edge ], [ 1, %do.end.cleanup45_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then5.i ], [ 1, %if.else7.i ], [ 1, %if.end30.cleanup45_crit_edge ], [ 1, %if.end.i.cleanup45_crit_edge ]
  %tobool51.not = icmp sgt i32 %7, -1
  br i1 %tobool51.not, label %cleanup45.do.body_crit_edge, label %do.end54

cleanup45.do.body_crit_edge:                      ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end54:                                         ; preds = %cleanup45
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %handled.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_sff_check_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_sata_qstor__290_591_qs_ata_pci_driver_init6, !1, !"__initcall__kmod_sata_qstor__290_591_qs_ata_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_qstor.c", i32 591, i32 1}
!2 = !{ptr @__exitcall_qs_ata_pci_driver_exit, !1, !"__exitcall_qs_ata_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_qstor.c", i32 593, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_qstor.c", i32 594, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_qstor.c", i32 595, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_qstor.c", i32 597, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @qs_ata_pci_driver, !17, !"qs_ata_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_qstor.c", i32 154, i32 26}
!18 = !{ptr @qs_ata_pci_tbl, !19, !"qs_ata_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_qstor.c", i32 148, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_qstor.c", i32 548, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_qstor.c", i32 579, i32 43}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_qstor.c", i32 580, i32 47}
!26 = !{ptr @qs_port_info, !27, !"qs_port_info", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_qstor.c", i32 138, i32 35}
!28 = !{ptr @qs_ata_ops, !29, !"qs_ata_ops", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_qstor.c", i32 117, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_qstor.c", i32 536, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @qs_set_dma_masks._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @qs_set_dma_masks._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_qstor.c", i32 370, i32 4}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @qs_intr_pkt.__UNIQUE_ID_ddebug289, !39, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/sata_qstor.c", i32 341, i32 26}
!44 = !{ptr @qs_ata_sht, !45, !"qs_ata_sht", i1 false, i1 false}
!45 = !{!"../drivers/ata/sata_qstor.c", i32 111, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 4994857}
!56 = !{i64 2155718668}
!57 = !{i64 2155714553}
!58 = !{i64 4994242}
!59 = !{i64 2155714842}
!60 = !{i64 2155715150}
!61 = !{i64 2155715449}
!62 = !{i64 4994637}
!63 = !{i64 2155715745}
!64 = !{i64 2155715979}
!65 = !{i64 2155716266}
!66 = !{i64 4993819}
!67 = !{i64 2155716653}
!68 = !{i64 2155717040}
!69 = !{i64 2155717426}
!70 = !{i64 2155717820}
!71 = !{i64 2155718101}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2155702114}
!74 = !{i64 2155702410}
!75 = !{i64 2155705706}
!76 = !{i64 2155705917}
!77 = !{i64 2155706142}
!78 = !{i64 4994439}
!79 = !{i64 2155706836}
!80 = !{i64 2155707080, i64 2155707569, i64 2155707117, i64 2155707173, i64 2155707207, i64 2155707231, i64 2155707272, i64 2155707293, i64 2155707321, i64 2155707355}
!81 = !{i64 2155703318}
!82 = !{i64 2155703593}
!83 = !{i64 2155702803}
!84 = !{i64 2155703100}
!85 = !{i64 2155704231}
!86 = !{i64 2155704471}
!87 = !{i64 2155713105}
!88 = !{i64 2155713535}
!89 = !{i64 2155713975}
!90 = !{i64 2155714264}
!91 = !{i64 2155709004}
!92 = !{i64 2155709526}
!93 = !{i64 2148706137, i64 2148706142, i64 2148706155, i64 2148706199, i64 2148706233, i64 2148706254}
