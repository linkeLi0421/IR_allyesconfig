; ModuleID = '/llk/IR_all_yes/drivers/ata/pata_artop.c_pt.bc'
source_filename = "../drivers/ata/pata_artop.c"
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

@__initcall__kmod_pata_artop__289_454_artop_pci_driver_init6 = internal global ptr @artop_pci_driver_init, section ".initcall6.init", align 4
@artop_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @artop_pci_tbl, ptr @artop_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @atp8xx_reinit_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_artop_pci_driver_exit = internal global ptr @artop_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [54 x i8] c"pata_artop.author=Alan Cox, Bartlomiej Zolnierkiewicz\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"pata_artop.description=SCSI low-level driver for ARTOP PATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"pata_artop.file=drivers/ata/pata_artop\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"pata_artop.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [25 x i8] c"pata_artop.version=0.4.6\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pata_artop\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.4.6\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@artop_pci_tbl = internal constant { [6 x %struct.pci_device_id], [32 x i8] } { [6 x %struct.pci_device_id] [%struct.pci_device_id { i32 4497, i32 5, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4497, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4497, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4497, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4497, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@artop_init_one.info_6210 = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 7, ptr @artop6210_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@artop6210_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @artop6210_qc_defer, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @artop6210_set_piomode, ptr @artop6210_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @artop62x0_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@artop_init_one.info_626x = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 31, ptr @artop6260_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@artop6260_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @artop6260_cable_detect, ptr null, ptr @artop6260_set_piomode, ptr @artop6260_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @artop62x0_pre_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@artop_init_one.info_628x = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 63, ptr @artop6260_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@artop_init_one.info_628x_fast = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 1, i32 0, i32 31, i32 7, i32 127, ptr @artop6260_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@artop_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@artop_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@artop6210_load_piomode.timing = internal constant { [2 x [5 x i16]], [44 x i8] } { [2 x [5 x i16]] [[5 x i16] [i16 0, i16 10, i16 8, i16 771, i16 769], [5 x i16] [i16 1792, i16 1802, i16 1800, i16 1027, i16 1025]], [44 x i8] zeroinitializer }, align 32
@artop62x0_pre_reset.artop_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 74, i32 1, i32 2, i32 2 }, %struct.pci_bits { i32 74, i32 1, i32 4, i32 4 }], [32 x i8] zeroinitializer }, align 32
@artop6260_load_piomode.timing = internal constant { [2 x [5 x i8]], [22 x i8] } { [2 x [5 x i8]] [[5 x i8] c"\00\0A\0831", [5 x i8] c"pzxCA"], [22 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 16, i64 5, i64 8, i64 9]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"artop_pci_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 443, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 460, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"artop_pci_tbl\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 416, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"info_6210\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 360, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"artop6210_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 299, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"info_626x\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 367, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"artop6260_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 308, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"info_628x\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 374, i32 36 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"info_628x_fast\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 381, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"artop_init_one.__print_once\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"artop_sht\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 295, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 103, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"artop_enable_bits\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 52, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@___asan_gen_.48 = private constant [28 x i8] c"../drivers/ata/pata_artop.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 157, i32 18 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_artop_pci_driver_exit, ptr @__initcall__kmod_pata_artop__289_454_artop_pci_driver_init6, ptr @__modver_attr, ptr @artop_pci_driver_exit, ptr @artop_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @artop_pci_tbl, ptr @artop_init_one.info_6210, ptr @artop6210_ops, ptr @artop_init_one.info_626x, ptr @artop6260_ops, ptr @artop_init_one.info_628x, ptr @artop_init_one.info_628x_fast, ptr @artop_init_one.__print_once, ptr @artop_sht, ptr @artop6210_load_piomode.timing, ptr @artop62x0_pre_reset.artop_enable_bits, ptr @artop6260_load_piomode.timing], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_pci_tbl to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_init_one.info_6210 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop6210_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_init_one.info_626x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop6260_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_init_one.info_628x to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_init_one.info_628x_fast to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop6210_load_piomode.timing to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop62x0_pre_reset.artop_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @artop6260_load_piomode.timing to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @artop_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @artop_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @artop_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @artop_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artop_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #4
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  %.b47 = load i1, ptr @artop_init_one.__print_once, align 1
  br i1 %.b47, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @artop_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.end3.do.body_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then7
    i32 2, label %if.then12
  ]

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @artop_init_one.info_6210, ptr %ppi, align 8
  br label %do.end37

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @artop_init_one.info_626x, ptr %ppi, align 8
  br label %do.end37

if.then12:                                        ; preds = %if.end3
  %arrayidx13 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx13, align 8
  %8 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @artop_init_one.info_628x, ptr %ppi, align 8
  %and = and i32 %7, 1048575
  %add = or i32 %and, -18874368
  %9 = inttoptr i32 %add to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %if.then12.do.body_crit_edge, label %if.then19

if.then12.do.body_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @artop_init_one.info_628x_fast, ptr %ppi, align 8
  br label %do.end37

do.body:                                          ; preds = %if.then12.do.body_crit_edge, %if.end3.do.body_crit_edge
  %13 = ptrtoint ptr %ppi to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load ptr, ptr %ppi, align 8
  %cmp26 = icmp eq ptr %.pr, null
  br i1 %cmp26, label %do.body31, label %do.body.do.end37_crit_edge, !prof !55

do.body.do.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end37

do.body31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pata_artop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #4, !srcloc !56
  unreachable

do.end37:                                         ; preds = %do.body.do.end37_crit_edge, %if.then19, %if.then7, %if.then4
  tail call fastcc void @atp8xx_fixup(ptr noundef %pdev)
  %call38 = call i32 @ata_pci_bmdma_init_one(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull @artop_sht, ptr noundef null, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %do.end37 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atp8xx_reinit_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @atp8xx_fixup(ptr noundef %pdev)
  tail call void @ata_host_resume(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atp8xx_fixup(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %1, label %entry.if.end27_crit_edge [
    i16 5, label %if.then
    i16 8, label %entry.if.then10_crit_edge
    i16 9, label %entry.if.then10_crit_edge37
  ]

entry.if.then10_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 84, i8 noundef zeroext 0) #4
  br label %if.end27

if.then10:                                        ; preds = %entry.if.then10_crit_edge, %entry.if.then10_crit_edge37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %reg, align 1, !annotation !57
  %call11 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 73, ptr noundef nonnull %reg) #4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg, align 1
  %6 = and i8 %5, -49
  %call14 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 73, i8 noundef zeroext %6) #4
  %call15 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 13, ptr noundef nonnull %reg) #4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %8)
  %cmp17 = icmp ult i8 %8, -127
  br i1 %cmp17, label %if.then19, label %if.then10.if.end_crit_edge

if.then10.if.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then19:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext -112) #4
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then10.if.end_crit_edge
  %call21 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 74, ptr noundef nonnull %reg) #4
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg, align 1
  %11 = and i8 %10, 126
  %12 = or i8 %11, -128
  %call25 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 74, i8 noundef zeroext %12) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #4
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_init_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artop6210_qc_defer(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host1 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_no, align 4
  %xor = xor i32 %5, 1
  %arrayidx = getelementptr %struct.ata_host, ptr %3, i32 0, i32 12, i32 %xor
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @ata_std_qc_defer(ptr noundef %qc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %qc_active = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %qc_active to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %qc_active, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool3.not = icmp eq i64 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artop6210_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %ultra = alloca i8, align 1
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
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 1
  %add = add i32 %mul, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra) #4
  %8 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ultra, align 1, !annotation !57
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %9 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %10 to i32
  %sub = add nsw i32 %conv, -8
  %mul1.i = shl i32 %add, 1
  %add2.i = add i32 %mul1.i, 64
  %arrayidx3.i = getelementptr [5 x i16], ptr @artop6210_load_piomode.timing, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3.i, align 2
  %call.i = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, i16 noundef zeroext %12) #4
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ultra) #4
  %shl = shl i32 3, %mul1.i
  %13 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ultra, align 1
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv3 = and i8 %14, %16
  store i8 %conv3, ptr %ultra, align 1
  %call4 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 84, i8 noundef zeroext %conv3) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artop6210_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %ultra = alloca i8, align 1
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
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 1
  %add = add i32 %mul, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra) #4
  %8 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %ultra, align 1, !annotation !57
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %9 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %cmp = icmp eq i8 %10, 32
  %. = select i1 %cmp, i32 1, i32 4
  %mul1.i = shl i32 %add, 1
  %add2.i = add i32 %mul1.i, 64
  %arrayidx3.i = getelementptr [5 x i16], ptr @artop6210_load_piomode.timing, i32 0, i32 %.
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3.i, align 2
  %call.i = tail call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %add2.i, i16 noundef zeroext %12) #4
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ultra) #4
  %shl = shl i32 3, %mul1.i
  %13 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ultra, align 1
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv4 = and i8 %14, %16
  store i8 %conv4, ptr %ultra, align 1
  %17 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %18)
  %cmp7 = icmp ugt i8 %18, 63
  br i1 %cmp7, label %if.then9, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add12 = add i8 %18, -63
  %conv20 = zext i8 %add12 to i32
  %shl22 = shl i32 %conv20, %mul1.i
  %19 = trunc i32 %shl22 to i8
  %conv24 = or i8 %conv4, %19
  %20 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24, ptr %ultra, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then9, %entry.if.end25_crit_edge
  %21 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ultra, align 1
  %call26 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 84, i8 noundef zeroext %22) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artop62x0_pre_reset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
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
  %device = getelementptr i8, ptr %5, i32 -102
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  %port_no = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_no, align 4
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @artop62x0_pre_reset.artop_enable_bits, i32 0, i32 %10
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -2, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @artop6260_cable_detect(ptr nocapture noundef readonly %ap) #2 align 64 {
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
  store i8 -1, ptr %tmp1, align 1, !annotation !57
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 73, ptr noundef nonnull %tmp1) #4
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %conv = zext i8 %6 to i32
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %shl = shl nuw i32 1, %8
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artop6260_set_piomode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %ultra = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra) #4
  %4 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ultra, align 1, !annotation !57
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %5 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pio_mode, align 16
  %conv = zext i8 %6 to i32
  %sub = add nsw i32 %conv, -8
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %7 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devno.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %9 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %10, 1
  %add.i = add i32 %8, 64
  %add1.i = add i32 %add.i, %mul.i
  %arrayidx2.i = getelementptr [5 x i8], ptr @artop6260_load_piomode.timing, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add1.i, i8 noundef zeroext %12) #4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i, align 4
  %add = add i32 %14, 68
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %ultra) #4
  %15 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno.i, align 4
  %mul = shl i32 %16, 2
  %shl = shl i32 7, %mul
  %17 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ultra, align 1
  %19 = trunc i32 %shl to i8
  %20 = xor i8 %19, -1
  %conv2 = and i8 %18, %20
  store i8 %conv2, ptr %ultra, align 1
  %21 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_no.i, align 4
  %add4 = add i32 %22, 68
  %call5 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add4, i8 noundef zeroext %conv2) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @artop6260_set_dmamode(ptr nocapture noundef readonly %ap, ptr nocapture noundef readonly %adev) #2 align 64 {
entry:
  %ultra = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ultra) #4
  %4 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ultra, align 1, !annotation !57
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %5 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %6)
  %cmp = icmp eq i8 %6, 32
  %. = select i1 %cmp, i32 1, i32 4
  %devno.i = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %7 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %devno.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %9 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %10, 1
  %add.i = add i32 %8, 64
  %add1.i = add i32 %add.i, %mul.i
  %arrayidx2.i = getelementptr [5 x i8], ptr @artop6260_load_piomode.timing, i32 0, i32 %.
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  %call.i = tail call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add1.i, i8 noundef zeroext %12) #4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i, align 4
  %add = add i32 %14, 68
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef %add, ptr noundef nonnull %ultra) #4
  %15 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno.i, align 4
  %mul = shl i32 %16, 2
  %shl = shl i32 7, %mul
  %17 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ultra, align 1
  %19 = trunc i32 %shl to i8
  %20 = xor i8 %19, -1
  %conv3 = and i8 %18, %20
  store i8 %conv3, ptr %ultra, align 1
  %21 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dma_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %22)
  %cmp6 = icmp ugt i8 %22, 63
  br i1 %cmp6, label %if.then8, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add11 = add i8 %22, -63
  %conv19 = zext i8 %add11 to i32
  %shl22 = shl i32 %conv19, %mul
  %23 = trunc i32 %shl22 to i8
  %conv24 = or i8 %conv3, %23
  %24 = ptrtoint ptr %ultra to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv24, ptr %ultra, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then8, %entry.if.end25_crit_edge
  %25 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port_no.i, align 4
  %add27 = add i32 %26, 68
  %27 = ptrtoint ptr %ultra to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ultra, align 1
  %call28 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef %add27, i8 noundef zeroext %28) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ultra) #4
  ret void
}

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
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_pata_artop__289_454_artop_pci_driver_init6, !1, !"__initcall__kmod_pata_artop__289_454_artop_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pata_artop.c", i32 454, i32 1}
!2 = !{ptr @__exitcall_artop_pci_driver_exit, !1, !"__exitcall_artop_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pata_artop.c", i32 456, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pata_artop.c", i32 457, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pata_artop.c", i32 458, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pata_artop.c", i32 460, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @artop_pci_driver, !17, !"artop_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pata_artop.c", i32 443, i32 26}
!18 = !{ptr @artop_pci_tbl, !19, !"artop_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pata_artop.c", i32 416, i32 35}
!20 = !{ptr @artop_init_one.info_6210, !21, !"info_6210", i1 false, i1 false}
!21 = !{!"../drivers/ata/pata_artop.c", i32 360, i32 36}
!22 = !{ptr @artop_init_one.info_626x, !23, !"info_626x", i1 false, i1 false}
!23 = !{!"../drivers/ata/pata_artop.c", i32 367, i32 36}
!24 = !{ptr @artop_init_one.info_628x, !25, !"info_628x", i1 false, i1 false}
!25 = !{!"../drivers/ata/pata_artop.c", i32 374, i32 36}
!26 = !{ptr @artop_init_one.info_628x_fast, !27, !"info_628x_fast", i1 false, i1 false}
!27 = !{!"../drivers/ata/pata_artop.c", i32 381, i32 36}
!28 = distinct !{null, !29, !"__print_once", i1 false, i1 false}
!29 = !{!"../drivers/ata/pata_artop.c", i32 391, i32 2}
!30 = !{ptr @artop6210_ops, !31, !"artop6210_ops", i1 false, i1 false}
!31 = !{!"../drivers/ata/pata_artop.c", i32 299, i32 35}
!32 = !{ptr @artop6210_load_piomode.timing, !33, !"timing", i1 false, i1 false}
!33 = !{!"../drivers/ata/pata_artop.c", i32 103, i32 19}
!34 = distinct !{null, !35, !"clock", i1 false, i1 false}
!35 = !{!"../drivers/ata/pata_artop.c", i32 40, i32 12}
!36 = !{ptr @artop62x0_pre_reset.artop_enable_bits, !37, !"artop_enable_bits", i1 false, i1 false}
!37 = !{!"../drivers/ata/pata_artop.c", i32 52, i32 31}
!38 = !{ptr @artop6260_ops, !39, !"artop6260_ops", i1 false, i1 false}
!39 = !{!"../drivers/ata/pata_artop.c", i32 308, i32 35}
!40 = !{ptr @artop6260_load_piomode.timing, !41, !"timing", i1 false, i1 false}
!41 = !{!"../drivers/ata/pata_artop.c", i32 157, i32 18}
!42 = !{ptr @artop_sht, !43, !"artop_sht", i1 false, i1 false}
!43 = !{!"../drivers/ata/pata_artop.c", i32 295, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 4990491}
!54 = !{i64 2155708170}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2155708546, i64 2155709035, i64 2155708583, i64 2155708639, i64 2155708673, i64 2155708697, i64 2155708738, i64 2155708759, i64 2155708787, i64 2155708821}
!57 = !{!"auto-init"}
