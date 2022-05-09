; ModuleID = '/llk/IR_all_yes/drivers/ata/pdc_adma.c_pt.bc'
source_filename = "../drivers/ata/pdc_adma.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
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
%struct.adma_port_priv = type { ptr, i32, i32 }

@__initcall__kmod_pdc_adma__289_602_adma_ata_pci_driver_init6 = internal global ptr @adma_ata_pci_driver_init, section ".initcall6.init", align 4
@adma_ata_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @adma_ata_pci_tbl, ptr @adma_ata_init_one, ptr @ata_pci_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adma_ata_pci_driver_exit = internal global ptr @adma_ata_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [26 x i8] c"pdc_adma.author=Mark Lord\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [71 x i8] c"pdc_adma.description=Pacific Digital Corporation ADMA low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"pdc_adma.file=drivers/ata/pdc_adma\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [21 x i8] c"pdc_adma.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version294 = internal constant [21 x i8] c"pdc_adma.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pdc_adma\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@adma_ata_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5609, i32 6209, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@adma_port_info = internal global { [1 x %struct.ata_port_info], [36 x i8] } { [1 x %struct.ata_port_info] [%struct.ata_port_info { i32 513, i32 0, i32 16, i32 0, i32 31, ptr @adma_ata_ops, ptr null }], [36 x i8] zeroinitializer }, align 32
@adma_ata_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@adma_ata_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 579, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"32-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adma_ata_init_one\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/pdc_adma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adma_ata_init_one._entry_ptr = internal global ptr @adma_ata_init_one._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@adma_ata_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@adma_ata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @adma_check_atapi_dma, ptr @adma_qc_prep, ptr @adma_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adma_freeze, ptr @adma_thaw, ptr @adma_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adma_port_start, ptr @adma_port_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, [44 x i8] zeroinitializer }, align 32
@ata_sff_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adma_port_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ata%u: bad alignment for pp->pkt_dma: %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adma_port_start\00", [16 x i8] zeroinitializer }, align 32
@adma_port_start._entry_ptr = internal global ptr @adma_port_start._entry, section ".printk_index", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADMA-status 0x%02X\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pkt[0] 0x%02X\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"status 0x%02X\00", [18 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"adma_ata_pci_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 165, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 608, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"adma_ata_pci_tbl\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 159, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"adma_port_info\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 149, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"adma_ata_init_one.__print_once\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 579, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 590, i32 45 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 591, i32 49 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"adma_ata_sht\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 126, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"adma_ata_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 132, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 521, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 423, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 425, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [26 x i8] c"../drivers/ata/pdc_adma.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 464, i32 28 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID_version294, ptr @__exitcall_adma_ata_pci_driver_exit, ptr @__initcall__kmod_pdc_adma__289_602_adma_ata_pci_driver_init6, ptr @__modver_attr, ptr @adma_ata_init_one._entry, ptr @adma_ata_init_one._entry_ptr, ptr @adma_ata_pci_driver_exit, ptr @adma_port_start._entry, ptr @adma_port_start._entry_ptr, ptr @adma_ata_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adma_ata_pci_tbl, ptr @adma_port_info, ptr @adma_ata_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @adma_ata_sht, ptr @adma_ata_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_ata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_port_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_ata_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @adma_ata_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adma_ata_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @adma_ata_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_ata_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #7
  %2 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct.ata_port_info], ptr @adma_port_info, i32 0, i32 %1
  %3 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %ppi, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %2, align 4
  %.b60 = load i1, ptr @adma_ata_init_one.__print_once, align 1
  br i1 %.b60, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @adma_ata_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 2) #7
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
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 16, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = call ptr @pcim_iomap_table(ptr noundef %pdev) #7
  %iomap = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %iomap, align 4
  %arrayidx18 = getelementptr ptr, ptr %call16, i32 4
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  %call.i = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit, label %do.end

dma_set_mask_and_coherent.exit:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #7
  %arrayidx26 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 0
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx26, align 4
  %ioaddr = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %data_addr.i, align 4
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %9, ptr %ioaddr, align 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 3
  %14 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr1.i, ptr %feature_addr.i, align 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 2
  %15 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr1.i, ptr %error_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr2.i, ptr %nsect_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr3.i, ptr %lbal_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 6
  %18 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr4.i, ptr %lbam_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr5.i, ptr %lbah_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %9, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 8
  %20 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr6.i, ptr %device_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 28
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 10
  %21 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr7.i, ptr %command_addr.i, align 4
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 9
  %22 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr7.i, ptr %status_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 56
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 12
  %23 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr8.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %11, i32 0, i32 8, i32 11
  %24 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr8.i, ptr %altstatus_addr.i, align 4
  call void @ata_port_pbar_desc(ptr noundef %11, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.8) #7
  call void @ata_port_pbar_desc(ptr noundef %11, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.9) #7
  %arrayidx26.1 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 1
  %25 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx26.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %9, i32 64
  %ioaddr.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8
  %data_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %data_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.1, ptr %data_addr.i.1, align 4
  %28 = ptrtoint ptr %ioaddr.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.1, ptr %ioaddr.1, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %9, i32 68
  %feature_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 3
  %29 = ptrtoint ptr %feature_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr1.i.1, ptr %feature_addr.i.1, align 4
  %error_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %error_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr1.i.1, ptr %error_addr.i.1, align 4
  %add.ptr2.i.1 = getelementptr i8, ptr %9, i32 72
  %nsect_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %nsect_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr2.i.1, ptr %nsect_addr.i.1, align 4
  %add.ptr3.i.1 = getelementptr i8, ptr %9, i32 76
  %lbal_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 5
  %32 = ptrtoint ptr %lbal_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr3.i.1, ptr %lbal_addr.i.1, align 4
  %add.ptr4.i.1 = getelementptr i8, ptr %9, i32 80
  %lbam_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 6
  %33 = ptrtoint ptr %lbam_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr4.i.1, ptr %lbam_addr.i.1, align 4
  %add.ptr5.i.1 = getelementptr i8, ptr %9, i32 84
  %lbah_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 7
  %34 = ptrtoint ptr %lbah_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr5.i.1, ptr %lbah_addr.i.1, align 4
  %add.ptr6.i.1 = getelementptr i8, ptr %9, i32 88
  %device_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 8
  %35 = ptrtoint ptr %device_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr6.i.1, ptr %device_addr.i.1, align 4
  %add.ptr7.i.1 = getelementptr i8, ptr %9, i32 92
  %command_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 10
  %36 = ptrtoint ptr %command_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr7.i.1, ptr %command_addr.i.1, align 4
  %status_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 9
  %37 = ptrtoint ptr %status_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr7.i.1, ptr %status_addr.i.1, align 4
  %add.ptr8.i.1 = getelementptr i8, ptr %9, i32 120
  %ctl_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 12
  %38 = ptrtoint ptr %ctl_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr8.i.1, ptr %ctl_addr.i.1, align 4
  %altstatus_addr.i.1 = getelementptr inbounds %struct.ata_port, ptr %26, i32 0, i32 8, i32 11
  %39 = ptrtoint ptr %altstatus_addr.i.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr8.i.1, ptr %altstatus_addr.i.1, align 4
  call void @ata_port_pbar_desc(ptr noundef %26, i32 noundef 4, i32 noundef -1, ptr noundef nonnull @.str.8) #7
  call void @ata_port_pbar_desc(ptr noundef %26, i32 noundef 4, i32 noundef 64, ptr noundef nonnull @.str.9) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomap, align 4
  %arrayidx.i = getelementptr ptr, ptr %41, i32 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %43, i32 199
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 7) #7, !srcloc !61
  %44 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx26, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 31
  %46 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host.i.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %49, i32 4
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 128
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 7
  %52 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %53, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 8961) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %54(i32 noundef 429496) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 768) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %55(i32 noundef 429496) #7
  %56 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx26.1, align 4
  %host.i.1.i = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 31
  %58 = ptrtoint ptr %host.i.1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %host.i.1.i, align 4
  %iomap.i.1.i = getelementptr inbounds %struct.ata_host, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %iomap.i.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %iomap.i.1.i, align 4
  %arrayidx.i.1.i = getelementptr ptr, ptr %61, i32 4
  %62 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.1.i, align 4
  %add.ptr.i.1.i = getelementptr i8, ptr %63, i32 128
  %port_no.i.1.i = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 7
  %64 = ptrtoint ptr %port_no.i.1.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port_no.i.1.i, align 4
  %mul.i.1.i = shl i32 %65, 5
  %add.ptr1.i.1.i = getelementptr i8, ptr %add.ptr.i.1.i, i32 %mul.i.1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.1.i, i16 8961) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %66(i32 noundef 429496) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.1.i, i16 768) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %67(i32 noundef 429496) #7
  call void @pci_set_master(ptr noundef %pdev) #7
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %irq, align 4
  %call27 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %69, ptr noundef nonnull @adma_intr, i32 noundef 128, ptr noundef nonnull @adma_ata_sht) #7
  br label %cleanup

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dma_set_mask_and_coherent.exit, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call27, %dma_set_mask_and_coherent.exit ], [ -12, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
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
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_intr(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #7
  %n_ports.i = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %0 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp104.not.i = icmp eq i32 %1, 0
  br i1 %cmp104.not.i, label %entry.adma_intr_mmio.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.adma_intr_mmio.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adma_intr_mmio.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %handled.0106.i = phi i32 [ %handled.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %port_no.0105.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %port_no.0105.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %host1.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host1.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i, align 4
  %arrayidx2.i = getelementptr ptr, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2.i, align 4
  %port_no3.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no3.i, align 4
  %mul.i = shl i32 %11, 5
  %add.ptr4.i = getelementptr i8, ptr %9, i32 130
  %add.ptr5.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %conv.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp7.i = icmp eq i8 %12, 0
  br i1 %cmp7.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %13 = ptrtoint ptr %host1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host1.i, align 4
  %iomap.i.i = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %iomap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomap.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 128
  %19 = ptrtoint ptr %port_no3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no3.i, align 4
  %mul.i.i = shl i32 %20, 5
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i.i, i16 768) #7, !srcloc !63
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 2
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %22 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i.cleanup.i_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.adma_port_priv, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp9.not.i = icmp eq i32 %25, 1
  br i1 %cmp9.not.i, label %if.end12.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 3
  %26 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %28 = icmp ugt i32 %27, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %28, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end12.i.cleanup.i_crit_edge, label %lor.lhs.false.i.i, !prof !69

if.end12.i.cleanup.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

lor.lhs.false.i.i:                                ; preds = %if.end12.i
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.land.lhs.true.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27, i32 6
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %34, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i.cleanup.i_crit_edge

if.end.i.i.cleanup.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i.i.land.lhs.true.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.i.land.lhs.true.i_crit_edge, %lor.lhs.false.i.i.land.lhs.true.i_crit_edge
  %tf.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27, i32 4
  %35 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tf.i, align 4
  %and.i = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  %and18.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then16.i.if.end28.sink.split.i_crit_edge

if.then16.i.if.end28.sink.split.i_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split.i

if.else.i:                                        ; preds = %if.then16.i
  %and22.i = and i32 %conv.i, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i.if.end28.i_crit_edge, label %if.else.i.if.end28.sink.split.i_crit_edge

if.else.i.if.end28.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split.i

if.else.i.if.end28.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i

if.end28.sink.split.i:                            ; preds = %if.else.i.if.end28.sink.split.i_crit_edge, %if.then16.i.if.end28.sink.split.i_crit_edge
  %.sink107.i = phi i32 [ 32, %if.then16.i.if.end28.sink.split.i_crit_edge ], [ 256, %if.else.i.if.end28.sink.split.i_crit_edge ]
  %err_mask.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27, i32 20
  %37 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err_mask.i, align 4
  %or26.i = or i32 %38, %.sink107.i
  store i32 %or26.i, ptr %err_mask.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %if.else.i.if.end28.i_crit_edge
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %23, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %43 = and i8 %42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool32.not.i = icmp eq i8 %43, 0
  br i1 %tobool32.not.i, label %if.else36.i, label %if.end28.i.if.end46.sink.split.i_crit_edge

if.end28.i.if.end46.sink.split.i_crit_edge:       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split.i

if.else36.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp40.not.i = icmp eq i8 %42, 1
  br i1 %cmp40.not.i, label %if.else36.i.if.end46.i_crit_edge, label %if.else36.i.if.end46.sink.split.i_crit_edge

if.else36.i.if.end46.sink.split.i_crit_edge:      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.sink.split.i

if.else36.i.if.end46.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.end46.sink.split.i:                            ; preds = %if.else36.i.if.end46.sink.split.i_crit_edge, %if.end28.i.if.end46.sink.split.i_crit_edge
  %.sink109.i = phi i32 [ 1, %if.end28.i.if.end46.sink.split.i_crit_edge ], [ 256, %if.else36.i.if.end46.sink.split.i_crit_edge ]
  %err_mask34.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27, i32 20
  %44 = ptrtoint ptr %err_mask34.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %err_mask34.i, align 4
  %or44.i = or i32 %45, %.sink109.i
  store i32 %or44.i, ptr %err_mask34.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end46.sink.split.i, %if.else36.i.if.end46.i_crit_edge
  %err_mask47.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %27, i32 20
  %46 = ptrtoint ptr %err_mask47.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %err_mask47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool48.not.i = icmp eq i32 %47, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %if.else50.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ata_qc_complete(ptr noundef nonnull %arrayidx.i.i.i) #7
  br label %cleanup.i

if.else50.i:                                      ; preds = %if.end46.i
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info.i) #7
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.12, i32 noundef %conv.i) #7
  %48 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %23, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv55.i = zext i8 %51 to i32
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.13, i32 noundef %conv55.i) #7
  %52 = ptrtoint ptr %err_mask47.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %err_mask47.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp57.i = icmp eq i32 %53, 1
  br i1 %cmp57.i, label %if.then59.i, label %if.else61.i

if.then59.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call60.i = tail call i32 @ata_port_abort(ptr noundef %3) #7
  br label %cleanup.i

if.else61.i:                                      ; preds = %if.else50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call62.i = tail call i32 @ata_port_freeze(ptr noundef %3) #7
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else61.i, %if.then59.i, %if.then49.i, %land.lhs.true.i.cleanup.i_crit_edge, %if.end.i.i.cleanup.i_crit_edge, %if.end12.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %handled.1.i = phi i32 [ %handled.0106.i, %for.body.i.cleanup.i_crit_edge ], [ 1, %lor.lhs.false.i.cleanup.i_crit_edge ], [ 1, %if.end.i.cleanup.i_crit_edge ], [ 1, %if.then59.i ], [ 1, %if.else61.i ], [ 1, %if.then49.i ], [ 1, %land.lhs.true.i.cleanup.i_crit_edge ], [ 1, %if.end12.i.cleanup.i_crit_edge ], [ 1, %if.end.i.i.cleanup.i_crit_edge ]
  %inc.i = add nuw i32 %port_no.0105.i, 1
  %54 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_ports.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %55
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %adma_intr_pkt.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

adma_intr_pkt.exit:                               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp58.not.i = icmp eq i32 %55, 0
  br i1 %cmp58.not.i, label %adma_intr_pkt.exit.adma_intr_mmio.exit_crit_edge, label %adma_intr_pkt.exit.for.body.i10_crit_edge

adma_intr_pkt.exit.for.body.i10_crit_edge:        ; preds = %adma_intr_pkt.exit
  br label %for.body.i10

adma_intr_pkt.exit.adma_intr_mmio.exit_crit_edge: ; preds = %adma_intr_pkt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %adma_intr_mmio.exit

for.body.i10:                                     ; preds = %cleanup27.i.for.body.i10_crit_edge, %adma_intr_pkt.exit.for.body.i10_crit_edge
  %handled.060.i = phi i32 [ %handled.3.i, %cleanup27.i.for.body.i10_crit_edge ], [ 0, %adma_intr_pkt.exit.for.body.i10_crit_edge ]
  %port_no.059.i = phi i32 [ %inc.i33, %cleanup27.i.for.body.i10_crit_edge ], [ 0, %adma_intr_pkt.exit.for.body.i10_crit_edge ]
  %arrayidx.i7 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %port_no.059.i
  %56 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i7, align 4
  %private_data.i8 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 48
  %58 = ptrtoint ptr %private_data.i8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %private_data.i8, align 4
  %tobool.not.i9 = icmp eq ptr %59, null
  br i1 %tobool.not.i9, label %for.body.i10.cleanup27.i_crit_edge, label %lor.lhs.false.i12

for.body.i10.cleanup27.i_crit_edge:               ; preds = %for.body.i10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

lor.lhs.false.i12:                                ; preds = %for.body.i10
  %state.i11 = getelementptr inbounds %struct.adma_port_priv, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %state.i11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state.i11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp1.not.i = icmp eq i32 %61, 2
  br i1 %cmp1.not.i, label %if.end.i17, label %lor.lhs.false.i12.cleanup27.i_crit_edge

lor.lhs.false.i12.cleanup27.i_crit_edge:          ; preds = %lor.lhs.false.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

if.end.i17:                                       ; preds = %lor.lhs.false.i12
  %active_tag.i13 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 25, i32 3
  %62 = ptrtoint ptr %active_tag.i13 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %active_tag.i13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %63)
  %64 = icmp ugt i32 %63, 32
  %arrayidx.i.i.i14 = getelementptr %struct.ata_port, ptr %57, i32 0, i32 19, i32 %63
  %tobool.not11.i.i15 = icmp eq ptr %arrayidx.i.i.i14, null
  %tobool.not.i.i16 = or i1 %64, %tobool.not11.i.i15
  br i1 %tobool.not.i.i16, label %if.end.i17.cleanup27.i_crit_edge, label %lor.lhs.false.i.i21, !prof !69

if.end.i17.cleanup27.i_crit_edge:                 ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

lor.lhs.false.i.i21:                              ; preds = %if.end.i17
  %ops.i.i18 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 1
  %65 = ptrtoint ptr %ops.i.i18 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i.i18, align 4
  %error_handler.i.i19 = getelementptr inbounds %struct.ata_port_operations, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %error_handler.i.i19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %error_handler.i.i19, align 4
  %tobool4.not.i.i20 = icmp eq ptr %68, null
  br i1 %tobool4.not.i.i20, label %lor.lhs.false.i.i21.land.lhs.true.i28_crit_edge, label %if.end.i.i25

lor.lhs.false.i.i21.land.lhs.true.i28_crit_edge:  ; preds = %lor.lhs.false.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i28

if.end.i.i25:                                     ; preds = %lor.lhs.false.i.i21
  %flags.i.i22 = getelementptr %struct.ata_port, ptr %57, i32 0, i32 19, i32 %63, i32 6
  %69 = ptrtoint ptr %flags.i.i22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i22, align 4
  %and.i.i23 = and i32 %70, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i23)
  %cmp.i.i24 = icmp eq i32 %and.i.i23, 1
  br i1 %cmp.i.i24, label %if.end.i.i25.land.lhs.true.i28_crit_edge, label %if.end.i.i25.cleanup27.i_crit_edge

if.end.i.i25.cleanup27.i_crit_edge:               ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

if.end.i.i25.land.lhs.true.i28_crit_edge:         ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i28

land.lhs.true.i28:                                ; preds = %if.end.i.i25.land.lhs.true.i28_crit_edge, %lor.lhs.false.i.i21.land.lhs.true.i28_crit_edge
  %tf.i26 = getelementptr %struct.ata_port, ptr %57, i32 0, i32 19, i32 %63, i32 4
  %71 = ptrtoint ptr %tf.i26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tf.i26, align 4
  %and.i27 = and i32 %72, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool3.not.i = icmp eq i32 %and.i27, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %land.lhs.true.i28.cleanup27.i_crit_edge

land.lhs.true.i28.cleanup27.i_crit_edge:          ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

if.then4.i:                                       ; preds = %land.lhs.true.i28
  %call5.i = tail call zeroext i8 @ata_sff_check_status(ptr noundef %57) #7
  %conv.i29 = zext i8 %call5.i to i32
  %and6.i = and i32 %conv.i29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.then4.i.cleanup27.i_crit_edge

if.then4.i.cleanup27.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup27.i

if.end9.i:                                        ; preds = %if.then4.i
  %73 = ptrtoint ptr %state.i11 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %state.i11, align 4
  %and.i53.i = and i32 %conv.i29, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and.i53.i, 0
  %and2.i.i = and i32 %conv.i29, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp ne i32 %and2.i.i, 0
  %..i.i = zext i1 %tobool3.not.i.i to i32
  %retval.0.i55.i = select i1 %tobool.not.i54.i, i32 %..i.i, i32 2
  %err_mask.i30 = getelementptr %struct.ata_port, ptr %57, i32 0, i32 19, i32 %63, i32 20
  %74 = ptrtoint ptr %err_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %err_mask.i30, align 4
  %or.i = or i32 %75, %retval.0.i55.i
  store i32 %or.i, ptr %err_mask.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool13.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %if.else.i32

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @ata_qc_complete(ptr noundef nonnull %arrayidx.i.i.i14) #7
  br label %cleanup27.i

if.else.i32:                                      ; preds = %if.end9.i
  %eh_info.i31 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info.i31) #7
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i31, ptr noundef nonnull @.str.14, i32 noundef %conv.i29) #7
  %76 = ptrtoint ptr %err_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err_mask.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp18.i = icmp eq i32 %77, 1
  br i1 %cmp18.i, label %if.then20.i, label %if.else22.i

if.then20.i:                                      ; preds = %if.else.i32
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 @ata_port_abort(ptr noundef %57) #7
  br label %cleanup27.i

if.else22.i:                                      ; preds = %if.else.i32
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 @ata_port_freeze(ptr noundef %57) #7
  br label %cleanup27.i

cleanup27.i:                                      ; preds = %if.else22.i, %if.then20.i, %if.then14.i, %if.then4.i.cleanup27.i_crit_edge, %land.lhs.true.i28.cleanup27.i_crit_edge, %if.end.i.i25.cleanup27.i_crit_edge, %if.end.i17.cleanup27.i_crit_edge, %lor.lhs.false.i12.cleanup27.i_crit_edge, %for.body.i10.cleanup27.i_crit_edge
  %handled.3.i = phi i32 [ %handled.060.i, %lor.lhs.false.i12.cleanup27.i_crit_edge ], [ %handled.060.i, %for.body.i10.cleanup27.i_crit_edge ], [ %handled.060.i, %land.lhs.true.i28.cleanup27.i_crit_edge ], [ %handled.060.i, %if.then4.i.cleanup27.i_crit_edge ], [ 1, %if.then20.i ], [ 1, %if.else22.i ], [ 1, %if.then14.i ], [ %handled.060.i, %if.end.i17.cleanup27.i_crit_edge ], [ %handled.060.i, %if.end.i.i25.cleanup27.i_crit_edge ]
  %inc.i33 = add nuw i32 %port_no.059.i, 1
  %78 = ptrtoint ptr %n_ports.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %n_ports.i, align 4
  %cmp.i34 = icmp ult i32 %inc.i33, %79
  br i1 %cmp.i34, label %cleanup27.i.for.body.i10_crit_edge, label %cleanup27.i.adma_intr_mmio.exit_crit_edge

cleanup27.i.adma_intr_mmio.exit_crit_edge:        ; preds = %cleanup27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adma_intr_mmio.exit

cleanup27.i.for.body.i10_crit_edge:               ; preds = %cleanup27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i10

adma_intr_mmio.exit:                              ; preds = %cleanup27.i.adma_intr_mmio.exit_crit_edge, %adma_intr_pkt.exit.adma_intr_mmio.exit_crit_edge, %entry.adma_intr_mmio.exit_crit_edge
  %handled.0.lcssa.i38 = phi i32 [ %handled.1.i, %adma_intr_pkt.exit.adma_intr_mmio.exit_crit_edge ], [ 0, %entry.adma_intr_mmio.exit_crit_edge ], [ %handled.1.i, %cleanup27.i.adma_intr_mmio.exit_crit_edge ]
  %handled.0.lcssa.i35 = phi i32 [ 0, %adma_intr_pkt.exit.adma_intr_mmio.exit_crit_edge ], [ 0, %entry.adma_intr_mmio.exit_crit_edge ], [ %handled.3.i, %cleanup27.i.adma_intr_mmio.exit_crit_edge ]
  %or = or i32 %handled.0.lcssa.i35, %handled.0.lcssa.i38
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp ne i32 %or, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adma_check_atapi_dma(ptr nocapture noundef readnone %qc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_qc_prep(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %pkt_dma1 = getelementptr inbounds %struct.adma_port_priv, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pkt_dma1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pkt_dma1, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %15, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 768) #7, !srcloc !63
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 2
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.not = icmp eq i8 %18, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %5, align 1
  %arrayidx5 = getelementptr i8, ptr %5, i32 1
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx5, align 1
  %arrayidx7 = getelementptr i8, ptr %5, i32 2
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 13, ptr %arrayidx7, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %7)
  %add.ptr = getelementptr i8, ptr %5, i32 4
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %add.ptr, align 4
  %arrayidx11 = getelementptr i8, ptr %5, i32 12
  %device = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %arrayidx11, align 1
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %device, align 4
  %arrayidx20 = getelementptr i8, ptr %5, i32 16
  %27 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx20, align 1
  %arrayidx22 = getelementptr i8, ptr %5, i32 17
  %28 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 22, ptr %arrayidx22, align 1
  %29 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tf, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end45_crit_edge, label %if.then24

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hob_nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %31 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %hob_nsect, align 1
  %arrayidx27 = getelementptr i8, ptr %5, i32 18
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr i8, ptr %5, i32 19
  %34 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 18, ptr %arrayidx29, align 1
  %hob_lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %35 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hob_lbal, align 4
  %arrayidx32 = getelementptr i8, ptr %5, i32 20
  %37 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr i8, ptr %5, i32 21
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 19, ptr %arrayidx34, align 1
  %hob_lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %39 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hob_lbam, align 1
  %arrayidx37 = getelementptr i8, ptr %5, i32 22
  %41 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx37, align 1
  %arrayidx39 = getelementptr i8, ptr %5, i32 23
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 20, ptr %arrayidx39, align 1
  %hob_lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %43 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hob_lbah, align 2
  %arrayidx42 = getelementptr i8, ptr %5, i32 24
  %45 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx42, align 1
  %arrayidx44 = getelementptr i8, ptr %5, i32 25
  %46 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 21, ptr %arrayidx44, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then24, %if.end.if.end45_crit_edge
  %i.0 = phi i32 [ 26, %if.then24 ], [ 18, %if.end.if.end45_crit_edge ]
  %nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %47 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nsect, align 4
  %inc47 = or i32 %i.0, 1
  %arrayidx48 = getelementptr i8, ptr %5, i32 %i.0
  %49 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx48, align 1
  %inc49 = add nuw nsw i32 %i.0, 2
  %arrayidx50 = getelementptr i8, ptr %5, i32 %inc47
  %50 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 18, ptr %arrayidx50, align 1
  %lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %51 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %lbal, align 1
  %inc52 = add nuw nsw i32 %i.0, 3
  %arrayidx53 = getelementptr i8, ptr %5, i32 %inc49
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %arrayidx53, align 1
  %inc54 = or i32 %i.0, 4
  %arrayidx55 = getelementptr i8, ptr %5, i32 %inc52
  %54 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 19, ptr %arrayidx55, align 1
  %lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %55 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lbam, align 2
  %inc57 = or i32 %i.0, 5
  %arrayidx58 = getelementptr i8, ptr %5, i32 %inc54
  %57 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx58, align 1
  %inc59 = add nuw nsw i32 %i.0, 6
  %arrayidx60 = getelementptr i8, ptr %5, i32 %inc57
  %58 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 20, ptr %arrayidx60, align 1
  %lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %59 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lbah, align 1
  %inc62 = add nuw nsw i32 %i.0, 7
  %arrayidx63 = getelementptr i8, ptr %5, i32 %inc59
  %61 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx63, align 1
  %inc64 = add nuw nsw i32 %i.0, 8
  %arrayidx65 = getelementptr i8, ptr %5, i32 %inc62
  %62 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 21, ptr %arrayidx65, align 1
  %inc66 = add nuw nsw i32 %i.0, 9
  %arrayidx67 = getelementptr i8, ptr %5, i32 %inc64
  %63 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx67, align 1
  %inc68 = add nuw nsw i32 %i.0, 10
  %arrayidx69 = getelementptr i8, ptr %5, i32 %inc66
  %64 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 14, ptr %arrayidx69, align 1
  %inc70 = add nuw nsw i32 %i.0, 11
  %arrayidx71 = getelementptr i8, ptr %5, i32 %inc68
  %65 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 32, ptr %arrayidx71, align 1
  %inc72 = add nuw nsw i32 %i.0, 12
  %arrayidx73 = getelementptr i8, ptr %5, i32 %inc70
  %66 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %arrayidx73, align 1
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %67 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %command, align 1
  %inc75 = add nuw nsw i32 %i.0, 13
  %arrayidx76 = getelementptr i8, ptr %5, i32 %inc72
  %69 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx76, align 1
  %inc77 = add nuw nsw i32 %i.0, 14
  %arrayidx78 = getelementptr i8, ptr %5, i32 %inc75
  %70 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -105, ptr %arrayidx78, align 1
  %71 = lshr exact i32 %inc77, 3
  %72 = trunc i32 %71 to i8
  %conv79 = add nsw i8 %72, -2
  %arrayidx80 = getelementptr i8, ptr %5, i32 3
  %73 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv79, ptr %arrayidx80, align 1
  %add81 = add i32 %inc77, %7
  %74 = tail call i32 @llvm.bswap.i32(i32 %add81)
  %add.ptr82 = getelementptr i8, ptr %5, i32 8
  %75 = ptrtoint ptr %add.ptr82 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %add.ptr82, align 4
  %76 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qc, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %77, i32 0, i32 48
  %78 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %private_data.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %82 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tf, align 4
  %.tr.i = trunc i32 %83 to i8
  %84 = shl i8 %.tr.i, 2
  %85 = and i8 %84, 32
  %conv2.i = or i8 %85, 16
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %86 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp1.not.i = icmp eq i32 %87, 0
  br i1 %cmp1.not.i, label %if.end45.adma_fill_sg.exit_crit_edge, label %for.body.lr.ph.i

if.end45.adma_fill_sg.exit_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %adma_fill_sg.exit

for.body.lr.ph.i:                                 ; preds = %if.end45
  %sg3.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %88 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sg3.i, align 4
  %arrayidx.i171 = getelementptr i8, ptr %81, i32 3
  %90 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i171, align 1
  %conv.i = zext i8 %91 to i32
  %add.i = shl nuw nsw i32 %conv.i, 3
  %dev.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %pkt_dma.i = getelementptr inbounds %struct.adma_port_priv, ptr %79, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sg.04.i = phi ptr [ %89, %for.body.lr.ph.i ], [ %call.i, %for.body.i.for.body.i_crit_edge ]
  %si.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %for.body.i.for.body.i_crit_edge ]
  %i.0.in2.i = phi i32 [ %add.i, %for.body.lr.ph.i ], [ %i.0.i, %for.body.i.for.body.i_crit_edge ]
  %i.0.i = add i32 %i.0.in2.i, 16
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 3
  %92 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_address.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  %add.ptr.i172 = getelementptr i8, ptr %81, i32 %i.0.i
  %95 = ptrtoint ptr %add.ptr.i172 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %add.ptr.i172, align 4
  %add5.i = add i32 %i.0.in2.i, 20
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i, i32 0, i32 4
  %96 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_length.i, align 4
  %shr.i = lshr i32 %97, 3
  %98 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #7
  %add.ptr6.i = getelementptr i8, ptr %81, i32 %add5.i
  %99 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %add.ptr6.i, align 4
  %add7.i = add i32 %i.0.in2.i, 24
  %arrayidx8.i = getelementptr i8, ptr %81, i32 %add7.i
  %inc.i = add i32 %i.0.in2.i, 25
  %100 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv2.i, ptr %arrayidx8.i, align 1
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 4
  %dma_mode.i = getelementptr inbounds %struct.ata_device, ptr %102, i32 0, i32 12
  %103 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %dma_mode.i, align 1
  %105 = and i8 %104, 15
  %inc13.i = add i32 %i.0.in2.i, 26
  %arrayidx14.i = getelementptr i8, ptr %81, i32 %inc.i
  %106 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx14.i, align 1
  %inc15.i = add i32 %i.0.in2.i, 27
  %arrayidx16.i = getelementptr i8, ptr %81, i32 %inc13.i
  %107 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %arrayidx16.i, align 1
  %inc17.i = add i32 %i.0.in2.i, 28
  %arrayidx18.i = getelementptr i8, ptr %81, i32 %inc15.i
  %108 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx18.i, align 1
  %109 = ptrtoint ptr %pkt_dma.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pkt_dma.i, align 4
  %add22.i = add i32 %i.0.in2.i, 32
  %add23.i = add i32 %add22.i, %110
  %111 = tail call i32 @llvm.bswap.i32(i32 %add23.i) #7
  %add.ptr25.i = getelementptr i8, ptr %81, i32 %inc17.i
  %112 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %add.ptr25.i, align 4
  %inc27.i = add nuw i32 %si.03.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.04.i) #7
  %113 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc27.i, %114
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %arrayidx8.i.le = getelementptr i8, ptr %81, i32 %add7.i
  %tobool28.not.i = icmp eq ptr %arrayidx8.i.le, null
  br i1 %tobool28.not.i, label %for.end.i.adma_fill_sg.exit_crit_edge, label %if.then.i, !prof !69

for.end.i.adma_fill_sg.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adma_fill_sg.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %arrayidx8.i.le to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx8.i.le, align 1
  %117 = or i8 %116, -128
  store i8 %117, ptr %arrayidx8.i.le, align 1
  br label %adma_fill_sg.exit

adma_fill_sg.exit:                                ; preds = %if.then.i, %for.end.i.adma_fill_sg.exit_crit_edge, %if.end45.adma_fill_sg.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  br label %cleanup

cleanup:                                          ; preds = %adma_fill_sg.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.adma_port_priv, ptr %3, i32 0, i32 2
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
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %13, i32 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 7
  %16 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %17, 5
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 -32000) #7, !srcloc !63
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/pdc_adma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #7, !srcloc !72
  unreachable

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state5 = getelementptr inbounds %struct.adma_port_priv, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %state5, align 4
  %call = tail call i32 @ata_sff_qc_issue(ptr noundef %qc) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adma_freeze(ptr noundef %ap) #2 align 64 {
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
  %arrayidx = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 128
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %8 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_addr, align 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 2) #7, !srcloc !61
  %call = tail call zeroext i8 @ata_sff_check_status(ptr noundef %ap) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 8961) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1, i16 769) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adma_thaw(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @adma_reinit_engine(ptr noundef %ap)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %state = getelementptr inbounds %struct.adma_port_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @adma_reinit_engine(ptr noundef %1)
  %call = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adma_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %add.ptr.i = getelementptr i8, ptr %7, i32 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 768) #7, !srcloc !63
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 2
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pkt_dma = getelementptr inbounds %struct.adma_port_priv, ptr %call.i, i32 0, i32 1
  %call.i24 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 2088, ptr noundef %pkt_dma, i32 noundef 3264, i32 noundef 0) #7
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i24, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call.i24, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pkt_dma, align 4
  %and = and i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %14 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %print_id, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %15, i32 noundef %13) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %private_data, align 4
  tail call fastcc void @adma_reinit_engine(ptr noundef %ap)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adma_port_stop(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 8961) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 768) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_qc_issue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_sff_check_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adma_reinit_engine(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 128
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 5
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %ctl_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 12
  %10 = ptrtoint ptr %ctl_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_addr, align 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 2) #7, !srcloc !61
  %call = tail call zeroext i8 @ata_sff_check_status(ptr noundef %ap) #7
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 128
  %18 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no, align 4
  %mul.i = shl i32 %19, 5
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 8961) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 429496) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr1.i, i16 768) #7, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %add.ptr5 = getelementptr i8, ptr %add.ptr1, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 1) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %pkt_dma = getelementptr inbounds %struct.adma_port_priv, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_dma, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %add.ptr9 = getelementptr i8, ptr %add.ptr1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %24) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %add.ptr13 = getelementptr i8, ptr %add.ptr1, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 1) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %add.ptr17 = getelementptr i8, ptr %add.ptr1, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17, i16 256) #7, !srcloc !63
  %add.ptr18 = getelementptr i8, ptr %add.ptr1, i32 2
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr18) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_pdc_adma__289_602_adma_ata_pci_driver_init6, !1, !"__initcall__kmod_pdc_adma__289_602_adma_ata_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/pdc_adma.c", i32 602, i32 1}
!2 = !{ptr @__exitcall_adma_ata_pci_driver_exit, !1, !"__exitcall_adma_ata_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/ata/pdc_adma.c", i32 604, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/ata/pdc_adma.c", i32 605, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/ata/pdc_adma.c", i32 606, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version294, !11, !"__UNIQUE_ID_version294", i1 false, i1 false}
!11 = !{!"../drivers/ata/pdc_adma.c", i32 608, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @adma_ata_pci_driver, !17, !"adma_ata_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/pdc_adma.c", i32 165, i32 26}
!18 = !{ptr @adma_ata_pci_tbl, !19, !"adma_ata_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/pdc_adma.c", i32 159, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/pdc_adma.c", i32 556, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/pdc_adma.c", i32 579, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @adma_ata_init_one._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @adma_ata_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/pdc_adma.c", i32 590, i32 45}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/pdc_adma.c", i32 591, i32 49}
!34 = !{ptr @adma_port_info, !35, !"adma_port_info", i1 false, i1 false}
!35 = !{!"../drivers/ata/pdc_adma.c", i32 149, i32 29}
!36 = !{ptr @adma_ata_ops, !37, !"adma_ata_ops", i1 false, i1 false}
!37 = !{!"../drivers/ata/pdc_adma.c", i32 132, i32 35}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/pdc_adma.c", i32 521, i32 3}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adma_port_start._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @adma_port_start._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/pdc_adma.c", i32 423, i32 6}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/pdc_adma.c", i32 425, i32 6}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/pdc_adma.c", i32 464, i32 28}
!49 = !{ptr @adma_ata_sht, !50, !"adma_ata_sht", i1 false, i1 false}
!50 = !{!"../drivers/ata/pdc_adma.c", i32 126, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2155714639}
!61 = !{i64 4992897}
!62 = !{i64 2155700714}
!63 = !{i64 4992474}
!64 = !{i64 2155701713}
!65 = !{i64 4993292}
!66 = !{i64 2155711788}
!67 = !{i64 2155705278}
!68 = !{i64 2155705701}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2155709000}
!71 = !{i64 2155709543}
!72 = !{i64 2155709990, i64 2155710477, i64 2155710027, i64 2155710083, i64 2155710117, i64 2155710141, i64 2155710182, i64 2155710203, i64 2155710231, i64 2155710265}
!73 = !{i64 2155706070}
!74 = !{i64 2155706368}
!75 = !{i64 2155707375}
!76 = !{i64 2155702807}
!77 = !{i64 2155703085}
!78 = !{i64 2155703498}
!79 = !{i64 4993094}
!80 = !{i64 2155703934}
!81 = !{i64 2155704334}
!82 = !{i64 2155704741}
