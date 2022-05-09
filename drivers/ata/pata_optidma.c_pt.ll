; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_optidma.c_pt.bc'
source_filename = "../drivers/ata/pata_optidma.c"
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
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_pata_optidma__289_451_optidma_pci_driver_init6 = internal global ptr @optidma_pci_driver_init, section ".initcall6.init", align 4
@optidma_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @optidma, ptr @optidma_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @ata_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_optidma_pci_driver_exit = internal global ptr @optidma_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [29 x i8] c"pata_optidma.author=Alan Cox\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [74 x i8] c"pata_optidma.description=low-level driver for Opti Firestar/Firestar Plus\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"pata_optidma.file=drivers/ata/pata_optidma\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"pata_optidma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [27 x i8] c"pata_optidma.version=0.3.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pata_optidma\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.3.2\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@optidma = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4165, i32 54632, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@optidma_init_one.info_82c700 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 0, ptr @optidma_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@optidma_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @optidma_set_pio_mode, ptr @optidma_set_dma_mode, ptr @optidma_set_mode, ptr null, ptr null, ptr null, ptr null, ptr @optidma_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@optidma_init_one.info_82c700_udma = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @optiplus_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@optiplus_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @optiplus_set_pio_mode, ptr @optiplus_set_dma_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @optidma_port_ops }, [44 x i8] zeroinitializer }, align 32
@__const.optidma_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @optidma_init_one.info_82c700, ptr null], align 8
@optidma_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@pci_clock = internal global { i32, [28 x i8] } zeroinitializer, align 32
@optidma_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@optidma_mode_setup.addr_timing = internal constant { [2 x [5 x i8]], [22 x i8] } { [2 x [5 x i8]] [[5 x i8] c"0  \10\10", [5 x i8] c"  \10\10\10"], [22 x i8] zeroinitializer }, align 32
@optidma_mode_setup.data_rec_timing = internal constant { [2 x [5 x i8]], [22 x i8] } { [2 x [5 x i8]] [[5 x i8] c"YF0  ", [5 x i8] c"F2  \10"], [22 x i8] zeroinitializer }, align 32
@optidma_mode_setup.dma_data_rec_timing = internal constant { [2 x [3 x i8]], [26 x i8] } { [2 x [3 x i8]] [[3 x i8] c"v  ", [3 x i8] c"T \10"], [26 x i8] zeroinitializer }, align 32
@optidma_make_bits43.bits43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\00\01\02", [27 x i8] zeroinitializer }, align 32
@optidma_pre_reset.optidma_enable_bits = internal constant { %struct.pci_bits, [16 x i8] } { %struct.pci_bits { i32 64, i32 1, i32 8, i32 0 }, [16 x i8] zeroinitializer }, align 32
@optiplus_with_udma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014UDMA not supported in this configuration.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"optiplus_with_udma\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/ata/pata_optidma.c\00", [37 x i8] zeroinitializer }, align 32
@optiplus_with_udma._entry_ptr = internal global ptr @optiplus_with_udma._entry, section ".printk_index", align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"optidma_pci_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 440, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 457, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [8 x i8] c"optidma\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 434, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"info_82c700\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 401, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"optidma_port_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 341, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"info_82c700_udma\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 407, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"optiplus_port_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 350, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"optidma_init_one.__print_once\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"pci_clock\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 45, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"optidma_sht\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 337, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"addr_timing\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 125, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"data_rec_timing\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 129, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"dma_data_rec_timing\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 133, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"bits43\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 299, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"optidma_enable_bits\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 59, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [30 x i8] c"../drivers/ata/pata_optidma.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 393, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_optidma_pci_driver_exit, ptr @__initcall__kmod_pata_optidma__289_451_optidma_pci_driver_init6, ptr @__modver_attr, ptr @optidma_pci_driver_exit, ptr @optiplus_with_udma._entry, ptr @optiplus_with_udma._entry_ptr, ptr @optidma_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @optidma, ptr @optidma_init_one.info_82c700, ptr @optidma_port_ops, ptr @optidma_init_one.info_82c700_udma, ptr @optiplus_port_ops, ptr @optidma_init_one.__print_once, ptr @pci_clock, ptr @optidma_sht, ptr @optidma_mode_setup.addr_timing, ptr @optidma_mode_setup.data_rec_timing, ptr @optidma_mode_setup.dma_data_rec_timing, ptr @optidma_make_bits43.bits43, ptr @optidma_pre_reset.optidma_enable_bits, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_init_one.info_82c700 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_init_one.info_82c700_udma to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optiplus_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_clock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_mode_setup.addr_timing to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_mode_setup.data_rec_timing to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_mode_setup.dma_data_rec_timing to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_make_bits43.bits43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optidma_pre_reset.optidma_enable_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @optiplus_with_udma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @optidma_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @optidma_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @optidma_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @optidma_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optidma_init_one(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %r.i = alloca i8, align 1
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = load i64, ptr @__const.optidma_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b25 = load i1, ptr @optidma_init_one.__print_once, align 1
  br i1 %.b25, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @optidma_init_one.__print_once, align 1
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873871 to ptr)) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) inttoptr (i32 -18873871 to ptr)) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873867 to ptr)) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %5 = and i8 %4, 1
  %and = zext i8 %5 to i32
  store i32 %and, ptr @pci_clock, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r.i) #6
  %6 = ptrtoint ptr %r.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %r.i, align 1, !annotation !64
  %call.i = tail call ptr @pci_get_device(i32 noundef 4165, i32 noundef 50945, ptr noundef null) #6
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %optiplus_with_udma.exit.thread, label %if.end.i

optiplus_with_udma.exit.thread:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #6
  br label %if.end18

if.end.i:                                         ; preds = %if.end4
  %call1.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call.i, i32 noundef 8, ptr noundef nonnull %r.i) #6
  %7 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %r.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %8)
  %cmp2.i = icmp ult i8 %8, 16
  br i1 %cmp2.i, label %optiplus_with_udma.exit.thread28, label %if.end5.i

optiplus_with_udma.exit.thread28:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_dev_put(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #6
  br label %if.end18

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call.i, i32 noundef 95, ptr noundef nonnull %r.i) #6
  %9 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %r.i, align 1
  %conv7.i = zext i8 %10 to i32
  %shl.i = shl nuw nsw i32 %conv7.i, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @arm_heavy_mb() #6
  %add.i = or i32 %shl.i, -18874334
  %11 = inttoptr i32 %add.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 16) #6, !srcloc !66
  %add11.i = or i32 %shl.i, -18874332
  %12 = inttoptr i32 %add11.i to ptr
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !62
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp16.i = icmp eq i8 %14, 0
  br i1 %cmp16.i, label %if.end18.critedge, label %if.end19.i

if.end19.i:                                       ; preds = %if.end5.i
  %call20.i = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 66, ptr noundef nonnull %r.i) #6
  %15 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %r.i, align 1
  %17 = and i8 %16, 54
  call void @__sanitizer_cov_trace_const_cmp1(i8 54, i8 %17)
  %cmp23.not.i = icmp eq i8 %17, 54
  br i1 %cmp23.not.i, label %if.end26.i, label %if.end18.critedge31

if.end26.i:                                       ; preds = %if.end19.i
  %call27.i = call i32 @pci_read_config_byte(ptr noundef nonnull %call.i, i32 noundef 82, ptr noundef nonnull %r.i) #6
  %18 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %r.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %phi.cmp = icmp sgt i8 %19, -1
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  call void @pci_dev_put(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #6
  br i1 %phi.cmp, label %if.end26.i.if.end18_crit_edge, label %if.then17

if.end26.i.if.end18_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @optidma_init_one.info_82c700_udma, ptr %ppi, align 8
  br label %if.end18

if.end18.critedge:                                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %call36.i.c = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  call void @pci_dev_put(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #6
  br label %if.end18

if.end18.critedge31:                              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call36.i.c32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  call void @pci_dev_put(ptr noundef nonnull %call.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r.i) #6
  br label %if.end18

if.end18:                                         ; preds = %if.end18.critedge31, %if.end18.critedge, %if.then17, %if.end26.i.if.end18_crit_edge, %optiplus_with_udma.exit.thread28, %optiplus_with_udma.exit.thread
  %call19 = call i32 @ata_pci_bmdma_init_one(ptr noundef %dev, ptr noundef nonnull %ppi, ptr noundef nonnull @optidma_sht, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  ret i32 %retval.0
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
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optidma_set_pio_mode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @optidma_mode_setup(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optidma_set_dma_mode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  tail call fastcc void @optidma_mode_setup(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optidma_set_mode(ptr noundef %link, ptr noundef %r_failed) #2 align 64 {
entry:
  %r = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %r) #6
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %r, align 1, !annotation !64
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_no, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call = tail call i32 @ata_do_set_mode(ptr noundef %link, ptr noundef %r_failed) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %8, i32 -136
  %mul = shl i32 %4, 2
  %call2 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 67, ptr noundef nonnull %r) #6
  %shl = shl i32 15, %mul
  %9 = ptrtoint ptr %r to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %r, align 1
  %11 = trunc i32 %shl to i8
  %conv3 = and i8 %10, %11
  %class.i.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 9
  %12 = ptrtoint ptr %class.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %class.i.i, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %if.then.optidma_make_bits43.exit_crit_edge [
    i32 1, label %if.then.if.end.i_crit_edge
    i32 3, label %if.then.if.end.i_crit_edge35
    i32 5, label %if.then.if.end.i_crit_edge36
    i32 7, label %if.then.if.end.i_crit_edge37
    i32 9, label %if.then.if.end.i_crit_edge38
  ]

if.then.if.end.i_crit_edge38:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.if.end.i_crit_edge37:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.if.end.i_crit_edge36:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.if.end.i_crit_edge35:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.optidma_make_bits43.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %optidma_make_bits43.exit

if.end.i:                                         ; preds = %if.then.if.end.i_crit_edge, %if.then.if.end.i_crit_edge35, %if.then.if.end.i_crit_edge36, %if.then.if.end.i_crit_edge37, %if.then.if.end.i_crit_edge38
  %dma_mode.i.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 12
  %15 = ptrtoint ptr %dma_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %cmp.i.not.i = icmp eq i8 %16, -1
  br i1 %cmp.i.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i8 %16, -32
  br label %optidma_make_bits43.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pio_mode.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 11
  %17 = ptrtoint ptr %pio_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pio_mode.i, align 16
  %conv6.i = zext i8 %18 to i32
  %sub7.i = add nsw i32 %conv6.i, -8
  %arrayidx.i = getelementptr [5 x i8], ptr @optidma_make_bits43.bits43, i32 0, i32 %sub7.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  br label %optidma_make_bits43.exit

optidma_make_bits43.exit:                         ; preds = %if.end5.i, %if.then3.i, %if.then.optidma_make_bits43.exit_crit_edge
  %retval.0.i = phi i8 [ %sub.i, %if.then3.i ], [ %20, %if.end5.i ], [ 0, %if.then.optidma_make_bits43.exit_crit_edge ]
  %conv5 = zext i8 %retval.0.i to i32
  %21 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %13, label %optidma_make_bits43.exit.optidma_make_bits43.exit34_crit_edge [
    i32 1, label %optidma_make_bits43.exit.if.end.i25_crit_edge
    i32 3, label %optidma_make_bits43.exit.if.end.i25_crit_edge39
    i32 5, label %optidma_make_bits43.exit.if.end.i25_crit_edge40
    i32 7, label %optidma_make_bits43.exit.if.end.i25_crit_edge41
    i32 9, label %optidma_make_bits43.exit.if.end.i25_crit_edge42
  ]

optidma_make_bits43.exit.if.end.i25_crit_edge42:  ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

optidma_make_bits43.exit.if.end.i25_crit_edge41:  ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

optidma_make_bits43.exit.if.end.i25_crit_edge40:  ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

optidma_make_bits43.exit.if.end.i25_crit_edge39:  ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

optidma_make_bits43.exit.if.end.i25_crit_edge:    ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i25

optidma_make_bits43.exit.optidma_make_bits43.exit34_crit_edge: ; preds = %optidma_make_bits43.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %optidma_make_bits43.exit34

if.end.i25:                                       ; preds = %optidma_make_bits43.exit.if.end.i25_crit_edge, %optidma_make_bits43.exit.if.end.i25_crit_edge39, %optidma_make_bits43.exit.if.end.i25_crit_edge40, %optidma_make_bits43.exit.if.end.i25_crit_edge41, %optidma_make_bits43.exit.if.end.i25_crit_edge42
  %dma_mode.i.i23 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 12
  %22 = ptrtoint ptr %dma_mode.i.i23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dma_mode.i.i23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp.i.not.i24 = icmp eq i8 %23, -1
  br i1 %cmp.i.not.i24, label %if.end5.i32, label %if.then3.i27

if.then3.i27:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i26 = add i8 %23, -32
  br label %optidma_make_bits43.exit34

if.end5.i32:                                      ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #8
  %pio_mode.i28 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 11
  %24 = ptrtoint ptr %pio_mode.i28 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pio_mode.i28, align 16
  %conv6.i29 = zext i8 %25 to i32
  %sub7.i30 = add nsw i32 %conv6.i29, -8
  %arrayidx.i31 = getelementptr [5 x i8], ptr @optidma_make_bits43.bits43, i32 0, i32 %sub7.i30
  %26 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i31, align 1
  br label %optidma_make_bits43.exit34

optidma_make_bits43.exit34:                       ; preds = %if.end5.i32, %if.then3.i27, %optidma_make_bits43.exit.optidma_make_bits43.exit34_crit_edge
  %retval.0.i33 = phi i8 [ %sub.i26, %if.then3.i27 ], [ %27, %if.end5.i32 ], [ 0, %optidma_make_bits43.exit.optidma_make_bits43.exit34_crit_edge ]
  %conv9 = zext i8 %retval.0.i33 to i32
  %shl10 = shl nuw nsw i32 %conv9, 2
  %add = add nuw nsw i32 %shl10, %conv5
  %shl11 = shl i32 %add, %mul
  %28 = trunc i32 %shl11 to i8
  %conv13 = or i8 %conv3, %28
  %29 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv13, ptr %r, align 1
  %call14 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 67, i8 noundef zeroext %conv13) #6
  br label %if.end

if.end:                                           ; preds = %optidma_make_bits43.exit34, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %r) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @optidma_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %host = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef nonnull @optidma_pre_reset.optidma_enable_bits) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optidma_mode_setup(ptr nocapture noundef readonly %ap, ptr noundef %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ata_dev_pair(ptr noundef %adev) #6
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -8
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %2 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dma_mode, align 1
  %conv1 = zext i8 %3 to i32
  %sub2 = add nsw i32 %conv1, -32
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i = getelementptr i8, ptr %5, i32 1
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %add.ptr3.i = getelementptr i8, ptr %5, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3.i, i8 3) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %mode)
  %cmp = icmp ugt i8 %mode, 31
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = load i32, ptr @pci_clock, align 4
  %arrayidx5 = getelementptr [2 x [5 x i8]], ptr @optidma_mode_setup.addr_timing, i32 0, i32 %8, i32 %sub
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %addr.0 = phi i8 [ %10, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %if.then6

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then6:                                         ; preds = %if.end
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 12
  %11 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dma_mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i.not = icmp eq i8 %12, -1
  br i1 %cmp.i.not, label %if.else10, label %if.then6.if.end16_crit_edge

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = load i32, ptr @pci_clock, align 4
  %pio_mode12 = getelementptr inbounds %struct.ata_device, ptr %call, i32 0, i32 11
  %14 = ptrtoint ptr %pio_mode12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pio_mode12, align 16
  %conv13 = zext i8 %15 to i32
  %sub14 = add nsw i32 %conv13, -8
  %arrayidx15 = getelementptr [2 x [5 x i8]], ptr @optidma_mode_setup.addr_timing, i32 0, i32 %13, i32 %sub14
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.else10, %if.then6.if.end16_crit_edge
  %pair_addr.0 = phi i8 [ %17, %if.else10 ], [ 0, %if.then6.if.end16_crit_edge ]
  %18 = tail call i8 @llvm.umax.i8(i8 %pair_addr.0, i8 %addr.0)
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %if.end.if.end23_crit_edge
  %addr.2 = phi i8 [ %18, %if.end16 ], [ %addr.0, %if.end.if.end23_crit_edge ]
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %19 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %devno, align 4
  %conv24 = trunc i32 %20 to i8
  %add.ptr = getelementptr i8, ptr %5, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv24) #6, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %mode)
  %cmp26 = icmp ult i8 %mode, 32
  br i1 %cmp26, label %if.then28, label %if.else35

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %21 = load i32, ptr @pci_clock, align 4
  %arrayidx30 = getelementptr [2 x [5 x i8]], ptr @optidma_mode_setup.data_rec_timing, i32 0, i32 %21, i32 %sub
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %23) #6, !srcloc !66
  %24 = load i32, ptr @pci_clock, align 4
  %arrayidx33 = getelementptr [2 x [5 x i8]], ptr @optidma_mode_setup.data_rec_timing, i32 0, i32 %24, i32 %sub
  %25 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx33, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %26) #6, !srcloc !66
  br label %if.end47

if.else35:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %mode)
  %cmp37 = icmp ult i8 %mode, 64
  br i1 %cmp37, label %if.then39, label %if.else35.if.end47_crit_edge

if.else35.if.end47_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then39:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  %27 = load i32, ptr @pci_clock, align 4
  %arrayidx41 = getelementptr [2 x [3 x i8]], ptr @optidma_mode_setup.dma_data_rec_timing, i32 0, i32 %27, i32 %sub2
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx41, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %29) #6, !srcloc !66
  %30 = load i32, ptr @pci_clock, align 4
  %arrayidx44 = getelementptr [2 x [3 x i8]], ptr @optidma_mode_setup.dma_data_rec_timing, i32 0, i32 %30, i32 %sub2
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx44, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %32) #6, !srcloc !66
  br label %if.end47

if.end47:                                         ; preds = %if.then39, %if.else35.if.end47_crit_edge, %if.then28
  %33 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devno, align 4
  %35 = trunc i32 %34 to i8
  %conv50 = or i8 %addr.2, %35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv50) #6, !srcloc !66
  %add.ptr52 = getelementptr i8, ptr %5, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 -123) #6, !srcloc !66
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 32
  %add.ptr.i75 = getelementptr i8, ptr %37, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i75, i8 -125) #6, !srcloc !66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_pair(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optiplus_set_pio_mode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  tail call fastcc void @optiplus_mode_setup(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @optiplus_set_dma_mode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_mode, align 1
  tail call fastcc void @optiplus_mode_setup(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @optiplus_mode_setup(ptr nocapture noundef readonly %ap, ptr noundef %adev, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  %udcfg = alloca i8, align 1
  %udslave = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udcfg) #6
  %4 = ptrtoint ptr %udcfg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %udcfg, align 1, !annotation !64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udslave) #6
  %5 = ptrtoint ptr %udslave to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %udslave, align 1, !annotation !64
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %mul = shl i32 %7, 1
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul1 = shl i32 %9, 1
  %add = add i32 %mul1, %7
  %conv = zext i8 %mode to i32
  %sub = add nsw i32 %conv, -64
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %udcfg) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %mode)
  %cmp = icmp ult i8 %mode, 65
  %shl = shl nuw i32 1, %add
  %10 = ptrtoint ptr %udcfg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %udcfg, align 1
  %12 = trunc i32 %shl to i8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = xor i8 %12, -1
  %conv6 = and i8 %11, %13
  %14 = ptrtoint ptr %udcfg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv6, ptr %udcfg, align 1
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %15 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dma_mode, align 1
  call fastcc void @optidma_mode_setup(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %16)
  br label %if.end33

if.else:                                          ; preds = %entry
  %conv9 = or i8 %11, %12
  %17 = ptrtoint ptr %udcfg to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9, ptr %udcfg, align 1
  %18 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.else23, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 69, ptr noundef nonnull %udslave) #6
  %shl13 = shl i32 3, %mul
  %20 = ptrtoint ptr %udslave to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %udslave, align 1
  %22 = trunc i32 %shl13 to i8
  %23 = xor i8 %22, -1
  %conv17 = and i8 %21, %23
  %shl18 = shl i32 %sub, %mul
  %24 = trunc i32 %shl18 to i8
  %conv21 = or i8 %conv17, %24
  store i8 %conv21, ptr %udslave, align 1
  %call22 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 69, i8 noundef zeroext %conv21) #6
  br label %if.end33

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shl24 = shl i32 48, %mul
  %25 = trunc i32 %shl24 to i8
  %26 = xor i8 %25, -1
  %conv28 = and i8 %conv9, %26
  %shl29 = shl i32 %sub, %mul
  %27 = trunc i32 %shl29 to i8
  %conv32 = or i8 %conv28, %27
  %28 = ptrtoint ptr %udcfg to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv32, ptr %udcfg, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.else23, %if.then11, %if.then
  %29 = ptrtoint ptr %udcfg to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %udcfg, align 1
  %call34 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %30) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udslave) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udcfg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

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
declare i8 @llvm.umax.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_pata_optidma__289_451_optidma_pci_driver_init6, !1, !"__initcall__kmod_pata_optidma__289_451_optidma_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_optidma.c", i32 451, i32 1}
!2 = !{ptr @__exitcall_optidma_pci_driver_exit, !1, !"__exitcall_optidma_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_optidma.c", i32 453, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_optidma.c", i32 454, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_optidma.c", i32 455, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_optidma.c", i32 457, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @optidma_pci_driver, !17, !"optidma_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_optidma.c", i32 440, i32 26}
!18 = !{ptr @optidma, !19, !"optidma", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_optidma.c", i32 434, i32 35}
!20 = !{ptr @optidma_init_one.info_82c700, !21, !"info_82c700", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_optidma.c", i32 401, i32 36}
!22 = !{ptr @optidma_init_one.info_82c700_udma, !23, !"info_82c700_udma", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_optidma.c", i32 407, i32 36}
!24 = distinct !{null, !25, !"__print_once", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_optidma.c", i32 417, i32 2}
!26 = !{ptr @optidma_port_ops, !27, !"optidma_port_ops", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_optidma.c", i32 341, i32 35}
!28 = !{ptr @optidma_mode_setup.addr_timing, !29, !"addr_timing", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_optidma.c", i32 125, i32 18}
!30 = !{ptr @optidma_mode_setup.data_rec_timing, !31, !"data_rec_timing", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_optidma.c", i32 129, i32 18}
!32 = !{ptr @optidma_mode_setup.dma_data_rec_timing, !33, !"dma_data_rec_timing", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_optidma.c", i32 133, i32 18}
!34 = !{ptr @optidma_make_bits43.bits43, !35, !"bits43", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_optidma.c", i32 299, i32 18}
!36 = !{ptr @optidma_pre_reset.optidma_enable_bits, !37, !"optidma_enable_bits", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_optidma.c", i32 59, i32 31}
!38 = !{ptr @optiplus_port_ops, !39, !"optiplus_port_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_optidma.c", i32 350, i32 35}
!40 = !{ptr @pci_clock, !41, !"pci_clock", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_optidma.c", i32 45, i32 12}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_optidma.c", i32 393, i32 2}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @optiplus_with_udma._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @optiplus_with_udma._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @optidma_sht, !49, !"optidma_sht", i1 false, i1 false}
!49 = !{!"../drivers/ata/pata_optidma.c", i32 337, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 4989809}
!60 = !{i64 2155704316}
!61 = !{i64 2155704946}
!62 = !{i64 4990427}
!63 = !{i64 2155705217}
!64 = !{!"auto-init"}
!65 = !{i64 2155701563}
!66 = !{i64 4990032}
!67 = !{i64 2155701959}
!68 = !{i64 2152530384}
!69 = !{i64 2152531377}
