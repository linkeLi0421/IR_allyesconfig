; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_nv.c_pt.bc'
source_filename = "../drivers/ata/sata_nv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.nv_pi_priv = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.nv_adma_port_priv = type { ptr, i32, ptr, i32, ptr, ptr, ptr, i64, i8, i32 }
%struct.nv_swncq_port_priv = type { ptr, i32, ptr, ptr, ptr, i32, i32, %struct.defer_queue, i32, i32, i32, i32 }
%struct.defer_queue = type { i32, i32, i32, [32 x i32] }
%struct.nv_adma_cpb = type { i8, i8, i8, i8, i8, i8, i16, [12 x i16], [5 x %struct.nv_adma_prd], i64, i64 }
%struct.nv_adma_prd = type { i64, i32, i8, i8, i16 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ata_bmdma_prd = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author359 = internal constant [22 x i8] c"sata_nv.author=NVIDIA\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [71 x i8] c"sata_nv.description=low-level driver for NVIDIA nForce SATA controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [33 x i8] c"sata_nv.file=drivers/ata/sata_nv\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [20 x i8] c"sata_nv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version363 = internal constant [20 x i8] c"sata_nv.version=3.5\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sata_nv\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.5\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__initcall__kmod_sata_nv__372_2465_nv_pci_driver_init6 = internal global ptr @nv_pci_driver_init, section ".initcall6.init", align 4
@nv_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @nv_pci_tbl, ptr @nv_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @nv_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_nv_pci_driver_exit = internal global ptr @nv_pci_driver_exit, section ".exitcall.exit", align 4
@__param_str_adma = internal constant [13 x i8] c"sata_nv.adma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@adma_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_adma = internal constant %struct.kernel_param { ptr @__param_str_adma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @adma_enabled } }, section "__param", align 4
@__UNIQUE_ID_admatype373 = internal constant [27 x i8] c"sata_nv.parmtype=adma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_adma374 = internal constant [54 x i8] c"sata_nv.parm=adma:Enable use of ADMA (Default: false)\00", section ".modinfo", align 1
@__param_str_swncq = internal constant [14 x i8] c"sata_nv.swncq\00", align 1
@swncq_enabled = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_swncq = internal constant %struct.kernel_param { ptr @__param_str_swncq, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @swncq_enabled } }, section "__param", align 4
@__UNIQUE_ID_swncqtype375 = internal constant [28 x i8] c"sata_nv.parmtype=swncq:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_swncq376 = internal constant [55 x i8] c"sata_nv.parm=swncq:Enable use of SWNCQ (Default: true)\00", section ".modinfo", align 1
@__param_str_msi = internal constant [12 x i8] c"sata_nv.msi\00", align 1
@msi_enabled = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_msi = internal constant %struct.kernel_param { ptr @__param_str_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @msi_enabled } }, section "__param", align 4
@__UNIQUE_ID_msitype377 = internal constant [26 x i8] c"sata_nv.parmtype=msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_msi378 = internal constant [52 x i8] c"sata_nv.parm=msi:Enable use of MSI (Default: false)\00", section ".modinfo", align 1
@nv_pci_tbl = internal constant { [15 x %struct.pci_device_id], [96 x i8] } { [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 142, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4318, i32 227, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4318, i32 238, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4318, i32 84, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4318, i32 85, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4318, i32 54, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4318, i32 62, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4318, i32 614, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 615, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 894, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 895, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4318, i32 999, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1014, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4318, i32 1015, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@nv_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@nv_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2332, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Using ADMA mode\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nv_init_one\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/ata/sata_nv.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv_init_one._entry_ptr = internal global ptr @nv_init_one._entry, section ".printk_index", align 4
@nv_init_one._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2335, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Using SWNCQ mode\0A\00", [46 x i8] zeroinitializer }, align 32
@nv_init_one._entry_ptr.10 = internal global ptr @nv_init_one._entry.8, section ".printk_index", align 4
@nv_port_info = internal constant { [6 x %struct.ata_port_info], [56 x i8] } { [6 x %struct.ata_port_info] [%struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @nv_generic_ops, ptr @.compoundliteral }, %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @nv_nf2_ops, ptr @.compoundliteral.14 }, %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @nv_ck804_ops, ptr @.compoundliteral.15 }, %struct.ata_port_info { i32 1026, i32 0, i32 31, i32 7, i32 127, ptr @nv_adma_ops, ptr @.compoundliteral.16 }, %struct.ata_port_info { i32 2, i32 0, i32 31, i32 7, i32 127, ptr @nv_generic_ops, ptr @.compoundliteral.17 }, %struct.ata_port_info { i32 1026, i32 0, i32 31, i32 7, i32 127, ptr @nv_swncq_ops, ptr @.compoundliteral.18 }], [56 x i8] zeroinitializer }, align 32
@nv_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 2379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Using MSI\0A\00", [21 x i8] zeroinitializer }, align 32
@nv_init_one._entry_ptr.13 = internal global ptr @nv_init_one._entry.11, section ".printk_index", align 4
@nv_generic_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr inttoptr (i32 -2 to ptr), ptr null, ptr null, ptr null, ptr @nv_scr_read, ptr @nv_scr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, [44 x i8] zeroinitializer }, align 32
@nv_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_generic_interrupt, ptr @nv_sht }, [24 x i8] zeroinitializer }, align 32
@nv_nf2_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_nf2_freeze, ptr @nv_nf2_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_generic_ops }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_nf2_interrupt, ptr @nv_sht }, [24 x i8] zeroinitializer }, align 32
@nv_ck804_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_ck804_freeze, ptr @nv_ck804_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_ck804_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_generic_ops }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_ck804_interrupt, ptr @nv_sht }, [24 x i8] zeroinitializer }, align 32
@nv_adma_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @ata_std_qc_defer, ptr @nv_adma_check_atapi_dma, ptr @nv_adma_qc_prep, ptr @nv_adma_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_freeze, ptr @nv_adma_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_error_handler, ptr null, ptr @nv_adma_post_internal_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_port_suspend, ptr @nv_adma_port_resume, ptr @nv_adma_port_start, ptr @nv_adma_port_stop, ptr @nv_adma_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_tf_read, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_irq_clear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_ck804_ops }, [44 x i8] zeroinitializer }, align 32
@nv_adma_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_adma_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 32, i32 -1, i16 61, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_adma_interrupt, ptr @nv_adma_sht }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_generic_interrupt, ptr @nv_sht }, [24 x i8] zeroinitializer }, align 32
@nv_swncq_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr @ata_std_qc_defer, ptr null, ptr @nv_swncq_qc_prep, ptr @nv_swncq_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_mcp55_freeze, ptr @nv_mcp55_thaw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_swncq_error_handler, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_swncq_port_suspend, ptr @nv_swncq_port_resume, ptr @nv_swncq_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_generic_ops }, [44 x i8] zeroinitializer }, align 32
@nv_swncq_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv_swncq_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 31, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 65535, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_ncq_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.nv_pi_priv, [24 x i8] } { %struct.nv_pi_priv { ptr @nv_swncq_interrupt, ptr @nv_swncq_sht }, [24 x i8] zeroinitializer }, align 32
@ata_bmdma_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@nv_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016ata%u.%02u: nv: skipping hardreset on occupied port\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv_hardreset\00", [19 x i8] zeroinitializer }, align 32
@nv_hardreset._entry_ptr = internal global ptr @nv_hardreset._entry, section ".printk_index", align 4
@nv_hardreset._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016ata%u: nv: skipping hardreset on occupied port\0A\00", [46 x i8] zeroinitializer }, align 32
@nv_hardreset._entry_ptr.23 = internal global ptr @nv_hardreset._entry.21, section ".printk_index", align 4
@nv_hardreset._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.5, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014ata%u.%02u: failed to resume link (errno=%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@nv_hardreset._entry_ptr.26 = internal global ptr @nv_hardreset._entry.24, section ".printk_index", align 4
@nv_hardreset._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.5, i32 1544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ata%u: failed to resume link (errno=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@nv_hardreset._entry_ptr.29 = internal global ptr @nv_hardreset._entry.27, section ".printk_index", align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@nv_adma_register_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014ata%u: timeout waiting for ADMA IDLE, stat=0x%hx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nv_adma_register_mode\00", [42 x i8] zeroinitializer }, align 32
@nv_adma_register_mode._entry_ptr = internal global ptr @nv_adma_register_mode._entry, section ".printk_index", align 4
@nv_adma_register_mode._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014ata%u: timeout waiting for ADMA LEGACY, stat=0x%hx\0A\00", [42 x i8] zeroinitializer }, align 32
@nv_adma_register_mode._entry_ptr.34 = internal global ptr @nv_adma_register_mode._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nv_adma_qc_issue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ata%u.%02u: NCQ w/ RESULT_TF not allowed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nv_adma_qc_issue\00", [47 x i8] zeroinitializer }, align 32
@nv_adma_qc_issue._entry_ptr = internal global ptr @nv_adma_qc_issue._entry, section ".printk_index", align 4
@nv_adma_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014ata%u: timeout waiting for ADMA LEGACY clear and IDLE, stat=0x%hx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nv_adma_mode\00", [19 x i8] zeroinitializer }, align 32
@nv_adma_mode._entry_ptr = internal global ptr @nv_adma_mode._entry, section ".printk_index", align 4
@nv_adma_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 1646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"\013ata%u: EH in ADMA mode, notifier 0x%X notifier_error 0x%X gen_ctl 0x%X status 0x%X next cpb count 0x%X next cpb idx 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nv_adma_error_handler\00", [42 x i8] zeroinitializer }, align 32
@nv_adma_error_handler._entry_ptr = internal global ptr @nv_adma_error_handler._entry, section ".printk_index", align 4
@nv_adma_error_handler._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 1654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ata%u: CPB %d: ctl_flags 0x%x, resp_flags 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@nv_adma_error_handler._entry_ptr.43 = internal global ptr @nv_adma_error_handler._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADMA status 0x%08x: \00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hotplug\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hot unplug\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SError\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@nv_adma_check_cpb.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.5, ptr @.str.51, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv_adma_check_cpb\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ata%u: CPB %d, flags=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CPB resp_flags 0x%x: \00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ATA error\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CMD error\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPB error\00", [22 x i8] zeroinitializer }, align 32
@ata_ncq_sdev_groups = external dso_local global [0 x ptr], align 4
@nv_adma_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 748, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016ata%u: DMA mask 0x%llX, segment boundary 0x%lX, hw segs %hu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nv_adma_slave_config\00", [43 x i8] zeroinitializer }, align 32
@nv_adma_slave_config._entry_ptr = internal global ptr @nv_adma_slave_config._entry, section ".printk_index", align 4
@__tracepoint_ata_tf_load = external dso_local global %struct.tracepoint, align 4
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/libata.h\00", [34 x i8] zeroinitializer }, align 32
@trace_ata_tf_load.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ata_exec_command = external dso_local global %struct.tracepoint, align 4
@trace_ata_exec_command.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nv_swncq_ncq_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.5, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013ata%u: EH in SWNCQ mode,QC:qc_active 0x%llX sactive 0x%X\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nv_swncq_ncq_stop\00", [46 x i8] zeroinitializer }, align 32
@nv_swncq_ncq_stop._entry_ptr = internal global ptr @nv_swncq_ncq_stop._entry, section ".printk_index", align 4
@nv_swncq_ncq_stop._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.5, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"\013ata%u: SWNCQ:qc_active 0x%X defer_bits 0x%X last_issue_tag 0x%x\0A  dhfis 0x%X dmafis 0x%X sdbfis 0x%X\0A\00", [56 x i8] zeroinitializer }, align 32
@nv_swncq_ncq_stop._entry_ptr.65 = internal global ptr @nv_swncq_ncq_stop._entry.63, section ".printk_index", align 4
@nv_swncq_ncq_stop._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.5, i32 1764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ata%u: ATA_REG 0x%X ERR_REG 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@nv_swncq_ncq_stop._entry_ptr.68 = internal global ptr @nv_swncq_ncq_stop._entry.66, section ".printk_index", align 4
@nv_swncq_ncq_stop._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.5, i32 1769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ata%u: tag : dhfis dmafis sdbfis sactive\0A\00", [52 x i8] zeroinitializer }, align 32
@nv_swncq_ncq_stop._entry_ptr.71 = internal global ptr @nv_swncq_ncq_stop._entry.69, section ".printk_index", align 4
@nv_swncq_ncq_stop._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.62, ptr @.str.5, i32 1785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ata%u: tag 0x%x: %01x %01x %01x %01x %s\0A\00", [53 x i8] zeroinitializer }, align 32
@nv_swncq_ncq_stop._entry_ptr.74 = internal global ptr @nv_swncq_ncq_stop._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error! tag doesn't exit\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Ata error. fis:0x%X\00", [44 x i8] zeroinitializer }, align 32
@nv_swncq_host_interrupt.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.5, ptr @.str.79, i8 2, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nv_swncq_host_interrupt\00", [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"ata%u: SWNCQ: qc_active 0x%X dhfis 0x%X dmafis 0x%X sactive 0x%X\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"illegal fis transaction\00", [40 x i8] zeroinitializer }, align 32
@nv_swncq_host_interrupt.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.78, ptr @.str.5, ptr @.str.81, i8 2, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ata%u: send next command\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fis:0x%x\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hot plug\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BMDMA stat 0x%x\00", [16 x i8] zeroinitializer }, align 32
@nv_swncq_sdbfis.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.5, ptr @.str.86, i8 2, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv_swncq_sdbfis\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ata%u: over\0A\00", [19 x i8] zeroinitializer }, align 32
@nv_swncq_sdbfis.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.85, ptr @.str.5, ptr @.str.87, i8 2, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"ata%u: QC: qc_active 0x%llx,SWNCQ:qc_active 0x%X defer_bits %X dhfis 0x%X dmafis 0x%X last_issue_tag %x\0A\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_ata_bmdma_status = external dso_local global %struct.tracepoint, align 4
@trace_ata_bmdma_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nv_swncq_dmafis.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.88, ptr @.str.5, ptr @.str.89, i8 2, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nv_swncq_dmafis\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ata%u: dma setup tag 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Maxtor\00", [25 x i8] zeroinitializer }, align 32
@nv_swncq_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\015ata%u.%02u: Disabling SWNCQ mode (depth %x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nv_swncq_slave_config\00", [42 x i8] zeroinitializer }, align 32
@nv_swncq_slave_config._entry_ptr = internal global ptr @nv_swncq_slave_config._entry, section ".printk_index", align 4
@nv_swncq_host_init.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.94, i8 1, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nv_swncq_host_init\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HOST_CTL:0x%X\0A\00", [17 x i8] zeroinitializer }, align 32
@nv_swncq_host_init.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.95, i8 1, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HOST_ENABLE:0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.97 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 590, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [14 x i8] c"nv_pci_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 363, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"adma_enabled\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 592, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"swncq_enabled\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 593, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"msi_enabled\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 594, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"nv_pci_tbl\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 344, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"nv_init_one.__print_once\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2332, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2335, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"nv_port_info\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 529, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2379, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"nv_generic_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 458, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"nv_sht\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 374, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [11 x i8] c"nv_nf2_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 466, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [13 x i8] c"nv_ck804_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 472, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"nv_adma_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 479, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [12 x i8] c"nv_adma_sht\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 378, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [13 x i8] c"nv_swncq_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 503, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [13 x i8] c"nv_swncq_sht\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 389, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1536, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1543, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 613, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 627, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1402, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 657, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1641, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1652, i32 6 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 948, i32 29 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 951, i32 28 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 954, i32 28 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 957, i32 28 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 960, i32 28 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 962, i32 28 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 812, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 822, i32 28 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 824, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 827, i32 27 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 830, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 745, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [33 x i8] c"../include/trace/events/libata.h\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.311, i32 317, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.314, i32 108, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1754, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1756, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1762, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1769, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1779, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2205, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2222, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2237, i32 27 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2250, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2269, i32 25 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2048, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2075, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2094, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2109, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 2154, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1908, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1910, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1859, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [25 x i8] c"../drivers/ata/sata_nv.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1864, i32 2 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_adma374, ptr @__UNIQUE_ID_admatype373, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__UNIQUE_ID_msi378, ptr @__UNIQUE_ID_msitype377, ptr @__UNIQUE_ID_swncq376, ptr @__UNIQUE_ID_swncqtype375, ptr @__UNIQUE_ID_version363, ptr @__exitcall_nv_pci_driver_exit, ptr @__initcall__kmod_sata_nv__372_2465_nv_pci_driver_init6, ptr @__modver_attr, ptr @__param_adma, ptr @__param_msi, ptr @__param_swncq, ptr @nv_adma_error_handler._entry, ptr @nv_adma_error_handler._entry.41, ptr @nv_adma_error_handler._entry_ptr, ptr @nv_adma_error_handler._entry_ptr.43, ptr @nv_adma_mode._entry, ptr @nv_adma_mode._entry_ptr, ptr @nv_adma_qc_issue._entry, ptr @nv_adma_qc_issue._entry_ptr, ptr @nv_adma_register_mode._entry, ptr @nv_adma_register_mode._entry.32, ptr @nv_adma_register_mode._entry_ptr, ptr @nv_adma_register_mode._entry_ptr.34, ptr @nv_adma_slave_config._entry, ptr @nv_adma_slave_config._entry_ptr, ptr @nv_hardreset._entry, ptr @nv_hardreset._entry.21, ptr @nv_hardreset._entry.24, ptr @nv_hardreset._entry.27, ptr @nv_hardreset._entry_ptr, ptr @nv_hardreset._entry_ptr.23, ptr @nv_hardreset._entry_ptr.26, ptr @nv_hardreset._entry_ptr.29, ptr @nv_init_one._entry, ptr @nv_init_one._entry.11, ptr @nv_init_one._entry.8, ptr @nv_init_one._entry_ptr, ptr @nv_init_one._entry_ptr.10, ptr @nv_init_one._entry_ptr.13, ptr @nv_pci_driver_exit, ptr @nv_swncq_ncq_stop._entry, ptr @nv_swncq_ncq_stop._entry.63, ptr @nv_swncq_ncq_stop._entry.66, ptr @nv_swncq_ncq_stop._entry.69, ptr @nv_swncq_ncq_stop._entry.72, ptr @nv_swncq_ncq_stop._entry_ptr, ptr @nv_swncq_ncq_stop._entry_ptr.65, ptr @nv_swncq_ncq_stop._entry_ptr.68, ptr @nv_swncq_ncq_stop._entry_ptr.71, ptr @nv_swncq_ncq_stop._entry_ptr.74, ptr @nv_swncq_slave_config._entry, ptr @nv_swncq_slave_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nv_pci_driver, ptr @adma_enabled, ptr @swncq_enabled, ptr @msi_enabled, ptr @nv_pci_tbl, ptr @nv_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @nv_port_info, ptr @.str.12, ptr @nv_generic_ops, ptr @nv_sht, ptr @.compoundliteral, ptr @nv_nf2_ops, ptr @.compoundliteral.14, ptr @nv_ck804_ops, ptr @.compoundliteral.15, ptr @nv_adma_ops, ptr @nv_adma_sht, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @nv_swncq_ops, ptr @nv_swncq_sht, ptr @.compoundliteral.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adma_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swncq_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_pci_tbl to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_init_one._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_port_info to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_generic_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_nf2_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_ck804_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_hardreset._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_hardreset._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_hardreset._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_register_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_register_mode._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_qc_issue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_error_handler._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_adma_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ncq_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ncq_stop._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ncq_stop._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ncq_stop._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_ncq_stop._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv_swncq_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @nv_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nv_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @nv_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_init_one(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  %host = alloca ptr, align 4
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #10
  %0 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ppi, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %host) #10
  %1 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %host, align 4, !annotation !241
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.1 = icmp eq i32 %7, 0
  br i1 %cmp1.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.3 = icmp eq i32 %11, 0
  br i1 %cmp1.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.4 = icmp eq i32 %13, 0
  br i1 %cmp1.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5
  %14 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.5 = icmp eq i32 %15, 0
  br i1 %cmp1.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %.b112 = load i1, ptr @nv_init_one.__print_once, align 1
  br i1 %.b112, label %for.cond.5.if.end3_crit_edge, label %if.then2

for.cond.5.if.end3_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nv_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.cond.5.if.end3_crit_edge
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %16 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end6.if.end20_crit_edge [
    i32 2, label %land.lhs.true
    i32 4, label %land.lhs.true12
  ]

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %17 = load i8, ptr @adma_enabled, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.if.end20.sink.split_crit_edge

land.lhs.true.if.end20.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true12:                                  ; preds = %if.end6
  %18 = load i8, ptr @swncq_enabled, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end20_crit_edge, label %land.lhs.true12.if.end20.sink.split_crit_edge

land.lhs.true12.if.end20.sink.split_crit_edge:    ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.sink.split

land.lhs.true12.if.end20_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20.sink.split:                              ; preds = %land.lhs.true12.if.end20.sink.split_crit_edge, %land.lhs.true.if.end20.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.3, %land.lhs.true.if.end20.sink.split_crit_edge ], [ @.str.9, %land.lhs.true12.if.end20.sink.split_crit_edge ]
  %type.0.ph = phi i32 [ 3, %land.lhs.true.if.end20.sink.split_crit_edge ], [ 5, %land.lhs.true12.if.end20.sink.split_crit_edge ]
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev18, ptr noundef nonnull %.str.9.sink) #13
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true12.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %type.0 = phi i32 [ 4, %land.lhs.true12.if.end20_crit_edge ], [ %3, %if.end6.if.end20_crit_edge ], [ 2, %land.lhs.true.if.end20_crit_edge ], [ %type.0.ph, %if.end20.sink.split ]
  %arrayidx21 = getelementptr [6 x %struct.ata_port_info], ptr @nv_port_info, i32 0, i32 %type.0
  %19 = ptrtoint ptr %ppi to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx21, ptr %ppi, align 8
  %private_data = getelementptr [6 x %struct.ata_port_info], ptr @nv_port_info, i32 0, i32 %type.0, i32 6
  %20 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data, align 4
  %call24 = call i32 @ata_pci_bmdma_prepare_host(ptr noundef %pdev, ptr noundef nonnull %ppi, ptr noundef nonnull %host) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef 4, i32 noundef 3520) #10
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %type.0, ptr %call.i, align 4
  %23 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %host, align 4
  %private_data34 = getelementptr inbounds %struct.ata_host, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %private_data34 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %private_data34, align 4
  %call35 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 32, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomap, align 4
  %arrayidx39 = getelementptr ptr, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx39, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %27, i32 0, i32 12
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 8, i32 14
  %34 = ptrtoint ptr %scr_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %scr_addr, align 8
  %add.ptr41 = getelementptr i8, ptr %31, i32 64
  %arrayidx43 = getelementptr %struct.ata_host, ptr %27, i32 1, i32 0, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx43, align 4
  %scr_addr45 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 8, i32 14
  %37 = ptrtoint ptr %scr_addr45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr41, ptr %scr_addr45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0)
  %cmp46 = icmp ugt i32 %type.0, 1
  br i1 %cmp46, label %if.then47, label %if.end38.if.end51_crit_edge

if.end38.if.end51_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #10
  %38 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %regval, align 1, !annotation !241
  %call48 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %regval) #10
  %39 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %regval, align 1
  %41 = or i8 %40, 4
  store i8 %41, ptr %regval, align 1
  %call50 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 80, i8 noundef zeroext %41) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #10
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end38.if.end51_crit_edge
  %42 = zext i32 %type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %type.0, label %if.end51.if.end64_crit_edge [
    i32 3, label %if.then54
    i32 5, label %if.then62
  ]

if.end51.if.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  call fastcc void @nv_adma_host_init(ptr noundef %44)
  br label %if.end64

if.then62:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  call fastcc void @nv_swncq_host_init(ptr noundef %46)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.then54, %if.end51.if.end64_crit_edge
  %47 = load i8, ptr @msi_enabled, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool65.not = icmp eq i8 %47, 0
  br i1 %tobool65.not, label %if.end64.if.end72_crit_edge, label %do.end69

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev28, ptr noundef nonnull @.str.12) #13
  %call71 = call i32 @pci_enable_msi(ptr noundef %pdev) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end64.if.end72_crit_edge
  call void @pci_set_master(ptr noundef %pdev) #10
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host, align 4
  %50 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %21, align 4
  %sht = getelementptr inbounds %struct.nv_pi_priv, ptr %21, i32 0, i32 1
  %52 = ptrtoint ptr %sht to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sht, align 4
  %call73 = call i32 @ata_pci_sff_activate_host(ptr noundef %49, ptr noundef %51, ptr noundef %53) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.end72 ], [ %call, %if.end3.cleanup_crit_edge ], [ %call24, %if.end20.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ], [ -19, %for.cond.4.cleanup_crit_edge ], [ -19, %for.cond.3.cleanup_crit_edge ], [ -19, %for.cond.2.cleanup_crit_edge ], [ -19, %for.cond.1.cleanup_crit_edge ], [ -19, %for.cond.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %host) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  %regval = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp3 = icmp ugt i32 %7, 1
  br i1 %cmp3, label %if.end8, label %if.then2.if.end35_crit_edge

if.then2.if.end35_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end8:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #10
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %regval, align 1, !annotation !241
  %call5 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %regval) #10
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %regval, align 1
  %11 = or i8 %10, 4
  store i8 %11, ptr %regval, align 1
  %call7 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 80, i8 noundef zeroext %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #10
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp10 = icmp eq i32 %.pr, 3
  br i1 %cmp10, label %if.then12, label %if.end8.if.end35_crit_edge

if.end8.if.end35_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #10
  %13 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %tmp32, align 4, !annotation !241
  %call13 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 80, ptr noundef nonnull %tmp32) #10
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports, align 4
  %private_data14 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 48
  %16 = ptrtoint ptr %private_data14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data14, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 8
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp32, align 4
  %and18 = and i32 %22, -217089
  %masksel52 = select i1 %tobool16.not, i32 147456, i32 0
  %storemerge = or i32 %and18, %masksel52
  %arrayidx22 = getelementptr %struct.ata_host, ptr %1, i32 1, i32 0, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx22, align 4
  %private_data23 = getelementptr inbounds %struct.ata_port, ptr %24, i32 0, i32 48
  %25 = ptrtoint ptr %private_data23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data23, align 4
  %flags24 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %flags24 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags24, align 8
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not = icmp eq i8 %29, 0
  %masksel = select i1 %tobool27.not, i32 69632, i32 0
  %storemerge50 = or i32 %masksel, %storemerge
  %30 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge50, ptr %tmp32, align 4
  %call33 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 80, i32 noundef %storemerge50) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %if.end8.if.end35_crit_edge, %if.then2.if.end35_crit_edge, %if.end.if.end35_crit_edge
  call void @ata_host_resume(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_adma_host_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #10
  %2 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp32, align 4, !annotation !241
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %tmp32) #10
  %3 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp32, align 4
  %or = or i32 %4, 217088
  store i32 %or, ptr %tmp32, align 4
  %call1 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 80, i32 noundef %or) #10
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %5 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not = icmp eq i32 %6, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.02
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 31
  %9 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 7
  %15 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %16, 8
  %add.i = add i32 %mul.i, 1152
  %add.ptr.i = getelementptr i8, ptr %14, i32 %add.i
  %17 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %ioaddr.i, align 4
  %data_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %data_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %data_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %feature_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 3
  %19 = ptrtoint ptr %feature_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr2.i, ptr %feature_addr.i, align 4
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 2
  %20 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr2.i, ptr %error_addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %nsect_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 4
  %21 = ptrtoint ptr %nsect_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr3.i, ptr %nsect_addr.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %lbal_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 5
  %22 = ptrtoint ptr %lbal_addr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %lbal_addr.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %lbam_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 6
  %23 = ptrtoint ptr %lbam_addr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr5.i, ptr %lbam_addr.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 20
  %lbah_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %lbah_addr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr6.i, ptr %lbah_addr.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i, i32 24
  %device_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 8
  %25 = ptrtoint ptr %device_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr7.i, ptr %device_addr.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 28
  %command_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 10
  %26 = ptrtoint ptr %command_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr8.i, ptr %command_addr.i, align 4
  %status_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 9
  %27 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr8.i, ptr %status_addr.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 32
  %ctl_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 12
  %28 = ptrtoint ptr %ctl_addr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr9.i, ptr %ctl_addr.i, align 4
  %altstatus_addr.i = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 11
  %29 = ptrtoint ptr %altstatus_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr9.i, ptr %altstatus_addr.i, align 4
  %inc = add nuw i32 %i.02, 1
  %30 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_swncq_host_init(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %iomap = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #10
  %6 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %regval, align 1, !annotation !241
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 127, ptr noundef nonnull %regval) #10
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regval, align 1
  %9 = and i8 %8, 127
  store i8 %9, ptr %regval, align 1
  %call3 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 127, i8 noundef zeroext %9) #10
  %add.ptr4 = getelementptr i8, ptr %3, i32 1024
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #10, !srcloc !243
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_host_init.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_host_init, %if.then)) #10
          to label %do.body13 [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nv_swncq_host_init.__UNIQUE_ID_ddebug365, ptr noundef %5, ptr noundef nonnull @.str.94, i32 noundef %11) #10
  br label %do.body13

do.body13:                                        ; preds = %if.then, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @arm_heavy_mb() #10
  %or16 = or i32 %11, 6
  %12 = call i32 @llvm.bswap.i32(i32 %or16)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #10, !srcloc !247
  %add.ptr20 = getelementptr i8, ptr %3, i32 1092
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #10, !srcloc !243
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_host_init.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_host_init, %if.then36)) #10
          to label %do.body41 [label %if.then36], !srcloc !245

if.then36:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nv_swncq_host_init.__UNIQUE_ID_ddebug366, ptr noundef %5, ptr noundef nonnull @.str.95, i32 noundef %14) #10
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %do.body13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void @arm_heavy_mb() #10
  %or44 = or i32 %14, 16580861
  %15 = call i32 @llvm.bswap.i32(i32 %or44)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %15) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  call void @arm_heavy_mb() #10
  %add.ptr49 = getelementptr i8, ptr %3, i32 1088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -1) #10, !srcloc !247
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_sff_activate_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_generic_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #10
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %0 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp528.not = icmp eq i32 %1, 0
  br i1 %cmp528.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %handled.030 = phi i32 [ %handled.1, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.029 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.029
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 3
  %4 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %6 = icmp ugt i32 %5, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %5
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %6, %tobool.not11.i
  br i1 %tobool.not.i, label %for.body.if.else_crit_edge, label %lor.lhs.false.i, !prof !251

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false.i:                                  ; preds = %for.body
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.land.lhs.true_crit_edge, label %if.end.i

lor.lhs.false.i.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %5, i32 6
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.end.i.land.lhs.true_crit_edge, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.i.land.lhs.true_crit_edge, %lor.lhs.false.i.land.lhs.true_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %5, i32 4
  %13 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tf, align 4
  %and = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @ata_bmdma_port_intr(ptr noundef %3, ptr noundef nonnull %arrayidx.i.i) #10
  %add = add i32 %call10, %handled.030
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.i.if.else_crit_edge, %for.body.if.else_crit_edge
  %ops = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %16, i32 0, i32 39
  %17 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sff_check_status, align 4
  %call11 = tail call zeroext i8 %18(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %handled.1 = phi i32 [ %handled.030, %if.else ], [ %add, %if.then ]
  %inc = add nuw i32 %i.029, 1
  %19 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_ports, align 4
  %cmp5 = icmp ult i32 %inc, %20
  br i1 %cmp5, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool13.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool13.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_nf2_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #10
  %ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %call1 = tail call fastcc i32 @nv_do_interrupt(ptr noundef %dev_instance, i8 noundef zeroext %4)
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_ck804_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #10
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1088
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %call2 = tail call fastcc i32 @nv_do_interrupt(ptr noundef %dev_instance, i8 noundef zeroext %4)
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #10
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  %notifier_clears = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %notifier_clears) #10
  %0 = ptrtoint ptr %notifier_clears to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %notifier_clears, align 4, !annotation !241
  %1 = getelementptr inbounds [2 x i32], ptr %notifier_clears, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !241
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #10
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %3 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp303.not = icmp eq i32 %4, 0
  br i1 %cmp303.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc162, %cleanup.for.body_crit_edge ]
  %handled.0304 = phi i32 [ 0, %for.body.lr.ph ], [ %handled.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.0305
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl_block, align 8
  %arrayidx1 = getelementptr [2 x i32], ptr %notifier_clears, i32 0, i32 %i.0305
  %11 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx1, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %8, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 8
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %14 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomap, align 4
  %arrayidx2 = getelementptr ptr, ptr %15, i32 5
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx2, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 1088
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %conv4 = zext i8 %18 to i32
  %mul = shl i32 %i.0305, 2
  %shr = lshr i32 %conv4, %mul
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 3
  %19 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %21 = icmp ugt i32 %20, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %6, i32 0, i32 19, i32 %20
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %21, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.then.ata_qc_from_tag.exit.i_crit_edge, label %lor.lhs.false.i.i, !prof !251

if.then.ata_qc_from_tag.exit.i_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr %struct.ata_port, ptr %6, i32 0, i32 19, i32 %20, i32 6
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %27, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  %call..i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i.i, ptr null
  br label %ata_qc_from_tag.exit.i

ata_qc_from_tag.exit.i:                           ; preds = %if.end.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, %if.then.ata_qc_from_tag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge ], [ null, %if.then.ata_qc_from_tag.exit.i_crit_edge ], [ %call..i.i, %if.end.i.i ]
  %and.i = and i32 %shr, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !256

if.then.i:                                        ; preds = %ata_qc_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @ata_port_freeze(ptr noundef %6) #10
  br label %nv_host_intr.exit

if.end.i:                                         ; preds = %ata_qc_from_tag.exit.i
  %and5.i = and i32 %shr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.nv_host_intr.exit_crit_edge, label %if.end8.i

if.end.i.nv_host_intr.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_host_intr.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not.i, label %if.end8.i.if.then18.i_crit_edge, label %lor.rhs.i, !prof !251

if.end8.i.if.then18.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

lor.rhs.i:                                        ; preds = %if.end8.i
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tf.i, align 4
  %and10.i = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end20.i, label %lor.rhs.i.if.then18.i_crit_edge, !prof !256

lor.rhs.i.if.then18.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.rhs.i.if.then18.i_crit_edge, %if.end8.i.if.then18.i_crit_edge
  %call19.i = tail call zeroext i8 @ata_sff_check_status(ptr noundef %6) #10
  br label %nv_host_intr.exit

if.end20.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @ata_bmdma_port_intr(ptr noundef %6, ptr noundef nonnull %retval.0.i.i) #10
  br label %nv_host_intr.exit

nv_host_intr.exit:                                ; preds = %if.end20.i, %if.then18.i, %if.end.i.nv_host_intr.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 1, %if.then18.i ], [ %call21.i, %if.end20.i ], [ 0, %if.end.i.nv_host_intr.exit_crit_edge ]
  %add = add i32 %retval.0.i, %handled.0304
  br label %cleanup

if.end:                                           ; preds = %for.body
  %and9 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end32_crit_edge, label %if.then11

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then11:                                        ; preds = %if.end
  %30 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iomap, align 4
  %arrayidx16 = getelementptr ptr, ptr %31, i32 5
  %32 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx16, align 4
  %add.ptr17 = getelementptr i8, ptr %33, i32 1088
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %conv21 = zext i8 %34 to i32
  %mul22 = shl i32 %i.0305, 2
  %shr23 = lshr i32 %conv21, %mul22
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 3
  %35 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %36)
  %37 = icmp ult i32 %36, 33
  %conv28 = zext i1 %37 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %36)
  %38 = icmp ugt i32 %36, 32
  %arrayidx.i.i.i258 = getelementptr %struct.ata_port, ptr %6, i32 0, i32 19, i32 %36
  %tobool.not11.i.i259 = icmp eq ptr %arrayidx.i.i.i258, null
  %tobool.not.i.i260 = or i1 %38, %tobool.not11.i.i259
  br i1 %tobool.not.i.i260, label %if.then11.ata_qc_from_tag.exit.i274_crit_edge, label %lor.lhs.false.i.i264, !prof !251

if.then11.ata_qc_from_tag.exit.i274_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i274

lor.lhs.false.i.i264:                             ; preds = %if.then11
  %ops.i.i261 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %39 = ptrtoint ptr %ops.i.i261 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i261, align 4
  %error_handler.i.i262 = getelementptr inbounds %struct.ata_port_operations, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %error_handler.i.i262 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %error_handler.i.i262, align 4
  %tobool4.not.i.i263 = icmp eq ptr %42, null
  br i1 %tobool4.not.i.i263, label %lor.lhs.false.i.i264.ata_qc_from_tag.exit.i274_crit_edge, label %if.end.i.i269

lor.lhs.false.i.i264.ata_qc_from_tag.exit.i274_crit_edge: ; preds = %lor.lhs.false.i.i264
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i274

if.end.i.i269:                                    ; preds = %lor.lhs.false.i.i264
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i265 = getelementptr %struct.ata_port, ptr %6, i32 0, i32 19, i32 %36, i32 6
  %43 = ptrtoint ptr %flags.i.i265 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i265, align 4
  %and.i.i266 = and i32 %44, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i266)
  %cmp.i.i267 = icmp eq i32 %and.i.i266, 1
  %call..i.i268 = select i1 %cmp.i.i267, ptr %arrayidx.i.i.i258, ptr null
  br label %ata_qc_from_tag.exit.i274

ata_qc_from_tag.exit.i274:                        ; preds = %if.end.i.i269, %lor.lhs.false.i.i264.ata_qc_from_tag.exit.i274_crit_edge, %if.then11.ata_qc_from_tag.exit.i274_crit_edge
  %retval.0.i.i270 = phi ptr [ %arrayidx.i.i.i258, %lor.lhs.false.i.i264.ata_qc_from_tag.exit.i274_crit_edge ], [ null, %if.then11.ata_qc_from_tag.exit.i274_crit_edge ], [ %call..i.i268, %if.end.i.i269 ]
  %and.i272 = and i32 %shr23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool.not.i273 = icmp eq i32 %and.i272, 0
  br i1 %tobool.not.i273, label %if.end.i279, label %if.then.i276, !prof !256

if.then.i276:                                     ; preds = %ata_qc_from_tag.exit.i274
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i275 = tail call i32 @ata_port_freeze(ptr noundef %6) #10
  br label %nv_host_intr.exit291

if.end.i279:                                      ; preds = %ata_qc_from_tag.exit.i274
  %shr23.masked = and i32 %shr23, 1
  %and5.i277 = or i32 %shr23.masked, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i277)
  %tobool6.not.i278 = icmp eq i32 %and5.i277, 0
  br i1 %tobool6.not.i278, label %if.end.i279.nv_host_intr.exit291_crit_edge, label %if.end8.i281

if.end.i279.nv_host_intr.exit291_crit_edge:       ; preds = %if.end.i279
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_host_intr.exit291

if.end8.i281:                                     ; preds = %if.end.i279
  %tobool9.not.i280 = icmp eq ptr %retval.0.i.i270, null
  br i1 %tobool9.not.i280, label %if.end8.i281.if.then18.i287_crit_edge, label %lor.rhs.i285, !prof !251

if.end8.i281.if.then18.i287_crit_edge:            ; preds = %if.end8.i281
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i287

lor.rhs.i285:                                     ; preds = %if.end8.i281
  %tf.i282 = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i270, i32 0, i32 4
  %45 = ptrtoint ptr %tf.i282 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tf.i282, align 4
  %and10.i283 = and i32 %46, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i283)
  %tobool11.not.i284 = icmp eq i32 %and10.i283, 0
  br i1 %tobool11.not.i284, label %if.end20.i289, label %lor.rhs.i285.if.then18.i287_crit_edge, !prof !256

lor.rhs.i285.if.then18.i287_crit_edge:            ; preds = %lor.rhs.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i287

if.then18.i287:                                   ; preds = %lor.rhs.i285.if.then18.i287_crit_edge, %if.end8.i281.if.then18.i287_crit_edge
  %call19.i286 = tail call zeroext i8 @ata_sff_check_status(ptr noundef %6) #10
  br label %nv_host_intr.exit291

if.end20.i289:                                    ; preds = %lor.rhs.i285
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i288 = tail call i32 @ata_bmdma_port_intr(ptr noundef %6, ptr noundef nonnull %retval.0.i.i270) #10
  br label %nv_host_intr.exit291

nv_host_intr.exit291:                             ; preds = %if.end20.i289, %if.then18.i287, %if.end.i279.nv_host_intr.exit291_crit_edge, %if.then.i276
  %retval.0.i290 = phi i32 [ 1, %if.then.i276 ], [ 1, %if.then18.i287 ], [ %call21.i288, %if.end20.i289 ], [ 0, %if.end.i279.nv_host_intr.exit291_crit_edge ]
  %add31 = add i32 %retval.0.i290, %handled.0304
  br label %if.end32

if.end32:                                         ; preds = %nv_host_intr.exit291, %if.end.if.end32_crit_edge
  %handled.1 = phi i32 [ %add31, %nv_host_intr.exit291 ], [ %handled.0304, %if.end.if.end32_crit_edge ]
  %add.ptr35 = getelementptr i8, ptr %10, i32 104
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  %add.ptr41 = getelementptr i8, ptr %10, i32 108
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #10, !srcloc !243
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %50 = or i32 %48, %47
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx1, align 4
  %gen_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %8, i32 0, i32 5
  %53 = ptrtoint ptr %gen_block to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gen_block, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #10, !srcloc !243
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  %port_no = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 7
  %57 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port_no, align 4
  %mul53 = mul i32 %58, 12
  %add54 = add i32 %mul53, 19
  %shl = shl nuw i32 1, %add54
  %and55 = and i32 %shl, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool57.not = icmp eq i32 %47, 0
  %or.cond = select i1 %tobool56.not, i1 %tobool57.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool59.not = icmp eq i32 %48, 0
  %or.cond256 = select i1 %or.cond, i1 %tobool59.not, i1 false
  br i1 %or.cond256, label %if.end32.cleanup_crit_edge, label %if.end61

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end32
  %add.ptr64 = getelementptr i8, ptr %10, i32 68
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #10, !srcloc !261
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr64, i16 %59) #10, !srcloc !264
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  %inc = add i32 %handled.1, 1
  %conv75 = zext i16 %60 to i32
  %and76 = and i32 %conv75, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end108, label %if.then80, !prof !256

if.then80:                                        ; preds = %if.end61
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.44, i32 noundef %conv75) #10
  %and84 = and i32 %conv75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #12
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 2
  %62 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %err_mask, align 4
  %or87 = or i32 %63, 64
  store i32 %or87, ptr %err_mask, align 4
  br label %if.end106

if.else:                                          ; preds = %if.then80
  %and89 = and i32 %conv75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else92, label %if.then91

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %probe_mask.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 6
  %64 = ptrtoint ptr %probe_mask.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %probe_mask.i, align 4
  %or.i = or i32 %65, 3
  store i32 %or.i, ptr %probe_mask.i, align 4
  %flags.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 5
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %or1.i = or i32 %67, 1
  store i32 %or1.i, ptr %flags.i, align 4
  %action.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 3
  %68 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %action.i, align 4
  %or2.i = or i32 %69, 14
  store i32 %or2.i, ptr %action.i, align 4
  %err_mask.i = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 2
  %70 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %err_mask.i, align 4
  %or3.i = or i32 %71, 16
  store i32 %or3.i, ptr %err_mask.i, align 4
  br label %if.end106

if.else92:                                        ; preds = %if.else
  %and94 = and i32 %conv75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.else97, label %if.then96

if.then96:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #12
  %probe_mask.i292 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 6
  %72 = ptrtoint ptr %probe_mask.i292 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %probe_mask.i292, align 4
  %or.i293 = or i32 %73, 3
  store i32 %or.i293, ptr %probe_mask.i292, align 4
  %flags.i294 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 5
  %74 = ptrtoint ptr %flags.i294 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i294, align 4
  %or1.i295 = or i32 %75, 1
  store i32 %or1.i295, ptr %flags.i294, align 4
  %action.i296 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 3
  %76 = ptrtoint ptr %action.i296 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %action.i296, align 4
  %or2.i297 = or i32 %77, 14
  store i32 %or2.i297, ptr %action.i296, align 4
  %err_mask.i298 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 11, i32 2
  %78 = ptrtoint ptr %err_mask.i298 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err_mask.i298, align 4
  %or3.i299 = or i32 %79, 16
  store i32 %or3.i299, ptr %err_mask.i298, align 4
  br label %if.end106

if.else97:                                        ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #12
  %and99 = and i32 %conv75, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  %.str.49..str.48 = select i1 %tobool100.not, ptr @.str.49, ptr @.str.48
  br label %if.end106

if.end106:                                        ; preds = %if.else97, %if.then96, %if.then91, %if.then86
  %.str.46.sink = phi ptr [ @.str.46, %if.then91 ], [ @.str.47, %if.then96 ], [ @.str.45, %if.then86 ], [ %.str.49..str.48, %if.else97 ]
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull %.str.46.sink) #10
  %call107 = tail call i32 @ata_port_freeze(ptr noundef %6) #10
  br label %cleanup

if.end108:                                        ; preds = %if.end61
  %and110 = and i32 %conv75, 4176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.cleanup_crit_edge, label %if.then112

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then112:                                       ; preds = %if.end108
  %and115 = and i32 %conv75, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %if.then112.if.end128_crit_edge, label %if.then117

if.then112.if.end128_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then117:                                       ; preds = %if.then112
  %active_tag119 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 3
  %80 = ptrtoint ptr %active_tag119 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %active_tag119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %81)
  %82 = icmp ult i32 %81, 33
  br i1 %82, label %if.end128.thread, label %if.else125

if.end128.thread:                                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  %shl124 = shl nuw i32 1, %81
  br label %while.body.preheader

if.else125:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  %sactive = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25, i32 4
  %83 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sactive, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else125, %if.then112.if.end128_crit_edge
  %check_commands.0 = phi i32 [ %84, %if.else125 ], [ %51, %if.then112.if.end128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_commands.0)
  %iszero300 = icmp eq i32 %check_commands.0, 0
  br i1 %iszero300, label %if.end128.while.end_crit_edge, label %if.end128.while.body.preheader_crit_edge

if.end128.while.body.preheader_crit_edge:         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.preheader

if.end128.while.end_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.preheader:                             ; preds = %if.end128.while.body.preheader_crit_edge, %if.end128.thread
  %check_commands.1301.ph = phi i32 [ %check_commands.0, %if.end128.while.body.preheader_crit_edge ], [ %shl124, %if.end128.thread ]
  br label %while.body

while.body:                                       ; preds = %if.end149.while.body_crit_edge, %while.body.preheader
  %done_mask.0302 = phi i32 [ %done_mask.1, %if.end149.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %check_commands.1301 = phi i32 [ %and151, %if.end149.while.body_crit_edge ], [ %check_commands.1301.ph, %while.body.preheader ]
  %85 = tail call i32 @llvm.cttz.i32(i32 %check_commands.1301, i1 true), !range !267
  %shl130 = shl nuw i32 1, %85
  %and131 = and i32 %shl130, %49
  %call132 = tail call fastcc i32 @nv_adma_check_cpb(ptr noundef %6, i32 noundef %85, i32 noundef %and131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp sgt i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.else138

if.then135:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %or137 = or i32 %shl130, %done_mask.0302
  br label %if.end149

if.else138:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp139 = icmp slt i32 %call132, 0
  br i1 %cmp139, label %if.then147, label %if.else138.if.end149_crit_edge, !prof !251

if.else138.if.end149_crit_edge:                   ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then147:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.end149:                                        ; preds = %if.then147, %if.else138.if.end149_crit_edge, %if.then135
  %check_commands.2 = phi i32 [ %check_commands.1301, %if.then135 ], [ 0, %if.then147 ], [ %check_commands.1301, %if.else138.if.end149_crit_edge ]
  %done_mask.1 = phi i32 [ %or137, %if.then135 ], [ %done_mask.0302, %if.then147 ], [ %done_mask.0302, %if.else138.if.end149_crit_edge ]
  %neg = xor i32 %shl130, -1
  %and151 = and i32 %check_commands.2, %neg
  %iszero = icmp eq i32 %and151, 0
  br i1 %iszero, label %if.end149.while.end_crit_edge, label %if.end149.while.body_crit_edge

if.end149.while.body_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end149.while.end_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end149.while.end_crit_edge, %if.end128.while.end_crit_edge
  %done_mask.0.lcssa = phi i32 [ 0, %if.end128.while.end_crit_edge ], [ %done_mask.1, %if.end149.while.end_crit_edge ]
  %call152 = tail call i64 @ata_qc_get_active(ptr noundef %6) #10
  %conv153 = zext i32 %done_mask.0.lcssa to i64
  %xor = xor i64 %call152, %conv153
  %call154 = tail call i32 @ata_qc_complete_multiple(ptr noundef %6, i64 noundef %xor) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end108.cleanup_crit_edge, %if.end106, %if.end32.cleanup_crit_edge, %nv_host_intr.exit
  %handled.2 = phi i32 [ %add, %nv_host_intr.exit ], [ %inc, %if.end106 ], [ %handled.1, %if.end32.cleanup_crit_edge ], [ %inc, %while.end ], [ %inc, %if.end108.cleanup_crit_edge ]
  %inc162 = add nuw i32 %i.0305, 1
  %86 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc162, %87
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.2, %cleanup.for.end_crit_edge ]
  %88 = ptrtoint ptr %notifier_clears to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %notifier_clears, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool164.not = icmp eq i32 %89, 0
  br i1 %tobool164.not, label %lor.lhs.false, label %for.end.if.then167_crit_edge

for.end.if.then167_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then167

lor.lhs.false:                                    ; preds = %for.end
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool166.not = icmp eq i32 %91, 0
  br i1 %tobool166.not, label %lor.lhs.false.if.end184_crit_edge, label %lor.lhs.false.if.then167_crit_edge

lor.lhs.false.if.then167_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then167

lor.lhs.false.if.end184_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.then167:                                       ; preds = %lor.lhs.false.if.then167_crit_edge, %for.end.if.then167_crit_edge
  %ports169 = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 12
  %92 = ptrtoint ptr %ports169 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ports169, align 4
  %private_data171 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 48
  %94 = ptrtoint ptr %private_data171 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %private_data171, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %96 = tail call i32 @llvm.bswap.i32(i32 %89)
  %notifier_clear_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %95, i32 0, i32 6
  %97 = ptrtoint ptr %notifier_clear_block to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %notifier_clear_block, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #10, !srcloc !247
  %arrayidx177 = getelementptr %struct.ata_host, ptr %dev_instance, i32 1, i32 0, i32 0, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx177 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx177, align 4
  %private_data178 = getelementptr inbounds %struct.ata_port, ptr %100, i32 0, i32 48
  %101 = ptrtoint ptr %private_data178 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private_data178, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %1, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %notifier_clear_block183 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %102, i32 0, i32 6
  %106 = ptrtoint ptr %notifier_clear_block183 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %notifier_clear_block183, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #10, !srcloc !247
  br label %if.end184

if.end184:                                        ; preds = %if.then167, %lor.lhs.false.if.end184_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool186.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool186.not to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %notifier_clears) #10
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dev_instance) #10
  %iomap = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 2
  %0 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 1088
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 3
  %5 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp832.not = icmp eq i32 %6, 0
  br i1 %cmp832.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %4)
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.preheader
  %i.037 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %handled.036 = phi i32 [ %handled.1, %if.end16.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %irq_stat.033 = phi i32 [ %shr, %if.end16.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %arrayidx10 = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.037
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  %sactive = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv11 = trunc i32 %irq_stat.033 to i16
  tail call fastcc void @nv_swncq_host_interrupt(ptr noundef %9, i16 noundef zeroext %conv11)
  br label %if.end16

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_stat.033)
  %tobool12.not = icmp eq i32 %irq_stat.033, 0
  br i1 %tobool12.not, label %if.else.if.end_crit_edge, label %if.then13

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 48
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %irq_block.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %irq_block.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_block.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 -3841) #10, !srcloc !264
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.else.if.end_crit_edge
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 25, i32 3
  %16 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %18 = icmp ugt i32 %17, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %17
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %18, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end.ata_qc_from_tag.exit.i_crit_edge, label %lor.lhs.false.i.i, !prof !251

if.end.ata_qc_from_tag.exit.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr %struct.ata_port, ptr %9, i32 0, i32 19, i32 %17, i32 6
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  %call..i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i.i, ptr null
  br label %ata_qc_from_tag.exit.i

ata_qc_from_tag.exit.i:                           ; preds = %if.end.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, %if.end.ata_qc_from_tag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge ], [ null, %if.end.ata_qc_from_tag.exit.i_crit_edge ], [ %call..i.i, %if.end.i.i ]
  %and.i = and i32 %irq_stat.033, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !256

if.then.i:                                        ; preds = %ata_qc_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @ata_port_freeze(ptr noundef %9) #10
  br label %nv_host_intr.exit

if.end.i:                                         ; preds = %ata_qc_from_tag.exit.i
  %and5.i = and i32 %irq_stat.033, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.nv_host_intr.exit_crit_edge, label %if.end8.i

if.end.i.nv_host_intr.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_host_intr.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not.i, label %if.end8.i.if.then18.i_crit_edge, label %lor.rhs.i, !prof !251

if.end8.i.if.then18.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

lor.rhs.i:                                        ; preds = %if.end8.i
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tf.i, align 4
  %and10.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end20.i, label %lor.rhs.i.if.then18.i_crit_edge, !prof !256

lor.rhs.i.if.then18.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.rhs.i.if.then18.i_crit_edge, %if.end8.i.if.then18.i_crit_edge
  %call19.i = tail call zeroext i8 @ata_sff_check_status(ptr noundef %9) #10
  br label %nv_host_intr.exit

if.end20.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @ata_bmdma_port_intr(ptr noundef %9, ptr noundef nonnull %retval.0.i.i) #10
  br label %nv_host_intr.exit

nv_host_intr.exit:                                ; preds = %if.end20.i, %if.then18.i, %if.end.i.nv_host_intr.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 1, %if.then18.i ], [ %call21.i, %if.end20.i ], [ 0, %if.end.i.nv_host_intr.exit_crit_edge ]
  %add = add i32 %retval.0.i, %handled.036
  br label %if.end16

if.end16:                                         ; preds = %nv_host_intr.exit, %if.then
  %handled.1 = phi i32 [ 1, %if.then ], [ %add, %nv_host_intr.exit ]
  %shr = lshr i32 %irq_stat.033, 16
  %inc = add nuw i32 %i.037, 1
  %27 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_ports, align 4
  %cmp8 = icmp ult i32 %inc, %28
  br i1 %cmp8, label %if.end16.for.body_crit_edge, label %if.end16.for.end_crit_edge

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %if.end16.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dev_instance, i32 noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.0.lcssa)
  %tobool18.not = icmp ne i32 %handled.0.lcssa, 0
  %cond = zext i1 %tobool18.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_hardreset(ptr noundef %link, ptr nocapture noundef readnone %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %pflags = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pflags, align 16
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %class.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 9
  %4 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %class.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %5, label %if.then [
    i32 1, label %land.lhs.true.if.else_crit_edge
    i32 3, label %land.lhs.true.if.else_crit_edge81
    i32 5, label %land.lhs.true.if.else_crit_edge82
    i32 7, label %land.lhs.true.if.else_crit_edge83
    i32 9, label %land.lhs.true.if.else_crit_edge84
  ]

land.lhs.true.if.else_crit_edge84:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.else_crit_edge83:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.else_crit_edge82:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.else_crit_edge81:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull @sata_deb_timing_hotplug, i32 noundef %deadline, ptr noundef null, ptr noundef null) #10
  br label %if.end58

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %land.lhs.true.if.else_crit_edge81, %land.lhs.true.if.else_crit_edge82, %land.lhs.true.if.else_crit_edge83, %land.lhs.true.if.else_crit_edge84, %entry.if.else_crit_edge
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %and4 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body:                                          ; preds = %if.else
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not = icmp eq i32 %10, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.lhs.false:                                    ; preds = %do.body
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave_link, align 128
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %do.end18, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %do.body.do.end_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %15 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmp, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %14, i32 noundef %16) #13
  br label %if.end25

do.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %print_id21 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %print_id21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %print_id21, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %18) #13
  br label %if.end25

if.end25:                                         ; preds = %do.end18, %do.end, %if.else.if.end25_crit_edge
  %call26 = tail call i32 @sata_link_resume(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline) #10
  %19 = zext i32 %call26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call26, label %do.body30 [
    i32 0, label %if.end25.if.end58_crit_edge
    i32 -95, label %if.end25.if.end58_crit_edge85
  ]

if.end25.if.end58_crit_edge85:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end25.if.end58_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

do.body30:                                        ; preds = %if.end25
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %link, align 128
  %nr_pmp_links.i78 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %nr_pmp_links.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_pmp_links.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i79.not = icmp eq i32 %23, 0
  br i1 %cmp.i79.not, label %lor.lhs.false33, label %do.body30.do.end40_crit_edge

do.body30.do.end40_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

lor.lhs.false33:                                  ; preds = %do.body30
  %slave_link35 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 26
  %24 = ptrtoint ptr %slave_link35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %slave_link35, align 128
  %tobool36.not = icmp eq ptr %25, null
  br i1 %tobool36.not, label %do.end49, label %lor.lhs.false33.do.end40_crit_edge

lor.lhs.false33.do.end40_crit_edge:               ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end40:                                         ; preds = %lor.lhs.false33.do.end40_crit_edge, %do.body30.do.end40_crit_edge
  %print_id43 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 5
  %26 = ptrtoint ptr %print_id43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %print_id43, align 4
  %pmp44 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %28 = ptrtoint ptr %pmp44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pmp44, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %27, i32 noundef %29, i32 noundef %call26) #13
  br label %if.end58

do.end49:                                         ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #12
  %print_id52 = getelementptr inbounds %struct.ata_port, ptr %21, i32 0, i32 5
  %30 = ptrtoint ptr %print_id52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %31, i32 noundef %call26) #13
  br label %if.end58

if.end58:                                         ; preds = %do.end49, %do.end40, %if.end25.if.end58_crit_edge, %if.end25.if.end58_crit_edge85, %if.then
  ret i32 -11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !243
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 8, i32 14
  %2 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scr_addr, align 8
  %mul = shl nuw nsw i32 %sc_reg, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !247
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_intr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_nf2_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %scr_addr1 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr1, align 8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 2
  %add.ptr = getelementptr i8, ptr %5, i32 17
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %shl = shl i32 15, %mul
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv2 = and i8 %8, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv2) #10, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_nf2_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %scr_addr1 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 14
  %4 = ptrtoint ptr %scr_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scr_addr1, align 8
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 2
  %shl = shl i32 15, %mul
  %conv = trunc i32 %shl to i8
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #10, !srcloc !275
  %add.ptr2 = getelementptr i8, ptr %5, i32 17
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %shl3 = shl i32 13, %mul
  %9 = trunc i32 %shl3 to i8
  %conv5 = or i8 %8, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %conv5) #10, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nv_do_interrupt(ptr nocapture noundef readonly %host, i8 noundef zeroext %irq_stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %n_ports = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %nv_host_intr.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %handled.010 = phi i32 [ %add, %nv_host_intr.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %nv_host_intr.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %irq_stat.addr.08 = phi i8 [ %15, %nv_host_intr.exit.for.body_crit_edge ], [ %irq_stat, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ata_host, ptr %host, i32 0, i32 12, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25, i32 3
  %4 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %6 = icmp ugt i32 %5, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %5
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %6, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %for.body.ata_qc_from_tag.exit.i_crit_edge, label %lor.lhs.false.i.i, !prof !251

for.body.ata_qc_from_tag.exit.i_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

lor.lhs.false.i.i:                                ; preds = %for.body
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 22
  %9 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %10, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %5, i32 6
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  %call..i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i.i, ptr null
  br label %ata_qc_from_tag.exit.i

ata_qc_from_tag.exit.i:                           ; preds = %if.end.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, %for.body.ata_qc_from_tag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge ], [ null, %for.body.ata_qc_from_tag.exit.i_crit_edge ], [ %call..i.i, %if.end.i.i ]
  %conv.i = zext i8 %irq_stat.addr.08 to i32
  %and.i = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !256

if.then.i:                                        ; preds = %ata_qc_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 @ata_port_freeze(ptr noundef %3) #10
  br label %nv_host_intr.exit

if.end.i:                                         ; preds = %ata_qc_from_tag.exit.i
  %and5.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.nv_host_intr.exit_crit_edge, label %if.end8.i

if.end.i.nv_host_intr.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_host_intr.exit

if.end8.i:                                        ; preds = %if.end.i
  %tobool9.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not.i, label %if.end8.i.if.then18.i_crit_edge, label %lor.rhs.i, !prof !251

if.end8.i.if.then18.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

lor.rhs.i:                                        ; preds = %if.end8.i
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tf.i, align 4
  %and10.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end20.i, label %lor.rhs.i.if.then18.i_crit_edge, !prof !256

lor.rhs.i.if.then18.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.rhs.i.if.then18.i_crit_edge, %if.end8.i.if.then18.i_crit_edge
  %call19.i = tail call zeroext i8 @ata_sff_check_status(ptr noundef %3) #10
  br label %nv_host_intr.exit

if.end20.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  %call21.i = tail call i32 @ata_bmdma_port_intr(ptr noundef %3, ptr noundef nonnull %retval.0.i.i) #10
  br label %nv_host_intr.exit

nv_host_intr.exit:                                ; preds = %if.end20.i, %if.then18.i, %if.end.i.nv_host_intr.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ 1, %if.then.i ], [ 1, %if.then18.i ], [ %call21.i, %if.end20.i ], [ 0, %if.end.i.nv_host_intr.exit_crit_edge ]
  %add = add i32 %retval.0.i, %handled.010
  %15 = lshr i8 %irq_stat.addr.08, 4
  %inc = add nuw i32 %i.09, 1
  %16 = ptrtoint ptr %n_ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_ports, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %nv_host_intr.exit.for.body_crit_edge, label %for.end.loopexit

nv_host_intr.exit.for.body_crit_edge:             ; preds = %nv_host_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %nv_host_intr.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %phi.cmp = icmp ne i32 %add, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  ret i32 %handled.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ata_sff_check_status(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_ck804_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 2
  %add.ptr = getelementptr i8, ptr %5, i32 1089
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %shl = shl i32 15, %mul
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv2 = and i8 %8, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv2) #10, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_ck804_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 15, %mul
  %conv = trunc i32 %shl to i8
  %add.ptr = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #10, !srcloc !275
  %add.ptr1 = getelementptr i8, ptr %5, i32 1089
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %shl3 = shl i32 13, %mul
  %9 = trunc i32 %shl3 to i8
  %conv5 = or i8 %8, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %conv5) #10, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_ck804_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  %regval = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval) #10
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regval, align 1, !annotation !241
  %call = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %regval) #10
  %3 = ptrtoint ptr %regval to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regval, align 1
  %5 = and i8 %4, -5
  store i8 %5, ptr %regval, align 1
  %call2 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 80, i8 noundef zeroext %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_qc_defer(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nv_adma_check_atapi_dma(ptr nocapture noundef readonly %qc) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 8
  %6 = lshr i8 %5, 1
  %.lobit = and i8 %6, 1
  %7 = xor i8 %.lobit, 1
  %8 = zext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %5 = load ptr, ptr %3, align 8
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %6 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_tag, align 4
  %arrayidx = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7
  %flags.i = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 8
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

lor.lhs.false.i:                                  ; preds = %entry
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %11 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tf.i, align 4
  %and2.i = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.land.rhs_crit_edge

lor.lhs.false.i.land.rhs_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags4.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags4.i, align 4
  %and5.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %nv_adma_use_reg_mode.exit, label %if.end.i.if.end17_crit_edge

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

nv_adma_use_reg_mode.exit:                        ; preds = %if.end.i
  %protocol.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i.not = icmp eq i8 %16, 0
  br i1 %cmp.i.not, label %nv_adma_use_reg_mode.exit.if.end17_crit_edge, label %nv_adma_use_reg_mode.exit.land.rhs_crit_edge

nv_adma_use_reg_mode.exit.land.rhs_crit_edge:     ; preds = %nv_adma_use_reg_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

nv_adma_use_reg_mode.exit.if.end17_crit_edge:     ; preds = %nv_adma_use_reg_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.rhs:                                         ; preds = %nv_adma_use_reg_mode.exit.land.rhs_crit_edge, %lor.lhs.false.i.land.rhs_crit_edge
  %flags3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %17 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags3, align 4
  %and4 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.rhs.do.end14_crit_edge, label %do.body9, !prof !256

land.rhs.do.end14_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.body9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_nv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1354, 0\0A.popsection", ""() #10, !srcloc !281
  unreachable

do.end14:                                         ; preds = %land.rhs.do.end14_crit_edge, %entry.do.end14_crit_edge
  tail call fastcc void @nv_adma_register_mode(ptr noundef %1)
  %call16 = tail call i32 @ata_bmdma_qc_prep(ptr noundef %qc) #10
  br label %cleanup

if.end17:                                         ; preds = %nv_adma_use_reg_mode.exit.if.end17_crit_edge, %if.end.i.if.end17_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %arrayidx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %ctl_flags21 = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 2
  %20 = ptrtoint ptr %ctl_flags21 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %ctl_flags21, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  tail call void @arm_heavy_mb() #10
  %len = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 3
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %len, align 1
  %22 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_tag, align 4
  %conv26 = trunc i32 %23 to i8
  %tag = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 4
  %24 = ptrtoint ptr %tag to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv26, ptr %tag, align 4
  %next_cpb_idx = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 5
  %25 = ptrtoint ptr %next_cpb_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %next_cpb_idx, align 1
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp = icmp eq i8 %27, 6
  %spec.select = select i1 %cmp, i8 27, i8 9
  %tf34 = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 7
  %28 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tf.i, align 4
  %and.i = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i77 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i77, label %if.end17.if.end59.i_crit_edge, label %if.then.i

if.end17.if.end59.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then.i:                                        ; preds = %if.end17
  %and2.i78 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i78)
  %tobool3.not.i79 = icmp eq i32 %and2.i78, 0
  br i1 %tobool3.not.i79, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %hob_feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %30 = ptrtoint ptr %hob_feature.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hob_feature.i, align 2
  %conv.i = zext i8 %31 to i16
  %or5.i = or i16 %conv.i, 16640
  %32 = tail call i16 @llvm.bswap.i16(i16 %or5.i) #10
  %33 = ptrtoint ptr %tf34 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %tf34, align 2
  %hob_nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %hob_nsect.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hob_nsect.i, align 1
  %conv7.i = zext i8 %35 to i16
  %or8.i = or i16 %conv7.i, 512
  %36 = tail call i16 @llvm.bswap.i16(i16 %or8.i) #10
  %arrayidx11.i = getelementptr i16, ptr %tf34, i32 1
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %arrayidx11.i, align 2
  %hob_lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %38 = ptrtoint ptr %hob_lbal.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %hob_lbal.i, align 4
  %conv12.i = zext i8 %39 to i16
  %or13.i = or i16 %conv12.i, 768
  %40 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #10
  %arrayidx16.i = getelementptr i16, ptr %tf34, i32 2
  %41 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %arrayidx16.i, align 2
  %hob_lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %42 = ptrtoint ptr %hob_lbam.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hob_lbam.i, align 1
  %conv17.i = zext i8 %43 to i16
  %or18.i = or i16 %conv17.i, 1024
  %44 = tail call i16 @llvm.bswap.i16(i16 %or18.i) #10
  %arrayidx21.i = getelementptr i16, ptr %tf34, i32 3
  %45 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %arrayidx21.i, align 2
  %hob_lbah.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %46 = ptrtoint ptr %hob_lbah.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hob_lbah.i, align 2
  %conv22.i = zext i8 %47 to i16
  %or23.i = or i16 %conv22.i, 1280
  %48 = tail call i16 @llvm.bswap.i16(i16 %or23.i) #10
  %arrayidx26.i = getelementptr i16, ptr %tf34, i32 4
  %49 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %arrayidx26.i, align 2
  %feature.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %50 = ptrtoint ptr %feature.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %feature.i, align 1
  %conv27.i = zext i8 %51 to i16
  %or28.i = or i16 %conv27.i, 256
  %52 = tail call i16 @llvm.bswap.i16(i16 %or28.i) #10
  %arrayidx31.i = getelementptr i16, ptr %tf34, i32 5
  %53 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %arrayidx31.i, align 2
  br label %if.end.i80

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %feature32.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %54 = ptrtoint ptr %feature32.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %feature32.i, align 1
  %conv33.i = zext i8 %55 to i16
  %or35.i = or i16 %conv33.i, 16640
  %56 = tail call i16 @llvm.bswap.i16(i16 %or35.i) #10
  %57 = ptrtoint ptr %tf34 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %tf34, align 2
  br label %if.end.i80

if.end.i80:                                       ; preds = %if.else.i, %if.then4.i
  %idx.0.i = phi i32 [ 6, %if.then4.i ], [ 1, %if.else.i ]
  %nsect.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %58 = ptrtoint ptr %nsect.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %nsect.i, align 4
  %conv39.i = zext i8 %59 to i16
  %or40.i = or i16 %conv39.i, 512
  %60 = tail call i16 @llvm.bswap.i16(i16 %or40.i) #10
  %inc42.i = add nuw nsw i32 %idx.0.i, 1
  %arrayidx43.i = getelementptr i16, ptr %tf34, i32 %idx.0.i
  %61 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %arrayidx43.i, align 2
  %lbal.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %62 = ptrtoint ptr %lbal.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lbal.i, align 1
  %conv44.i = zext i8 %63 to i16
  %or45.i = or i16 %conv44.i, 768
  %64 = tail call i16 @llvm.bswap.i16(i16 %or45.i) #10
  %inc47.i = add nuw nsw i32 %idx.0.i, 2
  %arrayidx48.i = getelementptr i16, ptr %tf34, i32 %inc42.i
  %65 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx48.i, align 2
  %lbam.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %66 = ptrtoint ptr %lbam.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %lbam.i, align 2
  %conv49.i = zext i8 %67 to i16
  %or50.i = or i16 %conv49.i, 1024
  %68 = tail call i16 @llvm.bswap.i16(i16 %or50.i) #10
  %inc52.i = add nuw nsw i32 %idx.0.i, 3
  %arrayidx53.i = getelementptr i16, ptr %tf34, i32 %inc47.i
  %69 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %arrayidx53.i, align 2
  %lbah.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %70 = ptrtoint ptr %lbah.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %lbah.i, align 1
  %conv54.i = zext i8 %71 to i16
  %or55.i = or i16 %conv54.i, 1280
  %72 = tail call i16 @llvm.bswap.i16(i16 %or55.i) #10
  %inc57.i = add nuw nsw i32 %idx.0.i, 4
  %arrayidx58.i = getelementptr i16, ptr %tf34, i32 %inc52.i
  %73 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %arrayidx58.i, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.end.i80, %if.end17.if.end59.i_crit_edge
  %idx.1.i = phi i32 [ %inc57.i, %if.end.i80 ], [ 0, %if.end17.if.end59.i_crit_edge ]
  %74 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tf.i, align 4
  %and61.i = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %if.end59.i.if.end69.i_crit_edge, label %if.then63.i

if.end59.i.if.end69.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69.i

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %76 = ptrtoint ptr %device.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %device.i, align 4
  %conv64.i = zext i8 %77 to i16
  %or65.i = or i16 %conv64.i, 1536
  %78 = tail call i16 @llvm.bswap.i16(i16 %or65.i) #10
  %inc67.i = add nuw nsw i32 %idx.1.i, 1
  %arrayidx68.i = getelementptr i16, ptr %tf34, i32 %idx.1.i
  %79 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %arrayidx68.i, align 2
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then63.i, %if.end59.i.if.end69.i_crit_edge
  %idx.2.i = phi i32 [ %inc67.i, %if.then63.i ], [ %idx.1.i, %if.end59.i.if.end69.i_crit_edge ]
  %command.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %80 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %command.i, align 1
  %conv70.i = zext i8 %81 to i16
  %or72.i = or i16 %conv70.i, -30976
  %82 = tail call i16 @llvm.bswap.i16(i16 %or72.i) #10
  %arrayidx75.i = getelementptr i16, ptr %tf34, i32 %idx.2.i
  %83 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %arrayidx75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %idx.2.i)
  %cmp2.i = icmp ult i32 %idx.2.i, 11
  br i1 %cmp2.i, label %while.body.i.preheader, label %if.end69.i.nv_adma_tf_to_cpb.exit_crit_edge

if.end69.i.nv_adma_tf_to_cpb.exit_crit_edge:      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_adma_tf_to_cpb.exit

while.body.i.preheader:                           ; preds = %if.end69.i
  %idx.31.i = add nuw nsw i32 %idx.2.i, 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %idx.33.i = phi i32 [ %idx.3.i, %while.body.i.while.body.i_crit_edge ], [ %idx.31.i, %while.body.i.preheader ]
  %arrayidx78.i = getelementptr i16, ptr %tf34, i32 %idx.33.i
  %84 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 32, ptr %arrayidx78.i, align 2
  %idx.3.i = add nuw nsw i32 %idx.33.i, 1
  %exitcond.not.i = icmp eq i32 %idx.3.i, 12
  br i1 %exitcond.not.i, label %while.body.i.nv_adma_tf_to_cpb.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.nv_adma_tf_to_cpb.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_adma_tf_to_cpb.exit

nv_adma_tf_to_cpb.exit:                           ; preds = %while.body.i.nv_adma_tf_to_cpb.exit_crit_edge, %if.end69.i.nv_adma_tf_to_cpb.exit_crit_edge
  %85 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags4.i, align 4
  %and37 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %nv_adma_tf_to_cpb.exit
  %87 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %qc, align 4
  %private_data.i81 = getelementptr inbounds %struct.ata_port, ptr %88, i32 0, i32 48
  %89 = ptrtoint ptr %private_data.i81 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %private_data.i81, align 4
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %91 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp26.not.i = icmp eq i32 %92, 0
  br i1 %cmp26.not.i, label %if.then39.nv_adma_fill_sg.exit_crit_edge, label %for.body.lr.ph.i

if.then39.nv_adma_fill_sg.exit_crit_edge:         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_adma_fill_sg.exit

for.body.lr.ph.i:                                 ; preds = %if.then39
  %sg1.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %93 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sg1.i, align 4
  %aprd4.i = getelementptr inbounds %struct.nv_adma_port_priv, ptr %90, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %95 = phi i32 [ %92, %for.body.lr.ph.i ], [ %118, %cond.end.i.for.body.i_crit_edge ]
  %si.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cond.end.i.for.body.i_crit_edge ]
  %sg.027.i = phi ptr [ %94, %for.body.lr.ph.i ], [ %call.i, %cond.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %si.028.i)
  %cmp2.i82 = icmp ult i32 %si.028.i, 5
  br i1 %cmp2.i82, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 8, i32 %si.028.i
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %aprd4.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %aprd4.i, align 8
  %98 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hw_tag, align 4
  %mul.i = mul i32 %99, 56
  %sub.i = add i32 %si.028.i, -5
  %add.i = add i32 %sub.i, %mul.i
  %arrayidx5.i = getelementptr %struct.nv_adma_prd, ptr %97, i32 %add.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %arrayidx.i, %cond.true.i ], [ %arrayidx5.i, %cond.false.i ]
  %100 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tf.i, align 4
  %102 = trunc i32 %101 to i8
  %103 = lshr i8 %102, 2
  %104 = and i8 %103, 2
  %sub.i.i = add i32 %95, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %si.028.i)
  %cmp.i.i = icmp eq i32 %sub.i.i, %si.028.i
  %105 = or i8 %104, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %si.028.i)
  %cmp8.not.i.i = icmp eq i32 %si.028.i, 4
  %106 = or i8 %104, 8
  %spec.select27.i.i = select i1 %cmp8.not.i.i, i8 %104, i8 %106
  %flags.1.i.i = select i1 %cmp.i.i, i8 %105, i8 %spec.select27.i.i
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.027.i, i32 0, i32 3
  %107 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_address.i.i, align 4
  %conv16.i.i = zext i32 %108 to i64
  %109 = tail call i64 @llvm.bswap.i64(i64 %conv16.i.i) #10
  %110 = ptrtoint ptr %cond.i to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %cond.i, align 8
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.027.i, i32 0, i32 4
  %111 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dma_length.i.i, align 4
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #10
  %len.i.i = getelementptr inbounds %struct.nv_adma_prd, ptr %cond.i, i32 0, i32 1
  %114 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %len.i.i, align 8
  %flags17.i.i = getelementptr inbounds %struct.nv_adma_prd, ptr %cond.i, i32 0, i32 2
  %115 = ptrtoint ptr %flags17.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %flags.1.i.i, ptr %flags17.i.i, align 4
  %packet_len.i.i = getelementptr inbounds %struct.nv_adma_prd, ptr %cond.i, i32 0, i32 3
  %116 = ptrtoint ptr %packet_len.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %packet_len.i.i, align 1
  %inc.i = add nuw i32 %si.028.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.027.i) #10
  %117 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %n_elem.i, align 4
  %cmp.i83 = icmp ult i32 %inc.i, %118
  br i1 %cmp.i83, label %cond.end.i.for.body.i_crit_edge, label %for.end.i

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %si.028.i)
  %phi.cmp.i = icmp ugt i32 %si.028.i, 4
  br i1 %phi.cmp.i, label %if.then.i85, label %for.end.i.nv_adma_fill_sg.exit_crit_edge

for.end.i.nv_adma_fill_sg.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_adma_fill_sg.exit

if.then.i85:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %aprd_dma.i = getelementptr inbounds %struct.nv_adma_port_priv, ptr %90, i32 0, i32 3
  %119 = ptrtoint ptr %aprd_dma.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %aprd_dma.i, align 4
  %121 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hw_tag, align 4
  %mul8.i = mul i32 %122, 896
  %add9.i = add i32 %mul8.i, %120
  %conv.i84 = zext i32 %add9.i to i64
  %123 = tail call i64 @llvm.bswap.i64(i64 %conv.i84) #10
  br label %nv_adma_fill_sg.exit

nv_adma_fill_sg.exit:                             ; preds = %if.then.i85, %for.end.i.nv_adma_fill_sg.exit_crit_edge, %if.then39.nv_adma_fill_sg.exit_crit_edge
  %.sink.i = phi i64 [ %123, %if.then.i85 ], [ 0, %for.end.i.nv_adma_fill_sg.exit_crit_edge ], [ 0, %if.then39.nv_adma_fill_sg.exit_crit_edge ]
  %124 = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 9
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %.sink.i, ptr %124, align 8
  %126 = or i8 %spec.select, 4
  br label %do.body45

if.else:                                          ; preds = %nv_adma_tf_to_cpb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %aprd = getelementptr %struct.nv_adma_cpb, ptr %5, i32 %7, i32 8
  %127 = call ptr @memset(ptr %aprd, i32 0, i32 80)
  br label %do.body45

do.body45:                                        ; preds = %if.else, %nv_adma_fill_sg.exit
  %ctl_flags.1 = phi i8 [ %126, %nv_adma_fill_sg.exit ], [ %spec.select, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  tail call void @arm_heavy_mb() #10
  %128 = ptrtoint ptr %ctl_flags21 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %ctl_flags.1, ptr %ctl_flags21, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  tail call void @arm_heavy_mb() #10
  %129 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body45, %do.end14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_block, align 8
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp eq i8 %7, 6
  %conv1 = zext i1 %cmp to i32
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !256

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmp, align 4
  %devno = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %devno, align 4
  %add = add i32 %21, %19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %17, i32 noundef %add) #13
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %flags.i = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags.i, align 8
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.do.end41_crit_edge

if.end.do.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

lor.lhs.false.i:                                  ; preds = %if.end
  %tf.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %25 = ptrtoint ptr %tf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tf.i, align 4
  %and2.i = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %lor.lhs.false.i.land.rhs21_crit_edge

lor.lhs.false.i.land.rhs21_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs21

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags4.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %27 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags4.i, align 4
  %and5.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i.not = icmp eq i8 %7, 0
  %or.cond = select i1 %tobool6.not.i, i1 true, i1 %cmp.i.not
  br i1 %or.cond, label %if.else, label %if.end.i.land.rhs21_crit_edge

if.end.i.land.rhs21_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs21

land.rhs21:                                       ; preds = %if.end.i.land.rhs21_crit_edge, %lor.lhs.false.i.land.rhs21_crit_edge
  %flags22 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %29 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags22, align 4
  %and23 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %land.rhs21.do.end41_crit_edge, label %do.body33, !prof !256

land.rhs21.do.end41_crit_edge:                    ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end41

do.body33:                                        ; preds = %land.rhs21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/sata_nv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1409, 0\0A.popsection", ""() #10, !srcloc !286
  unreachable

do.end41:                                         ; preds = %land.rhs21.do.end41_crit_edge, %if.end.do.end41_crit_edge
  tail call fastcc void @nv_adma_register_mode(ptr noundef %1)
  %call43 = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #10
  br label %cleanup

if.else:                                          ; preds = %if.end.i
  %conv.i = zext i8 %23 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i78 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i78, label %if.else.nv_adma_mode.exit_crit_edge, label %if.end.i79

if.else.nv_adma_mode.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_adma_mode.exit

if.end.i79:                                       ; preds = %if.else
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i79.if.end19.i_crit_edge, label %do.end.i, !prof !256

if.end.i79.if.end19.i_crit_edge:                  ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

do.end.i:                                         ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 644, i32 noundef 9, ptr noundef null) #10
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.end.i79.if.end19.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %5, i32 64
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  tail call void @arm_heavy_mb() #10
  %32 = or i16 %31, -32768
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %32) #10, !srcloc !264
  %add.ptr37.i = getelementptr i8, ptr %5, i32 68
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  %34 = and i16 %33, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %.not.i = icmp eq i16 %34, 1
  br i1 %.not.i, label %if.end19.i.if.end63.i_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  br label %while.body.i

if.end19.i.if.end63.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end19.i.while.body.i_crit_edge
  %count.086.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end19.i.while.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #10
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr37.i) #10, !srcloc !261
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !290
  %inc.i = add nuw nsw i32 %count.086.i, 1
  %conv41.i = zext i16 %37 to i32
  %38 = and i32 %conv41.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %38)
  %39 = icmp ne i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.086.i)
  %cmp.i80 = icmp ult i32 %count.086.i, 19
  %or.cond84.i = select i1 %39, i1 %cmp.i80, i1 false
  br i1 %or.cond84.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc.i)
  %phi.cmp.i = icmp eq i32 %inc.i, 20
  br i1 %phi.cmp.i, label %do.end59.i, label %while.end.i.if.end63.i_crit_edge

while.end.i.if.end63.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

do.end59.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %print_id.i, align 4
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %41, i32 noundef %conv41.i) #13
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end59.i, %while.end.i.if.end63.i_crit_edge, %if.end19.i.if.end63.i_crit_edge
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags.i, align 8
  %44 = and i8 %43, -2
  store i8 %44, ptr %flags.i, align 8
  br label %nv_adma_mode.exit

nv_adma_mode.exit:                                ; preds = %if.end63.i, %if.else.nv_adma_mode.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !291
  tail call void @arm_heavy_mb() #10
  %last_issue_ncq = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 9
  %45 = ptrtoint ptr %last_issue_ncq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_issue_ncq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %conv1)
  %cmp49.not = icmp eq i32 %46, %conv1
  br i1 %cmp49.not, label %nv_adma_mode.exit.do.body54_crit_edge, label %if.then51

nv_adma_mode.exit.do.body54_crit_edge:            ; preds = %nv_adma_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body54

if.then51:                                        ; preds = %nv_adma_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 4294960) #10
  %48 = ptrtoint ptr %last_issue_ncq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv1, ptr %last_issue_ncq, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.then51, %nv_adma_mode.exit.do.body54_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !292
  tail call void @arm_heavy_mb() #10
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %49 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_tag, align 4
  %conv57 = trunc i32 %50 to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %add.ptr = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %51) #10, !srcloc !264
  br label %cleanup

cleanup:                                          ; preds = %do.body54, %do.end41, %do.end
  %retval.0 = phi i32 [ 64, %do.end ], [ %call43, %do.end41 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 2
  %add.ptr.i = getelementptr i8, ptr %9, i32 1089
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %shl.i = shl i32 15, %mul.i
  %13 = trunc i32 %shl.i to i8
  %14 = xor i8 %13, -1
  %conv2.i = and i8 %12, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv2.i) #10, !srcloc !275
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 8
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !293
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_no.i, align 4
  %mul = shl i32 %19, 2
  %shl = shl i32 15, %mul
  %conv1 = trunc i32 %shl to i8
  %20 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host.i, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 5
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 1088
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv1) #10, !srcloc !275
  %add.ptr2 = getelementptr i8, ptr %3, i32 64
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !294
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !295
  tail call void @arm_heavy_mb() #10
  %27 = and i16 %26, -258
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 %27) #10, !srcloc !264
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !296
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %iomap.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %iomap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomap.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  tail call void @arm_heavy_mb() #10
  %shl.i = shl i32 15, %mul.i
  %conv.i = trunc i32 %shl.i to i8
  %add.ptr.i = getelementptr i8, ptr %9, i32 1088
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #10, !srcloc !275
  %add.ptr1.i = getelementptr i8, ptr %9, i32 1089
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr1.i) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %shl3.i = shl i32 13, %mul.i
  %13 = trunc i32 %shl3.i to i8
  %conv5.i = or i8 %12, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1.i, i8 %conv5.i) #10, !srcloc !275
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags, align 8
  %16 = and i8 %15, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !298
  tail call void @arm_heavy_mb() #10
  %18 = or i16 %17, 257
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %18) #10, !srcloc !264
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !299
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end116_crit_edge

entry.if.end116_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then:                                          ; preds = %entry
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl_block, align 8
  %active_tag = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 3
  %7 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %9 = icmp ult i32 %8, 33
  br i1 %9, label %if.then.if.then4_crit_edge, label %lor.lhs.false

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.then
  %sactive = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 4
  %10 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end67_crit_edge, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

lor.lhs.false.if.end67_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %add.ptr = getelementptr i8, ptr %6, i32 104
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !243
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !300
  %add.ptr10 = getelementptr i8, ptr %6, i32 108
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !243
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !301
  %gen_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %gen_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gen_block, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #10, !srcloc !243
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !302
  %add.ptr22 = getelementptr i8, ptr %6, i32 68
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #10, !srcloc !261
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !303
  %conv26 = zext i16 %21 to i32
  %add.ptr29 = getelementptr i8, ptr %6, i32 66
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !304
  %add.ptr35 = getelementptr i8, ptr %6, i32 67
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !305
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %24 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %print_id, align 4
  %conv40 = zext i8 %22 to i32
  %conv41 = zext i8 %23 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %25, i32 noundef %13, i32 noundef %15, i32 noundef %19, i32 noundef %conv26, i32 noundef %conv40, i32 noundef %conv41) #13
  %sactive55 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then4
  %i.0150 = phi i32 [ 0, %if.then4 ], [ %inc, %if.end.for.body_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.nv_adma_cpb, ptr %27, i32 %i.0150
  %28 = ptrtoint ptr %active_tag to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %active_tag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %29)
  %30 = icmp ult i32 %29, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0150, i32 %29)
  %cmp51 = icmp eq i32 %i.0150, %29
  %or.cond = select i1 %30, i1 %cmp51, i1 false
  br i1 %or.cond, label %for.body.do.end61_crit_edge, label %lor.lhs.false53

for.body.do.end61_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

lor.lhs.false53:                                  ; preds = %for.body
  %31 = ptrtoint ptr %sactive55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sactive55, align 4
  %shl = shl nuw i32 1, %i.0150
  %and56 = and i32 %32, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %lor.lhs.false53.if.end_crit_edge, label %lor.lhs.false53.do.end61_crit_edge

lor.lhs.false53.do.end61_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

lor.lhs.false53.if.end_crit_edge:                 ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end61:                                         ; preds = %lor.lhs.false53.do.end61_crit_edge, %for.body.do.end61_crit_edge
  %33 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %print_id, align 4
  %ctl_flags = getelementptr %struct.nv_adma_cpb, ptr %27, i32 %i.0150, i32 2
  %35 = ptrtoint ptr %ctl_flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ctl_flags, align 2
  %conv64 = zext i8 %36 to i32
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 8
  %conv65 = zext i8 %38 to i32
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %34, i32 noundef %i.0150, i32 noundef %conv64, i32 noundef %conv65) #13
  br label %if.end

if.end:                                           ; preds = %do.end61, %lor.lhs.false53.if.end_crit_edge
  %inc = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %if.end.if.end67_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.end67:                                         ; preds = %if.end.if.end67_crit_edge, %lor.lhs.false.if.end67_crit_edge
  tail call fastcc void @nv_adma_register_mode(ptr noundef %ap)
  br label %for.body71

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %if.end67
  %i.1152 = phi i32 [ 0, %if.end67 ], [ %inc79, %for.body71.for.body71_crit_edge ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %ctl_flags74 = getelementptr %struct.nv_adma_cpb, ptr %40, i32 %i.1152, i32 2
  %41 = ptrtoint ptr %ctl_flags74 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ctl_flags74, align 2
  %43 = and i8 %42, -2
  store i8 %43, ptr %ctl_flags74, align 2
  %inc79 = add nuw nsw i32 %i.1152, 1
  %exitcond153.not = icmp eq i32 %inc79, 32
  br i1 %exitcond153.not, label %do.body81, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body71

do.body81:                                        ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !306
  tail call void @arm_heavy_mb() #10
  %add.ptr84 = getelementptr i8, ptr %6, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 0) #10, !srcloc !264
  %add.ptr87 = getelementptr i8, ptr %6, i32 64
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr87) #10, !srcloc !261
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !308
  tail call void @arm_heavy_mb() #10
  %or = or i16 %45, 32
  %46 = tail call i16 @llvm.bswap.i16(i16 %or)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 %46) #10, !srcloc !264
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr87) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !309
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !310
  tail call void @arm_heavy_mb() #10
  %49 = and i16 %45, -33
  %50 = tail call i16 @llvm.bswap.i16(i16 %49)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 %50) #10, !srcloc !264
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr87) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !311
  br label %if.end116

if.end116:                                        ; preds = %do.body81, %entry.if.end116_crit_edge
  tail call void @ata_bmdma_error_handler(ptr noundef %ap) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_post_internal_cmd(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 8
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ata_bmdma_post_internal_cmd(ptr noundef %qc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_port_suspend(ptr nocapture noundef readonly %ap, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  tail call fastcc void @nv_adma_register_mode(ptr noundef %ap)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %3, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #10, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  tail call void @arm_heavy_mb() #10
  %add.ptr4 = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 0) #10, !srcloc !264
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_port_resume(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !314
  tail call void @arm_heavy_mb() #10
  %cpb_dma = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %cpb_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpb_dma, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %add.ptr = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !315
  tail call void @arm_heavy_mb() #10
  %add.ptr6 = getelementptr i8, ptr %3, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !316
  tail call void @arm_heavy_mb() #10
  %add.ptr10 = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10, i16 -1) #10, !srcloc !264
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 8
  %9 = or i8 %8, 1
  store i8 %9, ptr %flags, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void @arm_heavy_mb() #10
  %add.ptr15 = getelementptr i8, ptr %3, i32 66
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15, i16 0) #10, !srcloc !264
  %add.ptr16 = getelementptr i8, ptr %3, i32 64
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  tail call void @arm_heavy_mb() #10
  %11 = and i16 %10, 32510
  %12 = or i16 %11, 257
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %12) #10, !srcloc !264
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #10, !srcloc !261
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void @arm_heavy_mb() #10
  %or38 = or i16 %14, 32
  %15 = tail call i16 @llvm.bswap.i16(i16 %or38)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %15) #10, !srcloc !264
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void @arm_heavy_mb() #10
  %18 = and i16 %14, -33
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr16, i16 %19) #10, !srcloc !264
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_port_start(ptr noundef %ap) #2 align 64 {
entry:
  %mem_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_dma) #10
  %4 = ptrtoint ptr %mem_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mem_dma, align 4, !annotation !241
  %call.i = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #10
  %call4 = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i135 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #10
  %tobool9.not = icmp eq ptr %call.i135, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 1152
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %11 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_no, align 4
  %mul = shl i32 %12, 8
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 %mul
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 4
  %13 = ptrtoint ptr %ctl_block to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr14, ptr %ctl_block, align 8
  %14 = load ptr, ptr %iomap, align 4
  %arrayidx17 = getelementptr ptr, ptr %14, i32 5
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx17, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 1024
  %gen_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 5
  %17 = ptrtoint ptr %gen_block to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr18, ptr %gen_block, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 1072
  %mul22 = shl i32 %12, 2
  %add.ptr23 = getelementptr i8, ptr %add.ptr20, i32 %mul22
  %notifier_clear_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 6
  %18 = ptrtoint ptr %notifier_clear_block to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr23, ptr %notifier_clear_block, align 8
  %call.i136 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %cmp.i137 = icmp eq i32 %call.i136, 0
  br i1 %cmp.i137, label %if.then.i139, label %if.end11.dma_set_mask_and_coherent.exit140_crit_edge

if.end11.dma_set_mask_and_coherent.exit140_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_mask_and_coherent.exit140

if.then.i139:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i138 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef -1) #10
  br label %dma_set_mask_and_coherent.exit140

dma_set_mask_and_coherent.exit140:                ; preds = %if.then.i139, %if.end11.dma_set_mask_and_coherent.exit140_crit_edge
  %dma_mask = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_mask, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %20, align 8
  %adma_dma_mask = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 7
  %23 = ptrtoint ptr %adma_dma_mask to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %adma_dma_mask, align 8
  %call.i141 = call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 32768, ptr noundef nonnull %mem_dma, i32 noundef 3264, i32 noundef 0) #10
  %tobool27.not = icmp eq ptr %call.i141, null
  br i1 %tobool27.not, label %dma_set_mask_and_coherent.exit140.cleanup_crit_edge, label %if.end29

dma_set_mask_and_coherent.exit140.cleanup_crit_edge: ; preds = %dma_set_mask_and_coherent.exit140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %dma_set_mask_and_coherent.exit140
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call.i135 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i141, ptr %call.i135, align 8
  %25 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_dma, align 4
  %cpb_dma = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 1
  %27 = ptrtoint ptr %cpb_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cpb_dma, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_dma, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %add.ptr30 = getelementptr i8, ptr %add.ptr14, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %30) #10, !srcloc !247
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  call void @arm_heavy_mb() #10
  %add.ptr35 = getelementptr i8, ptr %add.ptr14, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #10, !srcloc !247
  %add.ptr36 = getelementptr i8, ptr %call.i141, i32 4096
  %31 = ptrtoint ptr %mem_dma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mem_dma, align 4
  %add = add i32 %32, 4096
  store i32 %add, ptr %mem_dma, align 4
  %aprd = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 2
  %33 = ptrtoint ptr %aprd to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr36, ptr %aprd, align 8
  %aprd_dma = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 3
  %34 = ptrtoint ptr %aprd_dma to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %aprd_dma, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %35 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i135, ptr %private_data, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  call void @arm_heavy_mb() #10
  %add.ptr40 = getelementptr i8, ptr %add.ptr14, i32 68
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40, i16 -1) #10, !srcloc !264
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %call.i135, i32 0, i32 8
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %flags, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !328
  call void @arm_heavy_mb() #10
  %add.ptr44 = getelementptr i8, ptr %add.ptr14, i32 66
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44, i16 0) #10, !srcloc !264
  %add.ptr45 = getelementptr i8, ptr %add.ptr14, i32 64
  %37 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #10, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  call void @arm_heavy_mb() #10
  %38 = and i16 %37, 32510
  %39 = or i16 %38, 257
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %39) #10, !srcloc !264
  %40 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #10, !srcloc !261
  %41 = call i16 @llvm.bswap.i16(i16 %40)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  call void @arm_heavy_mb() #10
  %or66 = or i16 %41, 32
  %42 = call i16 @llvm.bswap.i16(i16 %or66)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %42) #10, !srcloc !264
  %43 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #10, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !334
  call void @arm_heavy_mb() #10
  %45 = and i16 %41, -33
  %46 = call i16 @llvm.bswap.i16(i16 %45)
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 %46) #10, !srcloc !264
  %47 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr45) #10, !srcloc !261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !335
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %dma_set_mask_and_coherent.exit140.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call4, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ -12, %dma_set_mask_and_coherent.exit140.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_dma) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_port_stop(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !336
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #10, !srcloc !264
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  %regval.i = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32) #10
  %2 = ptrtoint ptr %tmp32 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp32, align 4, !annotation !241
  %call = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %tmp32) #10
  %3 = ptrtoint ptr %tmp32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp32, align 4
  %and = and i32 %4, -217089
  store i32 %and, ptr %tmp32, align 4
  %call1 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 80, i32 noundef %and) #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.i) #10
  %7 = ptrtoint ptr %regval.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %regval.i, align 1, !annotation !241
  %call.i = call i32 @pci_read_config_byte(ptr noundef %add.ptr.i, i32 noundef 80, ptr noundef nonnull %regval.i) #10
  %8 = ptrtoint ptr %regval.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regval.i, align 1
  %10 = and i8 %9, -5
  store i8 %10, ptr %regval.i, align 1
  %call2.i = call i32 @pci_write_config_byte(ptr noundef %add.ptr.i, i32 noundef 80, i8 noundef zeroext %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_tf_read(ptr noundef %ap, ptr noundef %tf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nv_adma_register_mode(ptr noundef %ap)
  tail call void @ata_sff_tf_read(ptr noundef %ap, ptr noundef %tf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_adma_irq_clear(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 8
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ata_bmdma_irq_clear(ptr noundef %ap) #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl_block, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !337
  tail call void @arm_heavy_mb() #10
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %7 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port_no, align 4
  %mul = shl i32 %8, 2
  %shl = shl i32 15, %mul
  %conv1 = trunc i32 %shl to i8
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 1088
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv1) #10, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !338
  tail call void @arm_heavy_mb() #10
  %add.ptr5 = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 -1) #10, !srcloc !264
  %15 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %not.cmp = xor i1 %cmp, true
  %. = sext i1 %not.cmp to i32
  %.41 = sext i1 %cmp to i32
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  %private_data16 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 48
  %21 = ptrtoint ptr %private_data16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !339
  tail call void @arm_heavy_mb() #10
  %23 = tail call i32 @llvm.bswap.i32(i32 %.41)
  %notifier_clear_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %22, i32 0, i32 6
  %24 = ptrtoint ptr %notifier_clear_block to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %notifier_clear_block, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #10, !srcloc !247
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %arrayidx23 = getelementptr %struct.ata_host, ptr %27, i32 1, i32 0, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx23, align 4
  %private_data24 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 48
  %30 = ptrtoint ptr %private_data24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data24, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !340
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %.)
  %notifier_clear_block29 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %31, i32 0, i32 6
  %33 = ptrtoint ptr %notifier_clear_block29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %notifier_clear_block29, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !247
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_adma_register_mode(ptr nocapture noundef readonly %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctl_block = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctl_block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl_block, align 8
  %flags = getelementptr inbounds %struct.nv_adma_port_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 8
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %3, i32 68
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !341
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not94 = icmp eq i16 %8, 0
  br i1 %tobool5.not94, label %if.end.while.body_crit_edge, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %count.095 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #10
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !342
  %inc = add nuw nsw i32 %count.095, 1
  %conv3 = zext i16 %11 to i32
  %and4 = and i32 %conv3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.095)
  %cmp = icmp ult i32 %count.095, 19
  %or.cond = select i1 %tobool5.not, i1 %cmp, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc)
  %phi.cmp = icmp eq i32 %inc, 20
  br i1 %phi.cmp, label %do.end, label %while.end.if.end19_crit_edge

while.end.if.end19_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %13, i32 noundef %conv3) #13
  br label %if.end19

if.end19:                                         ; preds = %do.end, %while.end.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %add.ptr22 = getelementptr i8, ptr %3, i32 64
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !344
  tail call void @arm_heavy_mb() #10
  %15 = and i16 %14, 32767
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 %15) #10, !srcloc !264
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !345
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool42.not99 = icmp eq i16 %17, 0
  br i1 %tobool42.not99, label %if.end19.while.body47_crit_edge, label %if.end19.if.end66_crit_edge

if.end19.if.end66_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.end19.while.body47_crit_edge:                  ; preds = %if.end19
  br label %while.body47

while.body47:                                     ; preds = %while.body47.while.body47_crit_edge, %if.end19.while.body47_crit_edge
  %count.1100 = phi i32 [ %inc54, %while.body47.while.body47_crit_edge ], [ 0, %if.end19.while.body47_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #10
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !261
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !346
  %inc54 = add nuw nsw i32 %count.1100, 1
  %conv40 = zext i16 %20 to i32
  %and41 = and i32 %conv40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %count.1100)
  %cmp44 = icmp ult i32 %count.1100, 19
  %or.cond91 = select i1 %tobool42.not, i1 %cmp44, i1 false
  br i1 %or.cond91, label %while.body47.while.body47_crit_edge, label %while.end55

while.body47.while.body47_crit_edge:              ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body47

while.end55:                                      ; preds = %while.body47
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %inc54)
  %phi.cmp105 = icmp eq i32 %inc54, 20
  br i1 %phi.cmp105, label %do.end61, label %while.end55.if.end66_crit_edge

while.end55.if.end66_crit_edge:                   ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end61:                                         ; preds = %while.end55
  call void @__sanitizer_cov_trace_pc() #12
  %print_id63 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %21 = ptrtoint ptr %print_id63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %print_id63, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %22, i32 noundef %conv40) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %while.end55.if.end66_crit_edge, %if.end19.if.end66_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags, align 8
  %25 = or i8 %24, 1
  store i8 %25, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_qc_issue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_error_handler(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_post_internal_cmd(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_bmdma_port_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_tf_read(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_irq_clear(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nv_adma_check_cpb(ptr noundef %ap, i32 noundef %cpb_num, i32 noundef %force_err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %arrayidx = getelementptr %struct.nv_adma_cpb, ptr %3, i32 %cpb_num
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_adma_check_cpb.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_adma_check_cpb, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %6 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %print_id, align 4
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_adma_check_cpb.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.51, i32 noundef %7, i32 noundef %cpb_num, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force_err)
  %tobool3.not = icmp ne i32 %force_err, 0
  %8 = and i8 %5, -104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5 = icmp ne i8 %8, 0
  %9 = select i1 %tobool3.not, i1 true, i1 %tobool5
  br i1 %9, label %if.then12, label %if.end43, !prof !251

if.then12:                                        ; preds = %do.end
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  %conv13 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.52, i32 noundef %conv13) #10
  %and15 = and i32 %conv13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else, label %if.then12.if.else40_crit_edge

if.then12.if.else40_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.else:                                          ; preds = %if.then12
  %and19 = and i32 %conv13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else24, label %if.else.if.else40_crit_edge

if.else.if.else40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else40

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and26 = and i32 %conv13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %.str.49..str.55 = select i1 %tobool27.not, ptr @.str.49, ptr @.str.55
  %. = select i1 %tobool27.not, i32 256, i32 64
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull %.str.49..str.55) #10
  %err_mask29 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %10 = ptrtoint ptr %err_mask29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %err_mask29, align 4
  %or30 = or i32 %11, %.
  store i32 %or30, ptr %err_mask29, align 4
  %call39 = tail call i32 @ata_port_freeze(ptr noundef %ap) #10
  br label %cleanup

if.else40:                                        ; preds = %if.else.if.else40_crit_edge, %if.then12.if.else40_crit_edge
  %.str.53.sink = phi ptr [ @.str.53, %if.then12.if.else40_crit_edge ], [ @.str.54, %if.else.if.else40_crit_edge ]
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull %.str.53.sink) #10
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %12 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err_mask, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %err_mask, align 4
  %call41 = tail call i32 @ata_port_abort(ptr noundef %ap) #10
  br label %cleanup

if.end43:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = and i8 %5, 1
  %15 = zext i8 %14 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.else40, %if.else24
  %retval.0 = phi i32 [ -1, %if.else40 ], [ -1, %if.else24 ], [ %15, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_qc_complete_multiple(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ata_qc_get_active(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_adma_slave_config(ptr noundef %sdev) #2 align 64 {
entry:
  %current_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %host1 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host1, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %current_reg) #10
  %10 = ptrtoint ptr %current_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %current_reg, align 4, !annotation !241
  %call2 = tail call i32 @ata_scsi_slave_config(ptr noundef %sdev) #10
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp ugt i32 %12, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %13 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %15 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool4.not = icmp eq i64 %16, 0
  br i1 %tobool4.not, label %do.body5, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body5:                                         ; preds = %lor.lhs.false3
  %lock = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #10
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 8
  %class = getelementptr %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 %20, i32 9
  %21 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp13 = icmp eq i32 %22, 3
  br i1 %cmp13, label %if.then15, label %do.body5.if.end16_crit_edge

do.body5.if.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nv_adma_register_mode(ptr noundef %3)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body5.if.end16_crit_edge
  %segment_boundary.0 = phi i32 [ 65535, %if.then15 ], [ -1, %do.body5.if.end16_crit_edge ]
  %sg_tablesize.0 = phi i16 [ 127, %if.then15 ], [ 61, %do.body5.if.end16_crit_edge ]
  %call17 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef 80, ptr noundef nonnull %current_reg) #10
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp18 = icmp eq i32 %24, 1
  %. = select i1 %cmp18, i32 69632, i32 147456
  %25 = ptrtoint ptr %current_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %current_reg, align 4
  br i1 %cmp13, label %if.else28, label %if.then24

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %26, %.
  %flags25 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %flags25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags25, align 8
  %29 = and i8 %28, -3
  store i8 %29, ptr %flags25, align 8
  br label %if.end34

if.else28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %neg = xor i32 %., -1
  %and29 = and i32 %26, %neg
  %flags30 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %5, i32 0, i32 8
  %30 = ptrtoint ptr %flags30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags30, align 8
  %32 = or i8 %31, 2
  store i8 %32, ptr %flags30, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.else28, %if.then24
  %new_reg.0 = phi i32 [ %or, %if.then24 ], [ %and29, %if.else28 ]
  %33 = ptrtoint ptr %current_reg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %current_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %new_reg.0)
  %cmp35.not = icmp eq i32 %34, %new_reg.0
  br i1 %cmp35.not, label %if.end34.if.end39_crit_edge, label %if.then37

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = call i32 @pci_write_config_dword(ptr noundef %add.ptr, i32 noundef 80, i32 noundef %new_reg.0) #10
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end34.if.end39_crit_edge
  %35 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host1, align 4
  %ports = getelementptr inbounds %struct.ata_host, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ports, align 4
  %private_data42 = getelementptr inbounds %struct.ata_port, ptr %38, i32 0, i32 48
  %39 = ptrtoint ptr %private_data42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data42, align 4
  %flags47 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %flags47 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags47, align 8
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool50.not = icmp eq i8 %43, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %if.end39.if.end62_crit_edge

if.end39.if.end62_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

lor.lhs.false51:                                  ; preds = %if.end39
  %arrayidx45 = getelementptr %struct.ata_host, ptr %36, i32 1, i32 0, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx45, align 4
  %private_data46 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 48
  %46 = ptrtoint ptr %private_data46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private_data46, align 4
  %flags52 = getelementptr inbounds %struct.nv_adma_port_priv, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %flags52 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags52, align 8
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool55.not = icmp eq i8 %50, 0
  br i1 %tobool55.not, label %if.else59, label %lor.lhs.false51.if.end62_crit_edge

lor.lhs.false51.if.end62_crit_edge:               ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.else59:                                        ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  %adma_dma_mask = getelementptr inbounds %struct.nv_adma_port_priv, ptr %5, i32 0, i32 7
  %51 = ptrtoint ptr %adma_dma_mask to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %adma_dma_mask, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %lor.lhs.false51.if.end62_crit_edge, %if.end39.if.end62_crit_edge
  %.sink = phi i64 [ %52, %if.else59 ], [ 4294967295, %lor.lhs.false51.if.end62_crit_edge ], [ 4294967295, %if.end39.if.end62_crit_edge ]
  %call61 = call i32 @dma_set_mask(ptr noundef %9, i64 noundef %.sink) #10
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %53 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %request_queue, align 4
  call void @blk_queue_segment_boundary(ptr noundef %54, i32 noundef %segment_boundary.0) #10
  %55 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %request_queue, align 4
  call void @blk_queue_max_segments(ptr noundef %56, i16 noundef zeroext %sg_tablesize.0) #10
  %print_id = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 5
  %57 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %print_id, align 4
  %59 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %host1, align 4
  %dev69 = getelementptr inbounds %struct.ata_host, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev69, align 4
  %dma_mask = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 18
  %63 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dma_mask, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %64, align 8
  %conv70 = zext i16 %sg_tablesize.0 to i32
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %58, i64 noundef %66, i32 noundef %segment_boundary.0, i32 noundef %conv70) #13
  %67 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lock, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %68, i32 noundef %call9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61, %if.end62 ], [ %call2, %lor.lhs.false3.cleanup_crit_edge ], [ %call2, %lor.lhs.false.cleanup_crit_edge ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %current_reg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_segment_boundary(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_qc_prep(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.not = icmp eq i8 %1, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ata_bmdma_qc_prep(ptr noundef %qc) #10
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qc, align 4
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 48
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %hw_tag.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %10 = ptrtoint ptr %hw_tag.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hw_tag.i, align 4
  %mul.i = shl i32 %11, 8
  %add.ptr.i = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %mul.i
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %12 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp37.not.i = icmp eq i32 %13, 0
  br i1 %cmp37.not.i, label %if.end3.nv_swncq_fill_sg.exit_crit_edge, label %for.body.preheader.i

if.end3.nv_swncq_fill_sg.exit_crit_edge:          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_swncq_fill_sg.exit

for.body.preheader.i:                             ; preds = %if.end3
  %sg3.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %14 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg3.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %while.end.i.for.body.i_crit_edge, %for.body.preheader.i
  %idx.040.i = phi i32 [ %idx.1.lcssa.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %si.039.i = phi i32 [ %inc10.i, %while.end.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.038.i = phi ptr [ %call.i, %while.end.i.for.body.i_crit_edge ], [ %15, %for.body.preheader.i ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038.i, i32 0, i32 4
  %16 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not33.i = icmp eq i32 %17, 0
  br i1 %tobool.not33.i, label %for.body.i.while.end.i_crit_edge, label %while.body.preheader.i

for.body.i.while.end.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %for.body.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.038.i, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %sg_len.036.i = phi i32 [ %sub8.i, %while.body.i.while.body.i_crit_edge ], [ %17, %while.body.preheader.i ]
  %addr.035.i = phi i32 [ %add9.i, %while.body.i.while.body.i_crit_edge ], [ %19, %while.body.preheader.i ]
  %idx.134.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %idx.040.i, %while.body.preheader.i ]
  %and.i = and i32 %addr.035.i, 65535
  %add.i = add i32 %and.i, %sg_len.036.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %add.i)
  %cmp4.i = icmp ugt i32 %add.i, 65536
  %sub.i = sub nuw nsw i32 65536, %and.i
  %spec.select.i = select i1 %cmp4.i, i32 %sub.i, i32 %sg_len.036.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %addr.035.i) #10
  %arrayidx.i = getelementptr %struct.ata_bmdma_prd, ptr %add.ptr.i, i32 %idx.134.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.i, align 4
  %and6.i = and i32 %spec.select.i, 65535
  %22 = tail call i32 @llvm.bswap.i32(i32 %and6.i) #10
  %flags_len.i = getelementptr inbounds %struct.ata_bmdma_prd, ptr %arrayidx.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags_len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %flags_len.i, align 4
  %inc.i = add i32 %idx.134.i, 1
  %sub8.i = sub i32 %sg_len.036.i, %spec.select.i
  %add9.i = add i32 %spec.select.i, %addr.035.i
  %tobool.not.i = icmp eq i32 %sub8.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %for.body.i.while.end.i_crit_edge
  %idx.1.lcssa.i = phi i32 [ %idx.040.i, %for.body.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %inc10.i = add nuw i32 %si.039.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.038.i) #10
  %24 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc10.i, %25
  br i1 %cmp.i, label %while.end.i.for.body.i_crit_edge, label %while.end.i.nv_swncq_fill_sg.exit_crit_edge

while.end.i.nv_swncq_fill_sg.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_swncq_fill_sg.exit

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

nv_swncq_fill_sg.exit:                            ; preds = %while.end.i.nv_swncq_fill_sg.exit_crit_edge, %if.end3.nv_swncq_fill_sg.exit_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.end3.nv_swncq_fill_sg.exit_crit_edge ], [ %idx.1.lcssa.i, %while.end.i.nv_swncq_fill_sg.exit_crit_edge ]
  %sub11.i = add i32 %idx.0.lcssa.i, -1
  %arrayidx12.i = getelementptr %struct.ata_bmdma_prd, ptr %add.ptr.i, i32 %sub11.i
  %flags_len13.i = getelementptr inbounds %struct.ata_bmdma_prd, ptr %arrayidx12.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags_len13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags_len13.i, align 4
  %or.i = or i32 %27, 128
  store i32 %or.i, ptr %flags_len13.i, align 4
  br label %return

return:                                           ; preds = %nv_swncq_fill_sg.exit, %if.end.return_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_qc_issue(ptr noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %3)
  %cmp.not = icmp eq i8 %3, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ata_bmdma_qc_issue(ptr noundef %qc) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %qc_active = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nv_swncq_issue_atacmd(ptr noundef %1, ptr noundef %qc)
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tail.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %5, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %5, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %head.i, align 4
  %sub.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 32
  br i1 %cmp.i, label %do.end.i, label %if.else.nv_swncq_qc_to_dq.exit_crit_edge, !prof !251

if.else.nv_swncq_qc_to_dq.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_swncq_qc_to_dq.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1687, i32 noundef 9, ptr noundef null) #10
  br label %nv_swncq_qc_to_dq.exit

nv_swncq_qc_to_dq.exit:                           ; preds = %do.end.i, %if.else.nv_swncq_qc_to_dq.exit_crit_edge
  %defer_queue.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %5, i32 0, i32 7
  %hw_tag.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %12 = ptrtoint ptr %hw_tag.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_tag.i, align 4
  %shl.i = shl nuw i32 1, %13
  %14 = ptrtoint ptr %defer_queue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %defer_queue.i, align 4
  %or.i = or i32 %15, %shl.i
  store i32 %or.i, ptr %defer_queue.i, align 4
  %16 = load i32, ptr %hw_tag.i, align 4
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tail.i, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %tail.i, align 4
  %and.i = and i32 %18, 31
  %arrayidx.i = getelementptr %struct.nv_swncq_port_priv, ptr %5, i32 0, i32 7, i32 3, i32 %and.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %nv_swncq_qc_to_dq.exit, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %nv_swncq_qc_to_dq.exit ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_mcp55_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !347
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 65535, %mul
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !247
  %add.ptr1 = getelementptr i8, ptr %5, i32 1092
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !243
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !348
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !349
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %11) #10, !srcloc !247
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_mcp55_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no, align 4
  %mul = shl i32 %7, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !350
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 65535, %mul
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !247
  %add.ptr1 = getelementptr i8, ptr %5, i32 1092
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !243
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !351
  %shl3 = shl i32 65533, %mul
  %or = or i32 %10, %shl3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !352
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %11) #10, !srcloc !247
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv_swncq_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  %qc.i.i = alloca %struct.ata_queued_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sactive = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 4
  %0 = ptrtoint ptr %sactive to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sactive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %4 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %print_id.i, align 4
  %qc_active.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %6 = ptrtoint ptr %qc_active.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %qc_active.i, align 16
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %5, i64 noundef %7, i32 noundef %1) #13
  %8 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %print_id.i, align 4
  %qc_active7.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %qc_active7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qc_active7.i, align 4
  %defer_queue.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %defer_queue.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %defer_queue.i, align 4
  %last_issue_tag.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %last_issue_tag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_issue_tag.i, align 4
  %dhfis_bits.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %dhfis_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dhfis_bits.i, align 4
  %dmafis_bits.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %dmafis_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dmafis_bits.i, align 4
  %sdbfis_bits.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %sdbfis_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sdbfis_bits.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #13
  %22 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %print_id.i, align 4
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %sff_check_status.i = getelementptr inbounds %struct.ata_port_operations, ptr %25, i32 0, i32 39
  %26 = ptrtoint ptr %sff_check_status.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sff_check_status.i, align 4
  %call14.i = tail call zeroext i8 %27(ptr noundef %ap) #10
  %conv.i = zext i8 %call14.i to i32
  %error_addr.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %error_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %error_addr.i, align 8
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #10, !srcloc !252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %conv16.i = zext i8 %30 to i32
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %23, i32 noundef %conv.i, i32 noundef %conv16.i) #13
  %sactive_block.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %sactive_block.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sactive_block.i, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !243
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !353
  %35 = ptrtoint ptr %qc_active7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %qc_active7.i, align 4
  %xor.i = xor i32 %36, %34
  %37 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %print_id.i, align 4
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %38) #13
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then
  %i.091.i = phi i32 [ 0, %if.then ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %39 = ptrtoint ptr %qc_active7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qc_active7.i, align 4
  %shl.i = shl nuw i32 1, %i.091.i
  %and.i = and i32 %40, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.do.end38.i_crit_edge

for.body.i.do.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i

if.else.i:                                        ; preds = %for.body.i
  %and31.i = and i32 %shl.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %if.else.i.cleanup.i_crit_edge, label %if.else.i.do.end38.i_crit_edge

if.else.i.do.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.end38.i:                                       ; preds = %if.else.i.do.end38.i_crit_edge, %for.body.i.do.end38.i_crit_edge
  %cond.i = phi ptr [ @.str.76, %for.body.i.do.end38.i_crit_edge ], [ @.str.75, %if.else.i.do.end38.i_crit_edge ]
  %41 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %print_id.i, align 4
  %43 = ptrtoint ptr %dhfis_bits.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dhfis_bits.i, align 4
  %shr.i = lshr i32 %44, %i.091.i
  %and42.i = and i32 %shr.i, 1
  %45 = ptrtoint ptr %dmafis_bits.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dmafis_bits.i, align 4
  %shr44.i = lshr i32 %46, %i.091.i
  %and45.i = and i32 %shr44.i, 1
  %47 = ptrtoint ptr %sdbfis_bits.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sdbfis_bits.i, align 4
  %shr47.i = lshr i32 %48, %i.091.i
  %and48.i = and i32 %shr47.i, 1
  %shr49.i = lshr i32 %34, %i.091.i
  %and50.i = and i32 %shr49.i, 1
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %42, i32 noundef %i.091.i, i32 noundef %and42.i, i32 noundef %and45.i, i32 noundef %and48.i, i32 noundef %and50.i, ptr noundef nonnull %cond.i) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end38.i, %if.else.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.091.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %nv_swncq_ncq_stop.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

nv_swncq_ncq_stop.exit:                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data.i, align 4
  %defer_queue.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %50, i32 0, i32 7
  %head.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %50, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %50, i32 0, i32 7, i32 2
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %tail.i.i, align 4
  %53 = ptrtoint ptr %defer_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %defer_queue.i.i, align 4
  %qc_active.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %50, i32 0, i32 5
  %54 = ptrtoint ptr %qc_active.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %qc_active.i.i, align 4
  %last_issue_tag.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %50, i32 0, i32 6
  %55 = ptrtoint ptr %last_issue_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -84148995, ptr %last_issue_tag.i.i, align 4
  %56 = load ptr, ptr %private_data.i, align 4
  %dhfis_bits.i.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %56, i32 0, i32 8
  %57 = call ptr @memset(ptr %dhfis_bits.i.i.i, i32 0, i32 16)
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %sff_irq_clear.i = getelementptr inbounds %struct.ata_port_operations, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %sff_irq_clear.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sff_irq_clear.i, align 4
  tail call void %61(ptr noundef %ap) #10
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %qc.i.i) #10
  %62 = getelementptr inbounds i8, ptr %qc.i.i, i32 4
  %63 = call ptr @memset(ptr %62, i32 255, i32 164)
  %64 = ptrtoint ptr %qc.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %ap, ptr %qc.i.i, align 4
  call void @ata_bmdma_stop(ptr noundef nonnull %qc.i.i) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %qc.i.i) #10
  %65 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private_data.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  call void @arm_heavy_mb() #10
  %irq_block.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %irq_block.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq_block.i.i, align 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 -1) #10, !srcloc !264
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 12, i32 0, i32 3
  %69 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %action, align 4
  %or = or i32 %70, 6
  store i32 %or, ptr %action, align 4
  br label %if.end

if.end:                                           ; preds = %nv_swncq_ncq_stop.exit, %entry.if.end_crit_edge
  call void @ata_bmdma_error_handler(ptr noundef %ap) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_port_suspend(ptr nocapture noundef readonly %ap, [1 x i32] %mesg.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !354
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !355
  tail call void @arm_heavy_mb() #10
  %add.ptr4 = getelementptr i8, ptr %5, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #10, !srcloc !247
  %add.ptr5 = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !356
  %7 = and i32 %6, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !357
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #10, !srcloc !247
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_port_resume(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 5
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !358
  tail call void @arm_heavy_mb() #10
  %add.ptr = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10, !srcloc !247
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !359
  tail call void @arm_heavy_mb() #10
  %add.ptr4 = getelementptr i8, ptr %5, i32 1092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -50266880) #10, !srcloc !247
  %add.ptr5 = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !243
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !361
  tail call void @arm_heavy_mb() #10
  %7 = or i32 %6, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %7) #10, !srcloc !247
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_port_start(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %iomap = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %iomap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomap, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @ata_bmdma_port_start(ptr noundef %ap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 184, i32 noundef 3520) #10
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %prd_dma = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %call.i, i32 0, i32 1
  %call.i37 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 65536, ptr noundef %prd_dma, i32 noundef 3264, i32 noundef 0) #10
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i37, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %call.i37, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %private_data, align 4
  %scr_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 14
  %10 = ptrtoint ptr %scr_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scr_addr, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 12
  %sactive_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %sactive_block to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr, ptr %sactive_block, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 1088
  %port_no = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %13 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no, align 4
  %mul = shl i32 %14, 1
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 %mul
  %irq_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %irq_block to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr13, ptr %irq_block, align 4
  %add.ptr14 = getelementptr i8, ptr %7, i32 1096
  %add.ptr17 = getelementptr i8, ptr %add.ptr14, i32 %mul
  %tag_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %tag_block to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr17, ptr %tag_block, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_swncq_issue_atacmd(ptr noundef %ap, ptr noundef %qc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %qc, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !362
  tail call void @arm_heavy_mb() #10
  %hw_tag = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 8
  %2 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_tag, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %sactive_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sactive_block to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sactive_block, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #10, !srcloc !247
  %7 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_tag, align 4
  %last_issue_tag = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %last_issue_tag to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %last_issue_tag, align 4
  %10 = load i32, ptr %hw_tag, align 4
  %shl3 = shl nuw i32 1, %10
  %neg = xor i32 %shl3, -1
  %dhfis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %dhfis_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dhfis_bits, align 4
  %and = and i32 %12, %neg
  store i32 %and, ptr %dhfis_bits, align 4
  %13 = load i32, ptr %hw_tag, align 4
  %shl5 = shl nuw i32 1, %13
  %neg6 = xor i32 %shl5, -1
  %dmafis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %dmafis_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dmafis_bits, align 4
  %and7 = and i32 %15, %neg6
  store i32 %and7, ptr %dmafis_bits, align 4
  %16 = load i32, ptr %hw_tag, align 4
  %shl9 = shl nuw i32 1, %16
  %qc_active = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qc_active, align 4
  %or = or i32 %18, %shl9
  store i32 %or, ptr %qc_active, align 4
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  tail call fastcc void @trace_ata_tf_load(ptr noundef %ap, ptr noundef %tf)
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %sff_tf_load = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 41
  %21 = ptrtoint ptr %sff_tf_load to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sff_tf_load, align 4
  tail call void %22(ptr noundef %ap, ptr noundef %tf) #10
  %23 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_tag, align 4
  tail call fastcc void @trace_ata_exec_command(ptr noundef %ap, ptr noundef %tf, i32 noundef %24)
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %sff_exec_command = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 43
  %27 = ptrtoint ptr %sff_exec_command to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sff_exec_command, align 4
  tail call void %28(ptr noundef %ap, ptr noundef %tf) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_tf_load(ptr noundef %ap, ptr noundef %tf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), ptr blockaddress(@trace_ata_tf_load, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !256

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !363
  %call42 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %ap, ptr noundef %tf) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !364
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !256

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !365
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_tf_load.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ata_tf_load.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 368, ptr noundef nonnull @.str.59) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !366
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_exec_command(ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 1), ptr blockaddress(@trace_ata_exec_command, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !256

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !367
  %call42 = tail call i32 @__traceiter_ata_exec_command(ptr noundef null, ptr noundef %ap, ptr noundef %tf, i32 noundef %tag) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !368
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !256

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !365
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_exec_command.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ata_exec_command.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 403, ptr noundef nonnull @.str.59) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !366
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
declare dso_local i32 @__traceiter_ata_tf_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_exec_command(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_bmdma_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_swncq_host_interrupt(ptr noundef %ap, i16 noundef zeroext %fis) unnamed_addr #2 align 64 {
entry:
  %serror.i = alloca i32, align 4
  %serror = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %link = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serror) #10
  %2 = ptrtoint ptr %serror to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %serror, align 4, !annotation !241
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %sff_check_status = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 39
  %5 = ptrtoint ptr %sff_check_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sff_check_status, align 4
  %call = tail call zeroext i8 %6(ptr noundef %ap) #10
  %7 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %9 = tail call i16 @llvm.bswap.i16(i16 %fis) #10
  %irq_block.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %8, i32 0, i32 3
  %10 = ptrtoint ptr %irq_block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_block.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 %9) #10, !srcloc !264
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fis)
  %tobool.not = icmp eq i16 %fis, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pflags = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 4
  %12 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pflags, align 16
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %conv = zext i16 %fis to i32
  %and4 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %serror.i) #10
  %14 = ptrtoint ptr %serror.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %serror.i, align 4, !annotation !241
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  %call.i = call i32 @sata_scr_read(ptr noundef %link, i32 noundef 1, ptr noundef nonnull %serror.i) #10
  %15 = ptrtoint ptr %serror.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %serror.i, align 4
  %call3.i = call i32 @sata_scr_write(ptr noundef %link, i32 noundef 1, i32 noundef %16) #10
  %and.i = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.if.end7.sink.split.i_crit_edge

if.then6.if.end7.sink.split.i_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %if.then6
  %and4.i = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i.nv_swncq_hotplug.exit_crit_edge, label %if.else.i.if.end7.sink.split.i_crit_edge

if.else.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.sink.split.i

if.else.i.nv_swncq_hotplug.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nv_swncq_hotplug.exit

if.end7.sink.split.i:                             ; preds = %if.else.i.if.end7.sink.split.i_crit_edge, %if.then6.if.end7.sink.split.i_crit_edge
  %.str.47.sink.i = phi ptr [ @.str.83, %if.then6.if.end7.sink.split.i_crit_edge ], [ @.str.47, %if.else.i.if.end7.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull %.str.47.sink.i) #10
  br label %nv_swncq_hotplug.exit

nv_swncq_hotplug.exit:                            ; preds = %if.end7.sink.split.i, %if.else.i.nv_swncq_hotplug.exit_crit_edge
  %probe_mask.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 6
  %17 = ptrtoint ptr %probe_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %probe_mask.i.i, align 4
  %or.i.i = or i32 %18, 3
  store i32 %or.i.i, ptr %probe_mask.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 5
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %or1.i.i = or i32 %20, 1
  store i32 %or1.i.i, ptr %flags.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %21 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action.i.i, align 4
  %or2.i.i = or i32 %22, 14
  store i32 %or2.i.i, ptr %action.i.i, align 4
  %err_mask.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %23 = ptrtoint ptr %err_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %err_mask.i.i, align 4
  %or3.i.i = or i32 %24, 16
  store i32 %or3.i.i, ptr %err_mask.i.i, align 4
  %25 = ptrtoint ptr %serror.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %serror.i, align 4
  %serror8.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 1
  %27 = ptrtoint ptr %serror8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %serror8.i, align 4
  %or.i = or i32 %28, %26
  store i32 %or.i, ptr %serror8.i, align 4
  %call9.i = call i32 @ata_port_freeze(ptr noundef %ap) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serror.i) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %qc_active = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qc_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not = icmp eq i32 %30, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %scr_read = getelementptr inbounds %struct.ata_port_operations, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %scr_read to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scr_read, align 4
  %call14 = call i32 %34(ptr noundef %link, i32 noundef 1, ptr noundef nonnull %serror) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %35 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops, align 4
  %scr_write = getelementptr inbounds %struct.ata_port_operations, ptr %36, i32 0, i32 28
  %37 = ptrtoint ptr %scr_write to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scr_write, align 4
  %39 = ptrtoint ptr %serror to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %serror, align 4
  %call20 = call i32 %38(ptr noundef %link, i32 noundef 1, i32 noundef %40) #10
  %41 = and i8 %call, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool23.not = icmp eq i8 %41, 0
  br i1 %tobool23.not, label %if.end30, label %if.then24

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.77, i32 noundef %conv) #10
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %42 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err_mask, align 4
  %or = or i32 %43, 1
  store i32 %or, ptr %err_mask, align 4
  %44 = ptrtoint ptr %serror to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %serror, align 4
  %serror26 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 1
  %46 = ptrtoint ptr %serror26 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %serror26, align 4
  %or27 = or i32 %47, %45
  store i32 %or27, ptr %serror26, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %48 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %action, align 4
  %or28 = or i32 %49, 6
  store i32 %or28, ptr %action, align 4
  %call29 = call i32 @ata_port_freeze(ptr noundef %ap) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %and32 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end36_crit_edge, label %if.then34

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %ncq_flags = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %ncq_flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ncq_flags, align 4
  %or35 = or i32 %51, 8
  store i32 %or35, ptr %ncq_flags, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  %and38 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end57_crit_edge, label %if.then40

if.end36.if.end57_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then40:                                        ; preds = %if.end36
  %ncq_flags41 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %ncq_flags41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ncq_flags41, align 4
  %or42 = or i32 %53, 4
  store i32 %or42, ptr %ncq_flags41, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_host_interrupt, %if.then47)) #10
          to label %do.end [label %if.then47], !srcloc !245

if.then47:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %54 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %print_id, align 4
  %56 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qc_active, align 4
  %dhfis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %dhfis_bits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dhfis_bits, align 4
  %dmafis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %dmafis_bits to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dmafis_bits, align 4
  %sactive_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %sactive_block to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sactive_block, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #10, !srcloc !243
  %65 = call i32 @llvm.bswap.i32(i32 %64)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !369
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.79, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %65) #10
  br label %do.end

do.end:                                           ; preds = %if.then47, %if.then40
  %call53 = call fastcc i32 @nv_swncq_sdbfis(ptr noundef %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp = icmp slt i32 %call53, 0
  br i1 %cmp, label %do.end.irq_error_crit_edge, label %do.end.if.end57_crit_edge

do.end.if.end57_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

do.end.irq_error_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_error

if.end57:                                         ; preds = %do.end.if.end57_crit_edge, %if.end36.if.end57_crit_edge
  %and59 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end57.if.end113_crit_edge, label %if.then61

if.end57.if.end113_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = and i32 %conv, 128
  br label %if.end113

if.then61:                                        ; preds = %if.end57
  %last_issue_tag = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %last_issue_tag to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_issue_tag, align 4
  %shl = shl nuw i32 1, %67
  %dhfis_bits62 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 8
  %68 = ptrtoint ptr %dhfis_bits62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dhfis_bits62, align 4
  %or63 = or i32 %69, %shl
  store i32 %or63, ptr %dhfis_bits62, align 4
  %ncq_flags64 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 11
  %70 = ptrtoint ptr %ncq_flags64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ncq_flags64, align 4
  %or65 = or i32 %71, 1
  store i32 %or65, ptr %ncq_flags64, align 4
  %and67 = and i32 %71, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end74, label %if.then69

if.then69:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.80) #10
  %err_mask70 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %72 = ptrtoint ptr %err_mask70 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %err_mask70, align 4
  %or71 = or i32 %73, 2
  store i32 %or71, ptr %err_mask70, align 4
  %action72 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %74 = ptrtoint ptr %action72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %action72, align 4
  %or73 = or i32 %75, 6
  store i32 %or73, ptr %action72, align 4
  br label %irq_error

if.end74:                                         ; preds = %if.then61
  %and76 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %and79 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %or.cond = select i1 %tobool77.not, i1 %tobool80.not, i1 false
  br i1 %or.cond, label %if.then81, label %if.end74.if.end113_crit_edge

if.end74.if.end113_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then81:                                        ; preds = %if.end74
  %76 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops, align 4
  %sff_check_status83 = getelementptr inbounds %struct.ata_port_operations, ptr %77, i32 0, i32 39
  %78 = ptrtoint ptr %sff_check_status83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sff_check_status83, align 4
  %call84 = call zeroext i8 %79(ptr noundef %ap) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call84)
  %tobool87.not = icmp sgt i8 %call84, -1
  br i1 %tobool87.not, label %if.end89, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end89:                                         ; preds = %if.then81
  %defer_queue = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7
  %80 = ptrtoint ptr %defer_queue to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %defer_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool90.not = icmp eq i32 %81, 0
  br i1 %tobool90.not, label %if.end89.cleanup_crit_edge, label %do.body92

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body92:                                        ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_host_interrupt, %if.then104)) #10
          to label %do.end108 [label %if.then104], !srcloc !245

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %print_id105 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %82 = ptrtoint ptr %print_id105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %print_id105, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.81, i32 noundef %83) #10
  br label %do.end108

do.end108:                                        ; preds = %if.then104, %do.body92
  %call109 = call fastcc ptr @nv_swncq_qc_from_dq(ptr noundef %ap)
  call fastcc void @nv_swncq_issue_atacmd(ptr noundef %ap, ptr noundef %call109)
  br label %cleanup

if.end113:                                        ; preds = %if.end74.if.end113_crit_edge, %if.end57.if.end113_crit_edge
  %and115.pre-phi = phi i32 [ %.pre, %if.end57.if.end113_crit_edge ], [ %and76, %if.end74.if.end113_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.pre-phi)
  %tobool116.not = icmp eq i32 %and115.pre-phi, 0
  br i1 %tobool116.not, label %if.end113.cleanup_crit_edge, label %if.then117

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %private_data, align 4
  %tag_block.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %tag_block.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tag_block.i, align 4
  %88 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %87) #10, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  %89 = lshr i8 %88, 2
  %90 = and i8 %89, 31
  %and.i189 = zext i8 %90 to i32
  %shl119 = shl nuw i32 1, %and.i189
  %dmafis_bits120 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 9
  %91 = ptrtoint ptr %dmafis_bits120 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dmafis_bits120, align 4
  %or121 = or i32 %shl119, %92
  store i32 %or121, ptr %dmafis_bits120, align 4
  %ncq_flags122 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 11
  %93 = ptrtoint ptr %ncq_flags122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ncq_flags122, align 4
  %or123 = or i32 %94, 2
  store i32 %or123, ptr %ncq_flags122, align 4
  call fastcc void @nv_swncq_dmafis(ptr noundef %ap)
  br label %cleanup

irq_error:                                        ; preds = %if.then69, %do.end.irq_error_crit_edge
  call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.82, i32 noundef %conv) #10
  %call126 = call i32 @ata_port_freeze(ptr noundef %ap) #10
  br label %cleanup

cleanup:                                          ; preds = %irq_error, %if.then117, %if.end113.cleanup_crit_edge, %do.end108, %if.end89.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %if.then24, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %nv_swncq_hotplug.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %serror) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nv_swncq_sdbfis(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  %qc.i = alloca %struct.ata_queued_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ops = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %bmdma_status = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 52
  %4 = ptrtoint ptr %bmdma_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmdma_status, align 4
  %call = tail call zeroext i8 %5(ptr noundef %ap) #10
  %conv = zext i8 %call to i32
  tail call fastcc void @trace_ata_bmdma_status(ptr noundef %ap, i32 noundef %conv)
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %eh_info = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info) #10
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info, ptr noundef nonnull @.str.84, i32 noundef %conv) #10
  %err_mask = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 2
  %6 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_mask, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %err_mask, align 4
  %action = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 25, i32 11, i32 3
  %8 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %action, align 4
  %or5 = or i32 %9, 6
  store i32 %or5, ptr %action, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %sff_irq_clear = getelementptr inbounds %struct.ata_port_operations, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %sff_irq_clear to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sff_irq_clear, align 4
  tail call void %13(ptr noundef %ap) #10
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %qc.i) #10
  %14 = getelementptr inbounds i8, ptr %qc.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 164)
  %16 = ptrtoint ptr %qc.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ap, ptr %qc.i, align 4
  call void @ata_bmdma_stop(ptr noundef nonnull %qc.i) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %qc.i) #10
  %sactive_block = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %sactive_block to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sactive_block, align 4
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #10, !srcloc !243
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !371
  %qc_active = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qc_active, align 4
  %xor = xor i32 %22, %20
  %neg = xor i32 %xor, -1
  %and10 = and i32 %22, %20
  store i32 %and10, ptr %qc_active, align 4
  %dhfis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %dhfis_bits to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dhfis_bits, align 4
  %and12 = and i32 %24, %neg
  store i32 %and12, ptr %dhfis_bits, align 4
  %dmafis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %dmafis_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dmafis_bits, align 4
  %and14 = and i32 %26, %neg
  store i32 %and14, ptr %dmafis_bits, align 4
  %sdbfis_bits = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %sdbfis_bits to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sdbfis_bits, align 4
  %or15 = or i32 %28, %xor
  store i32 %or15, ptr %sdbfis_bits, align 4
  %call16 = call i64 @ata_qc_get_active(ptr noundef %ap) #10
  %conv17 = zext i32 %xor to i64
  %xor18 = xor i64 %call16, %conv17
  %call19 = call i32 @ata_qc_complete_multiple(ptr noundef %ap, i64 noundef %xor18) #10
  %qc_active20 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 21
  %29 = ptrtoint ptr %qc_active20 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %qc_active20, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool21.not = icmp eq i64 %30, 0
  br i1 %tobool21.not, label %do.body, label %if.end34

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_sdbfis.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_sdbfis, %if.then32)) #10
          to label %do.end [label %if.then32], !srcloc !245

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %31 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %print_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_swncq_sdbfis.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.86, i32 noundef %32) #10
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %33 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private_data, align 4
  %defer_queue.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %34, i32 0, i32 7
  %head.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %34, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %34, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tail.i, align 4
  %37 = ptrtoint ptr %defer_queue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %defer_queue.i, align 4
  %qc_active.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %34, i32 0, i32 5
  %38 = ptrtoint ptr %qc_active.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %qc_active.i, align 4
  %last_issue_tag.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %34, i32 0, i32 6
  %39 = ptrtoint ptr %last_issue_tag.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -84148995, ptr %last_issue_tag.i, align 4
  %40 = load ptr, ptr %private_data, align 4
  %dhfis_bits.i.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %40, i32 0, i32 8
  %41 = call ptr @memset(ptr %dhfis_bits.i.i, i32 0, i32 16)
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %42 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %qc_active, align 4
  %44 = ptrtoint ptr %dhfis_bits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dhfis_bits, align 4
  %and37 = and i32 %45, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %ncq_flags = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 11
  %46 = ptrtoint ptr %ncq_flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ncq_flags, align 4
  %and41 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %tobool46.not = icmp eq i32 %43, %45
  %or.cond = select i1 %tobool42.not, i1 %tobool46.not, i1 false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_sdbfis.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_sdbfis, %if.then61)) #10
          to label %do.end69 [label %if.then61], !srcloc !245

if.then61:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %print_id62 = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %48 = ptrtoint ptr %print_id62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %print_id62, align 4
  %50 = ptrtoint ptr %qc_active20 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %qc_active20, align 16
  %52 = ptrtoint ptr %qc_active to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %qc_active, align 4
  %defer_queue = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %defer_queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %defer_queue, align 4
  %56 = ptrtoint ptr %dhfis_bits to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dhfis_bits, align 4
  %58 = ptrtoint ptr %dmafis_bits to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dmafis_bits, align 4
  %last_issue_tag = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 6
  %60 = ptrtoint ptr %last_issue_tag to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_issue_tag, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_swncq_sdbfis.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.87, i32 noundef %49, i64 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then61, %if.end40
  %62 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %private_data, align 4
  %dhfis_bits.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %63, i32 0, i32 8
  %64 = call ptr @memset(ptr %dhfis_bits.i, i32 0, i32 16)
  br i1 %or.cond, label %if.end75, label %if.then71

if.then71:                                        ; preds = %do.end69
  %last_issue_tag72 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 6
  %65 = ptrtoint ptr %last_issue_tag72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %last_issue_tag72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %66)
  %67 = icmp ugt i32 %66, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %66
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %67, %tobool.not11.i
  br i1 %tobool.not.i, label %if.then71.ata_qc_from_tag.exit_crit_edge, label %lor.lhs.false.i, !prof !251

if.then71.ata_qc_from_tag.exit_crit_edge:         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit

lor.lhs.false.i:                                  ; preds = %if.then71
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %69, i32 0, i32 22
  %70 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %71, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ata_qc_from_tag.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %66, i32 6
  %72 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %73, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %call..i = select i1 %cmp.i, ptr %arrayidx.i.i, ptr null
  br label %ata_qc_from_tag.exit

ata_qc_from_tag.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge, %if.then71.ata_qc_from_tag.exit_crit_edge
  %retval.0.i171 = phi ptr [ %arrayidx.i.i, %lor.lhs.false.i.ata_qc_from_tag.exit_crit_edge ], [ null, %if.then71.ata_qc_from_tag.exit_crit_edge ], [ %call..i, %if.end.i ]
  call fastcc void @nv_swncq_issue_atacmd(ptr noundef %ap, ptr noundef %retval.0.i171)
  br label %cleanup

if.end75:                                         ; preds = %do.end69
  %defer_queue76 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %defer_queue76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %defer_queue76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool78.not = icmp eq i32 %75, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %if.then79

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then79:                                        ; preds = %if.end75
  %76 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private_data, align 4
  %defer_queue.i173 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %77, i32 0, i32 7
  %head.i174 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %77, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %head.i174 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %head.i174, align 4
  %tail.i175 = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %77, i32 0, i32 7, i32 2
  %80 = ptrtoint ptr %tail.i175 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tail.i175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp.i176 = icmp eq i32 %79, %81
  br i1 %cmp.i176, label %if.then79.do.end97_crit_edge, label %if.end.i179

if.then79.do.end97_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.end.i179:                                      ; preds = %if.then79
  %and.i177 = and i32 %79, 31
  %arrayidx.i = getelementptr %struct.nv_swncq_port_priv, ptr %77, i32 0, i32 7, i32 3, i32 %and.i177
  %82 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %79, 1
  %84 = ptrtoint ptr %head.i174 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %inc.i, ptr %head.i174, align 4
  store i32 -84148995, ptr %arrayidx.i, align 4
  %85 = ptrtoint ptr %defer_queue.i173 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %defer_queue.i173, align 4
  %shl.i = shl nuw i32 1, %83
  %and7.i = and i32 %86, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i178 = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i178, label %do.end.i, label %if.end.i179.if.end23.i_crit_edge, !prof !251

if.end.i179.if.end23.i_crit_edge:                 ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.end.i179
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1703, i32 noundef 9, ptr noundef null) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %if.end.i179.if.end23.i_crit_edge
  %neg.i = xor i32 %shl.i, -1
  %87 = ptrtoint ptr %defer_queue.i173 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %defer_queue.i173, align 4
  %and32.i = and i32 %88, %neg.i
  store i32 %and32.i, ptr %defer_queue.i173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %83)
  %89 = icmp ugt i32 %83, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %83
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %89, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.end23.i.do.end97_crit_edge, label %lor.lhs.false.i.i, !prof !251

if.end23.i.do.end97_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

lor.lhs.false.i.i:                                ; preds = %if.end23.i
  %90 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ops, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %91, i32 0, i32 22
  %92 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %93, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.if.end103_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.end103_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %83, i32 6
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %95, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.if.end103_crit_edge, label %if.end.i.i.do.end97_crit_edge

if.end.i.i.do.end97_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end97

if.end.i.i.if.end103_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

do.end97:                                         ; preds = %if.end.i.i.do.end97_crit_edge, %if.end23.i.do.end97_crit_edge, %if.then79.do.end97_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2127, i32 noundef 9, ptr noundef null) #10
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %if.end.i.i.if.end103_crit_edge, %lor.lhs.false.i.i.if.end103_crit_edge
  %retval.0.i180185 = phi ptr [ null, %do.end97 ], [ %arrayidx.i.i.i, %lor.lhs.false.i.i.if.end103_crit_edge ], [ %arrayidx.i.i.i, %if.end.i.i.if.end103_crit_edge ]
  call fastcc void @nv_swncq_issue_atacmd(ptr noundef %ap, ptr noundef %retval.0.i180185)
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.end75.cleanup_crit_edge, %ata_qc_from_tag.exit, %if.end34.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %ata_qc_from_tag.exit ], [ 0, %do.end ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end103 ], [ 0, %if.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nv_swncq_qc_from_dq(ptr noundef readonly %ap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %defer_queue = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7
  %head = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head, align 4
  %tail = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 31
  %arrayidx = getelementptr %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 7, i32 3, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %3, 1
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %head, align 4
  store i32 -84148995, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %defer_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %defer_queue, align 4
  %shl = shl nuw i32 1, %7
  %and7 = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %do.end, label %if.end.if.end23_crit_edge, !prof !251

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1703, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end.if.end23_crit_edge
  %neg = xor i32 %shl, -1
  %11 = ptrtoint ptr %defer_queue to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %defer_queue, align 4
  %and32 = and i32 %12, %neg
  store i32 %and32, ptr %defer_queue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %13 = icmp ugt i32 %7, 32
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %7
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  %tobool.not.i = or i1 %13, %tobool.not11.i
  br i1 %tobool.not.i, label %if.end23.cleanup_crit_edge, label %lor.lhs.false.i, !prof !251

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end23
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %7, i32 6
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  %call..i = select i1 %cmp.i, ptr %arrayidx.i.i, ptr null
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %arrayidx.i.i, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end23.cleanup_crit_edge ], [ %call..i, %if.end.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_swncq_dmafis(ptr noundef %ap) unnamed_addr #2 align 64 {
entry:
  %qc.i = alloca %struct.ata_queued_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %qc.i) #10
  %2 = getelementptr inbounds i8, ptr %qc.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 164)
  %4 = ptrtoint ptr %qc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ap, ptr %qc.i, align 4
  call void @ata_bmdma_stop(ptr noundef nonnull %qc.i) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %qc.i) #10
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 4
  %tag_block.i = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %tag_block.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tag_block.i, align 4
  %9 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #10, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !370
  %10 = lshr i8 %9, 2
  %11 = and i8 %10, 31
  %and.i = zext i8 %11 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nv_swncq_dmafis.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nv_swncq_dmafis, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %print_id = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 5
  %12 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %print_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nv_swncq_dmafis.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.89, i32 noundef %13, i32 noundef %and.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %and.i
  %tobool.not11.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not11.i, label %do.end.cleanup_crit_edge, label %lor.lhs.false.i, !prof !251

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end
  %ops.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %error_handler.i = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %error_handler.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %error_handler.i, align 4
  %tobool4.not.i = icmp eq ptr %17, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.if.end15_crit_edge, label %if.end.i

lor.lhs.false.i.if.end15_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end.i:                                         ; preds = %lor.lhs.false.i
  %flags.i = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %and.i, i32 6
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i49 = and i32 %19, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i49)
  %cmp.i = icmp eq i32 %and.i49, 1
  br i1 %cmp.i, label %if.end.i.if.end15_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.if.end15_crit_edge, %lor.lhs.false.i.if.end15_crit_edge
  %tf = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %and.i, i32 4
  %20 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tf, align 4
  %prd_dma = getelementptr inbounds %struct.nv_swncq_port_priv, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prd_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %prd_dma, align 4
  %hw_tag = getelementptr %struct.ata_port, ptr %ap, i32 0, i32 19, i32 %and.i, i32 8
  %24 = ptrtoint ptr %hw_tag to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_tag, align 4
  %mul = shl i32 %25, 11
  %add = add i32 %mul, %23
  %bmdma_addr = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 8, i32 13
  %26 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bmdma_addr, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  call void @arm_heavy_mb() #10
  %28 = call i32 @llvm.bswap.i32(i32 %add) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #10, !srcloc !247
  %29 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmdma_addr, align 4
  %31 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #10, !srcloc !252
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %32 = and i8 %31, -10
  %33 = trunc i32 %21 to i8
  %34 = and i8 %33, 8
  %35 = or i8 %32, %34
  %36 = xor i8 %35, 9
  %37 = ptrtoint ptr %bmdma_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmdma_addr, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  call void @arm_heavy_mb() #10
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %36) #10, !srcloc !275
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ata_bmdma_status(ptr noundef %ap, i32 noundef %host_stat) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 1), ptr blockaddress(@trace_ata_bmdma_status, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !245

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !256

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !372
  %call42 = tail call i32 @__traceiter_ata_bmdma_status(ptr noundef null, ptr noundef %ap, i32 noundef %host_stat) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !373
  %13 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !256

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !231) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !365
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ata_bmdma_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_ata_bmdma_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.58, i32 noundef 437, ptr noundef nonnull @.str.59) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !366
  %31 = tail call i32 @llvm.read_register.i32(metadata !231) #10
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
declare dso_local i32 @__traceiter_ata_bmdma_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv_swncq_slave_config(ptr noundef %sdev) #2 align 64 {
entry:
  %rev = alloca i8, align 1
  %model_num = alloca [41 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %host1 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host1, align 4
  %dev = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rev) #10
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %rev, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %model_num) #10
  %9 = call ptr @memset(ptr %model_num, i32 255, i32 41)
  %call3 = tail call i32 @ata_scsi_slave_config(ptr noundef %sdev) #10
  %id = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp ugt i32 %11, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %channel = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 17
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %lun = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %14 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %lun, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool5.not = icmp eq i64 %15, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %arrayidx = getelementptr %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 %11
  %flags = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false8:                                   ; preds = %if.end
  %class = getelementptr %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 %11, i32 9
  %18 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %class, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp9 = icmp eq i32 %19, 3
  br i1 %cmp9, label %lor.lhs.false8.cleanup_crit_edge, label %if.end11

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8
  %device12 = getelementptr i8, ptr %7, i32 -102
  %20 = ptrtoint ptr %device12 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device12, align 2
  %22 = and i16 %21, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 614, i16 %22)
  %switch = icmp eq i16 %22, 614
  call void @__sanitizer_cov_trace_const_cmp2(i16 894, i16 %22)
  %switch84 = icmp eq i16 %22, 894
  br i1 %switch84, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end11
  %call32 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 8, ptr noundef nonnull %rev) #10
  %23 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %24)
  %cmp34 = icmp ugt i8 %24, -94
  %tobool39.not = xor i1 %switch, true
  %or.cond = select i1 %cmp34, i1 %tobool39.not, i1 false
  br i1 %or.cond, label %if.then31.cleanup_crit_edge, label %if.then31.if.end41_crit_edge

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %if.end11
  br i1 %switch, label %if.end38.if.end41_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.end38.if.end41_crit_edge, %if.then31.if.end41_crit_edge
  %25 = getelementptr %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 %11, i32 25
  call void @ata_id_c_string(ptr noundef %25, ptr noundef nonnull %model_num, i32 noundef 27, i32 noundef 41) #10
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %model_num, ptr noundef nonnull dereferenceable(6) @.str.90, i32 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp45 = icmp eq i32 %bcmp, 0
  br i1 %cmp45, label %if.then47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %call48 = call i32 @ata_scsi_change_queue_depth(ptr noundef %sdev, i32 noundef 1) #10
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 128
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %print_id = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pmp, align 4
  %devno = getelementptr %struct.ata_port, ptr %3, i32 0, i32 25, i32 14, i32 %11, i32 1
  %34 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %devno, align 4
  %add = add i32 %35, %33
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %36 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %queue_depth, align 4
  %conv53 = zext i16 %37 to i32
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %31, i32 noundef %add, i32 noundef %conv53) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end41.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %model_num) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rev) #10
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_id_c_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !116, !118, !120, !122, !124, !126, !127, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !147, !148, !149, !150, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !179, !181, !183, !184, !185, !187, !189, !190, !192, !194, !196, !198, !199, !200, !202, !203, !205, !206, !208, !209, !210, !212, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !228, !230}
!llvm.named.register.sp = !{!231}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @__UNIQUE_ID_author359, !1, !"__UNIQUE_ID_author359", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_nv.c", i32 586, i32 1}
!2 = !{ptr @__UNIQUE_ID_description360, !3, !"__UNIQUE_ID_description360", i1 false, i1 false}
!3 = !{!"../drivers/ata/sata_nv.c", i32 587, i32 1}
!4 = !{ptr @__UNIQUE_ID_file361, !5, !"__UNIQUE_ID_file361", i1 false, i1 false}
!5 = !{!"../drivers/ata/sata_nv.c", i32 588, i32 1}
!6 = !{ptr @__UNIQUE_ID_license362, !5, !"__UNIQUE_ID_license362", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version363, !8, !"__UNIQUE_ID_version363", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_nv.c", i32 590, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__initcall__kmod_sata_nv__372_2465_nv_pci_driver_init6, !14, !"__initcall__kmod_sata_nv__372_2465_nv_pci_driver_init6", i1 false, i1 false}
!14 = !{!"../drivers/ata/sata_nv.c", i32 2465, i32 1}
!15 = !{ptr @__exitcall_nv_pci_driver_exit, !14, !"__exitcall_nv_pci_driver_exit", i1 false, i1 false}
!16 = !{ptr @__param_adma, !17, !"__param_adma", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_nv.c", i32 2467, i32 1}
!18 = !{ptr @__UNIQUE_ID_admatype373, !17, !"__UNIQUE_ID_admatype373", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_adma374, !20, !"__UNIQUE_ID_adma374", i1 false, i1 false}
!20 = !{!"../drivers/ata/sata_nv.c", i32 2468, i32 1}
!21 = !{ptr @__param_swncq, !22, !"__param_swncq", i1 false, i1 false}
!22 = !{!"../drivers/ata/sata_nv.c", i32 2469, i32 1}
!23 = !{ptr @__UNIQUE_ID_swncqtype375, !22, !"__UNIQUE_ID_swncqtype375", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_swncq376, !25, !"__UNIQUE_ID_swncq376", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_nv.c", i32 2470, i32 1}
!26 = !{ptr @__param_msi, !27, !"__param_msi", i1 false, i1 false}
!27 = !{!"../drivers/ata/sata_nv.c", i32 2471, i32 1}
!28 = !{ptr @__UNIQUE_ID_msitype377, !27, !"__UNIQUE_ID_msitype377", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_msi378, !30, !"__UNIQUE_ID_msi378", i1 false, i1 false}
!30 = !{!"../drivers/ata/sata_nv.c", i32 2472, i32 1}
!31 = !{ptr @adma_enabled, !32, !"adma_enabled", i1 false, i1 false}
!32 = !{!"../drivers/ata/sata_nv.c", i32 592, i32 13}
!33 = !{ptr @msi_enabled, !34, !"msi_enabled", i1 false, i1 false}
!34 = !{!"../drivers/ata/sata_nv.c", i32 594, i32 13}
!35 = !{ptr @nv_pci_driver, !36, !"nv_pci_driver", i1 false, i1 false}
!36 = !{!"../drivers/ata/sata_nv.c", i32 363, i32 26}
!37 = !{ptr @nv_pci_tbl, !38, !"nv_pci_tbl", i1 false, i1 false}
!38 = !{!"../drivers/ata/sata_nv.c", i32 344, i32 35}
!39 = distinct !{null, !40, !"__print_once", i1 false, i1 false}
!40 = !{!"../drivers/ata/sata_nv.c", i32 2324, i32 2}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/ata/sata_nv.c", i32 2332, i32 3}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nv_init_one._entry, !42, !"_entry", i1 false, i1 false}
!48 = !{ptr @nv_init_one._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/ata/sata_nv.c", i32 2335, i32 3}
!51 = !{ptr @nv_init_one._entry.8, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @nv_init_one._entry_ptr.10, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/ata/sata_nv.c", i32 2379, i32 3}
!55 = !{ptr @nv_init_one._entry.11, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nv_init_one._entry_ptr.13, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @nv_port_info, !58, !"nv_port_info", i1 false, i1 false}
!58 = !{!"../drivers/ata/sata_nv.c", i32 529, i32 35}
!59 = !{ptr @nv_generic_ops, !60, !"nv_generic_ops", i1 false, i1 false}
!60 = !{!"../drivers/ata/sata_nv.c", i32 458, i32 35}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/sata_nv.c", i32 1536, i32 4}
!63 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @nv_hardreset._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @nv_hardreset._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nv_hardreset._entry.21, !62, !"_entry", i1 false, i1 false}
!68 = !{ptr @nv_hardreset._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/sata_nv.c", i32 1543, i32 4}
!71 = !{ptr @nv_hardreset._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @nv_hardreset._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @nv_hardreset._entry.27, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @nv_hardreset._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @nv_sht, !77, !"nv_sht", i1 false, i1 false}
!77 = !{!"../drivers/ata/sata_nv.c", i32 374, i32 34}
!78 = !{ptr @nv_nf2_ops, !79, !"nv_nf2_ops", i1 false, i1 false}
!79 = !{!"../drivers/ata/sata_nv.c", i32 466, i32 35}
!80 = !{ptr @nv_ck804_ops, !81, !"nv_ck804_ops", i1 false, i1 false}
!81 = !{!"../drivers/ata/sata_nv.c", i32 472, i32 35}
!82 = !{ptr @nv_adma_ops, !83, !"nv_adma_ops", i1 false, i1 false}
!83 = !{!"../drivers/ata/sata_nv.c", i32 479, i32 35}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/ata/sata_nv.c", i32 613, i32 3}
!86 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @nv_adma_register_mode._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @nv_adma_register_mode._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/sata_nv.c", i32 627, i32 3}
!91 = !{ptr @nv_adma_register_mode._entry.32, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nv_adma_register_mode._entry_ptr.34, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ata/sata_nv.c", i32 1402, i32 3}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nv_adma_qc_issue._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @nv_adma_qc_issue._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/ata/sata_nv.c", i32 657, i32 3}
!100 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @nv_adma_mode._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @nv_adma_mode._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/ata/sata_nv.c", i32 1641, i32 4}
!105 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @nv_adma_error_handler._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @nv_adma_error_handler._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/ata/sata_nv.c", i32 1652, i32 6}
!110 = !{ptr @nv_adma_error_handler._entry.41, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @nv_adma_error_handler._entry_ptr.43, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/ata/sata_nv.c", i32 948, i32 29}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/ata/sata_nv.c", i32 951, i32 28}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/ata/sata_nv.c", i32 954, i32 28}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/ata/sata_nv.c", i32 957, i32 28}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/ata/sata_nv.c", i32 960, i32 28}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/ata/sata_nv.c", i32 962, i32 28}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/ata/sata_nv.c", i32 812, i32 2}
!126 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @nv_adma_check_cpb.__UNIQUE_ID_ddebug364, !125, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/ata/sata_nv.c", i32 822, i32 28}
!130 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/ata/sata_nv.c", i32 824, i32 27}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/ata/sata_nv.c", i32 827, i32 27}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/ata/sata_nv.c", i32 830, i32 27}
!136 = !{ptr @nv_adma_sht, !137, !"nv_adma_sht", i1 false, i1 false}
!137 = !{!"../drivers/ata/sata_nv.c", i32 378, i32 34}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/ata/sata_nv.c", i32 745, i32 2}
!140 = !{ptr @.str.57, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nv_adma_slave_config._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @nv_adma_slave_config._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @nv_swncq_ops, !144, !"nv_swncq_ops", i1 false, i1 false}
!144 = !{!"../drivers/ata/sata_nv.c", i32 503, i32 35}
!145 = distinct !{null, !146, !"__already_done", i1 false, i1 false}
!146 = !{!"../include/trace/events/libata.h", i32 317, i32 1}
!147 = !{ptr @.str.58, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !146, !"__warned", i1 false, i1 false}
!149 = !{ptr @.str.59, !146, !"<string literal>", i1 false, i1 false}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!152 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../include/trace/events/libata.h", i32 401, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/ata/sata_nv.c", i32 1754, i32 2}
!158 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @nv_swncq_ncq_stop._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @nv_swncq_ncq_stop._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/ata/sata_nv.c", i32 1756, i32 2}
!163 = !{ptr @nv_swncq_ncq_stop._entry.63, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @nv_swncq_ncq_stop._entry_ptr.65, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/ata/sata_nv.c", i32 1762, i32 2}
!167 = !{ptr @nv_swncq_ncq_stop._entry.66, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @nv_swncq_ncq_stop._entry_ptr.68, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/ata/sata_nv.c", i32 1769, i32 2}
!171 = !{ptr @nv_swncq_ncq_stop._entry.69, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @nv_swncq_ncq_stop._entry_ptr.71, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.73, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/ata/sata_nv.c", i32 1779, i32 3}
!175 = !{ptr @nv_swncq_ncq_stop._entry.72, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @nv_swncq_ncq_stop._entry_ptr.74, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/ata/sata_nv.c", i32 2205, i32 26}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/ata/sata_nv.c", i32 2222, i32 3}
!183 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug370, !182, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/ata/sata_nv.c", i32 2237, i32 27}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/ata/sata_nv.c", i32 2250, i32 5}
!189 = !{ptr @nv_swncq_host_interrupt.__UNIQUE_ID_ddebug371, !188, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!190 = !{ptr @.str.82, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/ata/sata_nv.c", i32 2269, i32 25}
!192 = !{ptr @.str.83, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/ata/sata_nv.c", i32 2048, i32 26}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/ata/sata_nv.c", i32 2075, i32 26}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/ata/sata_nv.c", i32 2094, i32 3}
!198 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @nv_swncq_sdbfis.__UNIQUE_ID_ddebug367, !197, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/ata/sata_nv.c", i32 2109, i32 2}
!202 = !{ptr @nv_swncq_sdbfis.__UNIQUE_ID_ddebug368, !201, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!203 = distinct !{null, !204, !"__already_done", i1 false, i1 false}
!204 = !{!"../include/trace/events/libata.h", i32 417, i32 1}
!205 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!206 = !{ptr @.str.88, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/ata/sata_nv.c", i32 2154, i32 2}
!208 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @nv_swncq_dmafis.__UNIQUE_ID_ddebug369, !207, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!210 = !{ptr @nv_swncq_sht, !211, !"nv_swncq_sht", i1 false, i1 false}
!211 = !{!"../drivers/ata/sata_nv.c", i32 389, i32 34}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/ata/sata_nv.c", i32 1908, i32 25}
!214 = !{ptr @.str.91, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/ata/sata_nv.c", i32 1910, i32 3}
!216 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @nv_swncq_slave_config._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @nv_swncq_slave_config._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/ata/sata_nv.c", i32 1859, i32 2}
!221 = !{ptr @.str.94, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @nv_swncq_host_init.__UNIQUE_ID_ddebug365, !220, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/ata/sata_nv.c", i32 1864, i32 2}
!225 = !{ptr @nv_swncq_host_init.__UNIQUE_ID_ddebug366, !224, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!226 = !{ptr @__param_str_adma, !17, !"__param_str_adma", i1 false, i1 false}
!227 = !{ptr @__param_str_swncq, !22, !"__param_str_swncq", i1 false, i1 false}
!228 = !{ptr @swncq_enabled, !229, !"swncq_enabled", i1 false, i1 false}
!229 = !{!"../drivers/ata/sata_nv.c", i32 593, i32 13}
!230 = !{ptr @__param_str_msi, !27, !"__param_str_msi", i1 false, i1 false}
!231 = !{!"sp"}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{!"auto-init"}
!242 = !{i8 0, i8 2}
!243 = !{i64 5046612}
!244 = !{i64 2156600633}
!245 = !{i64 2148757892, i64 2148757897, i64 2148757910, i64 2148757954, i64 2148757988, i64 2148758009}
!246 = !{i64 2156603075}
!247 = !{i64 5046194}
!248 = !{i64 2156603888}
!249 = !{i64 2156606339}
!250 = !{i64 2156606786}
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !{i64 5046392}
!253 = !{i64 2152585737}
!254 = !{i64 2156556689}
!255 = !{i64 2156517869}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2156518159}
!258 = !{i64 2156518669}
!259 = !{i64 2156519203}
!260 = !{i64 2156519745}
!261 = !{i64 5045774}
!262 = !{i64 2156520298}
!263 = !{i64 2156520517}
!264 = !{i64 5045574}
!265 = !{i64 2156521197}
!266 = !{i64 2156521288}
!267 = !{i32 0, i32 33}
!268 = !{i64 2156521752}
!269 = !{i64 2156522215}
!270 = !{i64 2156630050}
!271 = !{i64 2156582287}
!272 = !{i64 2152586961}
!273 = !{i64 2152588316}
!274 = !{i64 2152587342}
!275 = !{i64 5045997}
!276 = !{i64 2156565549}
!277 = !{i64 2156565778}
!278 = !{i64 2156566090}
!279 = !{i64 2156566433}
!280 = !{i64 2156566662}
!281 = !{i64 2156544864, i64 2156545351, i64 2156544901, i64 2156544957, i64 2156544991, i64 2156545015, i64 2156545056, i64 2156545077, i64 2156545105, i64 2156545139}
!282 = !{i64 2156546259}
!283 = !{i64 2156546407}
!284 = !{i64 2156546555}
!285 = !{i64 2156546703}
!286 = !{i64 2156549536, i64 2156550023, i64 2156549573, i64 2156549629, i64 2156549663, i64 2156549687, i64 2156549728, i64 2156549749, i64 2156549777, i64 2156549811}
!287 = !{i64 2156504571}
!288 = !{i64 2156504803}
!289 = !{i64 2156505524}
!290 = !{i64 2156506031}
!291 = !{i64 2156554992}
!292 = !{i64 2156555759}
!293 = !{i64 2156522772}
!294 = !{i64 2156523392}
!295 = !{i64 2156523655}
!296 = !{i64 2156524465}
!297 = !{i64 2156524955}
!298 = !{i64 2156525217}
!299 = !{i64 2156526024}
!300 = !{i64 2156570176}
!301 = !{i64 2156570710}
!302 = !{i64 2156571252}
!303 = !{i64 2156571746}
!304 = !{i64 2156571992}
!305 = !{i64 2156572244}
!306 = !{i64 2156577811}
!307 = !{i64 2156578477}
!308 = !{i64 2156578720}
!309 = !{i64 2156579470}
!310 = !{i64 2156580250}
!311 = !{i64 2156581003}
!312 = !{i64 2156535915}
!313 = !{i64 2156536304}
!314 = !{i64 2156536719}
!315 = !{i64 2156537214}
!316 = !{i64 2156537685}
!317 = !{i64 2156538090}
!318 = !{i64 2156538756}
!319 = !{i64 2156539038}
!320 = !{i64 2156539905}
!321 = !{i64 2156540148}
!322 = !{i64 2156540898}
!323 = !{i64 2156541678}
!324 = !{i64 2156542431}
!325 = !{i64 2156529629}
!326 = !{i64 2156530108}
!327 = !{i64 2156530567}
!328 = !{i64 2156530972}
!329 = !{i64 2156531638}
!330 = !{i64 2156531920}
!331 = !{i64 2156532787}
!332 = !{i64 2156533030}
!333 = !{i64 2156533780}
!334 = !{i64 2156534560}
!335 = !{i64 2156535313}
!336 = !{i64 2156535526}
!337 = !{i64 2156526315}
!338 = !{i64 2156526664}
!339 = !{i64 2156527086}
!340 = !{i64 2156527549}
!341 = !{i64 2156496975}
!342 = !{i64 2156497482}
!343 = !{i64 2156500022}
!344 = !{i64 2156500255}
!345 = !{i64 2156500979}
!346 = !{i64 2156501486}
!347 = !{i64 2156566980}
!348 = !{i64 2156567777}
!349 = !{i64 2156568006}
!350 = !{i64 2156568448}
!351 = !{i64 2156569245}
!352 = !{i64 2156569474}
!353 = !{i64 2156590534}
!354 = !{i64 2156595571}
!355 = !{i64 2156595973}
!356 = !{i64 2156596645}
!357 = !{i64 2156596861}
!358 = !{i64 2156597260}
!359 = !{i64 2156597671}
!360 = !{i64 2156598370}
!361 = !{i64 2156598624}
!362 = !{i64 2156611681}
!363 = !{i64 2155984746}
!364 = !{i64 2155984943}
!365 = !{i64 2149431105}
!366 = !{i64 2149432141}
!367 = !{i64 2156001402}
!368 = !{i64 2156001619}
!369 = !{i64 2156626593}
!370 = !{i64 2156620042}
!371 = !{i64 2156612438}
!372 = !{i64 2156072771}
!373 = !{i64 2156072992}
