; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_svw.c_pt.bc'
source_filename = "../drivers/ata/sata_svw.c"
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_sata_svw__290_519_k2_sata_pci_driver_init6 = internal global ptr @k2_sata_pci_driver_init, section ".initcall6.init", align 4
@k2_sata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @k2_sata_pci_tbl, ptr @k2_sata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_k2_sata_pci_driver_exit = internal global ptr @k2_sata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [39 x i8] c"sata_svw.author=Benjamin Herrenschmidt\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"sata_svw.description=low-level driver for K2 SATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"sata_svw.file=drivers/ata/sata_svw\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"sata_svw.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [21 x i8] c"sata_svw.version=2.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_svw\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@k2_sata_pci_tbl = internal constant { [8 x %struct.pci_device_id], [64 x i8] } { [8 x %struct.pci_device_id] [%struct.pci_device_id { i32 4454, i32 576, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 577, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4454, i32 578, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 586, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 587, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4454, i32 1040, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4454, i32 1041, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@k2_port_info = internal constant { [4 x %struct.ata_port_info], [48 x i8] } { [4 x %struct.ata_port_info] [%struct.ata_port_info { i32 33554434, i32 0, i32 31, i32 7, i32 127, ptr @k2_sata_ops, ptr null }, %struct.ata_port_info { i32 50331650, i32 0, i32 31, i32 7, i32 127, ptr @k2_sata_ops, ptr null }, %struct.ata_port_info { i32 67108866, i32 0, i32 31, i32 7, i32 127, ptr @k2_sata_ops, ptr null }, %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @k2_sata_ops, ptr null }], [48 x i8] zeroinitializer }, align 32
@k2_sata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@k2_sata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr @k2_sata_show_info, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@k2_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @k2_sata_check_atapi_dma, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @k2_sata_softreset, ptr @k2_sata_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @k2_sata_scr_read, ptr @k2_sata_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @k2_stat_check_status, ptr null, ptr @k2_sata_tf_load, ptr @k2_sata_tf_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @k2_bmdma_setup_mmio, ptr @k2_bmdma_start_mmio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ata_wait_idle.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ata_wait_idle\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/libata.h\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ata%u: abnormal Status 0x%X\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devspec: %pOF\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 8, i64 40, i64 42, i64 136, i64 138, i64 168, i64 170]
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"k2_sata_pci_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 512, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 525, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"k2_sata_pci_tbl\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 500, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"k2_port_info\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 353, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [30 x i8] c"k2_sata_init_one.__print_once\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 470, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 471, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"k2_sata_sht\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 333, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"k2_sata_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 339, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"../include/linux/libata.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 2045, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 322, i32 40 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [26 x i8] c"../drivers/ata/sata_svw.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 326, i32 18 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_version295, ptr @__exitcall_k2_sata_pci_driver_exit, ptr @__initcall__kmod_sata_svw__290_519_k2_sata_pci_driver_init6, ptr @__modver_attr, ptr @k2_sata_pci_driver_exit, ptr @k2_sata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @k2_sata_pci_tbl, ptr @k2_port_info, ptr @k2_sata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @k2_sata_sht, ptr @k2_sata_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_sata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_sata_pci_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_port_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_sata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_sata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k2_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @k2_sata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @k2_sata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @k2_sata_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.ata_port_info], ptr @k2_port_info, i32 0, i32 %2
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %.b104 = load i1, ptr @k2_sata_init_one.__print_once, align 1
  br i1 %.b104, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @k2_sata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ppi, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %and = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool2.not, i32 4, i32 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev5, ptr noundef nonnull %ppi, i32 noundef %spec.store.select) #6
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppi, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and11 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.store.select66 = select i1 %tobool12.not, i32 5, i32 3
  %call15 = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %spec.store.select66, i32 1
  %13 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.end18.if.then26_crit_edge, label %cond.false

if.end18.if.then26_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

cond.false:                                       ; preds = %if.end18
  %arrayidx19 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %spec.store.select66
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx19, align 8
  %sub = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %phi.cmp = icmp eq i32 %sub, -1
  br i1 %phi.cmp, label %cond.false.if.then26_crit_edge, label %if.end27

cond.false.if.then26_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

if.then26:                                        ; preds = %cond.false.if.then26_crit_edge, %if.end18.if.then26_crit_edge
  call void @pcim_pin_device(ptr noundef %pdev) #6
  br label %cleanup

if.end27:                                         ; preds = %cond.false
  %shl = shl nuw nsw i32 1, %spec.store.select66
  %call28 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %shl, ptr noundef nonnull @.str.1) #6
  %17 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %if.end27.cleanup_crit_edge [
    i32 -16, label %if.then30
    i32 0, label %if.end34
  ]

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void @pcim_pin_device(ptr noundef %pdev) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %iomap, align 4
  %arrayidx37 = getelementptr ptr, ptr %call35, i32 %spec.store.select66
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx37, align 4
  %n_ports38 = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 3
  %21 = ptrtoint ptr %n_ports38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_ports38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp39105.not = icmp eq i32 %22, 0
  br i1 %cmp39105.not, label %if.end34.for.end_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.0106 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %arrayidx40 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 %i.0106
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx40, align 4
  %mul = shl i32 %i.0106, 8
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8
  %add.ptr = getelementptr i8, ptr %20, i32 %mul
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr, ptr %ioaddr, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %data_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i32 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 2
  %27 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr2.i, ptr %error_addr.i, align 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr2.i, ptr %feature_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 4
  %29 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr3.i, ptr %nsect_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 5
  %30 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr4.i, ptr %lbal_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 6
  %31 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr5.i, ptr %lbam_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 7
  %32 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr6.i, ptr %lbah_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 8
  %33 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr7.i, ptr %device_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i32 28
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 9
  %34 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr8.i, ptr %status_addr.i, align 4
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 10
  %35 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr8.i, ptr %command_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr, i32 32
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 12
  %36 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr9.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 11
  %37 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr9.i, ptr %altstatus_addr.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %add.ptr, i32 48
  %bmdma_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 13
  %38 = ptrtoint ptr %bmdma_addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr10.i, ptr %bmdma_addr.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr, i32 64
  %scr_addr.i = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 8, i32 14
  %39 = ptrtoint ptr %scr_addr.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr11.i, ptr %scr_addr.i, align 4
  call void @ata_port_pbar_desc(ptr noundef %24, i32 noundef 5, i32 noundef -1, ptr noundef nonnull @.str.3) #6
  call void @ata_port_pbar_desc(ptr noundef %24, i32 noundef 5, i32 noundef %mul, ptr noundef nonnull @.str.4) #6
  %inc = add nuw i32 %i.0106, 1
  %40 = ptrtoint ptr %n_ports38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_ports38, align 4
  %cmp39 = icmp ult i32 %inc, %41
  br i1 %cmp39, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end34.for.end_crit_edge
  %call.i = call i32 @dma_set_mask(ptr noundef %dev5, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %do.body, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev5, i64 noundef 4294967295) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @arm_heavy_mb() #6
  %add.ptr46 = getelementptr i8, ptr %20, i32 128
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #6, !srcloc !51
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %43 = and i32 %42, -1025
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %43) #6, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  call void @arm_heavy_mb() #6
  %add.ptr54 = getelementptr i8, ptr %20, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 -1) #6, !srcloc !53
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  call void @arm_heavy_mb() #6
  %add.ptr58 = getelementptr i8, ptr %20, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 0) #6, !srcloc !53
  call void @pci_set_master(ptr noundef %pdev) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  %call59 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %45, ptr noundef nonnull @ata_bmdma_interrupt, i32 noundef 128, ptr noundef nonnull @k2_sata_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %for.end.cleanup_crit_edge, %if.then30, %if.end27.cleanup_crit_edge, %if.then26, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then26 ], [ %call59, %do.body ], [ -12, %if.end.cleanup_crit_edge ], [ %call15, %if.end8.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ -16, %if.then30 ], [ %call.i, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
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
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @k2_sata_check_atapi_dma(ptr nocapture noundef readonly %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %flags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %scsicmd = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 2
  %4 = ptrtoint ptr %scsicmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scsicmd, align 4
  %cmnd1 = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %9, label %sw.default [
    i8 40, label %if.else.cleanup_crit_edge
    i8 -88, label %if.else.cleanup_crit_edge3
    i8 -120, label %if.else.cleanup_crit_edge4
    i8 42, label %if.else.cleanup_crit_edge5
    i8 -86, label %if.else.cleanup_crit_edge6
    i8 -118, label %if.else.cleanup_crit_edge7
  ]

if.else.cleanup_crit_edge7:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge6:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge5:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge4:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge3:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.else.cleanup_crit_edge, %if.else.cleanup_crit_edge3, %if.else.cleanup_crit_edge4, %if.else.cleanup_crit_edge5, %if.else.cleanup_crit_edge6, %if.else.cleanup_crit_edge7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.default ], [ -1, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge3 ], [ 0, %if.else.cleanup_crit_edge4 ], [ 0, %if.else.cleanup_crit_edge5 ], [ 0, %if.else.cleanup_crit_edge6 ], [ 0, %if.else.cleanup_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmdma_addr, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i8 %4, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %and3) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call i32 @ata_sff_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmdma_addr, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = and i8 %4, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %and3) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call i32 @sata_sff_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !51
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !53
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @k2_stat_check_status(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !51
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k2_sata_tf_load(ptr noundef %ap, ptr nocapture noundef readonly %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not = icmp eq i8 %3, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctl, align 1
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_addr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 %7) #6, !srcloc !59
  %10 = ptrtoint ptr %ctl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ctl, align 1
  %12 = ptrtoint ptr %last_ctl to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %last_ctl, align 1
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body
  %max.addr.0.i.i = phi i32 [ 1000, %do.body ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #6
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 4
  %sff_check_status.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 39
  %16 = ptrtoint ptr %sff_check_status.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sff_check_status.i.i, align 4
  %call.i.i = tail call zeroext i8 %17(ptr noundef %ap) #6
  %dec.i.i = add nsw i32 %max.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i)
  %cmp.not.i.i = icmp eq i8 %call.i.i, -1
  %18 = and i8 %call.i.i, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %or.cond.i.i = or i1 %cmp.not.i.i, %tobool.not.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp3.not.i.i = icmp eq i32 %dec.i.i, 0
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp3.not.i.i
  br i1 %or.cond1.i.i, label %ata_sff_busy_wait.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

ata_sff_busy_wait.exit.i:                         ; preds = %do.body.i.i
  %conv.i = zext i8 %call.i.i to i32
  %and.i = and i32 %conv.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp.not.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %ata_sff_busy_wait.exit.i.if.end_crit_edge, label %do.body.i

ata_sff_busy_wait.exit.i.if.end_crit_edge:        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i:                                        ; preds = %ata_sff_busy_wait.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@k2_sata_tf_load, %if.then7.i)) #6
          to label %if.end [label %if.then7.i], !srcloc !66

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %19 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %print_id.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.7, i32 noundef %20, i32 noundef %conv.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then7.i, %do.body.i, %ata_sff_busy_wait.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end87_crit_edge, label %land.lhs.true

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end
  %21 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tf, align 4
  %and8 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %feature59 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %23 = ptrtoint ptr %feature59 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %feature59, align 1
  %conv60 = zext i8 %24 to i16
  br i1 %tobool9.not, label %do.body56.critedge, label %do.body11

do.body11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %25 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hob_feature, align 2
  %conv16 = zext i8 %26 to i16
  %shl = shl nuw i16 %conv16, 8
  %or = or i16 %shl, %conv60
  %27 = tail call i16 @llvm.bswap.i16(i16 %or)
  %feature_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %28 = ptrtoint ptr %feature_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %feature_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %27) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %30 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %nsect, align 4
  %conv21 = zext i8 %31 to i16
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %32 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hob_nsect, align 1
  %conv23 = zext i8 %33 to i16
  %shl24 = shl nuw i16 %conv23, 8
  %or25 = or i16 %shl24, %conv21
  %34 = tail call i16 @llvm.bswap.i16(i16 %or25)
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %35 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nsect_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %37 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %lbal, align 1
  %conv30 = zext i8 %38 to i16
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %39 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hob_lbal, align 4
  %conv32 = zext i8 %40 to i16
  %shl33 = shl nuw i16 %conv32, 8
  %or34 = or i16 %shl33, %conv30
  %41 = tail call i16 @llvm.bswap.i16(i16 %or34)
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %42 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lbal_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %41) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %44 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %lbam, align 2
  %conv39 = zext i8 %45 to i16
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %46 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hob_lbam, align 1
  %conv41 = zext i8 %47 to i16
  %shl42 = shl nuw i16 %conv41, 8
  %or43 = or i16 %shl42, %conv39
  %48 = tail call i16 @llvm.bswap.i16(i16 %or43)
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %49 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lbam_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %48) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %51 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lbah, align 1
  %conv48 = zext i8 %52 to i16
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %53 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hob_lbah, align 2
  %conv50 = zext i8 %54 to i16
  %shl51 = shl nuw i16 %conv50, 8
  %or52 = or i16 %shl51, %conv48
  %55 = tail call i16 @llvm.bswap.i16(i16 %or52)
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %56 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lbah_addr, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %57, i16 %55) #6, !srcloc !67
  br label %if.end87

do.body56.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %58 = shl nuw i16 %conv60, 8
  %feature_addr61 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 3
  %59 = ptrtoint ptr %feature_addr61 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %feature_addr61, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %58) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %nsect65 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %61 = ptrtoint ptr %nsect65 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nsect65, align 4
  %conv66 = zext i8 %62 to i16
  %63 = shl nuw i16 %conv66, 8
  %nsect_addr67 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %64 = ptrtoint ptr %nsect_addr67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nsect_addr67, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %63) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %lbal71 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %66 = ptrtoint ptr %lbal71 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lbal71, align 1
  %conv72 = zext i8 %67 to i16
  %68 = shl nuw i16 %conv72, 8
  %lbal_addr73 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %69 = ptrtoint ptr %lbal_addr73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lbal_addr73, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %70, i16 %68) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %lbam77 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %71 = ptrtoint ptr %lbam77 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %lbam77, align 2
  %conv78 = zext i8 %72 to i16
  %73 = shl nuw i16 %conv78, 8
  %lbam_addr79 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %74 = ptrtoint ptr %lbam_addr79 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lbam_addr79, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %73) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %lbah83 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %76 = ptrtoint ptr %lbah83 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %lbah83, align 1
  %conv84 = zext i8 %77 to i16
  %78 = shl nuw i16 %conv84, 8
  %lbah_addr85 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %79 = ptrtoint ptr %lbah_addr85 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lbah_addr85, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %78) #6, !srcloc !67
  br label %if.end87

if.end87:                                         ; preds = %do.body56.critedge, %do.body11, %if.end.if.end87_crit_edge
  %81 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tf, align 4
  %and89 = and i32 %82, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end95_crit_edge, label %do.body92

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

do.body92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %83 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %device, align 4
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %85 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_addr, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 %84) #6, !srcloc !59
  br label %if.end95

if.end95:                                         ; preds = %do.body92, %if.end87.if.end95_crit_edge
  %ops.i.i134 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  br label %do.body.i.i144

do.body.i.i144:                                   ; preds = %do.body.i.i144.do.body.i.i144_crit_edge, %if.end95
  %max.addr.0.i.i135 = phi i32 [ 1000, %if.end95 ], [ %dec.i.i138, %do.body.i.i144.do.body.i.i144_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #6
  %88 = ptrtoint ptr %ops.i.i134 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i.i134, align 4
  %sff_check_status.i.i136 = getelementptr inbounds %struct.ata_port_operations, ptr %89, i32 0, i32 39
  %90 = ptrtoint ptr %sff_check_status.i.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sff_check_status.i.i136, align 4
  %call.i.i137 = tail call zeroext i8 %91(ptr noundef %ap) #6
  %dec.i.i138 = add nsw i32 %max.addr.0.i.i135, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i.i137)
  %cmp.not.i.i139 = icmp eq i8 %call.i.i137, -1
  %92 = and i8 %call.i.i137, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i140 = icmp eq i8 %92, 0
  %or.cond.i.i141 = or i1 %cmp.not.i.i139, %tobool.not.i.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i138)
  %cmp3.not.i.i142 = icmp eq i32 %dec.i.i138, 0
  %or.cond1.i.i143 = select i1 %or.cond.i.i141, i1 true, i1 %cmp3.not.i.i142
  br i1 %or.cond1.i.i143, label %ata_sff_busy_wait.exit.i149, label %do.body.i.i144.do.body.i.i144_crit_edge

do.body.i.i144.do.body.i.i144_crit_edge:          ; preds = %do.body.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i144

ata_sff_busy_wait.exit.i149:                      ; preds = %do.body.i.i144
  %conv.i145 = zext i8 %call.i.i137 to i32
  %and.i146 = and i32 %conv.i145, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i146)
  %tobool.not.i147 = icmp eq i32 %and.i146, 0
  %or.cond.i148 = select i1 %cmp.not.i.i139, i1 true, i1 %tobool.not.i147
  br i1 %or.cond.i148, label %ata_sff_busy_wait.exit.i149.ata_wait_idle.exit153_crit_edge, label %do.body.i150

ata_sff_busy_wait.exit.i149.ata_wait_idle.exit153_crit_edge: ; preds = %ata_sff_busy_wait.exit.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_wait_idle.exit153

do.body.i150:                                     ; preds = %ata_sff_busy_wait.exit.i149
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@k2_sata_tf_load, %if.then7.i152)) #6
          to label %ata_wait_idle.exit153 [label %if.then7.i152], !srcloc !66

if.then7.i152:                                    ; preds = %do.body.i150
  call void @__sanitizer_cov_trace_pc() #8
  %print_id.i151 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %93 = ptrtoint ptr %print_id.i151 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %print_id.i151, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ata_wait_idle.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.7, i32 noundef %94, i32 noundef %conv.i145) #6
  br label %ata_wait_idle.exit153

ata_wait_idle.exit153:                            ; preds = %if.then7.i152, %do.body.i150, %ata_sff_busy_wait.exit.i149.ata_wait_idle.exit153_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k2_sata_tf_read(ptr nocapture noundef readonly %ap, ptr nocapture noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 9
  %0 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !51
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %conv.i = trunc i32 %3 to i8
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %4 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %command, align 1
  %device_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 8
  %5 = ptrtoint ptr %device_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_addr, align 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #6, !srcloc !77
  %8 = lshr i16 %7, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %conv = trunc i16 %8 to i8
  %device = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %9 = ptrtoint ptr %device to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %device, align 4
  %error_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %error_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %error_addr, align 4
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #6, !srcloc !77
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %nsect_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %nsect_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nsect_addr, align 4
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #6, !srcloc !77
  %17 = tail call i16 @llvm.bswap.i16(i16 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %lbal_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 5
  %18 = ptrtoint ptr %lbal_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lbal_addr, align 4
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %19) #6, !srcloc !77
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %lbam_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 6
  %22 = ptrtoint ptr %lbam_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lbam_addr, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #6, !srcloc !77
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %lbah_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %lbah_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lbah_addr, align 4
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #6, !srcloc !77
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %conv29 = trunc i16 %13 to i8
  %feature30 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %30 = ptrtoint ptr %feature30 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv29, ptr %feature30, align 1
  %conv31 = trunc i16 %17 to i8
  %nsect32 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %31 = ptrtoint ptr %nsect32 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv31, ptr %nsect32, align 4
  %conv33 = trunc i16 %21 to i8
  %lbal34 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %32 = ptrtoint ptr %lbal34 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv33, ptr %lbal34, align 1
  %conv35 = trunc i16 %25 to i8
  %lbam36 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %33 = ptrtoint ptr %lbam36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv35, ptr %lbam36, align 2
  %conv37 = trunc i16 %29 to i8
  %lbah38 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %34 = ptrtoint ptr %lbah38 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv37, ptr %lbah38, align 1
  %35 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tf, align 4
  %and = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %37 = lshr i16 %13, 8
  %conv40 = trunc i16 %37 to i8
  %hob_feature = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 3
  %38 = ptrtoint ptr %hob_feature to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv40, ptr %hob_feature, align 2
  %39 = lshr i16 %17, 8
  %conv43 = trunc i16 %39 to i8
  %hob_nsect = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 4
  %40 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv43, ptr %hob_nsect, align 1
  %41 = lshr i16 %21, 8
  %conv46 = trunc i16 %41 to i8
  %hob_lbal = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 5
  %42 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv46, ptr %hob_lbal, align 4
  %43 = lshr i16 %25, 8
  %conv49 = trunc i16 %43 to i8
  %hob_lbam = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 6
  %44 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv49, ptr %hob_lbam, align 1
  %45 = lshr i16 %29, 8
  %conv52 = trunc i16 %45 to i8
  %hob_lbah = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 7
  %46 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv52, ptr %hob_lbah, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k2_bmdma_setup_mmio(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %2 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tf, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %4 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmdma_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %bmdma_prd_dma = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %bmdma_prd_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bmdma_prd_dma, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !53
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %10 = and i8 %9, -10
  %11 = trunc i32 %3 to i8
  %12 = and i8 %11, 8
  %13 = or i8 %10, %12
  %14 = xor i8 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %14) #6, !srcloc !59
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.not = icmp eq i8 %16, 2
  br i1 %cmp.not, label %entry.if.end20_crit_edge, label %if.then18

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 43
  %19 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sff_exec_command, align 4
  tail call void %20(ptr noundef %1, ptr noundef %tf) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %entry.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @k2_bmdma_start_mmio(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bmdma_addr, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #6, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %5 = or i8 %4, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %5) #6, !srcloc !59
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %9, i32 0, i32 43
  %10 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sff_exec_command, align 4
  tail call void %11(ptr noundef %1, ptr noundef %tf) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_softreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_sff_hardreset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @k2_sata_show_info(ptr noundef %m, ptr nocapture noundef readonly %shost) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup14_crit_edge, label %if.end

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.end:                                           ; preds = %entry
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %if.end.cleanup14_crit_edge, label %pci_device_to_OF_node.exit

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

pci_device_to_OF_node.exit:                       ; preds = %if.end
  %of_node.i = getelementptr i8, ptr %5, i32 832
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %pci_device_to_OF_node.exit.cleanup14_crit_edge, label %if.end4

pci_device_to_OF_node.exit.cleanup14_crit_edge:   ; preds = %pci_device_to_OF_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

if.end4:                                          ; preds = %pci_device_to_OF_node.exit
  %ports = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 12
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %cmp6 = icmp ne ptr %1, %9
  %cond = zext i1 %cmp6 to i32
  %child = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %10)
  %np.032 = load ptr, ptr %child, align 4
  %cmp7.not33 = icmp eq ptr %np.032, null
  br i1 %cmp7.not33, label %if.end4.cleanup14_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %np.034 = phi ptr [ %np.0, %for.inc.for.body_crit_edge ], [ %np.032, %if.end4.for.body_crit_edge ]
  %call8 = tail call ptr @of_get_property(ptr noundef nonnull %np.034, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cond)
  %cmp11 = icmp eq i32 %12, %cond
  br i1 %cmp11, label %cleanup, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.9, ptr noundef nonnull %np.034) #6
  br label %cleanup14

for.inc:                                          ; preds = %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %sibling = getelementptr inbounds %struct.device_node, ptr %np.034, i32 0, i32 8
  %13 = ptrtoint ptr %sibling to i32
  call void @__asan_load4_noabort(i32 %13)
  %np.0 = load ptr, ptr %sibling, align 4
  %cmp7.not = icmp eq ptr %np.0, null
  br i1 %cmp7.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %cleanup, %if.end4.cleanup14_crit_edge, %pci_device_to_OF_node.exit.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_sata_svw__290_519_k2_sata_pci_driver_init6, !1, !"__initcall__kmod_sata_svw__290_519_k2_sata_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_svw.c", i32 519, i32 1}
!2 = !{ptr @__exitcall_k2_sata_pci_driver_exit, !1, !"__exitcall_k2_sata_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_svw.c", i32 521, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_svw.c", i32 522, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_svw.c", i32 523, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_svw.c", i32 525, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @k2_sata_pci_driver, !17, !"k2_sata_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_svw.c", i32 512, i32 26}
!18 = !{ptr @k2_sata_pci_tbl, !19, !"k2_sata_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_svw.c", i32 500, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_svw.c", i32 417, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_svw.c", i32 470, i32 33}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_svw.c", i32 471, i32 37}
!26 = !{ptr @k2_port_info, !27, !"k2_port_info", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_svw.c", i32 353, i32 35}
!28 = !{ptr @k2_sata_ops, !29, !"k2_sata_ops", i1 false, i1 false}
!29 = !{!"../drivers/ata/sata_svw.c", i32 339, i32 35}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/libata.h", i32 2045, i32 3}
!32 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ata_wait_idle.__UNIQUE_ID_ddebug289, !31, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!35 = !{ptr @k2_sata_sht, !36, !"k2_sata_sht", i1 false, i1 false}
!36 = !{!"../drivers/ata/sata_svw.c", i32 333, i32 34}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ata/sata_svw.c", i32 322, i32 40}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ata/sata_svw.c", i32 326, i32 18}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2155763819}
!51 = !{i64 4992709}
!52 = !{i64 2155764802}
!53 = !{i64 4992291}
!54 = !{i64 2155765068}
!55 = !{i64 2155765510}
!56 = !{i64 4992489}
!57 = !{i64 2155748863}
!58 = !{i64 2155749081}
!59 = !{i64 4992094}
!60 = !{i64 2155749372}
!61 = !{i64 2155749590}
!62 = !{i64 2155748191}
!63 = !{i64 2155748431}
!64 = !{i64 2155760029}
!65 = !{i64 2155749864}
!66 = !{i64 2148703989, i64 2148703994, i64 2148704007, i64 2148704051, i64 2148704085, i64 2148704106}
!67 = !{i64 4991671}
!68 = !{i64 2155750726}
!69 = !{i64 2155751258}
!70 = !{i64 2155751783}
!71 = !{i64 2155752308}
!72 = !{i64 2155753233}
!73 = !{i64 2155753646}
!74 = !{i64 2155754055}
!75 = !{i64 2155754464}
!76 = !{i64 2155754877}
!77 = !{i64 4991871}
!78 = !{i64 2155755433}
!79 = !{i64 2155755923}
!80 = !{i64 2155756413}
!81 = !{i64 2155756899}
!82 = !{i64 2155757385}
!83 = !{i64 2155757871}
!84 = !{i64 2155758014}
!85 = !{i64 2155758249}
!86 = !{i64 2155758707}
!87 = !{i64 2155758925}
!88 = !{i64 2155759216}
!89 = !{i64 2155759450}
