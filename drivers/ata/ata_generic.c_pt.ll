; ModuleID = '/llk/IR_all_yes/drivers/ata/ata_generic.c_pt.bc'
source_filename = "../drivers/ata/ata_generic.c"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
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

@__initcall__kmod_ata_generic__289_250_ata_generic_pci_driver_init6 = internal global ptr @ata_generic_pci_driver_init, section ".initcall6.init", align 4
@ata_generic_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ata_generic, ptr @ata_generic_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ata_generic_pci_driver_exit = internal global ptr @ata_generic_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"ata_generic.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [57 x i8] c"ata_generic.description=low-level driver for generic ATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [41 x i8] c"ata_generic.file=drivers/ata/ata_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"ata_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"ata_generic.version=0.2.15\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ata_generic\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.2.15\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_all_generic_ide = internal constant [28 x i8] c"ata_generic.all_generic_ide\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@all_generic_ide = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_all_generic_ide = internal constant %struct.kernel_param { ptr @__param_str_all_generic_ide, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @all_generic_ide } }, section "__param", align 4
@__UNIQUE_ID_all_generic_idetype295 = internal constant [41 x i8] c"ata_generic.parmtype=all_generic_ide:int\00", section ".modinfo", align 1
@ata_generic = internal global { [12 x %struct.pci_device_id], [96 x i8] } { [12 x %struct.pci_device_id] [%struct.pci_device_id { i32 4162, i32 12320, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 37906, i32 25957, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4192, i32 257, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4192, i32 34922, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4192, i32 26426, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 13192, i32 32787, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4358, i32 1377, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4165, i32 50520, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5834, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 -1, i32 -1, i32 -1, i32 65792, i32 -256, i32 4, i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 65792, i32 -256, i32 1, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@ata_generic_init_one.info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @generic_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@generic_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_unknown, ptr null, ptr null, ptr null, ptr @generic_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.ata_generic_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @ata_generic_init_one.info, ptr null], align 8
@generic_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@generic_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ata%u.%02u: configured for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"generic_set_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/ata_generic.c\00", [38 x i8] zeroinitializer }, align 32
@generic_set_mode._entry_ptr = internal global ptr @generic_set_mode._entry, section ".printk_index", align 4
@generic_set_mode._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ata%u.%02u: configured for PIO\0A\00", [62 x i8] zeroinitializer }, align 32
@generic_set_mode._entry_ptr.9 = internal global ptr @generic_set_mode._entry.7, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4165, i64 4192]
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"ata_generic_pci_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 239, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 256, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"all_generic_ide\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"ata_generic\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 212, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 166, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"generic_port_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 102, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"generic_sht\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 98, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 79, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 83, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [29 x i8] c"../drivers/ata/ata_generic.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 89, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_all_generic_idetype295, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_ata_generic_pci_driver_exit, ptr @__initcall__kmod_ata_generic__289_250_ata_generic_pci_driver_init6, ptr @__modver_attr, ptr @__param_all_generic_ide, ptr @ata_generic_pci_driver_exit, ptr @generic_set_mode._entry, ptr @generic_set_mode._entry.7, ptr @generic_set_mode._entry_ptr, ptr @generic_set_mode._entry_ptr.9, ptr @ata_generic_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @all_generic_ide, ptr @ata_generic, ptr @ata_generic_init_one.info, ptr @generic_port_ops, ptr @generic_sht, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_generic_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_generic_ide to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_generic to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_generic_init_one.info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_mode._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ata_generic_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ata_generic_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ata_generic_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @ata_generic_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ata_generic_init_one(ptr noundef %dev, ptr noundef %id) #2 align 64 {
entry:
  %r.i = alloca i32, align 4
  %t.i = alloca i16, align 2
  %command = alloca i16, align 2
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command) #5
  %0 = ptrtoint ptr %command to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %command, align 2, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #5
  %1 = load i64, ptr @__const.ata_generic_init_one.ppi, align 8
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %ppi, align 8
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, ptr @all_generic_ide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %land.lhs.true.cleanup64_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup64_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup64

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and2 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %land.lhs.true4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true4:                                   ; preds = %if.end
  %6 = load i32, ptr @all_generic_ide, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true4.if.end10_crit_edge

land.lhs.true4.if.end10_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then6:                                         ; preds = %land.lhs.true4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r.i) #5
  %7 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %r.i, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %t.i) #5
  %8 = ptrtoint ptr %t.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %t.i, align 2, !annotation !53
  %call.i = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef 248, ptr noundef nonnull %r.i) #5
  %9 = ptrtoint ptr %r.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then6.is_intel_ider.exit.thread_crit_edge

if.then6.is_intel_ider.exit.thread_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_intel_ider.exit.thread

if.end.i:                                         ; preds = %if.then6
  %call1.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %t.i) #5
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %t.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp2.not.i = icmp eq i16 %12, 0
  br i1 %cmp2.not.i, label %if.end5.i, label %if.end.i.is_intel_ider.exit.thread_crit_edge

if.end.i.is_intel_ider.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %is_intel_ider.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 64, i16 noundef zeroext 1) #5
  %call7.i = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 64, ptr noundef nonnull %t.i) #5
  %13 = ptrtoint ptr %t.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %t.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.i = icmp eq i16 %14, 0
  br i1 %tobool.not.i, label %is_intel_ider.exit, label %if.then8.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 64, i16 noundef zeroext 0) #5
  br label %is_intel_ider.exit.thread

is_intel_ider.exit.thread:                        ; preds = %if.then8.i, %if.end.i.is_intel_ider.exit.thread_crit_edge, %if.then6.is_intel_ider.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %t.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #5
  br label %cleanup64

is_intel_ider.exit:                               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %t.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r.i) #5
  br label %if.end10

if.end10:                                         ; preds = %is_intel_ider.exit, %land.lhs.true4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 7
  %15 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %if.end10.if.end38_crit_edge [
    i16 4192, label %land.lhs.true13
    i16 4165, label %land.lhs.true27
  ]

if.end10.if.end38_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true13:                                  ; preds = %if.end10
  %device = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30614, i16 %19)
  %cmp15 = icmp eq i16 %19, -30614
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true13.if.end38_crit_edge

land.lhs.true13.if.end38_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %20 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devfn, align 4
  %and19 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true17.cleanup64_crit_edge, label %land.lhs.true17.if.end38_crit_edge

land.lhs.true17.if.end38_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true17.cleanup64_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup64

land.lhs.true27:                                  ; preds = %if.end10
  %device28 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %device28 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %device28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15016, i16 %23)
  %cmp30 = icmp eq i16 %23, -15016
  br i1 %cmp30, label %land.lhs.true32, label %land.lhs.true27.if.end38_crit_edge

land.lhs.true27.if.end38_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true32:                                  ; preds = %land.lhs.true27
  %devfn33 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %24 = ptrtoint ptr %devfn33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devfn33, align 4
  %and35 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true32.cleanup64_crit_edge, label %land.lhs.true32.if.end38_crit_edge

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true32.cleanup64_crit_edge:              ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup64

if.end38:                                         ; preds = %land.lhs.true32.if.end38_crit_edge, %land.lhs.true27.if.end38_crit_edge, %land.lhs.true17.if.end38_crit_edge, %land.lhs.true13.if.end38_crit_edge, %if.end10.if.end38_crit_edge
  %call39 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull %command) #5
  %26 = ptrtoint ptr %command to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %command, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool42.not = icmp eq i16 %28, 0
  br i1 %tobool42.not, label %if.end38.cleanup64_crit_edge, label %if.end44

if.end38.cleanup64_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup64

if.end44:                                         ; preds = %if.end38
  %29 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4281, i16 %30)
  %cmp47 = icmp eq i16 %30, 4281
  br i1 %cmp47, label %if.then49, label %if.end44.if.end51_crit_edge

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = call i32 @ata_pci_bmdma_clear_simplex(ptr noundef %dev) #5
  %31 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr = load i16, ptr %vendor, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44.if.end51_crit_edge
  %32 = phi i16 [ %.pr, %if.then49 ], [ %30, %if.end44.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4098, i16 %32)
  %cmp54 = icmp eq i16 %32, 4098
  br i1 %cmp54, label %if.then56, label %if.end51.if.end62_crit_edge

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then56:                                        ; preds = %if.end51
  %call57 = call i32 @pcim_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then56.cleanup64_crit_edge, label %if.end61

if.then56.cleanup64_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup64

if.end61:                                         ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  call void @pcim_pin_device(ptr noundef %dev) #5
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end51.if.end62_crit_edge
  %call63 = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @generic_sht, ptr noundef %id, i32 noundef 0) #5
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %if.then56.cleanup64_crit_edge, %if.end38.cleanup64_crit_edge, %land.lhs.true32.cleanup64_crit_edge, %land.lhs.true17.cleanup64_crit_edge, %is_intel_ider.exit.thread, %land.lhs.true.cleanup64_crit_edge
  %retval.1 = phi i32 [ %call63, %if.end62 ], [ -19, %land.lhs.true.cleanup64_crit_edge ], [ -19, %land.lhs.true17.cleanup64_crit_edge ], [ -19, %land.lhs.true32.cleanup64_crit_edge ], [ -19, %if.end38.cleanup64_crit_edge ], [ %call57, %if.then56.cleanup64_crit_edge ], [ -19, %is_intel_ider.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command) #5
  ret i32 %retval.1
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
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_clear_simplex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_unknown(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @generic_set_mode(ptr noundef %link, ptr nocapture noundef readnone %unused) #2 align 64 {
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
  %private_data = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.else:                                          ; preds = %entry
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 13
  %8 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmdma_addr, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.else.if.end6_crit_edge, label %if.then3

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %9, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %conv = zext i8 %10 to i32
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %dma_enabled.0 = phi i32 [ %conv, %if.then3 ], [ 0, %if.else.if.end6_crit_edge ], [ 255, %entry.if.end6_crit_edge ]
  %call7 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %link, i32 noundef 0) #5
  %tobool8.not75 = icmp eq ptr %call7, null
  br i1 %tobool8.not75, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %dev.076 = phi ptr [ %call49, %for.inc.for.body_crit_edge ], [ %call7, %if.end6.for.body_crit_edge ]
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 11
  %11 = ptrtoint ptr %pio_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %pio_mode, align 16
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 12
  %12 = ptrtoint ptr %dma_mode to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %dma_mode, align 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 1
  %13 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devno, align 4
  %add = add i32 %14, 5
  %shl = shl nuw i32 1, %add
  %and9 = and i32 %shl, %dma_enabled.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end34, label %if.then11

if.then11:                                        ; preds = %for.body
  %15 = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 25
  %call12 = tail call i32 @ata_id_xfermask(ptr noundef %15) #5
  %and13 = and i32 %call12, 1048448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call ptr @ata_mode_string(i32 noundef %call12) #5
  br label %do.end

if.else17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @ata_xfer_mode2mask(i8 noundef zeroext 32) #5
  %or = or i32 %call18, %call12
  br label %do.end

do.end:                                           ; preds = %if.else17, %if.then15
  %xfer_mask.0 = phi i32 [ %call12, %if.then15 ], [ %or, %if.else17 ]
  %name.0 = phi ptr [ %call16, %if.then15 ], [ @.str.3, %if.else17 ]
  %16 = ptrtoint ptr %dev.076 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.076, align 128
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pmp, align 4
  %24 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devno, align 4
  %add24 = add i32 %25, %23
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %21, i32 noundef %add24, ptr noundef %name.0) #8
  %call26 = tail call zeroext i8 @ata_xfer_mask2mode(i32 noundef %xfer_mask.0) #5
  %xfer_mode = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 13
  %26 = ptrtoint ptr %xfer_mode to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call26, ptr %xfer_mode, align 2
  %conv28 = zext i8 %call26 to i32
  %call29 = tail call i32 @ata_xfer_mode2shift(i32 noundef %conv28) #5
  %xfer_shift = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 14
  %27 = ptrtoint ptr %xfer_shift to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call29, ptr %xfer_shift, align 4
  %flags = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 3
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and30 = and i32 %29, -4097
  store i32 %and30, ptr %flags, align 4
  br label %for.inc

do.end34:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev.076 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.076, align 128
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  %print_id38 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %print_id38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %print_id38, align 4
  %pmp40 = getelementptr inbounds %struct.ata_link, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %pmp40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pmp40, align 4
  %add42 = add i32 %37, %14
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %35, i32 noundef %add42) #8
  %xfer_mode44 = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 13
  %38 = ptrtoint ptr %xfer_mode44 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %xfer_mode44, align 2
  %xfer_shift45 = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 14
  %39 = ptrtoint ptr %xfer_shift45 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %xfer_shift45, align 4
  %flags46 = getelementptr inbounds %struct.ata_device, ptr %dev.076, i32 0, i32 3
  %40 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags46, align 4
  %or47 = or i32 %41, 4096
  store i32 %or47, ptr %flags46, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end34, %do.end
  %call49 = tail call ptr @ata_dev_next(ptr noundef nonnull %dev.076, ptr noundef %link, i32 noundef 0) #5
  %tobool8.not = icmp eq ptr %call49, null
  br i1 %tobool8.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_id_xfermask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_mode_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_xfer_mode2mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_xfer_mask2mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_xfer_mode2shift(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_ata_generic__289_250_ata_generic_pci_driver_init6, !1, !"__initcall__kmod_ata_generic__289_250_ata_generic_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ata_generic.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_ata_generic_pci_driver_exit, !1, !"__exitcall_ata_generic_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/ata_generic.c", i32 252, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/ata_generic.c", i32 253, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/ata_generic.c", i32 254, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/ata_generic.c", i32 256, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @__param_all_generic_ide, !17, !"__param_all_generic_ide", i1 false, i1 false}
!17 = !{!"../drivers/ata/ata_generic.c", i32 258, i32 1}
!18 = !{ptr @__UNIQUE_ID_all_generic_idetype295, !17, !"__UNIQUE_ID_all_generic_idetype295", i1 false, i1 false}
!19 = !{ptr @all_generic_ide, !20, !"all_generic_ide", i1 false, i1 false}
!20 = !{!"../drivers/ata/ata_generic.c", i32 108, i32 12}
!21 = !{ptr @ata_generic_pci_driver, !22, !"ata_generic_pci_driver", i1 false, i1 false}
!22 = !{!"../drivers/ata/ata_generic.c", i32 239, i32 26}
!23 = !{ptr @ata_generic, !24, !"ata_generic", i1 false, i1 false}
!24 = !{!"../drivers/ata/ata_generic.c", i32 212, i32 29}
!25 = !{ptr @ata_generic_init_one.info, !26, !"info", i1 false, i1 false}
!26 = !{!"../drivers/ata/ata_generic.c", i32 166, i32 36}
!27 = !{ptr @generic_port_ops, !28, !"generic_port_ops", i1 false, i1 false}
!28 = !{!"../drivers/ata/ata_generic.c", i32 102, i32 35}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/ata/ata_generic.c", i32 79, i32 12}
!31 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ata/ata_generic.c", i32 83, i32 4}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @generic_set_mode._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @generic_set_mode._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/ata/ata_generic.c", i32 89, i32 4}
!39 = !{ptr @generic_set_mode._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @generic_set_mode._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @generic_sht, !42, !"generic_sht", i1 false, i1 false}
!42 = !{!"../drivers/ata/ata_generic.c", i32 98, i32 34}
!43 = !{ptr @__param_str_all_generic_ide, !17, !"__param_str_all_generic_ide", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{i64 4986279}
!55 = !{i64 2152525624}
