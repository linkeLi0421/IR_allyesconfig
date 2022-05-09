; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_vsc.c_pt.bc'
source_filename = "../drivers/ata/sata_vsc.c"
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@__initcall__kmod_sata_vsc__289_418_vsc_sata_pci_driver_init6 = internal global ptr @vsc_sata_pci_driver_init, section ".initcall6.init", align 4
@vsc_sata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @vsc_sata_pci_tbl, ptr @vsc_sata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vsc_sata_pci_driver_exit = internal global ptr @vsc_sata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [30 x i8] c"sata_vsc.author=Jeremy Higdon\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [74 x i8] c"sata_vsc.description=low-level driver for Vitesse VSC7174 SATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"sata_vsc.file=drivers/ata/sata_vsc\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"sata_vsc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [21 x i8] c"sata_vsc.version=2.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_vsc\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@vsc_sata_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5925, i32 29044, i32 -1, i32 -1, i32 67072, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 12800, i32 -1, i32 -1, i32 67072, i32 16777215, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vsc_sata_init_one.pi = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @vsc_sata_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@vsc_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc_freeze, ptr @vsc_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @vsc_sata_scr_read, ptr @vsc_sata_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc_sata_tf_load, ptr @vsc_sata_tf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.vsc_sata_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @vsc_sata_init_one.pi, ptr null], align 8
@vsc_sata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@vsc_sata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ata_wait_idle.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vsc_sata_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 260, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c": IRQ status == 0xffffffff, PCI fault or device removal?\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vsc_sata_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/sata_vsc.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsc_sata_interrupt._entry_ptr = internal global ptr @vsc_sata_interrupt._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"vsc_sata_pci_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 411, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 424, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"vsc_sata_pci_tbl\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 402, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 323, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"vsc_sata_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 285, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [31 x i8] c"vsc_sata_init_one.__print_once\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 367, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 368, i32 48 }
@___asan_gen_.42 = private unnamed_addr constant [13 x i8] c"vsc_sata_sht\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 280, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 2045, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [26 x i8] c"../drivers/ata/sata_vsc.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 259, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_vsc_sata_pci_driver_exit, ptr @__initcall__kmod_sata_vsc__289_418_vsc_sata_pci_driver_init6, ptr @__modver_attr, ptr @vsc_sata_interrupt._entry, ptr @vsc_sata_interrupt._entry_ptr, ptr @vsc_sata_pci_driver_exit, ptr @vsc_sata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vsc_sata_pci_tbl, ptr @vsc_sata_init_one.pi, ptr @vsc_sata_ops, ptr @vsc_sata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @vsc_sata_sht, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_init_one.pi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_sata_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc_sata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vsc_sata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsc_sata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @vsc_sata_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc_sata_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %cls = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %0 = load i64, ptr @__const.vsc_sata_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cls) #7
  %2 = ptrtoint ptr %cls to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cls, align 1, !annotation !54
  %.b86 = load i1, ptr @vsc_sata_init_one.__print_once, align 1
  br i1 %.b86, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vsc_sata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 4) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @pcim_enable_device(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %cond.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false:                                       ; preds = %if.end8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %sub = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, -1
  br i1 %phi.cmp, label %cond.false.cleanup_crit_edge, label %if.end16

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %cond.false
  %call17 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str.1) #7
  %7 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call17, label %if.end16.cleanup_crit_edge [
    i32 -16, label %if.then19
    i32 0, label %if.end23
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @pcim_pin_device(ptr noundef %pdev) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24, ptr %iomap, align 4
  %9 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call24, align 4
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2787.not = icmp eq i32 %12, 0
  br i1 %cmp2787.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.088 = phi i32 [ %add29, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %arrayidx28 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 %i.088
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx28, align 4
  %add29 = add nuw i32 %i.088, 1
  %mul = shl i32 %add29, 9
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %10, i32 %mul
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %ioaddr, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr, ptr %data_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 2
  %17 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr2.i, ptr %error_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 6
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 3
  %18 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr3.i, ptr %feature_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 4
  %19 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr4.i, ptr %nsect_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 5
  %20 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr5.i, ptr %lbal_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 6
  %21 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr6.i, ptr %lbam_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr7.i, ptr %lbah_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 8
  %23 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr8.i, ptr %device_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i32 28
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 9
  %24 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr9.i, ptr %status_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr, i32 29
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 10
  %25 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr10.i, ptr %command_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr, i32 40
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 11
  %26 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr11.i, ptr %altstatus_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %add.ptr, i32 41
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 12
  %27 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr12.i, ptr %ctl_addr.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %add.ptr, i32 112
  %bmdma_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 13
  %28 = ptrtoint ptr %bmdma_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr13.i, ptr %bmdma_addr.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %add.ptr, i32 256
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 8, i32 14
  %29 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr14.i, ptr %scr_addr.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %add.ptr15.i = getelementptr i8, ptr %add.ptr, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 0) #7, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %add.ptr18.i = getelementptr i8, ptr %add.ptr, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 0) #7, !srcloc !56
  call void @ata_port_pbar_desc(ptr noundef %14, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @.str.3) #7
  call void @ata_port_pbar_desc(ptr noundef %14, i32 noundef 0, i32 noundef %mul, ptr noundef nonnull @.str.4) #7
  %30 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ports, align 4
  %cmp27 = icmp ult i32 %add29, %31
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end23.for.end_crit_edge
  %call.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end34, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  %call35 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 12, ptr noundef nonnull %cls) #7
  %32 = ptrtoint ptr %cls to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cls, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp36 = icmp eq i8 %33, 0
  br i1 %cmp36, label %if.then38, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 12, i8 noundef zeroext -128) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  %call41 = call i32 @pci_enable_msi(ptr noundef %pdev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void @pci_intx(ptr noundef %pdev, i32 noundef 0) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  %call46 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 152, i32 noundef 0) #7
  call void @pci_set_master(ptr noundef %pdev) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %call47 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %35, ptr noundef nonnull @vsc_sata_interrupt, i32 noundef 128, ptr noundef nonnull @vsc_sata_sht) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %for.end.cleanup_crit_edge, %if.then19, %if.end16.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %if.end45 ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -19, %cond.false.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -16, %if.then19 ], [ -19, %if.end8.cleanup_crit_edge ], [ %call.i, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cls) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #7
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
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc_sata_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !58
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %6 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %4, label %if.end6 [
    i32 0, label %entry.out_crit_edge
    i32 -1, label %do.end
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8) #10
  br label %out

if.end6:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #7
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %9 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp728.not = icmp eq i32 %10, 0
  br i1 %cmp728.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.030 = phi i32 [ %inc12, %if.end11.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %handled.029 = phi i32 [ %handled.1, %if.end11.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %mul = shl i32 %i.030, 3
  %shr = lshr i32 %5, %mul
  %conv = trunc i32 %shr to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool8.not = icmp eq i8 %conv, 0
  br i1 %tobool8.not, label %for.body.if.end11_crit_edge, label %if.then9

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %for.body
  %arrayidx10 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.030
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx10, align 4
  %13 = and i8 %conv, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !60

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vsc_error_intr(i8 noundef zeroext %conv, ptr noundef %12) #7
  br label %vsc_port_intr.exit

if.end.i:                                         ; preds = %if.then9
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 25, i32 3
  %14 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %16 = icmp ugt i32 %15, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %12, i32 0, i32 19, i32 %15
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %16, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end.i.if.then26.i_crit_edge, label %lor.lhs.false.i.i, !prof !61

if.end.i.if.then26.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr %struct.ata_port, ptr %12, i32 0, i32 19, i32 %15, i32 6
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %22, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i.if.then26.i_crit_edge

if.end.i.i.if.then26.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end.i.i.land.lhs.true.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.i.land.lhs.true.i_crit_edge
  %tf.i = getelementptr %struct.ata_port, ptr %12, i32 0, i32 19, i32 %15, i32 4
  %23 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tf.i, align 4
  %and4.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then14.i, label %land.lhs.true.i.if.then26.i_crit_edge, !prof !60

land.lhs.true.i.if.then26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  %call15.i = tail call i32 @ata_bmdma_port_intr(ptr noundef %12, ptr noundef nonnull %arrayidx.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %phi.cmp.i = icmp eq i32 %call15.i, 0
  br i1 %phi.cmp.i, label %if.then14.i.if.then26.i_crit_edge, label %if.then14.i.vsc_port_intr.exit_crit_edge, !prof !61

if.then14.i.vsc_port_intr.exit_crit_edge:         ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vsc_port_intr.exit

if.then14.i.if.then26.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then14.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge, %if.end.i.i.if.then26.i_crit_edge, %if.end.i.if.then26.i_crit_edge
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %sff_check_status.i = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 39
  %27 = ptrtoint ptr %sff_check_status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sff_check_status.i, align 4
  %call27.i = tail call zeroext i8 %28(ptr noundef %12) #7
  br label %vsc_port_intr.exit

vsc_port_intr.exit:                               ; preds = %if.then26.i, %if.then14.i.vsc_port_intr.exit_crit_edge, %if.then.i
  %inc = add i32 %handled.029, 1
  br label %if.end11

if.end11:                                         ; preds = %vsc_port_intr.exit, %for.body.if.end11_crit_edge
  %handled.1 = phi i32 [ %inc, %vsc_port_intr.exit ], [ %handled.029, %for.body.if.end11_crit_edge ]
  %inc12 = add nuw i32 %i.030, 1
  %29 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_ports, align 4
  %cmp7 = icmp ult i32 %inc12, %30
  br i1 %cmp7, label %if.end11.for.body_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %if.end6.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %if.end6.for.end_crit_edge ], [ %handled.1, %if.end11.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #7
  br label %out

out:                                              ; preds = %for.end, %do.end, %entry.out_crit_edge
  %handled.2 = phi i32 [ 0, %do.end ], [ %handled.0.lcssa, %for.end ], [ %4, %entry.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool14.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool14.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 0) #7, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 -1) #7, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc_sata_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !58
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc_sata_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 14
  %3 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !56
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc_sata_tf_load(ptr noundef %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tf, align 4
  %and = and i32 %1, 2
  %ctl = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctl, align 1
  %last_ctl = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 10
  %4 = ptrtoint ptr %last_ctl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %last_ctl, align 1
  %6 = xor i8 %5, %3
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %last_ctl, align 1
  %9 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctl, align 1
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %11 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iomap.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %17 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_no.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %18
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %20 = and i8 %19, 127
  %21 = shl i8 %10, 6
  %22 = and i8 %21, -128
  %mask.0.i = or i8 %20, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 %mask.0.i) #7, !srcloc !63
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end89_crit_edge, label %land.lhs.true

if.end.if.end89_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tf, align 4
  %and13 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %feature61 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %25 = ptrtoint ptr %feature61 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %feature61, align 1
  %conv62 = zext i8 %26 to i16
  br i1 %tobool14.not, label %do.body58.critedge, label %do.body

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %27 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hob_feature, align 2
  %conv18 = zext i8 %28 to i16
  %shl = shl nuw i16 %conv18, 8
  %or = or i16 %shl, %conv62
  %29 = tail call i16 @llvm.bswap.i16(i16 %or)
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %30 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %feature_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %29) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %32 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nsect, align 4
  %conv23 = zext i8 %33 to i16
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %34 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hob_nsect, align 1
  %conv25 = zext i8 %35 to i16
  %shl26 = shl nuw i16 %conv25, 8
  %or27 = or i16 %shl26, %conv23
  %36 = tail call i16 @llvm.bswap.i16(i16 %or27)
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %37 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nsect_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %38, i16 %36) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %39 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lbal, align 1
  %conv32 = zext i8 %40 to i16
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %41 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hob_lbal, align 4
  %conv34 = zext i8 %42 to i16
  %shl35 = shl nuw i16 %conv34, 8
  %or36 = or i16 %shl35, %conv32
  %43 = tail call i16 @llvm.bswap.i16(i16 %or36)
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %44 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lbal_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %43) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %46 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %lbam, align 2
  %conv41 = zext i8 %47 to i16
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %48 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hob_lbam, align 1
  %conv43 = zext i8 %49 to i16
  %shl44 = shl nuw i16 %conv43, 8
  %or45 = or i16 %shl44, %conv41
  %50 = tail call i16 @llvm.bswap.i16(i16 %or45)
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %51 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lbam_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %53 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %lbah, align 1
  %conv50 = zext i8 %54 to i16
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %55 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hob_lbah, align 2
  %conv52 = zext i8 %56 to i16
  %shl53 = shl nuw i16 %conv52, 8
  %or54 = or i16 %shl53, %conv50
  %57 = tail call i16 @llvm.bswap.i16(i16 %or54)
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %58 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lbah_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %57) #7, !srcloc !70
  br label %if.end89

do.body58.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %60 = shl nuw i16 %conv62, 8
  %feature_addr63 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %61 = ptrtoint ptr %feature_addr63 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %feature_addr63, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %60) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %nsect67 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %63 = ptrtoint ptr %nsect67 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nsect67, align 4
  %conv68 = zext i8 %64 to i16
  %65 = shl nuw i16 %conv68, 8
  %nsect_addr69 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %66 = ptrtoint ptr %nsect_addr69 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nsect_addr69, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %67, i16 %65) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %lbal73 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %68 = ptrtoint ptr %lbal73 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %lbal73, align 1
  %conv74 = zext i8 %69 to i16
  %70 = shl nuw i16 %conv74, 8
  %lbal_addr75 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %71 = ptrtoint ptr %lbal_addr75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lbal_addr75, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %72, i16 %70) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %lbam79 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %73 = ptrtoint ptr %lbam79 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %lbam79, align 2
  %conv80 = zext i8 %74 to i16
  %75 = shl nuw i16 %conv80, 8
  %lbam_addr81 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %76 = ptrtoint ptr %lbam_addr81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lbam_addr81, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %75) #7, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %lbah85 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %78 = ptrtoint ptr %lbah85 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %lbah85, align 1
  %conv86 = zext i8 %79 to i16
  %80 = shl nuw i16 %conv86, 8
  %lbah_addr87 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %81 = ptrtoint ptr %lbah_addr87 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lbah_addr87, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %80) #7, !srcloc !70
  br label %if.end89

if.end89:                                         ; preds = %do.body58.critedge, %do.body, %if.end.if.end89_crit_edge
  %83 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tf, align 4
  %and91 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end89.if.end97_crit_edge, label %do.body94

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.body94:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %85 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %device, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %87 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device_addr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %88, i8 %86) #7, !srcloc !63
  br label %if.end97

if.end97:                                         ; preds = %do.body94, %if.end89.if.end97_crit_edge
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end97
  %max.addr.0.i.i = phi i32 [ 1000, %if.end97 ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %89(i32 noundef 2147480) #7
  %90 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %91, i32 0, i32 39
  %92 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %93(ptr noundef %ap) #7
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %94 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i = icmp eq i8 %94, 0
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
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge: ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ata_wait_idle.exit

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc_sata_tf_load, %if.then7.i)) #7
          to label %ata_wait_idle.exit [label %if.then7.i], !srcloc !80

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %95 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7, i32 noundef %96, i32 noundef %conv.i) #7
  br label %ata_wait_idle.exit

ata_wait_idle.exit:                               ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.ata_wait_idle.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc_sata_tf_read(ptr noundef %ap, ptr nocapture noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @ata_sff_check_status(ptr noundef %ap) #7
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %call, ptr %command, align 1
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %1 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device_addr, align 4
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %2) #7, !srcloc !81
  %4 = lshr i16 %3, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %conv = trunc i16 %4 to i8
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %5 = ptrtoint ptr %device to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %device, align 4
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %error_addr, align 4
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %7) #7, !srcloc !81
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nsect_addr, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #7, !srcloc !81
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %14 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lbal_addr, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #7, !srcloc !81
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lbam_addr, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #7, !srcloc !81
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %22 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lbah_addr, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #7, !srcloc !81
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  %conv29 = trunc i16 %9 to i8
  %feature30 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %26 = ptrtoint ptr %feature30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv29, ptr %feature30, align 1
  %conv31 = trunc i16 %13 to i8
  %nsect32 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %27 = ptrtoint ptr %nsect32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv31, ptr %nsect32, align 4
  %conv33 = trunc i16 %17 to i8
  %lbal34 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %28 = ptrtoint ptr %lbal34 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv33, ptr %lbal34, align 1
  %conv35 = trunc i16 %21 to i8
  %lbam36 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %29 = ptrtoint ptr %lbam36 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv35, ptr %lbam36, align 2
  %conv37 = trunc i16 %25 to i8
  %lbah38 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %30 = ptrtoint ptr %lbah38 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv37, ptr %lbah38, align 1
  %31 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tf, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %33 = lshr i16 %9, 8
  %conv40 = trunc i16 %33 to i8
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %34 = ptrtoint ptr %hob_feature to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv40, ptr %hob_feature, align 2
  %35 = lshr i16 %13, 8
  %conv43 = trunc i16 %35 to i8
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %36 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv43, ptr %hob_nsect, align 1
  %37 = lshr i16 %17, 8
  %conv46 = trunc i16 %37 to i8
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %38 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv46, ptr %hob_lbal, align 4
  %39 = lshr i16 %21, 8
  %conv49 = trunc i16 %39 to i8
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %40 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv49, ptr %hob_lbam, align 1
  %41 = lshr i16 %25, 8
  %conv52 = trunc i16 %41 to i8
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %42 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv52, ptr %hob_lbah, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_sff_check_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc_error_intr(i8 noundef zeroext %port_status, ptr noundef %ap) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = and i8 %port_status, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @ata_port_freeze(ptr noundef %ap) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @ata_port_abort(ptr noundef %ap) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_sata_vsc__289_418_vsc_sata_pci_driver_init6, !1, !"__initcall__kmod_sata_vsc__289_418_vsc_sata_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_vsc.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_vsc_sata_pci_driver_exit, !1, !"__exitcall_vsc_sata_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_vsc.c", i32 420, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_vsc.c", i32 421, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_vsc.c", i32 422, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_vsc.c", i32 424, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @vsc_sata_pci_driver, !17, !"vsc_sata_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_vsc.c", i32 411, i32 26}
!18 = !{ptr @vsc_sata_pci_tbl, !19, !"vsc_sata_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_vsc.c", i32 402, i32 35}
!20 = !{ptr @vsc_sata_init_one.pi, !21, !"pi", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_vsc.c", i32 323, i32 36}
!22 = distinct !{null, !23, !"__print_once", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_vsc.c", i32 336, i32 2}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_vsc.c", i32 367, i32 44}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_vsc.c", i32 368, i32 48}
!28 = !{ptr @vsc_sata_ops, !29, !"vsc_sata_ops", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_vsc.c", i32 285, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug288, !31, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/sata_vsc.c", i32 259, i32 4}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @vsc_sata_interrupt._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @vsc_sata_interrupt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @vsc_sata_sht, !44, !"vsc_sata_sht", i1 false, i1 false}
!44 = !{!"../drivers/ata/sata_vsc.c", i32 280, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{i64 2155709625}
!56 = !{i64 4989313}
!57 = !{i64 2155710045}
!58 = !{i64 4989731}
!59 = !{i64 2155706502}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2155696832}
!63 = !{i64 4989116}
!64 = !{i64 2155697082}
!65 = !{i64 2155696190}
!66 = !{i64 2155696430}
!67 = !{i64 4989511}
!68 = !{i64 2155697344}
!69 = !{i64 2155697551}
!70 = !{i64 4988693}
!71 = !{i64 2155698403}
!72 = !{i64 2155698935}
!73 = !{i64 2155699460}
!74 = !{i64 2155699985}
!75 = !{i64 2155700910}
!76 = !{i64 2155701323}
!77 = !{i64 2155701732}
!78 = !{i64 2155702141}
!79 = !{i64 2155702554}
!80 = !{i64 2148701011, i64 2148701016, i64 2148701029, i64 2148701073, i64 2148701107, i64 2148701128}
!81 = !{i64 4988893}
!82 = !{i64 2155703110}
!83 = !{i64 2155703600}
!84 = !{i64 2155704090}
!85 = !{i64 2155704576}
!86 = !{i64 2155705062}
!87 = !{i64 2155705548}
