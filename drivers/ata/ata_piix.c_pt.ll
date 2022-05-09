; ModuleID = '/llk/IR_all_yes/drivers/ata/ata_piix.c_pt.bc'
source_filename = "../drivers/ata/ata_piix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.ich_laptop = type { i16, i16, i16 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.83 = type { ptr }
%struct.piix_host_priv = type { ptr, i32, ptr }
%struct.piix_map_db = type { i32, i16, [0 x [4 x i32]] }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author358 = internal constant [77 x i8] c"ata_piix.author=Andre Hedrick, Alan Cox, Andrzej Krzysztofowicz, Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [78 x i8] c"ata_piix.description=SCSI low-level driver for Intel PIIX/ICH ATA controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [35 x i8] c"ata_piix.file=drivers/ata/ata_piix\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [21 x i8] c"ata_piix.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version362 = internal constant [22 x i8] c"ata_piix.version=2.13\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ata_piix\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2.13\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_prefer_ms_hyperv = internal constant [26 x i8] c"ata_piix.prefer_ms_hyperv\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@prefer_ms_hyperv = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_prefer_ms_hyperv = internal constant %struct.kernel_param { ptr @__param_str_prefer_ms_hyperv, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @prefer_ms_hyperv } }, section "__param", align 4
@__UNIQUE_ID_prefer_ms_hypervtype365 = internal constant [39 x i8] c"ata_piix.parmtype=prefer_ms_hyperv:int\00", section ".modinfo", align 1
@__UNIQUE_ID_prefer_ms_hyperv366 = internal constant [160 x i8] c"ata_piix.parm=prefer_ms_hyperv:Prefer Hyper-V paravirtualization drivers instead of ATA, 0 - Use ATA drivers, 1 (Default) - Use the paravirtualization drivers.\00", section ".modinfo", align 1
@piix_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @piix_pci_tbl, ptr @piix_init_one, ptr @piix_remove_one, ptr @piix_pci_device_suspend, ptr @piix_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ata_piix__367_1791_piix_init6 = internal global ptr @piix_init, section ".initcall6.init", align 4
@__exitcall_piix_exit = internal global ptr @piix_exit, section ".exitcall.exit", align 4
@piix_pci_tbl = internal constant { [90 x %struct.pci_device_id], [704 x i8] } { [90 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 28688, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 28945, i32 5549, i32 6518, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 32902, i32 28945, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 29081, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 30209, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 33994, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 9233, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 9249, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 9290, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9291, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9354, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9355, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9409, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9418, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9419, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9435, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9307, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9634, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9839, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 10207, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 9886, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 10320, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 9425, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 9439, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 9635, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 9648, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 32902, i32 9809, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 9810, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 9811, i32 -1, i32 -1, i32 65792, i32 16776960, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 10176, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 10180, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 32902, i32 9856, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 32902, i32 10272, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 10277, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 10280, i32 4203, i32 160, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 10280, i32 4203, i32 161, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 10280, i32 4203, i32 163, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 32902, i32 10280, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 10528, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 10529, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 10534, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 10536, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 10541, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 10542, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 20520, i32 -1, i32 -1, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 32902, i32 14848, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 14854, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 14880, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 14886, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 15136, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 15137, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 15142, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 15144, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 15149, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 15150, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 32902, i32 7168, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7169, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7176, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7177, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7424, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7432, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7680, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7681, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7688, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7689, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 35840, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 35841, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 35848, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 35849, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 39936, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 39937, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 39944, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 39945, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 8998, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7968, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7969, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 7984, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 7985, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 36096, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 36104, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 36192, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 36200, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 3872, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 3873, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 9126, i32 -1, i32 -1, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 32902, i32 35976, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 35977, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 35968, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 35969, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id zeroinitializer], [704 x i8] zeroinitializer }, align 32
@piix_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@piix_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@in_module_init = internal global { i1, [31 x i8] } zeroinitializer, align 32
@piix_port_info = internal constant { [17 x %struct.ata_port_info], [100 x i8] } { [17 x %struct.ata_port_info] [%struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 0, ptr @piix_pata_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 7, ptr @piix_pata_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 7, ptr @ich_pata_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 31, ptr @ich_pata_ops, ptr null }, %struct.ata_port_info { i32 268435457, i32 0, i32 31, i32 6, i32 63, ptr @ich_pata_ops, ptr null }, %struct.ata_port_info { i32 268435457, i32 0, i32 31, i32 4, i32 63, ptr @ich_pata_ops, ptr null }, %struct.ata_port_info { i32 268435458, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 268435458, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 268435458, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 805306370, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 805306370, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 268435458, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 268435458, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 1, i32 0, i32 31, i32 6, i32 7, ptr @piix_vmw_ops, ptr null }, %struct.ata_port_info { i32 1879048194, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 1879048194, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }, %struct.ata_port_info { i32 1879048194, i32 0, i32 31, i32 7, i32 127, ptr @piix_sata_ops, ptr null }], [100 x i8] zeroinitializer }, align 32
@piix_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1668, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"quirky BIOS, skipping spindown on poweroff and hibernation\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"piix_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/ata_piix.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@piix_init_one._entry_ptr = internal global ptr @piix_init_one._entry, section ".printk_index", align 4
@piix_map_db_table = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ich5_map_db, ptr @ich6_map_db, ptr @ich6m_map_db, ptr @ich8_map_db, ptr @ich8_2port_map_db, ptr @ich8m_apple_map_db, ptr @tolapai_map_db, ptr null, ptr @ich8_map_db, ptr @ich8_2port_map_db, ptr @ich8_2port_map_db], [60 x i8] zeroinitializer }, align 32
@piix_sidpr_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_std_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_sidpr_scr_read, ptr @piix_sidpr_scr_write, ptr null, ptr null, ptr @piix_sidpr_set_lpm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_sata_ops }, [44 x i8] zeroinitializer }, align 32
@piix_sidpr_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @piix_sidpr_shost_groups, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@piix_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_cable_40wire, ptr null, ptr @piix_set_piomode, ptr @piix_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_pata_prereset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_sata_ops }, [44 x i8] zeroinitializer }, align 32
@ich_pata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ich_pata_cable_detect, ptr null, ptr null, ptr @ich_set_dmamode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_pata_ops }, [44 x i8] zeroinitializer }, align 32
@piix_sata_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_irq_check, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma32_port_ops }, [44 x i8] zeroinitializer }, align 32
@piix_vmw_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_vmw_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @piix_pata_ops }, [44 x i8] zeroinitializer }, align 32
@piix_set_timings.timings = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\01\00", [2 x i8] c"\02\01", [2 x i8] c"\02\03"], [22 x i8] zeroinitializer }, align 32
@piix_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"piix_lock\00", [22 x i8] zeroinitializer }, align 32
@__const.do_pata_set_dmamode.needed_pio = private unnamed_addr constant [3 x i32] [i32 8, i32 11, i32 12], align 4
@piix_enable_bits = internal constant { [2 x %struct.pci_bits], [32 x i8] } { [2 x %struct.pci_bits] [%struct.pci_bits { i32 65, i32 1, i32 128, i32 128 }, %struct.pci_bits { i32 67, i32 1, i32 128, i32 128 }], [32 x i8] zeroinitializer }, align 32
@ich_laptop = internal constant { [16 x %struct.ich_laptop], [32 x i8] } { [16 x %struct.ich_laptop] [%struct.ich_laptop { i16 10207, i16 5, i16 640 }, %struct.ich_laptop { i16 10207, i16 4133, i16 258 }, %struct.ich_laptop { i16 10207, i16 4133, i16 272 }, %struct.ich_laptop { i16 10207, i16 4136, i16 688 }, %struct.ich_laptop { i16 10207, i16 4163, i16 4711 }, %struct.ich_laptop { i16 10207, i16 4156, i16 12449 }, %struct.ich_laptop { i16 10207, i16 4156, i16 13850 }, %struct.ich_laptop { i16 10207, i16 4209, i16 -11743 }, %struct.ich_laptop { i16 10207, i16 5421, i16 1912 }, %struct.ich_laptop { i16 9418, i16 4133, i16 97 }, %struct.ich_laptop { i16 9418, i16 4133, i16 61 }, %struct.ich_laptop { i16 9418, i16 4303, i16 4523 }, %struct.ich_laptop { i16 9839, i16 4133, i16 102 }, %struct.ich_laptop { i16 9811, i16 4163, i16 -32040 }, %struct.ich_laptop { i16 10207, i16 4173, i16 -28658 }, %struct.ich_laptop zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ata_bmdma32_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@__tracepoint_ata_bmdma_status = external dso_local global %struct.tracepoint, align 4
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/libata.h\00", [34 x i8] zeroinitializer }, align 32
@trace_ata_bmdma_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" XX\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" --\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" IDE IDE\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" P%d\00", [27 x i8] zeroinitializer }, align 32
@piix_init_sata_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 1398, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MAP [%s ]\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"piix_init_sata_map\00", [45 x i8] zeroinitializer }, align 32
@piix_init_sata_map._entry_ptr = internal global ptr @piix_init_sata_map._entry, section ".printk_index", align 4
@piix_init_sata_map._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 1401, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid MAP value %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@piix_init_sata_map._entry_ptr.23 = internal global ptr @piix_init_sata_map._entry.20, section ".printk_index", align 4
@ich5_map_db = internal constant { { i32, i16, [8 x [4 x i32]] }, [56 x i8] } { { i32, i16, [8 x [4 x i32]] } { i32 7, i16 3, [8 x [4 x i32]] [[4 x i32] [i32 0, i32 -2, i32 1, i32 -2], [4 x i32] [i32 1, i32 -2, i32 0, i32 -2], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 0, i32 1, i32 -1, i32 -1], [4 x i32] [i32 1, i32 0, i32 -1, i32 -1], [4 x i32] [i32 -1, i32 -1, i32 0, i32 1], [4 x i32] [i32 -1, i32 -1, i32 1, i32 0]] }, [56 x i8] zeroinitializer }, align 32
@ich6_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 15, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 1, i32 3], [4 x i32] [i32 -1, i32 -1, i32 1, i32 3], [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@ich6m_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 5, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 -2, i32 -2], [4 x i32] [i32 -1, i32 -1, i32 1, i32 3], [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@ich8_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 15, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 2, i32 1, i32 3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@ich8_2port_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 3, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 -2, i32 1, i32 -2], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@ich8m_apple_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 1, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 -2, i32 -2, i32 -2], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 0, i32 2, i32 -1, i32 -1], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@tolapai_map_db = internal constant { { i32, i16, [4 x [4 x i32]] }, [56 x i8] } { { i32, i16, [4 x [4 x i32]] } { i32 3, i16 3, [4 x [4 x i32]] [[4 x i32] [i32 0, i32 -2, i32 1, i32 -2], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3], [4 x i32] [i32 -3, i32 -3, i32 -3, i32 -3]] }, [56 x i8] zeroinitializer }, align 32
@piix_init_sidpr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 1485, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SCR access via SIDPR is available but doesn't work\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"piix_init_sidpr\00", [16 x i8] zeroinitializer }, align 32
@piix_init_sidpr._entry_ptr = internal global ptr @piix_init_sidpr._entry, section ".printk_index", align 4
@piix_no_sidpr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 1432, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Samsung DB-P70 detected, disabling SIDPR\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"piix_no_sidpr\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@piix_no_sidpr._entry_ptr = internal global ptr @piix_no_sidpr._entry, section ".printk_index", align 4
@piix_sidx_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 1], [20 x i8] zeroinitializer }, align 32
@piix_sidpr_shost_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @piix_sidpr_shost_group, ptr null], [24 x i8] zeroinitializer }, align 32
@piix_sidpr_shost_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @piix_sidpr_shost_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@piix_sidpr_shost_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_link_power_management_policy, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_link_power_management_policy = external dso_local global %struct.device_attribute, align 4
@piix_iocfg_bit18_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 1534, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"applying IOCFG bit18 quirk\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"piix_iocfg_bit18_quirk\00", [41 x i8] zeroinitializer }, align 32
@piix_iocfg_bit18_quirk._entry_ptr = internal global ptr @piix_iocfg_bit18_quirk._entry, section ".printk_index", align 4
@piix_check_450nx_errata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1338, ptr @.str.35, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"450NX errata present, disabling IDE DMA%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"piix_check_450nx_errata\00", [40 x i8] zeroinitializer }, align 32
@piix_check_450nx_errata._entry_ptr = internal global ptr @piix_check_450nx_errata._entry, section ".printk_index", align 4
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" - a BIOS update may resolve this\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@piix_pci_device_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 1049, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable device after resume (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"piix_pci_device_resume\00", [41 x i8] zeroinitializer }, align 32
@piix_pci_device_resume._entry_ptr = internal global ptr @piix_pci_device_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967293, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 454, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"prefer_ms_hyperv\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1575, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"piix_pci_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1762, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"piix_pci_tbl\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 155, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [9 x i8] c"piix_sht\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1065, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"piix_init_one.__print_once\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"in_module_init\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"piix_port_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1114, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1667, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"piix_map_db_table\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 432, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"piix_sidpr_sata_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1106, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"piix_sidpr_sht\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1101, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"piix_pata_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1075, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"ich_pata_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1088, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"piix_sata_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1069, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"piix_vmw_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1083, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant [8 x i8] c"timings\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 569, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant [10 x i8] c"piix_lock\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 548, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"piix_enable_bits\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 445, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant [11 x i8] c"ich_laptop\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 466, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant [33 x i8] c"../include/trace/events/libata.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 417, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1377, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1381, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1388, i32 31 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1392, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1398, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1401, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [12 x i8] c"ich5_map_db\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 339, i32 33 }
@___asan_gen_.187 = private unnamed_addr constant [12 x i8] c"ich6_map_db\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 355, i32 33 }
@___asan_gen_.190 = private unnamed_addr constant [13 x i8] c"ich6m_map_db\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 367, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"ich8_map_db\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 384, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"ich8_2port_map_db\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 396, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"ich8m_apple_map_db\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 408, i32 33 }
@___asan_gen_.202 = private unnamed_addr constant [15 x i8] c"tolapai_map_db\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 420, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1484, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1431, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [14 x i8] c"piix_sidx_map\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 771, i32 18 }
@___asan_gen_.229 = private unnamed_addr constant [24 x i8] c"piix_sidpr_shost_groups\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [23 x i8] c"piix_sidpr_shost_group\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1099, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant [23 x i8] c"piix_sidpr_shost_attrs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1094, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1534, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1335, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private constant [26 x i8] c"../drivers/ata/ata_piix.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 1047, i32 4 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__UNIQUE_ID_prefer_ms_hyperv366, ptr @__UNIQUE_ID_prefer_ms_hypervtype365, ptr @__UNIQUE_ID_version362, ptr @__exitcall_piix_exit, ptr @__initcall__kmod_ata_piix__367_1791_piix_init6, ptr @__modver_attr, ptr @__param_prefer_ms_hyperv, ptr @piix_check_450nx_errata._entry, ptr @piix_check_450nx_errata._entry_ptr, ptr @piix_exit, ptr @piix_init_one._entry, ptr @piix_init_one._entry_ptr, ptr @piix_init_sata_map._entry, ptr @piix_init_sata_map._entry.20, ptr @piix_init_sata_map._entry_ptr, ptr @piix_init_sata_map._entry_ptr.23, ptr @piix_init_sidpr._entry, ptr @piix_init_sidpr._entry_ptr, ptr @piix_iocfg_bit18_quirk._entry, ptr @piix_iocfg_bit18_quirk._entry_ptr, ptr @piix_no_sidpr._entry, ptr @piix_no_sidpr._entry_ptr, ptr @piix_pci_device_resume._entry, ptr @piix_pci_device_resume._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @prefer_ms_hyperv, ptr @piix_pci_driver, ptr @piix_pci_tbl, ptr @piix_sht, ptr @piix_init_one.__print_once, ptr @in_module_init, ptr @piix_port_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @piix_map_db_table, ptr @piix_sidpr_sata_ops, ptr @piix_sidpr_sht, ptr @piix_pata_ops, ptr @ich_pata_ops, ptr @piix_sata_ops, ptr @piix_vmw_ops, ptr @piix_set_timings.timings, ptr @piix_lock, ptr @.str.10, ptr @piix_enable_bits, ptr @ich_laptop, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @ich5_map_db, ptr @ich6_map_db, ptr @ich6m_map_db, ptr @ich8_map_db, ptr @ich8_2port_map_db, ptr @ich8m_apple_map_db, ptr @tolapai_map_db, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @piix_sidx_map, ptr @piix_sidpr_shost_groups, ptr @piix_sidpr_shost_group, ptr @piix_sidpr_shost_attrs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prefer_ms_hyperv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_pci_tbl to i32), i32 2880, i32 3584, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_module_init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_port_info to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_map_db_table to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidpr_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidpr_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich_pata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sata_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_vmw_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_set_timings.timings to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_enable_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich_laptop to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_init_sata_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_init_sata_map._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich5_map_db to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich6_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich6m_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8_2port_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ich8m_apple_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tolapai_map_db to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_init_sidpr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_no_sidpr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidx_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidpr_shost_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidpr_shost_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_sidpr_shost_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_iocfg_bit18_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_check_450nx_errata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @piix_pci_device_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @piix_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @piix_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @piix_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @in_module_init, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %cfg.i = alloca i16, align 2
  %scontrol.i = alloca i32, align 4
  %pcs.i = alloca i16, align 2
  %map_value.i = alloca i8, align 1
  %buf.i = alloca [32 x i8], align 1
  %port_info = alloca [2 x %struct.ata_port_info], align 4
  %ppi = alloca [2 x ptr], align 4
  %host = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %port_info) #9
  %0 = call ptr @memset(ptr %port_info, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #9
  %1 = getelementptr inbounds [2 x ptr], ptr %ppi, i32 0, i32 1
  %2 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %port_info, ptr %ppi, align 4
  %arrayidx2 = getelementptr inbounds [2 x %struct.ata_port_info], ptr %port_info, i32 0, i32 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx2, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #9
  %4 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !203
  %.b126 = load i1, ptr @piix_init_one.__print_once, align 1
  br i1 %.b126, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @piix_init_one.__print_once, align 1
  call void @ata_print_version(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.b125 = load i1, ptr @in_module_init, align 4
  br i1 %.b125, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp = icmp ugt i32 %6, 5
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %driver_data13 = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data13, align 4
  %arrayidx14 = getelementptr [17 x %struct.ata_port_info], ptr @piix_port_info, i32 0, i32 %8
  %9 = call ptr @memcpy(ptr %port_info, ptr %arrayidx14, i32 28)
  %10 = call ptr @memcpy(ptr %arrayidx2, ptr %arrayidx14, i32 28)
  %11 = ptrtoint ptr %port_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_info, align 4
  %call20 = call i32 @pcim_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end6
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #9
  %tobool25.not = icmp eq ptr %call.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %saved_iocfg = getelementptr inbounds %struct.piix_host_priv, ptr %call.i, i32 0, i32 1
  %call28 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 84, ptr noundef %saved_iocfg) #9
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %14)
  %cmp29 = icmp eq i16 %14, -32634
  br i1 %cmp29, label %land.lhs.true31, label %if.end27.if.end40_crit_edge

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true31:                                  ; preds = %if.end27
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9810, i16 %16)
  %cmp33 = icmp eq i16 %16, 9810
  br i1 %cmp33, label %if.then35, label %land.lhs.true31.if.end40_crit_edge

land.lhs.true31.if.end40_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true31
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then35.if.end40_crit_edge, label %lor.lhs.false.i

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

lor.lhs.false.i:                                  ; preds = %if.then35
  %end.i = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  %sub.i = sub i32 %20, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %tobool9.not.i = icmp eq i32 %sub.i, -1
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool9.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.end40_crit_edge, label %if.end.i

lor.lhs.false.i.if.end40_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i127 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 5, i32 noundef 64) #9
  %tobool10.not.i = icmp eq ptr %call.i127, null
  br i1 %tobool10.not.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call.i127, i32 4
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !204
  %22 = call i32 @llvm.bswap.i32(i32 %21) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool14.not.i = icmp sgt i32 %22, -1
  br i1 %tobool14.not.i, label %if.end12.i.piix_disable_ahci.exit.thread165_crit_edge, label %if.then15.i

if.end12.i.piix_disable_ahci.exit.thread165_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_disable_ahci.exit.thread165

if.then15.i:                                      ; preds = %if.end12.i
  %and16.i = and i32 %22, 2147483647
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  call void @arm_heavy_mb() #9
  %23 = call i32 @llvm.bswap.i32(i32 %and16.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !207
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  %.mask.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool21.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool21.not.i, label %if.then15.i.piix_disable_ahci.exit.thread165_crit_edge, label %piix_disable_ahci.exit

if.then15.i.piix_disable_ahci.exit.thread165_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_disable_ahci.exit.thread165

piix_disable_ahci.exit.thread165:                 ; preds = %if.then15.i.piix_disable_ahci.exit.thread165_crit_edge, %if.end12.i.piix_disable_ahci.exit.thread165_crit_edge
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call.i127) #9
  br label %if.end40

piix_disable_ahci.exit:                           ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call.i127) #9
  br label %cleanup

if.end40:                                         ; preds = %piix_disable_ahci.exit.thread165, %lor.lhs.false.i.if.end40_crit_edge, %if.then35.if.end40_crit_edge, %land.lhs.true31.if.end40_crit_edge, %if.end27.if.end40_crit_edge
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end40.if.end46_crit_edge, label %if.then42

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then42:                                        ; preds = %if.end40
  %25 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data13, align 4
  %arrayidx44 = getelementptr [17 x ptr], ptr @piix_map_db_table, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx44, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %map_value.i) #9
  %29 = ptrtoint ptr %map_value.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %map_value.i, align 1, !annotation !203
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #9
  %add.ptr.i128 = getelementptr inbounds i8, ptr %buf.i, i32 32
  %30 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  %call.i129 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 144, ptr noundef nonnull %map_value.i) #9
  %31 = ptrtoint ptr %map_value.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %map_value.i, align 1
  %conv.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %28, align 4
  %and.i = and i32 %34, %conv.i
  %arrayidx.i130 = getelementptr %struct.piix_map_db, ptr %28, i32 0, i32 2, i32 %and.i
  %sub.ptr.lhs.cast39.i = ptrtoint ptr %add.ptr.i128 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then42
  %p.0102.i = phi ptr [ %buf.i, %if.then42 ], [ %p.1.i, %for.inc.i.for.body.i_crit_edge ]
  %invalid_map.0101.i = phi i32 [ 0, %if.then42 ], [ %invalid_map.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0100.i = phi i32 [ 0, %if.then42 ], [ %inc56.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr i32, ptr %arrayidx.i130, i32 %i.0100.i
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx5.i, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %sw.default.i [
    i32 -3, label %sw.bb.i
    i32 -2, label %sw.bb8.i
    i32 -1, label %sw.bb14.i
  ]

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.0102.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast.i
  %call6.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0102.i, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull @.str.14) #9
  %add.ptr7.i = getelementptr i8, ptr %p.0102.i, i32 %call6.i
  br label %for.inc.i

sw.bb8.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.ptr.rhs.cast10.i = ptrtoint ptr %p.0102.i to i32
  %sub.ptr.sub11.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast10.i
  %call12.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0102.i, i32 noundef %sub.ptr.sub11.i, ptr noundef nonnull @.str.15) #9
  %add.ptr13.i = getelementptr i8, ptr %p.0102.i, i32 %call12.i
  br label %for.inc.i

sw.bb14.i:                                        ; preds = %for.body.i
  %and15.i = and i32 %i.0100.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i131 = icmp eq i32 %and15.i, 0
  %add.i = add nsw i32 %i.0100.i, 1
  br i1 %tobool.not.i131, label %lor.rhs.i, label %sw.bb14.i.do.end.i_crit_edge

sw.bb14.i.do.end.i_crit_edge:                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.rhs.i:                                        ; preds = %sw.bb14.i
  %arrayidx16.i = getelementptr i32, ptr %arrayidx.i130, i32 %add.i
  %38 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp17.not.i = icmp eq i32 %39, -1
  br i1 %cmp17.not.i, label %lor.rhs.i.if.end.i132_crit_edge, label %lor.rhs.i.do.end.i_crit_edge, !prof !208

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.rhs.i.if.end.i132_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i132

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %sw.bb14.i.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1385, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i132

if.end.i132:                                      ; preds = %do.end.i, %lor.rhs.i.if.end.i132_crit_edge
  %div.i = sdiv i32 %i.0100.i, 2
  %arrayidx38.i = getelementptr %struct.ata_port_info, ptr %port_info, i32 %div.i
  %40 = call ptr @memcpy(ptr %arrayidx38.i, ptr getelementptr inbounds ([17 x %struct.ata_port_info], ptr @piix_port_info, i32 0, i32 4), i32 28)
  %sub.ptr.rhs.cast40.i = ptrtoint ptr %p.0102.i to i32
  %sub.ptr.sub41.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast40.i
  %call42.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0102.i, i32 noundef %sub.ptr.sub41.i, ptr noundef nonnull @.str.16) #9
  %add.ptr43.i = getelementptr i8, ptr %p.0102.i, i32 %call42.i
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %sub.ptr.rhs.cast45.i = ptrtoint ptr %p.0102.i to i32
  %sub.ptr.sub46.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast45.i
  %call48.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %p.0102.i, i32 noundef %sub.ptr.sub46.i, ptr noundef nonnull @.str.17, i32 noundef %36) #9
  %add.ptr49.i = getelementptr i8, ptr %p.0102.i, i32 %call48.i
  %and50.i = and i32 %i.0100.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %sw.default.i.for.inc.i_crit_edge, label %if.then52.i

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then52.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %div53.i = sdiv i32 %i.0100.i, 2
  %arrayidx54.i = getelementptr %struct.ata_port_info, ptr %port_info, i32 %div53.i
  %41 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx54.i, align 4
  %or.i = or i32 %42, 1
  store i32 %or.i, ptr %arrayidx54.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then52.i, %sw.default.i.for.inc.i_crit_edge, %if.end.i132, %sw.bb8.i, %sw.bb.i
  %i.1.i = phi i32 [ %i.0100.i, %if.then52.i ], [ %i.0100.i, %sw.default.i.for.inc.i_crit_edge ], [ %add.i, %if.end.i132 ], [ %i.0100.i, %sw.bb8.i ], [ %i.0100.i, %sw.bb.i ]
  %invalid_map.1.i = phi i32 [ %invalid_map.0101.i, %if.then52.i ], [ %invalid_map.0101.i, %sw.default.i.for.inc.i_crit_edge ], [ %invalid_map.0101.i, %if.end.i132 ], [ %invalid_map.0101.i, %sw.bb8.i ], [ 1, %sw.bb.i ]
  %p.1.i = phi ptr [ %add.ptr49.i, %if.then52.i ], [ %add.ptr49.i, %sw.default.i.for.inc.i_crit_edge ], [ %add.ptr43.i, %if.end.i132 ], [ %add.ptr13.i, %sw.bb8.i ], [ %add.ptr7.i, %sw.bb.i ]
  %inc56.i = add nsw i32 %i.1.i, 1
  %cmp.i133 = icmp slt i32 %i.1.i, 3
  br i1 %cmp.i133, label %for.inc.i.for.body.i_crit_edge, label %do.end59.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end59.i:                                       ; preds = %for.inc.i
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef nonnull %buf.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %invalid_map.1.i)
  %tobool61.not.i = icmp eq i32 %invalid_map.1.i, 0
  br i1 %tobool61.not.i, label %do.end59.i.piix_init_sata_map.exit_crit_edge, label %do.end65.i

do.end59.i.piix_init_sata_map.exit_crit_edge:     ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_init_sata_map.exit

do.end65.i:                                       ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %map_value.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %map_value.i, align 1
  %conv67.i = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %conv67.i) #12
  br label %piix_init_sata_map.exit

piix_init_sata_map.exit:                          ; preds = %do.end65.i, %do.end59.i.piix_init_sata_map.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %map_value.i) #9
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i130, ptr %call.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %piix_init_sata_map.exit, %if.end40.if.end46_crit_edge
  %call48 = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %46 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %host, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %private_data, align 4
  br i1 %tobool41.not, label %if.end51.if.end66_crit_edge, label %if.then54

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then54:                                        ; preds = %if.end51
  %49 = ptrtoint ptr %driver_data13 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %driver_data13, align 4
  %arrayidx56 = getelementptr [17 x ptr], ptr @piix_map_db_table, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx56, align 4
  %dev.i134 = getelementptr inbounds %struct.ata_host, ptr %47, i32 0, i32 1
  %53 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i134, align 4
  %add.ptr.i135 = getelementptr i8, ptr %54, i32 -136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pcs.i) #9
  %55 = ptrtoint ptr %pcs.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %pcs.i, align 2, !annotation !203
  %call.i136 = call i32 @pci_read_config_word(ptr noundef %add.ptr.i135, i32 noundef 146, ptr noundef nonnull %pcs.i) #9
  %56 = ptrtoint ptr %pcs.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pcs.i, align 2
  %port_enable.i = getelementptr inbounds %struct.piix_map_db, ptr %52, i32 0, i32 1
  %58 = ptrtoint ptr %port_enable.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %port_enable.i, align 4
  %or9.i = or i16 %59, %57
  call void @__sanitizer_cov_trace_cmp2(i16 %or9.i, i16 %57)
  %cmp.not.i = icmp eq i16 %or9.i, %57
  br i1 %cmp.not.i, label %if.then54.piix_init_pcs.exit_crit_edge, label %if.then.i

if.then54.piix_init_pcs.exit_crit_edge:           ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_init_pcs.exit

if.then.i:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i137 = call i32 @pci_write_config_word(ptr noundef %add.ptr.i135, i32 noundef 146, i16 noundef zeroext %or9.i) #9
  call void @msleep(i32 noundef 150) #9
  br label %piix_init_pcs.exit

piix_init_pcs.exit:                               ; preds = %if.then.i, %if.then54.piix_init_pcs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pcs.i) #9
  %60 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %host, align 4
  %dev.i139 = getelementptr inbounds %struct.ata_host, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i139, align 4
  %add.ptr.i140 = getelementptr i8, ptr %63, i32 -136
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %61, i32 0, i32 5
  %64 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private_data.i, align 4
  %ports.i = getelementptr %struct.ata_host, ptr %61, i32 0, i32 12
  %66 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ports.i, align 4
  %link.i = getelementptr inbounds %struct.ata_port, ptr %67, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scontrol.i) #9
  %68 = ptrtoint ptr %scontrol.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %scontrol.i, align 4, !annotation !203
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %65, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp2.i = icmp eq i32 %72, -1
  br i1 %cmp2.i, label %piix_init_pcs.exit.if.end60_crit_edge, label %for.cond.i

piix_init_pcs.exit.if.end60_crit_edge:            ; preds = %piix_init_pcs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.cond.i:                                       ; preds = %piix_init_pcs.exit
  %arrayidx1.1.i = getelementptr i32, ptr %70, i32 1
  %73 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %74)
  %cmp2.1.i = icmp eq i32 %74, -1
  br i1 %cmp2.1.i, label %for.cond.i.if.end60_crit_edge, label %for.cond.1.i

for.cond.i.if.end60_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr i32, ptr %70, i32 2
  %75 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %76)
  %cmp2.2.i = icmp eq i32 %76, -1
  br i1 %cmp2.2.i, label %for.cond.1.i.if.end60_crit_edge, label %for.cond.2.i

for.cond.1.i.if.end60_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr i32, ptr %70, i32 3
  %77 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp2.3.i = icmp eq i32 %78, -1
  br i1 %cmp2.3.i, label %for.cond.2.i.if.end60_crit_edge, label %for.cond.3.i

for.cond.2.i.if.end60_crit_edge:                  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %vendor.i.i = getelementptr i8, ptr %63, i32 -104
  %79 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %80)
  %cmp.i.i = icmp eq i16 %80, -32634
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %for.cond.3.i.if.end4.i_crit_edge

for.cond.3.i.if.end4.i_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true.i.i:                                ; preds = %for.cond.3.i
  %device.i.i = getelementptr i8, ptr %63, i32 -102
  %81 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10528, i16 %82)
  %cmp3.i.i = icmp eq i16 %82, 10528
  br i1 %cmp3.i.i, label %land.lhs.true5.i.i, label %land.lhs.true.i.i.if.end4.i_crit_edge

land.lhs.true.i.i.if.end4.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %subsystem_vendor.i.i = getelementptr i8, ptr %63, i32 -100
  %83 = ptrtoint ptr %subsystem_vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %subsystem_vendor.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5197, i16 %84)
  %cmp7.i.i = icmp eq i16 %84, 5197
  br i1 %cmp7.i.i, label %land.lhs.true9.i.i, label %land.lhs.true5.i.i.if.end4.i_crit_edge

land.lhs.true5.i.i.if.end4.i_crit_edge:           ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true5.i.i
  %subsystem_device.i.i = getelementptr i8, ptr %63, i32 -98
  %85 = ptrtoint ptr %subsystem_device.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %subsystem_device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20407, i16 %86)
  %cmp11.i.i = icmp eq i16 %86, -20407
  br i1 %cmp11.i.i, label %piix_no_sidpr.exit.i, label %land.lhs.true9.i.i.if.end4.i_crit_edge

land.lhs.true9.i.i.if.end4.i_crit_edge:           ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

piix_no_sidpr.exit.i:                             ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.33) #12
  br label %if.end60

if.end4.i:                                        ; preds = %land.lhs.true9.i.i.if.end4.i_crit_edge, %land.lhs.true5.i.i.if.end4.i_crit_edge, %land.lhs.true.i.i.if.end4.i_crit_edge, %for.cond.3.i.if.end4.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %67, i32 0, i32 3
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %flags.i, align 4
  %and.i141 = and i32 %88, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i142 = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i142, label %if.end4.i.if.end60_crit_edge, label %if.end8.i

if.end4.i.if.end60_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end8.i:                                        ; preds = %if.end4.i
  %arrayidx9.i = getelementptr i8, ptr %63, i32 1096
  %89 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp10.i = icmp eq i32 %90, 0
  br i1 %cmp10.i, label %if.end8.i.if.end60_crit_edge, label %lor.lhs.false.i145

if.end8.i.if.end60_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

lor.lhs.false.i145:                               ; preds = %if.end8.i
  %end.i143 = getelementptr i8, ptr %63, i32 1100
  %91 = ptrtoint ptr %end.i143 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %end.i143, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp13.i = icmp ne i32 %92, 0
  %sub.i144 = sub i32 %92, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i144)
  %phi.cmp.i = icmp eq i32 %sub.i144, 15
  %cond.i = select i1 %cmp13.i, i1 %phi.cmp.i, i1 false
  br i1 %cond.i, label %if.end22.i, label %lor.lhs.false.i145.if.end60_crit_edge

lor.lhs.false.i145.if.end60_crit_edge:            ; preds = %lor.lhs.false.i145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end22.i:                                       ; preds = %lor.lhs.false.i145
  %call23.i = call i32 @pcim_iomap_regions(ptr noundef %add.ptr.i140, i32 noundef 32, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.if.end60_crit_edge

if.end22.i.if.end60_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.end26.i:                                       ; preds = %if.end22.i
  %call27.i = call ptr @pcim_iomap_table(ptr noundef %add.ptr.i140) #9
  %arrayidx28.i = getelementptr ptr, ptr %call27.i, i32 5
  %93 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx28.i, align 4
  %sidpr.i = getelementptr inbounds %struct.piix_host_priv, ptr %65, i32 0, i32 2
  %95 = ptrtoint ptr %sidpr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %sidpr.i, align 4
  %call29.i = call i32 @piix_sidpr_scr_read(ptr noundef %link.i, i32 noundef 2, ptr noundef nonnull %scontrol.i) #9
  %96 = ptrtoint ptr %scontrol.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scontrol.i, align 4
  %and30.i = and i32 %97, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and30.i)
  %cmp31.not.i = icmp eq i32 %and30.i, 768
  br i1 %cmp31.not.i, label %if.end26.i.if.end40.i_crit_edge, label %if.then32.i

if.end26.i.if.end40.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then32.i:                                      ; preds = %if.end26.i
  %or.i146 = or i32 %97, 768
  %98 = ptrtoint ptr %scontrol.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or.i146, ptr %scontrol.i, align 4
  %call33.i = call i32 @piix_sidpr_scr_write(ptr noundef %link.i, i32 noundef 2, i32 noundef %or.i146) #9
  %call34.i = call i32 @piix_sidpr_scr_read(ptr noundef %link.i, i32 noundef 2, ptr noundef nonnull %scontrol.i) #9
  %99 = ptrtoint ptr %scontrol.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %scontrol.i, align 4
  %and35.i = and i32 %100, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and35.i)
  %cmp36.not.i = icmp eq i32 %and35.i, 768
  br i1 %cmp36.not.i, label %if.then32.i.if.end40.i_crit_edge, label %do.end.i147

if.then32.i.if.end40.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

do.end.i147:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %dev.i139 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i139, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.31) #12
  br label %if.end60

if.end40.i:                                       ; preds = %if.then32.i.if.end40.i_crit_edge, %if.end26.i.if.end40.i_crit_edge
  %103 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ports.i, align 4
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @piix_sidpr_sata_ops, ptr %ops.i, align 4
  %flags46.i = getelementptr inbounds %struct.ata_port, ptr %104, i32 0, i32 3
  %106 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags46.i, align 4
  %and47.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end40.i.for.inc55.i_crit_edge, label %if.then49.i

if.end40.i.for.inc55.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc55.i

if.then49.i:                                      ; preds = %if.end40.i
  %call50.i = call i32 @ata_slave_link_init(ptr noundef %104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i148 = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i148, label %if.then49.i.for.inc55.i_crit_edge, label %if.then49.i.piix_init_sidpr.exit_crit_edge

if.then49.i.piix_init_sidpr.exit_crit_edge:       ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_init_sidpr.exit

if.then49.i.for.inc55.i_crit_edge:                ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc55.i

for.inc55.i:                                      ; preds = %if.then49.i.for.inc55.i_crit_edge, %if.end40.i.for.inc55.i_crit_edge
  %arrayidx45.1.i = getelementptr %struct.ata_host, ptr %61, i32 0, i32 12, i32 1
  %108 = ptrtoint ptr %arrayidx45.1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx45.1.i, align 4
  %ops.1.i = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %ops.1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @piix_sidpr_sata_ops, ptr %ops.1.i, align 4
  %flags46.1.i = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 3
  %111 = ptrtoint ptr %flags46.1.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags46.1.i, align 4
  %and47.1.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.1.i)
  %tobool48.not.1.i = icmp eq i32 %and47.1.i, 0
  br i1 %tobool48.not.1.i, label %for.inc55.i.if.end60_crit_edge, label %if.then49.1.i

for.inc55.i.if.end60_crit_edge:                   ; preds = %for.inc55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then49.1.i:                                    ; preds = %for.inc55.i
  %call50.1.i = call i32 @ata_slave_link_init(ptr noundef %109) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.1.i)
  %tobool51.not.1.i = icmp eq i32 %call50.1.i, 0
  br i1 %tobool51.not.1.i, label %if.then49.1.i.if.end60_crit_edge, label %if.then49.1.i.piix_init_sidpr.exit_crit_edge

if.then49.1.i.piix_init_sidpr.exit_crit_edge:     ; preds = %if.then49.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_init_sidpr.exit

if.then49.1.i.if.end60_crit_edge:                 ; preds = %if.then49.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

piix_init_sidpr.exit:                             ; preds = %if.then49.1.i.piix_init_sidpr.exit_crit_edge, %if.then49.i.piix_init_sidpr.exit_crit_edge
  %retval.2.i = phi i32 [ %call50.i, %if.then49.i.piix_init_sidpr.exit_crit_edge ], [ %call50.1.i, %if.then49.1.i.piix_init_sidpr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scontrol.i) #9
  br label %cleanup

if.end60:                                         ; preds = %if.then49.1.i.if.end60_crit_edge, %for.inc55.i.if.end60_crit_edge, %do.end.i147, %if.end22.i.if.end60_crit_edge, %lor.lhs.false.i145.if.end60_crit_edge, %if.end8.i.if.end60_crit_edge, %if.end4.i.if.end60_crit_edge, %piix_no_sidpr.exit.i, %for.cond.2.i.if.end60_crit_edge, %for.cond.1.i.if.end60_crit_edge, %for.cond.i.if.end60_crit_edge, %piix_init_pcs.exit.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scontrol.i) #9
  %113 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %114, i32 0, i32 12
  %115 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ports, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops, align 4
  %cmp62 = icmp eq ptr %118, @piix_sidpr_sata_ops
  %spec.select = select i1 %cmp62, ptr @piix_sidpr_sht, ptr @piix_sht
  br label %if.end66

if.end66:                                         ; preds = %if.end60, %if.end51.if.end66_crit_edge
  %sht.0 = phi ptr [ @piix_sht, %if.end51.if.end66_crit_edge ], [ %spec.select, %if.end60 ]
  %and67 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end70_crit_edge, label %if.then69

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_intx(ptr noundef %pdev, i32 noundef 1) #9
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfg.i) #9
  %119 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 -1, ptr %cfg.i, align 2, !annotation !203
  %call21.i = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 33995, ptr noundef null) #9
  %cmp.not22.i = icmp eq ptr %call21.i, null
  br i1 %cmp.not22.i, label %if.end70.piix_check_450nx_errata.exit.thread_crit_edge, label %if.end70.while.body.i_crit_edge

if.end70.while.body.i_crit_edge:                  ; preds = %if.end70
  br label %while.body.i

if.end70.piix_check_450nx_errata.exit.thread_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_check_450nx_errata.exit.thread

while.body.i:                                     ; preds = %while.body.i.backedge, %if.end70.while.body.i_crit_edge
  %call24.i = phi ptr [ %call24.i.be, %while.body.i.backedge ], [ %call21.i, %if.end70.while.body.i_crit_edge ]
  %no_piix_dma.023.i = phi i32 [ %no_piix_dma.023.i.be, %while.body.i.backedge ], [ 0, %if.end70.while.body.i_crit_edge ]
  %call1.i = call i32 @pci_read_config_word(ptr noundef nonnull %call24.i, i32 noundef 65, ptr noundef nonnull %cfg.i) #9
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %call24.i, i32 0, i32 12
  %120 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp2.i149 = icmp eq i8 %121, 0
  br i1 %cmp2.i149, label %if.end10.i.thread, label %if.end10.i

if.end10.i:                                       ; preds = %while.body.i
  %122 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %cfg.i, align 2
  %124 = and i16 %123, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool.not.i150 = icmp ne i16 %124, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %121)
  %cmp7.i = icmp ult i8 %121, 5
  %or.cond.i151 = select i1 %tobool.not.i150, i1 %cmp7.i, i1 false
  %spec.select.i152 = select i1 %or.cond.i151, i32 2, i32 %no_piix_dma.023.i
  %call.i153 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 33995, ptr noundef nonnull %call24.i) #9
  %cmp.not.i154 = icmp eq ptr %call.i153, null
  br i1 %cmp.not.i154, label %while.end.i, label %if.end10.i.while.body.i.backedge_crit_edge

if.end10.i.while.body.i.backedge_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

while.body.i.backedge:                            ; preds = %if.end10.i.thread.while.body.i.backedge_crit_edge, %if.end10.i.while.body.i.backedge_crit_edge
  %call24.i.be = phi ptr [ %call.i153, %if.end10.i.while.body.i.backedge_crit_edge ], [ %call.i153171, %if.end10.i.thread.while.body.i.backedge_crit_edge ]
  %no_piix_dma.023.i.be = phi i32 [ %spec.select.i152, %if.end10.i.while.body.i.backedge_crit_edge ], [ 1, %if.end10.i.thread.while.body.i.backedge_crit_edge ]
  br label %while.body.i

if.end10.i.thread:                                ; preds = %while.body.i
  %call.i153171 = call ptr @pci_get_device(i32 noundef 32902, i32 noundef 33995, ptr noundef nonnull %call24.i) #9
  %cmp.not.i154172 = icmp eq ptr %call.i153171, null
  br i1 %cmp.not.i154172, label %if.end10.i.thread.if.then73_crit_edge, label %if.end10.i.thread.while.body.i.backedge_crit_edge

if.end10.i.thread.while.body.i.backedge_crit_edge: ; preds = %if.end10.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.backedge

if.end10.i.thread.if.then73_crit_edge:            ; preds = %if.end10.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

while.end.i:                                      ; preds = %if.end10.i
  %125 = zext i32 %spec.select.i152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %spec.select.i152, label %while.end.i.if.then73_crit_edge [
    i32 0, label %while.end.i.piix_check_450nx_errata.exit.thread_crit_edge
    i32 2, label %126
  ]

while.end.i.piix_check_450nx_errata.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %piix_check_450nx_errata.exit.thread

while.end.i.if.then73_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

126:                                              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then73

piix_check_450nx_errata.exit.thread:              ; preds = %while.end.i.piix_check_450nx_errata.exit.thread_crit_edge, %if.end70.piix_check_450nx_errata.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg.i) #9
  br label %if.end84

if.then73:                                        ; preds = %126, %while.end.i.if.then73_crit_edge, %if.end10.i.thread.if.then73_crit_edge
  %127 = phi ptr [ @.str.41, %126 ], [ @.str.42, %while.end.i.if.then73_crit_edge ], [ @.str.42, %if.end10.i.thread.if.then73_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.39, ptr noundef nonnull %127) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg.i) #9
  %128 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %host, align 4
  %ports74 = getelementptr inbounds %struct.ata_host, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %ports74 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ports74, align 4
  %mwdma_mask = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 16
  %132 = ptrtoint ptr %mwdma_mask to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %mwdma_mask, align 4
  %133 = load ptr, ptr %ports74, align 4
  %udma_mask = getelementptr inbounds %struct.ata_port, ptr %133, i32 0, i32 17
  %134 = ptrtoint ptr %udma_mask to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %udma_mask, align 8
  %arrayidx79 = getelementptr %struct.ata_host, ptr %129, i32 1, i32 0, i32 0, i32 0, i32 1
  %135 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx79, align 4
  %mwdma_mask80 = getelementptr inbounds %struct.ata_port, ptr %136, i32 0, i32 16
  %137 = ptrtoint ptr %mwdma_mask80 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %mwdma_mask80, align 4
  %138 = load ptr, ptr %arrayidx79, align 4
  %udma_mask83 = getelementptr inbounds %struct.ata_port, ptr %138, i32 0, i32 17
  %139 = ptrtoint ptr %udma_mask83 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %udma_mask83, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then73, %piix_check_450nx_errata.exit.thread
  %140 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %host, align 4
  %flags85 = getelementptr inbounds %struct.ata_host, ptr %141, i32 0, i32 7
  %142 = ptrtoint ptr %flags85 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags85, align 4
  %or86 = or i32 %143, 4
  store i32 %or86, ptr %flags85, align 4
  call void @pci_set_master(ptr noundef %pdev) #9
  %144 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %host, align 4
  %call87 = call i32 @ata_pci_sff_activate_host(ptr noundef %145, ptr noundef nonnull @ata_bmdma_interrupt, ptr noundef nonnull %sht.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %piix_init_sidpr.exit, %if.end46.cleanup_crit_edge, %piix_disable_ahci.exit, %if.end.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call87, %if.end84 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ %call20, %if.end6.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -5, %piix_disable_ahci.exit ], [ %call48, %if.end46.cleanup_crit_edge ], [ %retval.2.i, %piix_init_sidpr.exit ], [ -12, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %port_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @piix_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %saved_iocfg = getelementptr inbounds %struct.piix_host_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %saved_iocfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_iocfg, align 4
  %call1 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 84, i32 noundef %5) #9
  tail call void @ata_pci_remove_one(ptr noundef %pdev) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_pci_device_suspend(ptr noundef %pdev, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @ata_host_suspend(ptr noundef %1, [1 x i32] %mesg.coerce) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ata_pci_device_do_suspend(ptr noundef %pdev, [1 x i32] %mesg.coerce) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end18, label %do.body2

do.body2:                                         ; preds = %entry
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %and8 = and i32 %5, -16777217
  store i32 %and8, ptr %flags1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #9
  %call10 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #9
  tail call void @pci_restore_state(ptr noundef %pdev) #9
  %call11 = tail call i32 @pci_reenable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body2.if.then21_crit_edge, label %if.end18.thread39

do.body2.if.then21_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.end18.thread39:                                ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %call11) #12
  br label %if.end22

if.end18:                                         ; preds = %entry
  %call17 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp19 = icmp eq i32 %call17, 0
  br i1 %cmp19, label %if.end18.if.then21_crit_edge, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21

if.then21:                                        ; preds = %if.end18.if.then21_crit_edge, %do.body2.if.then21_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end18.if.end22_crit_edge, %if.end18.thread39
  %rc.037 = phi i32 [ 0, %if.then21 ], [ %call17, %if.end18.if.end22_crit_edge ], [ %call11, %if.end18.thread39 ]
  ret i32 %rc.037
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_intx(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_sff_activate_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_interrupt(i32 noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_cable_40wire(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @piix_set_piomode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %0 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pio_mode, align 16
  %sub = add i8 %1, -8
  tail call fastcc void @piix_set_timings(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %sub)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @piix_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_pata_set_dmamode(ptr noundef %ap, ptr noundef %adev, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_pata_prereset(ptr noundef %link, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx = getelementptr [2 x %struct.pci_bits], ptr @piix_enable_bits, i32 0, i32 %7
  %call = tail call i32 @pci_test_config_bits(ptr noundef %add.ptr, ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @ata_sff_prereset(ptr noundef %link, i32 noundef %deadline) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @piix_set_timings(ptr nocapture noundef readonly %ap, ptr noundef %adev, i8 noundef zeroext %pio) unnamed_addr #2 align 64 {
entry:
  %master_data = alloca i16, align 2
  %slave_data = alloca i8, align 1
  %udma_enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
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
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 64, i32 66
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %master_data) #9
  %8 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %master_data, align 2, !annotation !203
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %slave_data) #9
  %9 = ptrtoint ptr %slave_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %slave_data, align 1, !annotation !203
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #9
  %10 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %udma_enable, align 1, !annotation !203
  %conv2 = zext i8 %pio to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %pio)
  %cmp3 = icmp ugt i8 %pio, 1
  %spec.select = zext i1 %cmp3 to i32
  %call = tail call i32 @ata_pio_need_iordy(ptr noundef %adev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %or7 = or i32 %spec.select, 2
  %control.1 = select i1 %tobool5.not, i32 %spec.select, i32 %or7
  %class = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 9
  %11 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp9 = icmp eq i32 %12, 1
  %or12 = or i32 %control.1, 4
  %control.2 = select i1 %cmp9, i32 %or12, i32 %control.1
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %13 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pio_mode, align 16
  %conv14 = zext i8 %14 to i32
  %add = add nuw nsw i32 %conv2, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv14)
  %cmp16 = icmp ugt i32 %add, %conv14
  %or19 = or i32 %control.2, 8
  %control.3 = select i1 %cmp16, i32 %or19, i32 %control.2
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @piix_lock) #9
  %call29 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef %cond, ptr noundef nonnull %master_data) #9
  %15 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %master_data, align 2
  br i1 %cmp.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i16 %16, -241
  %control.3.tr = trunc i32 %control.3 to i16
  %18 = shl i16 %control.3.tr, 4
  %conv36 = or i16 %17, %18
  %19 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv36, ptr %master_data, align 2
  %call37 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 68, ptr noundef nonnull %slave_data) #9
  %20 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool39.not = icmp eq i32 %21, 0
  %cond40 = select i1 %tobool39.not, i8 -16, i8 15
  %22 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %slave_data, align 1
  %and42 = and i8 %cond40, %23
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @piix_set_timings.timings, i32 0, i32 %conv2
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %shl46 = shl i8 %25, 2
  %arrayidx49 = getelementptr [5 x [2 x i8]], ptr @piix_set_timings.timings, i32 0, i32 %conv2, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx49, align 1
  %or51 = or i8 %shl46, %27
  %cond54 = select i1 %tobool39.not, i8 0, i8 4
  %shl55 = shl i8 %or51, %cond54
  %or57 = or i8 %shl55, %and42
  store i8 %or57, ptr %slave_data, align 1
  %28 = ptrtoint ptr %master_data to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %master_data, align 2
  %30 = or i16 %29, 16384
  store i16 %30, ptr %master_data, align 2
  %call83.c127 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %30) #9
  %31 = ptrtoint ptr %slave_data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %slave_data, align 1
  %call86 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 68, i8 noundef zeroext %32) #9
  br label %if.end87

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %33 = and i16 %16, -29456
  %34 = trunc i32 %control.3 to i16
  %conv64 = or i16 %33, %34
  %arrayidx66 = getelementptr [5 x [2 x i8]], ptr @piix_set_timings.timings, i32 0, i32 %conv2
  %35 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66, align 1
  %conv68 = zext i8 %36 to i16
  %shl69 = shl i16 %conv68, 12
  %arrayidx72 = getelementptr [5 x [2 x i8]], ptr @piix_set_timings.timings, i32 0, i32 %conv2, i32 1
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %38 to i16
  %shl74 = shl nuw i16 %conv73, 8
  %or75 = or i16 %conv64, %shl69
  %or77 = or i16 %or75, %shl74
  %39 = or i16 %or77, 16384
  %40 = ptrtoint ptr %master_data to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %master_data, align 2
  %call83.c = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef %cond, i16 noundef zeroext %39) #9
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then31
  %udma_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 17
  %41 = ptrtoint ptr %udma_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %udma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool88.not = icmp eq i32 %42, 0
  br i1 %tobool88.not, label %if.end87.if.end99_crit_edge, label %if.then89

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call90 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #9
  %43 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_no, align 4
  %mul = shl i32 %44, 1
  %45 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %devno, align 4
  %add93 = add i32 %mul, %46
  %shl94 = shl nuw i32 1, %add93
  %47 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %udma_enable, align 1
  %49 = trunc i32 %shl94 to i8
  %50 = xor i8 %49, -1
  %conv97 = and i8 %48, %50
  store i8 %conv97, ptr %udma_enable, align 1
  %call98 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %conv97) #9
  br label %if.end99

if.end99:                                         ; preds = %if.then89, %if.end87.if.end99_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @piix_lock, i32 noundef %call26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %slave_data) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %master_data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pio_need_iordy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_pata_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev, i32 noundef %isich) unnamed_addr #2 align 64 {
entry:
  %udma_enable = alloca i8, align 1
  %udma_timing = alloca i16, align 2
  %ideconf = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
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
  %dma_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 12
  %4 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_mode, align 1
  %devno = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 1
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %8 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no, align 4
  %mul = shl i32 %9, 1
  %add = add i32 %mul, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %udma_enable) #9
  %10 = ptrtoint ptr %udma_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %udma_enable, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %5)
  %cmp = icmp ugt i8 %5, 63
  br i1 %cmp, label %if.then, label %if.else52

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %udma_timing) #9
  %11 = ptrtoint ptr %udma_timing to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -1, ptr %udma_timing, align 2, !annotation !203
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ideconf) #9
  %12 = ptrtoint ptr %ideconf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %ideconf, align 2, !annotation !203
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @piix_lock) #9
  %call11 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 72, ptr noundef nonnull %udma_enable) #9
  %and = and i32 %conv, 1
  %sub12 = sub nuw nsw i32 2, %and
  %13 = call i32 @llvm.umin.i32(i32 %sub12, i32 %sub)
  %shl = shl nuw i32 1, %add
  %14 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %udma_enable, align 1
  %16 = trunc i32 %shl to i8
  %conv25 = or i8 %15, %16
  store i8 %conv25, ptr %udma_enable, align 1
  %call26 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 74, ptr noundef nonnull %udma_timing) #9
  %mul27 = shl i32 %add, 2
  %shl28 = shl i32 3, %mul27
  %17 = ptrtoint ptr %udma_timing to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %udma_timing, align 2
  %19 = trunc i32 %shl28 to i16
  %20 = xor i16 %19, -1
  %conv31 = and i16 %18, %20
  %shl33 = shl i32 %13, %mul27
  %21 = trunc i32 %shl33 to i16
  %conv36 = or i16 %conv31, %21
  store i16 %conv36, ptr %udma_timing, align 2
  %call37 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 74, i16 noundef zeroext %conv36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %isich)
  %tobool.not = icmp eq i32 %isich, 0
  br i1 %tobool.not, label %if.then.if.end50_crit_edge, label %if.then38

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then38:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp16 = icmp eq i32 %sub, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp19 = icmp ugt i32 %sub, 2
  %. = zext i1 %cmp19 to i32
  %u_clock.0 = select i1 %cmp16, i32 4096, i32 %.
  %call39 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 84, ptr noundef nonnull %ideconf) #9
  %shl40 = shl i32 4097, %add
  %22 = ptrtoint ptr %ideconf to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ideconf, align 2
  %24 = trunc i32 %shl40 to i16
  %25 = xor i16 %24, -1
  %conv44 = and i16 %23, %25
  %shl45 = shl i32 %u_clock.0, %add
  %26 = trunc i32 %shl45 to i16
  %conv48 = or i16 %conv44, %26
  store i16 %conv48, ptr %ideconf, align 2
  %call49 = call i32 @pci_write_config_word(ptr noundef %add.ptr, i32 noundef 84, i16 noundef zeroext %conv48) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then38, %if.then.if.end50_crit_edge
  %27 = ptrtoint ptr %udma_enable to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %udma_enable, align 1
  %call51 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 72, i8 noundef zeroext %28) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @piix_lock, i32 noundef %call8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ideconf) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %udma_timing) #9
  br label %if.end57

if.else52:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub54 = add nsw i32 %conv, -32
  %arrayidx = getelementptr [3 x i32], ptr @__const.do_pata_set_dmamode.needed_pio, i32 0, i32 %sub54
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %31 = trunc i32 %30 to i8
  %conv56 = add i8 %31, -8
  tail call fastcc void @piix_set_timings(ptr noundef %ap, ptr noundef %adev, i8 noundef zeroext %conv56)
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.end50
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %udma_enable) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_test_config_bits(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_prereset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @ich_pata_cable_detect(ptr nocapture noundef readonly %ap) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %device3 = getelementptr i8, ptr %3, i32 -102
  %6 = ptrtoint ptr %device3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device3, align 2
  %subsystem_vendor = getelementptr i8, ptr %3, i32 -100
  %subsystem_device = getelementptr i8, ptr %3, i32 -98
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %8 = phi i16 [ 10207, %entry ], [ %18, %if.end.while.body_crit_edge ]
  %lap.034 = phi ptr [ @ich_laptop, %entry ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %7)
  %cmp = icmp eq i16 %8, %7
  br i1 %cmp, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %subvendor = getelementptr inbounds %struct.ich_laptop, ptr %lap.034, i32 0, i32 1
  %9 = ptrtoint ptr %subvendor to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subvendor, align 2
  %11 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp8 = icmp eq i16 %10, %12
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %subdevice = getelementptr inbounds %struct.ich_laptop, ptr %lap.034, i32 0, i32 2
  %13 = ptrtoint ptr %subdevice to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %subdevice, align 2
  %15 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_device, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp13 = icmp eq i16 %14, %16
  br i1 %cmp13, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.ich_laptop, ptr %lap.034, i32 1
  %17 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %incdec.ptr, align 2
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %while.end, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %19 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp15 = icmp eq i32 %20, 0
  %saved_iocfg = getelementptr inbounds %struct.piix_host_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %saved_iocfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved_iocfg, align 4
  %conv18 = select i1 %cmp15, i32 48, i32 192
  %and = and i32 %conv18, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  %. = select i1 %cmp19, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %while.end, %land.lhs.true10.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %while.end ], [ 3, %land.lhs.true10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ich_set_dmamode(ptr nocapture noundef readonly %ap, ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @do_pata_set_dmamode(ptr noundef %ap, ptr noundef %adev, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %2 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pflags, align 16
  %or = or i32 %3, 3145728
  store i32 %or, ptr %pflags, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @piix_irq_check(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %0 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bmdma_addr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !209

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %bmdma_status = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %bmdma_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmdma_status, align 4
  %call = tail call zeroext i8 %5(ptr noundef %ap) #9
  %conv = zext i8 %call to i32
  tail call fastcc void @trace_ata_bmdma_status(ptr noundef %ap, i32 noundef %conv)
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool5, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_bmdma_status(ptr noundef %ap, i32 noundef %host_stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 1), ptr blockaddress(@trace_ata_bmdma_status, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !210

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !208

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !211
  %call42 = tail call i32 @__traceiter_ata_bmdma_status(ptr noundef null, ptr noundef %ap, i32 noundef %host_stat) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !212
  %13 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !208

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !213
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_bmdma_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_ata_bmdma_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 437, ptr noundef nonnull @.str.12) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !214
  %31 = tail call i32 @llvm.read_register.i32(metadata !193) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @piix_vmw_bmdma_status(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @ata_bmdma_status(ptr noundef %ap) #9
  %0 = and i8 %call, -3
  ret i8 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_bmdma_status(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_sidpr_scr_read(ptr nocapture noundef readonly %link, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp ugt i32 %reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %8 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp.i, align 4
  %add.i = add i32 %mul.i, %9
  %shl.i = shl i32 %add.i, 8
  %arrayidx.i = getelementptr [3 x i32], ptr @piix_sidx_map, i32 0, i32 %reg
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %shl.i, %11
  %sidpr.i = getelementptr inbounds %struct.piix_host_priv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %sidpr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sidpr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #9, !srcloc !207
  %15 = ptrtoint ptr %sidpr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sidpr.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !204
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_sidpr_scr_write(ptr nocapture noundef readonly %link, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp ugt i32 %reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 1
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %8 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmp.i, align 4
  %add.i = add i32 %mul.i, %9
  %shl.i = shl i32 %add.i, 8
  %arrayidx.i = getelementptr [3 x i32], ptr @piix_sidx_map, i32 0, i32 %reg
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %shl.i, %11
  %sidpr.i = getelementptr inbounds %struct.piix_host_priv, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %sidpr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sidpr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #9, !srcloc !207
  %15 = ptrtoint ptr %sidpr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sidpr.i, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %val) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #9, !srcloc !207
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_slave_link_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @piix_sidpr_set_lpm(ptr noundef %link, i32 noundef %policy, i32 noundef %hints) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sata_link_scr_lpm(ptr noundef %link, i32 noundef %policy, i1 noundef zeroext false) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_scr_lpm(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_device_do_suspend(ptr noundef, [1 x i32]) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_reenable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !113, !114, !115, !117, !118, !119, !120, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !139, !140, !141, !143, !144, !145, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192}
!llvm.named.register.sp = !{!193}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__UNIQUE_ID_author358, !1, !"__UNIQUE_ID_author358", i1 false, i1 false}
!1 = !{!"../drivers/ata/ata_piix.c", i32 450, i32 1}
!2 = !{ptr @__UNIQUE_ID_description359, !3, !"__UNIQUE_ID_description359", i1 false, i1 false}
!3 = !{!"../drivers/ata/ata_piix.c", i32 451, i32 1}
!4 = !{ptr @__UNIQUE_ID_file360, !5, !"__UNIQUE_ID_file360", i1 false, i1 false}
!5 = !{!"../drivers/ata/ata_piix.c", i32 452, i32 1}
!6 = !{ptr @__UNIQUE_ID_license361, !5, !"__UNIQUE_ID_license361", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version362, !8, !"__UNIQUE_ID_version362", i1 false, i1 false}
!8 = !{!"../drivers/ata/ata_piix.c", i32 454, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_prefer_ms_hyperv, !14, !"__param_prefer_ms_hyperv", i1 false, i1 false}
!14 = !{!"../drivers/ata/ata_piix.c", i32 1576, i32 1}
!15 = !{ptr @__UNIQUE_ID_prefer_ms_hypervtype365, !14, !"__UNIQUE_ID_prefer_ms_hypervtype365", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_prefer_ms_hyperv366, !17, !"__UNIQUE_ID_prefer_ms_hyperv366", i1 false, i1 false}
!17 = !{!"../drivers/ata/ata_piix.c", i32 1577, i32 1}
!18 = !{ptr @__initcall__kmod_ata_piix__367_1791_piix_init6, !19, !"__initcall__kmod_ata_piix__367_1791_piix_init6", i1 false, i1 false}
!19 = !{!"../drivers/ata/ata_piix.c", i32 1791, i32 1}
!20 = !{ptr @__exitcall_piix_exit, !21, !"__exitcall_piix_exit", i1 false, i1 false}
!21 = !{!"../drivers/ata/ata_piix.c", i32 1792, i32 1}
!22 = !{ptr @__param_str_prefer_ms_hyperv, !14, !"__param_str_prefer_ms_hyperv", i1 false, i1 false}
!23 = !{ptr @prefer_ms_hyperv, !24, !"prefer_ms_hyperv", i1 false, i1 false}
!24 = !{!"../drivers/ata/ata_piix.c", i32 1575, i32 12}
!25 = !{ptr @piix_pci_driver, !26, !"piix_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/ata/ata_piix.c", i32 1762, i32 26}
!27 = !{ptr @piix_pci_tbl, !28, !"piix_pci_tbl", i1 false, i1 false}
!28 = !{!"../drivers/ata/ata_piix.c", i32 155, i32 35}
!29 = distinct !{null, !30, !"__print_once", i1 false, i1 false}
!30 = !{!"../drivers/ata/ata_piix.c", i32 1657, i32 2}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/ata/ata_piix.c", i32 1667, i32 3}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @piix_init_one._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @piix_init_one._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @piix_sht, !40, !"piix_sht", i1 false, i1 false}
!40 = !{!"../drivers/ata/ata_piix.c", i32 1065, i32 34}
!41 = distinct !{null, !42, !"in_module_init", i1 false, i1 false}
!42 = !{!"../drivers/ata/ata_piix.c", i32 153, i32 21}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/ata_piix.c", i32 1544, i32 13}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/ata/ata_piix.c", i32 1553, i32 13}
!47 = distinct !{null, !48, !"broken_systems", i1 false, i1 false}
!48 = !{!"../drivers/ata/ata_piix.c", i32 1542, i32 36}
!49 = !{ptr @piix_port_info, !50, !"piix_port_info", i1 false, i1 false}
!50 = !{!"../drivers/ata/ata_piix.c", i32 1114, i32 29}
!51 = !{ptr @piix_pata_ops, !52, !"piix_pata_ops", i1 false, i1 false}
!52 = !{!"../drivers/ata/ata_piix.c", i32 1075, i32 35}
!53 = !{ptr @piix_set_timings.timings, !54, !"timings", i1 false, i1 false}
!54 = !{!"../drivers/ata/ata_piix.c", i32 569, i32 5}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/ata_piix.c", i32 548, i32 8}
!57 = !{ptr @piix_lock, !56, !"piix_lock", i1 false, i1 false}
!58 = !{ptr @piix_enable_bits, !59, !"piix_enable_bits", i1 false, i1 false}
!59 = !{!"../drivers/ata/ata_piix.c", i32 445, i32 30}
!60 = !{ptr @ich_pata_ops, !61, !"ich_pata_ops", i1 false, i1 false}
!61 = !{!"../drivers/ata/ata_piix.c", i32 1088, i32 35}
!62 = !{ptr @ich_laptop, !63, !"ich_laptop", i1 false, i1 false}
!63 = !{!"../drivers/ata/ata_piix.c", i32 466, i32 32}
!64 = !{ptr @piix_sata_ops, !65, !"piix_sata_ops", i1 false, i1 false}
!65 = !{!"../drivers/ata/ata_piix.c", i32 1069, i32 35}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/trace/events/libata.h", i32 417, i32 1}
!68 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!70 = !{ptr @.str.12, !67, !"<string literal>", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!73 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @piix_vmw_ops, !75, !"piix_vmw_ops", i1 false, i1 false}
!75 = !{!"../drivers/ata/ata_piix.c", i32 1083, i32 35}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/ata/ata_piix.c", i32 1377, i32 31}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/ata/ata_piix.c", i32 1381, i32 31}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/ata/ata_piix.c", i32 1388, i32 31}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/ata/ata_piix.c", i32 1392, i32 31}
!84 = !{ptr @.str.18, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/ata_piix.c", i32 1398, i32 2}
!86 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @piix_init_sata_map._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @piix_init_sata_map._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/ata_piix.c", i32 1401, i32 3}
!91 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @piix_init_sata_map._entry.20, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @piix_init_sata_map._entry_ptr.23, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @piix_map_db_table, !95, !"piix_map_db_table", i1 false, i1 false}
!95 = !{!"../drivers/ata/ata_piix.c", i32 432, i32 34}
!96 = !{ptr @ich5_map_db, !97, !"ich5_map_db", i1 false, i1 false}
!97 = !{!"../drivers/ata/ata_piix.c", i32 339, i32 33}
!98 = !{ptr @ich6_map_db, !99, !"ich6_map_db", i1 false, i1 false}
!99 = !{!"../drivers/ata/ata_piix.c", i32 355, i32 33}
!100 = !{ptr @ich6m_map_db, !101, !"ich6m_map_db", i1 false, i1 false}
!101 = !{!"../drivers/ata/ata_piix.c", i32 367, i32 33}
!102 = !{ptr @ich8_map_db, !103, !"ich8_map_db", i1 false, i1 false}
!103 = !{!"../drivers/ata/ata_piix.c", i32 384, i32 33}
!104 = !{ptr @ich8_2port_map_db, !105, !"ich8_2port_map_db", i1 false, i1 false}
!105 = !{!"../drivers/ata/ata_piix.c", i32 396, i32 33}
!106 = !{ptr @ich8m_apple_map_db, !107, !"ich8m_apple_map_db", i1 false, i1 false}
!107 = !{!"../drivers/ata/ata_piix.c", i32 408, i32 33}
!108 = !{ptr @tolapai_map_db, !109, !"tolapai_map_db", i1 false, i1 false}
!109 = !{!"../drivers/ata/ata_piix.c", i32 420, i32 33}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/ata/ata_piix.c", i32 1484, i32 4}
!112 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @piix_init_sidpr._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @piix_init_sidpr._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.33, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/ata/ata_piix.c", i32 1431, i32 3}
!117 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @piix_no_sidpr._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @piix_no_sidpr._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @piix_sidx_map, !122, !"piix_sidx_map", i1 false, i1 false}
!122 = !{!"../drivers/ata/ata_piix.c", i32 771, i32 18}
!123 = !{ptr @piix_sidpr_sata_ops, !124, !"piix_sidpr_sata_ops", i1 false, i1 false}
!124 = !{!"../drivers/ata/ata_piix.c", i32 1106, i32 35}
!125 = !{ptr @piix_sidpr_sht, !126, !"piix_sidpr_sht", i1 false, i1 false}
!126 = !{!"../drivers/ata/ata_piix.c", i32 1101, i32 34}
!127 = !{ptr @piix_sidpr_shost_groups, !128, !"piix_sidpr_shost_groups", i1 false, i1 false}
!128 = !{!"../drivers/ata/ata_piix.c", i32 1099, i32 1}
!129 = !{ptr @piix_sidpr_shost_group, !128, !"piix_sidpr_shost_group", i1 false, i1 false}
!130 = !{ptr @piix_sidpr_shost_attrs, !131, !"piix_sidpr_shost_attrs", i1 false, i1 false}
!131 = !{!"../drivers/ata/ata_piix.c", i32 1094, i32 26}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ata/ata_piix.c", i32 1514, i32 13}
!134 = distinct !{null, !135, !"sysids", i1 false, i1 false}
!135 = !{!"../drivers/ata/ata_piix.c", i32 1508, i32 36}
!136 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/ata/ata_piix.c", i32 1534, i32 3}
!138 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @piix_iocfg_bit18_quirk._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @piix_iocfg_bit18_quirk._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/ata/ata_piix.c", i32 1335, i32 3}
!143 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @piix_check_450nx_errata._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @piix_check_450nx_errata._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/ata/ata_piix.c", i32 836, i32 13}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/ata/ata_piix.c", i32 856, i32 13}
!152 = distinct !{null, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/ata/ata_piix.c", i32 870, i32 13}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/ata/ata_piix.c", i32 877, i32 13}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ata/ata_piix.c", i32 884, i32 13}
!158 = distinct !{null, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/ata/ata_piix.c", i32 891, i32 13}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/ata/ata_piix.c", i32 898, i32 13}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/ata/ata_piix.c", i32 905, i32 13}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/ata/ata_piix.c", i32 912, i32 13}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/ata/ata_piix.c", i32 926, i32 13}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/ata/ata_piix.c", i32 933, i32 13}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/ata/ata_piix.c", i32 940, i32 13}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/ata/ata_piix.c", i32 947, i32 13}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/ata/ata_piix.c", i32 954, i32 13}
!176 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/ata/ata_piix.c", i32 961, i32 13}
!178 = distinct !{null, !179, !"sysids", i1 false, i1 false}
!179 = !{!"../drivers/ata/ata_piix.c", i32 834, i32 36}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/ata/ata_piix.c", i32 980, i32 32}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/ata/ata_piix.c", i32 981, i32 34}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/ata/ata_piix.c", i32 985, i32 32}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/ata/ata_piix.c", i32 986, i32 35}
!188 = !{ptr @.str.62, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/ata/ata_piix.c", i32 1047, i32 4}
!190 = !{ptr @.str.63, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @piix_pci_device_resume._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @piix_pci_device_resume._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{!"sp"}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"auto-init"}
!204 = !{i64 5029434}
!205 = !{i64 2152569783}
!206 = !{i64 2152571138}
!207 = !{i64 5029016}
!208 = !{!"branch_weights", i32 2000, i32 1}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{i64 2148740714, i64 2148740719, i64 2148740732, i64 2148740776, i64 2148740810, i64 2148740831}
!211 = !{i64 2156033089}
!212 = !{i64 2156033310}
!213 = !{i64 2149413927}
!214 = !{i64 2149414963}
