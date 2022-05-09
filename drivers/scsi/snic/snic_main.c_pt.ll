; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_main.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.105 }
%union.anon.105 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vnic_snic_config = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.snic_fw_info = type { i32, i32, i32, i32, i32, i32, i32, i16, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.snic_stats = type { %struct.snic_io_stats, %struct.snic_abort_stats, %struct.snic_reset_stats, %struct.snic_fw_stats, %struct.snic_misc_stats, %struct.atomic64_t }
%struct.snic_io_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [60 x %struct.atomic64_t], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_abort_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_reset_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_fw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_misc_stats = type { i64, i64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.vnic_intr_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@snic_log_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_snic_log_level = internal constant [20 x i8] c"snic.snic_log_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_snic_log_level = internal constant %struct.kernel_param { ptr @__param_str_snic_log_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @snic_log_level } }, section "__param", align 4
@__UNIQUE_ID_snic_log_leveltype374 = internal constant [33 x i8] c"snic.parmtype=snic_log_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_snic_log_level375 = internal constant [57 x i8] c"snic.parm=snic_log_level:bitmask for snic logging levels\00", section ".modinfo", align 1
@snic_trace_max_pages = dso_local global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__param_str_snic_trace_max_pages = internal constant [26 x i8] c"snic.snic_trace_max_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_snic_trace_max_pages = internal constant %struct.kernel_param { ptr @__param_str_snic_trace_max_pages, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @snic_trace_max_pages } }, section "__param", align 4
@__UNIQUE_ID_snic_trace_max_pagestype376 = internal constant [40 x i8] c"snic.parmtype=snic_trace_max_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_snic_trace_max_pages377 = internal constant [82 x i8] c"snic.parm=snic_trace_max_pages:Total allocated memory pages for snic trace buffer\00", section ".modinfo", align 1
@snic_max_qdepth = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_str_snic_max_qdepth = internal constant [21 x i8] c"snic.snic_max_qdepth\00", align 1
@__param_snic_max_qdepth = internal constant %struct.kernel_param { ptr @__param_str_snic_max_qdepth, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.105 { ptr @snic_max_qdepth } }, section "__param", align 4
@__UNIQUE_ID_snic_max_qdepthtype378 = internal constant [35 x i8] c"snic.parmtype=snic_max_qdepth:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_snic_max_qdepth379 = internal constant [61 x i8] c"snic.parm=snic_max_qdepth:Queue depth to report for each LUN\00", section ".modinfo", align 1
@snic_glob = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@snic_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 351, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snic state change from %s to %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snic_set_state\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/snic/snic_main.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_set_state._entry_ptr = internal global ptr @snic_set_state._entry, section ".printk_index", align 4
@snic_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @snic_id_table, ptr @snic_probe, ptr @snic_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_snic__388_1004_snic_init_module6 = internal global ptr @snic_init_module, section ".initcall6.init", align 4
@__exitcall_snic_cleanup_module = internal global ptr @snic_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file389 = internal constant [33 x i8] c"snic.file=drivers/scsi/snic/snic\00", section ".modinfo", align 1
@__UNIQUE_ID_license390 = internal constant [20 x i8] c"snic.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [39 x i8] c"snic.description=Cisco SCSI NIC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version392 = internal constant [22 x i8] c"snic.version=0.0.1.18\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snic\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.0.1.18\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_author393 = internal constant [89 x i8] c"snic.author=Narsimhulu Musini <nmusini@cisco.com>, Sesidhar Baddela <sebaddel@cisco.com>\00", section ".modinfo", align 1
@snic_id_table = internal global { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4407, i32 70, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016snic:snic device %4x:%4x:%4x:%4x: \00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snic_probe\00", [21 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr = internal global ptr @snic_probe._entry, section ".printk_index", align 4
@snic_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016snic:snic device bus %x: slot %x: fn %x\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.12 = internal global ptr @snic_probe._entry.10, section ".printk_index", align 4
@snic_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 32, ptr @snic_queuecommand, ptr null, ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @snic_abort_cmd, ptr @snic_device_reset, ptr null, ptr null, ptr @snic_host_reset, ptr @snic_slave_alloc, ptr @snic_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snic_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.110, ptr null, i32 50, i32 -1, i16 60, i16 0, i32 2048, i32 0, i32 0, i32 0, i16 32, i8 0, i32 0, i8 -128, i32 0, ptr @snic_host_groups, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snic_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013snic:Unable to alloc scsi_host\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.15 = internal global ptr @snic_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%d\00", [27 x i8] zeroinitializer }, align 32
@snic_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"snic%d = %p shost = %p device bus %x: slot %x: fn %x\0A\00", [42 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.19 = internal global ptr @snic_probe._entry.17, section ".printk_index", align 4
@snic_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.2, i32 411, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot enable PCI Resources, aborting : %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.23 = internal global ptr @snic_probe._entry.20, section ".printk_index", align 4
@snic_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.2, i32 420, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cannot obtain PCI Resources, aborting : %d\0A\00", [52 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.26 = internal global ptr @snic_probe._entry.24, section ".printk_index", align 4
@snic_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.9, ptr @.str.2, i32 438, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No Usable DMA Configuration, aborting %d\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.29 = internal global ptr @snic_probe._entry.27, section ".printk_index", align 4
@snic_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.9, ptr @.str.2, i32 445, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"BAR0 not memory mappable aborting.\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.32 = internal global ptr @snic_probe._entry.30, section ".printk_index", align 4
@snic_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.9, ptr @.str.2, i32 454, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cannot memory map BAR0 res hdr aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.35 = internal global ptr @snic_probe._entry.33, section ".printk_index", align 4
@snic_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.9, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.38 = internal global ptr @snic_probe._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snic->bar0.bus_addr == 0\00", [39 x i8] zeroinitializer }, align 32
@snic_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.9, ptr @.str.2, i32 467, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vNIC Resource Discovery Failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.42 = internal global ptr @snic_probe._entry.40, section ".printk_index", align 4
@snic_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.9, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Devcmd2 Init Failed. err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.45 = internal global ptr @snic_probe._entry.43, section ".printk_index", align 4
@snic_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.9, ptr @.str.2, i32 484, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vNIC dev open failed, aborting. %d\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.48 = internal global ptr @snic_probe._entry.46, section ".printk_index", align 4
@snic_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.9, ptr @.str.2, i32 493, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vNIC dev init failed. aborting. %d\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.51 = internal global ptr @snic_probe._entry.49, section ".printk_index", align 4
@snic_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.9, ptr @.str.2, i32 503, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Get vNIC configuration failed, aborting. %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.54 = internal global ptr @snic_probe._entry.52, section ".printk_index", align 4
@snic_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.9, ptr @.str.2, i32 530, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to set intr mode aborting. %d\0A\00", [58 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.57 = internal global ptr @snic_probe._entry.55, section ".printk_index", align 4
@snic_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.9, ptr @.str.2, i32 539, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to alloc vNIC resources aborting. %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.60 = internal global ptr @snic_probe._entry.58, section ".printk_index", align 4
@snic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&snic->spl_cmd_lock\00", [44 x i8] zeroinitializer }, align 32
@snic_probe.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&snic->snic_lock\00", [47 x i8] zeroinitializer }, align 32
@snic_probe.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&snic->wq_lock[i]\00", [46 x i8] zeroinitializer }, align 32
@snic_probe.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&snic->io_req_lock[i]\00", [42 x i8] zeroinitializer }, align 32
@snic_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.9, ptr @.str.2, i32 566, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dflt sgl pool creation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.70 = internal global ptr @snic_probe._entry.68, section ".printk_index", align 4
@snic_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.9, ptr @.str.2, i32 577, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"max sgl pool creation failed\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.73 = internal global ptr @snic_probe._entry.71, section ".printk_index", align 4
@snic_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.9, ptr @.str.2, i32 588, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snic tmreq info pool creation failed.\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.76 = internal global ptr @snic_probe._entry.74, section ".printk_index", align 4
@snic_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.9, ptr @.str.2, i32 606, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to alloc notify buffer aborting. %d\0A\00", [52 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.79 = internal global ptr @snic_probe._entry.77, section ".printk_index", align 4
@snic_probe.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&snic->tgt_work)\00", [61 x i8] zeroinitializer }, align 32
@snic_probe.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&snic->disc_work)\00", [60 x i8] zeroinitializer }, align 32
@snic_probe.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&snic->link_work)\00", [60 x i8] zeroinitializer }, align 32
@snic_probe._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.9, ptr @.str.2, i32 628, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vNIC dev enable failed w/ error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.88 = internal global ptr @snic_probe._entry.86, section ".printk_index", align 4
@snic_probe._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.9, ptr @.str.2, i32 635, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to request irq. %d\0A\00", [37 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.91 = internal global ptr @snic_probe._entry.89, section ".printk_index", align 4
@snic_probe._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.9, ptr @.str.2, i32 648, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to get snic io config from FW w err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.94 = internal global ptr @snic_probe._entry.92, section ".printk_index", align 4
@snic_probe._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.9, ptr @.str.2, i32 661, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Adding scsi host Failed ... exiting. %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.97 = internal global ptr @snic_probe._entry.95, section ".printk_index", align 4
@snic_probe._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.9, ptr @.str.2, i32 671, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"snic_probe:Discovery Failed w err = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.100 = internal global ptr @snic_probe._entry.98, section ".printk_index", align 4
@snic_probe._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.9, ptr @.str.2, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SNIC Device Probe Successful.\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.103 = internal global ptr @snic_probe._entry.101, section ".printk_index", align 4
@snic_probe._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.9, ptr @.str.2, i32 700, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"WQ Disable Failed w/ err = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.106 = internal global ptr @snic_probe._entry.104, section ".printk_index", align 4
@snic_probe._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.9, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016snic:sNIC device : bus %d: slot %d: fn %d Registration Failed.\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_probe._entry_ptr.109 = internal global ptr @snic_probe._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snic_scsi\00", [22 x i8] zeroinitializer }, align 32
@snic_host_groups = external dso_local global [0 x ptr], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snic_vdev_open_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VNIC_DEV_OPEN Timedout.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic_vdev_open_done\00", [44 x i8] zeroinitializer }, align 32
@snic_vdev_open_done._entry_ptr = internal global ptr @snic_vdev_open_done._entry, section ".printk_index", align 4
@snic_notify_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.2, i32 176, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Interrupt mode should be setup before devcmd notify set %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snic_notify_set\00", [16 x i8] zeroinitializer }, align 32
@snic_notify_set._entry_ptr = internal global ptr @snic_notify_set._entry, section ".printk_index", align 4
@snic_add_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 311, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snic: scsi_add_host failed. %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_add_host\00", [18 x i8] zeroinitializer }, align 32
@snic_add_host._entry_ptr = internal global ptr @snic_add_host._entry, section ".printk_index", align 4
@snic_add_host._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.116, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_add_host._entry_ptr.118 = internal global ptr @snic_add_host._entry.117, section ".printk_index", align 4
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"shost->work_q != NULL\00", [42 x i8] zeroinitializer }, align 32
@snic_add_host.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scsi_wq_%d\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@snic_add_host._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.116, ptr @.str.2, i32 321, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to Create ScsiHost wq.\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_add_host._entry_ptr.124 = internal global ptr @snic_add_host._entry.122, section ".printk_index", align 4
@snic_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016snic:sNIC dev: bus %d slot %d fn %d snic inst is null.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snic_remove\00", [20 x i8] zeroinitializer }, align 32
@snic_remove._entry_ptr = internal global ptr @snic_remove._entry, section ".printk_index", align 4
@snic_global_data_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.127, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snic_global_data_cleanup\00", [39 x i8] zeroinitializer }, align 32
@snic_global_data_cleanup._entry_ptr = internal global ptr @snic_global_data_cleanup._entry, section ".printk_index", align 4
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_glob == NULL\00", [46 x i8] zeroinitializer }, align 32
@snic_global_data_cleanup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.2, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016snic:SNIC Driver is supported only for x86_64 platforms!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_init_module\00", [47 x i8] zeroinitializer }, align 32
@snic_init_module._entry_ptr = internal global ptr @snic_init_module._entry, section ".printk_index", align 4
@snic_init_module._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016snic:%s, ver %s\0A\00", [45 x i8] zeroinitializer }, align 32
@snic_init_module._entry_ptr.133 = internal global ptr @snic_init_module._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cisco SCSI NIC Driver\00", [42 x i8] zeroinitializer }, align 32
@snic_init_module._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.130, ptr @.str.2, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013snic:Failed to Initialize Global Data.\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_init_module._entry_ptr.137 = internal global ptr @snic_init_module._entry.135, section ".printk_index", align 4
@snic_init_module._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.130, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013snic:PCI driver register error\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_init_module._entry_ptr.140 = internal global ptr @snic_init_module._entry.138, section ".printk_index", align 4
@snic_global_data_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013snic:Failed to allocate Global Context.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic_global_data_init\00", [42 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr = internal global ptr @snic_global_data_init._entry, section ".printk_index", align 4
@snic_global_data_init._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013snic:Trace buffer init failed, SNIC tracing disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr.145 = internal global ptr @snic_global_data_init._entry.143, section ".printk_index", align 4
@snic_global_data_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&snic_glob->snic_list_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_req_dfltsgl\00", [47 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.142, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013snic:Failed to create snic default sgl slab\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr.150 = internal global ptr @snic_global_data_init._entry.148, section ".printk_index", align 4
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snic_req_maxsgl\00", [16 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.142, ptr @.str.2, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013snic:Failed to create snic max sgl slab\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr.154 = internal global ptr @snic_global_data_init._entry.152, section ".printk_index", align 4
@snic_global_data_init._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.142, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013snic:Failed to create snic tm req slab\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr.157 = internal global ptr @snic_global_data_init._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_event_wq\00", [18 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.142, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013snic:snic event queue create failed\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_global_data_init._entry_ptr.161 = internal global ptr @snic_global_data_init._entry.159, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"snic_log_level\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 43, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"snic_trace_max_pages\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 48, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"snic_max_qdepth\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 54, i32 14 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"snic_glob\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 822, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 349, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"snic_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 956, i32 26 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 1009, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"snic_id_table\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 38, i32 29 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 370, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 374, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"snic_host_template\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 117, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 383, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 391, i32 47 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 394, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 409, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 418, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 436, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 445, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 453, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 462, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 467, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 475, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 482, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 491, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 501, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 528, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 537, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 552, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 555, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 558, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 561, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 566, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 577, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 588, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 604, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 616, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 617, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 618, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 626, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 635, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 646, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 659, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 670, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 676, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 699, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 745, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 135, i32 15 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 293, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 174, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 309, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 316, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 317, i32 59 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 319, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 321, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 764, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 938, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 969, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 973, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 977, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 984, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 839, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 854, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 861, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 866, i32 29 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 869, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 879, i32 29 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 882, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 893, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 901, i32 23 }
@___asan_gen_.582 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.586 = private constant [33 x i8] c"../drivers/scsi/snic/snic_main.c\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 903, i32 3 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file389, ptr @__UNIQUE_ID_license390, ptr @__UNIQUE_ID_snic_log_level375, ptr @__UNIQUE_ID_snic_log_leveltype374, ptr @__UNIQUE_ID_snic_max_qdepth379, ptr @__UNIQUE_ID_snic_max_qdepthtype378, ptr @__UNIQUE_ID_snic_trace_max_pages377, ptr @__UNIQUE_ID_snic_trace_max_pagestype376, ptr @__UNIQUE_ID_version392, ptr @__exitcall_snic_cleanup_module, ptr @__initcall__kmod_snic__388_1004_snic_init_module6, ptr @__modver_attr, ptr @__param_snic_log_level, ptr @__param_snic_max_qdepth, ptr @__param_snic_trace_max_pages, ptr @snic_add_host._entry, ptr @snic_add_host._entry.117, ptr @snic_add_host._entry.122, ptr @snic_add_host._entry_ptr, ptr @snic_add_host._entry_ptr.118, ptr @snic_add_host._entry_ptr.124, ptr @snic_cleanup_module, ptr @snic_global_data_cleanup._entry, ptr @snic_global_data_cleanup._entry_ptr, ptr @snic_global_data_init._entry, ptr @snic_global_data_init._entry.143, ptr @snic_global_data_init._entry.148, ptr @snic_global_data_init._entry.152, ptr @snic_global_data_init._entry.155, ptr @snic_global_data_init._entry.159, ptr @snic_global_data_init._entry_ptr, ptr @snic_global_data_init._entry_ptr.145, ptr @snic_global_data_init._entry_ptr.150, ptr @snic_global_data_init._entry_ptr.154, ptr @snic_global_data_init._entry_ptr.157, ptr @snic_global_data_init._entry_ptr.161, ptr @snic_init_module._entry, ptr @snic_init_module._entry.131, ptr @snic_init_module._entry.135, ptr @snic_init_module._entry.138, ptr @snic_init_module._entry_ptr, ptr @snic_init_module._entry_ptr.133, ptr @snic_init_module._entry_ptr.137, ptr @snic_init_module._entry_ptr.140, ptr @snic_notify_set._entry, ptr @snic_notify_set._entry_ptr, ptr @snic_probe._entry, ptr @snic_probe._entry.10, ptr @snic_probe._entry.101, ptr @snic_probe._entry.104, ptr @snic_probe._entry.107, ptr @snic_probe._entry.13, ptr @snic_probe._entry.17, ptr @snic_probe._entry.20, ptr @snic_probe._entry.24, ptr @snic_probe._entry.27, ptr @snic_probe._entry.30, ptr @snic_probe._entry.33, ptr @snic_probe._entry.36, ptr @snic_probe._entry.40, ptr @snic_probe._entry.43, ptr @snic_probe._entry.46, ptr @snic_probe._entry.49, ptr @snic_probe._entry.52, ptr @snic_probe._entry.55, ptr @snic_probe._entry.58, ptr @snic_probe._entry.68, ptr @snic_probe._entry.71, ptr @snic_probe._entry.74, ptr @snic_probe._entry.77, ptr @snic_probe._entry.86, ptr @snic_probe._entry.89, ptr @snic_probe._entry.92, ptr @snic_probe._entry.95, ptr @snic_probe._entry.98, ptr @snic_probe._entry_ptr, ptr @snic_probe._entry_ptr.100, ptr @snic_probe._entry_ptr.103, ptr @snic_probe._entry_ptr.106, ptr @snic_probe._entry_ptr.109, ptr @snic_probe._entry_ptr.12, ptr @snic_probe._entry_ptr.15, ptr @snic_probe._entry_ptr.19, ptr @snic_probe._entry_ptr.23, ptr @snic_probe._entry_ptr.26, ptr @snic_probe._entry_ptr.29, ptr @snic_probe._entry_ptr.32, ptr @snic_probe._entry_ptr.35, ptr @snic_probe._entry_ptr.38, ptr @snic_probe._entry_ptr.42, ptr @snic_probe._entry_ptr.45, ptr @snic_probe._entry_ptr.48, ptr @snic_probe._entry_ptr.51, ptr @snic_probe._entry_ptr.54, ptr @snic_probe._entry_ptr.57, ptr @snic_probe._entry_ptr.60, ptr @snic_probe._entry_ptr.70, ptr @snic_probe._entry_ptr.73, ptr @snic_probe._entry_ptr.76, ptr @snic_probe._entry_ptr.79, ptr @snic_probe._entry_ptr.88, ptr @snic_probe._entry_ptr.91, ptr @snic_probe._entry_ptr.94, ptr @snic_probe._entry_ptr.97, ptr @snic_remove._entry, ptr @snic_remove._entry_ptr, ptr @snic_set_state._entry, ptr @snic_set_state._entry_ptr, ptr @snic_vdev_open_done._entry, ptr @snic_vdev_open_done._entry_ptr, ptr @snic_log_level, ptr @snic_trace_max_pages, ptr @snic_max_qdepth, ptr @snic_glob, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snic_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @snic_id_table, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @snic_host_template, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @snic_probe.__key, ptr @.str.61, ptr @snic_probe.__key.62, ptr @.str.63, ptr @snic_probe.__key.64, ptr @.str.65, ptr @snic_probe.__key.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @snic_probe.__key.80, ptr @.str.81, ptr @snic_probe.__key.82, ptr @.str.83, ptr @snic_probe.__key.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @snic_global_data_init.__key, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.160], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_log_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trace_max_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_max_qdepth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_glob to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_probe._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_vdev_open_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_notify_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_add_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_add_host._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_add_host._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_init_module._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_init_module._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_init_module._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_global_data_init._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_handle_link_event(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %snic_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #9
  %stop_link_events = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 6
  %0 = ptrtoint ptr %stop_link_events to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stop_link_events, align 1, !range !302
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call2) #9
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @snic_glob, align 4
  %event_q = getelementptr inbounds %struct.snic_global, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_q, align 64
  %link_work = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 30
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %link_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_get_state(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_set_state(ptr noundef %snic, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  %state.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %call1 = tail call ptr @snic_state_to_str(i32 noundef %3) #9
  %call2 = tail call ptr @snic_state_to_str(i32 noundef %state) #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, ptr noundef %call1, ptr noundef %call2) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %state, ptr %state.i, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_state_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snic_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @snic_driver) #9
  tail call fastcc void @snic_global_data_cleanup()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_global_data_cleanup() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @snic_glob, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %do.end, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, i32 noundef 938) #12
  %1 = load ptr, ptr @snic_glob, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %land.rhs, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.rhs:                                         ; preds = %do.end
  %.b47 = load i1, ptr @snic_global_data_cleanup.__already_done, align 1
  br i1 %.b47, label %land.rhs.if.end40_crit_edge, label %if.then8, !prof !303

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @snic_global_data_cleanup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 938, i32 noundef 9, ptr noundef null) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then8, %land.rhs.if.end40_crit_edge, %do.end.if.end40_crit_edge, %entry.if.end40_crit_edge
  %2 = load ptr, ptr @snic_glob, align 4
  %event_q = getelementptr inbounds %struct.snic_global, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_q, align 64
  tail call void @destroy_workqueue(ptr noundef %4) #9
  %5 = load ptr, ptr @snic_glob, align 4
  %arrayidx = getelementptr %struct.snic_global, ptr %5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kmem_cache_destroy(ptr noundef %7) #9
  %8 = load ptr, ptr @snic_glob, align 4
  %arrayidx42 = getelementptr %struct.snic_global, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx42, align 4
  tail call void @kmem_cache_destroy(ptr noundef %10) #9
  %11 = load ptr, ptr @snic_glob, align 4
  %req_cache43 = getelementptr inbounds %struct.snic_global, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %req_cache43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req_cache43, align 4
  tail call void @kmem_cache_destroy(ptr noundef %13) #9
  tail call void @snic_trc_free() #9
  tail call void @snic_debugfs_term() #9
  %14 = load ptr, ptr @snic_glob, align 4
  tail call void @kfree(ptr noundef %14) #9
  store ptr null, ptr @snic_glob, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129) #12
  tail call void @add_taint(i32 noundef 2, i32 noundef 0) #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.7) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #13
  store ptr %call7.i.i.i, ptr @snic_glob, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141) #12
  br label %do.end9

if.end.i:                                         ; preds = %entry
  tail call void @snic_debugfs_init() #9
  %call2.i = tail call i32 @snic_trc_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #12
  tail call void @snic_trc_free() #9
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end6.i, %if.end.i.if.end9.i_crit_edge
  %1 = load ptr, ptr @snic_glob, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %1, ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev.i.i, align 4
  %4 = load ptr, ptr @snic_glob, align 4
  %snic_list_lock.i = getelementptr inbounds %struct.snic_global, ptr %4, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %snic_list_lock.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @snic_global_data_init.__key, i16 noundef signext 3) #9
  %call14.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.147, i32 noundef 728, i32 noundef 16, i32 noundef 8192, ptr noundef null) #9
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149) #12
  br label %err_dflt_req_slab.i

if.end22.i:                                       ; preds = %if.end9.i
  %5 = load ptr, ptr @snic_glob, align 4
  %req_cache.i = getelementptr inbounds %struct.snic_global, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %req_cache.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14.i, ptr %req_cache.i, align 4
  %call24.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.151, i32 noundef 1176, i32 noundef 16, i32 noundef 8192, ptr noundef null) #9
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %do.end29.i, label %if.end32.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #12
  br label %err_max_req_slab.i

if.end32.i:                                       ; preds = %if.end22.i
  %7 = load ptr, ptr @snic_glob, align 4
  %arrayidx34.i = getelementptr %struct.snic_global, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call24.i, ptr %arrayidx34.i, align 4
  %call35.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.151, i32 noundef 136, i32 noundef 16, i32 noundef 8192, ptr noundef null) #9
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %do.end40.i, label %if.end43.i

do.end40.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #12
  br label %err_tmreq_slab.i

if.end43.i:                                       ; preds = %if.end32.i
  %9 = load ptr, ptr @snic_glob, align 4
  %arrayidx45.i = getelementptr %struct.snic_global, ptr %9, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35.i, ptr %arrayidx45.i, align 4
  %call46.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.121, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.158) #9
  %11 = load ptr, ptr @snic_glob, align 4
  %event_q.i = getelementptr inbounds %struct.snic_global, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %event_q.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call46.i, ptr %event_q.i, align 64
  %tobool48.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool48.not.i, label %do.end52.i, label %snic_global_data_init.exit

do.end52.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #12
  %13 = load ptr, ptr @snic_glob, align 4
  %arrayidx57.i = getelementptr %struct.snic_global, ptr %13, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx57.i, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #9
  br label %err_tmreq_slab.i

err_tmreq_slab.i:                                 ; preds = %do.end52.i, %do.end40.i
  %16 = load ptr, ptr @snic_glob, align 4
  %arrayidx59.i = getelementptr %struct.snic_global, ptr %16, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx59.i, align 4
  tail call void @kmem_cache_destroy(ptr noundef %18) #9
  br label %err_max_req_slab.i

err_max_req_slab.i:                               ; preds = %err_tmreq_slab.i, %do.end29.i
  %19 = load ptr, ptr @snic_glob, align 4
  %req_cache60.i = getelementptr inbounds %struct.snic_global, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %req_cache60.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %req_cache60.i, align 4
  tail call void @kmem_cache_destroy(ptr noundef %21) #9
  br label %err_dflt_req_slab.i

err_dflt_req_slab.i:                              ; preds = %err_max_req_slab.i, %do.end19.i
  tail call void @snic_trc_free() #9
  tail call void @snic_debugfs_term() #9
  %22 = load ptr, ptr @snic_glob, align 4
  tail call void @kfree(ptr noundef %22) #9
  store ptr null, ptr @snic_glob, align 4
  br label %do.end9

snic_global_data_init.exit:                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %snic_global_data_init.exit.do.end9_crit_edge

snic_global_data_init.exit.do.end9_crit_edge:     ; preds = %snic_global_data_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9

do.end9:                                          ; preds = %snic_global_data_init.exit.do.end9_crit_edge, %err_dflt_req_slab.i, %do.end.i
  %retval.0.i26 = phi i32 [ %call2.i, %snic_global_data_init.exit.do.end9_crit_edge ], [ -12, %err_dflt_req_slab.i ], [ -12, %do.end.i ]
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #12
  br label %cleanup

if.end:                                           ; preds = %snic_global_data_init.exit
  %call12 = tail call i32 @__pci_register_driver(ptr noundef nonnull @snic_driver, ptr noundef null, ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #12
  tail call fastcc void @snic_global_data_cleanup()
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ %retval.0.i26, %do.end9 ], [ %call12, %do.end16 ], [ %call12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vendor, align 8
  %conv = zext i16 %1 to i32
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  %conv1 = zext i16 %3 to i32
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 9
  %4 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %subsystem_vendor, align 4
  %conv2 = zext i16 %5 to i32
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %6 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %subsystem_device, align 2
  %conv3 = zext i16 %7 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3) #12
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number, align 4
  %conv8 = zext i8 %11 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %12 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %13, 3
  %and = and i32 %shr, 31
  %and10 = and i32 %13, 7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv8, i32 noundef %and, i32 noundef %and10) #12
  %call12 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @snic_host_template, i32 noundef 5248) #9
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %do.end15, label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %do.end454

if.end:                                           ; preds = %entry
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 53
  %shost19 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 6
  %14 = ptrtoint ptr %shost19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %shost19, align 16
  %name = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 1
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 17
  %15 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_no, align 4
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6, i32 noundef %16)
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 49
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %number26 = getelementptr inbounds %struct.pci_bus, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %number26 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %number26, align 4
  %conv27 = zext i8 %22 to i32
  %23 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %devfn, align 4
  %shr29 = lshr i32 %24, 3
  %and30 = and i32 %shr29, 31
  %and32 = and i32 %24, 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.18, i32 noundef %18, ptr noundef %hostdata.i, ptr noundef nonnull %call12, i32 noundef %conv27, i32 noundef %and30, i32 noundef %and32) #12
  tail call void @snic_stats_debugfs_init(ptr noundef %hostdata.i) #9
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %hostdata.i, ptr %driver_data.i.i, align 4
  %pdev33 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %pdev33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pdev, ptr %pdev33, align 8
  %call34 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.21, i32 noundef %call34) #12
  br label %err_free_snic

if.end41:                                         ; preds = %if.end
  %call42 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.25, i32 noundef %call42) #12
  br label %err_pci_disable

if.end49:                                         ; preds = %if.end41
  tail call void @pci_set_master(ptr noundef %pdev) #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 8796093022207) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end49.if.end62_crit_edge, label %if.then52

if.end49.if.end62_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then52:                                        ; preds = %if.end49
  %call.i683 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i683)
  %cmp.i684 = icmp eq i32 %call.i683, 0
  br i1 %cmp.i684, label %if.then52.if.end62_crit_edge, label %do.end59

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.28, i32 noundef %call.i683) #12
  br label %err_rel_regions

if.end62:                                         ; preds = %if.then52.if.end62_crit_edge, %if.end49.if.end62_crit_edge
  %.sink = phi i64 [ 8796093022207, %if.end49.if.end62_crit_edge ], [ 4294967295, %if.then52.if.end62_crit_edge ]
  %call1.i685 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %.sink) #9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags63 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %27 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags63, align 4
  %and64 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.end69, label %if.end71

do.end69:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.31) #12
  br label %err_rel_regions

if.end71:                                         ; preds = %if.end62
  %call72 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #9
  %bar0 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 7
  %29 = ptrtoint ptr %bar0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call72, ptr %bar0, align 4
  %tobool75.not = icmp eq ptr %call72, null
  br i1 %tobool75.not, label %do.end79, label %if.end81

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.34) #12
  br label %err_rel_regions

if.end81:                                         ; preds = %if.end71
  %30 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resource, align 8
  %bus_addr = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 8
  %32 = ptrtoint ptr %bus_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %bus_addr, align 4
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %33 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp eq i32 %34, 0
  br i1 %cmp, label %if.end81.cond.end_crit_edge, label %cond.false

if.end81.cond.end_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resource, align 8
  %sub = add i32 %34, 1
  %add = sub i32 %sub, %36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end81.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end81.cond.end_crit_edge ]
  %len = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 9
  %37 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %cond, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp97 = icmp eq i32 %31, 0
  br i1 %cmp97, label %do.end102, label %cond.end.if.end151_crit_edge

cond.end.if.end151_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

do.end102:                                        ; preds = %cond.end
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.9, i32 noundef 462) #12
  %38 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp107 = icmp eq i32 %39, 0
  br i1 %cmp107, label %land.rhs, label %do.end102.if.end151_crit_edge

do.end102.if.end151_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

land.rhs:                                         ; preds = %do.end102
  %.b681 = load i1, ptr @snic_probe.__already_done, align 1
  br i1 %.b681, label %land.rhs.if.end151_crit_edge, label %if.then117, !prof !303

land.rhs.if.end151_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then117:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @snic_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 462, i32 noundef 9, ptr noundef null) #9
  br label %if.end151

if.end151:                                        ; preds = %if.then117, %land.rhs.if.end151_crit_edge, %do.end102.if.end151_crit_edge, %cond.end.if.end151_crit_edge
  %call153 = tail call ptr @svnic_dev_alloc_discover(ptr noundef null, ptr noundef %hostdata.i, ptr noundef %pdev, ptr noundef %bar0, i32 noundef 1) #9
  %vdev = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 13
  %40 = ptrtoint ptr %vdev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call153, ptr %vdev, align 4
  %tobool155.not = icmp eq ptr %call153, null
  br i1 %tobool155.not, label %do.end159, label %if.end161

do.end159:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.41) #12
  br label %err_iounmap

if.end161:                                        ; preds = %if.end151
  %call163 = tail call i32 @svnic_dev_cmd_init(ptr noundef nonnull %call153, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end170, label %do.end168

do.end168:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.44, i32 noundef %call163) #12
  br label %err_vnic_unreg

if.end170:                                        ; preds = %if.end161
  %41 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vdev, align 4
  %call172 = tail call fastcc i32 @snic_dev_wait(ptr noundef %42)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end179, label %do.end177

do.end177:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.47, i32 noundef %call172) #12
  br label %err_vnic_unreg

if.end179:                                        ; preds = %if.end170
  %43 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev, align 4
  %call181 = tail call i32 @svnic_dev_init(ptr noundef %44, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end188, label %do.end186

do.end186:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.50, i32 noundef %call181) #12
  br label %err_dev_close

if.end188:                                        ; preds = %if.end179
  %call189 = tail call i32 @snic_get_vnic_config(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end196, label %do.end194

do.end194:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.53, i32 noundef %call189) #12
  br label %err_dev_close

if.end196:                                        ; preds = %if.end188
  %io_throttle_count = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 11, i32 1, i32 1
  %45 = ptrtoint ptr %io_throttle_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %io_throttle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %46)
  %cmp197.not = icmp eq i32 %46, 16
  br i1 %cmp197.not, label %if.end196.if.end214_crit_edge, label %if.then199

if.end196.if.end214_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end214

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %47 = tail call i32 @llvm.umax.i32(i32 %46, i32 8)
  %48 = tail call i32 @llvm.umin.i32(i32 %47, i32 50)
  %can_queue = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 26
  %49 = ptrtoint ptr %can_queue to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %can_queue, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then199, %if.end196.if.end214_crit_edge
  %can_queue215 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 26
  %50 = ptrtoint ptr %can_queue215 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %can_queue215, align 4
  %max_tag_id = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 10, i32 5, i32 7
  %52 = ptrtoint ptr %max_tag_id to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %max_tag_id, align 4
  %luns_per_tgt = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 11, i32 3
  %53 = ptrtoint ptr %luns_per_tgt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %luns_per_tgt, align 4
  %conv217 = zext i32 %54 to i64
  %max_lun = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 22
  %55 = ptrtoint ptr %max_lun to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv217, ptr %max_lun, align 8
  %max_id = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 21
  %56 = ptrtoint ptr %max_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 256, ptr %max_id, align 4
  %max_cmd_len = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 0, i32 24
  %57 = ptrtoint ptr %max_cmd_len to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 16, ptr %max_cmd_len, align 4
  tail call void @snic_get_res_counts(ptr noundef %hostdata.i) #9
  %call218 = tail call i32 @snic_set_intr_mode(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %if.end225, label %do.end223

do.end223:                                        ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.56, i32 noundef %call218) #12
  br label %err_dev_close

if.end225:                                        ; preds = %if.end214
  %call226 = tail call i32 @snic_alloc_vnic_res(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end233, label %do.end231

do.end231:                                        ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.59, i32 noundef %call226) #12
  br label %err_clear_intr

if.end233:                                        ; preds = %if.end225
  %58 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %hostdata.i, ptr %hostdata.i, align 4
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %hostdata.i, ptr %prev.i, align 4
  %spl_cmd_list = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 10, i32 5, i32 3
  %60 = ptrtoint ptr %spl_cmd_list to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %spl_cmd_list, ptr %spl_cmd_list, align 4
  %prev.i688 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 10, i32 5, i32 6
  %61 = ptrtoint ptr %prev.i688 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %spl_cmd_list, ptr %prev.i688, align 4
  %spl_cmd_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 10, i32 1, i32 4, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %spl_cmd_lock, ptr noundef nonnull @.str.61, ptr noundef nonnull @snic_probe.__key, i16 noundef signext 3) #9
  %snic_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 3, i32 0, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %snic_lock, ptr noundef nonnull @.str.63, ptr noundef nonnull @snic_probe.__key.62, i16 noundef signext 3) #9
  %wq_lock = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 3, i32 5, i32 5, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %wq_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @snic_probe.__key.64, i16 noundef signext 3) #9
  br label %do.body253

do.body253:                                       ; preds = %do.body253.do.body253_crit_edge, %if.end233
  %i.1703 = phi i32 [ 0, %if.end233 ], [ %inc259, %do.body253.do.body253_crit_edge ]
  %arrayidx254 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %i.1703
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx254, ptr noundef nonnull @.str.67, ptr noundef nonnull @snic_probe.__key.66, i16 noundef signext 3) #9
  %inc259 = add nuw nsw i32 %i.1703, 1
  %exitcond.not = icmp eq i32 %inc259, 64
  br i1 %exitcond.not, label %for.end260, label %do.body253.do.body253_crit_edge

do.body253.do.body253_crit_edge:                  ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body253

for.end260:                                       ; preds = %do.body253
  %62 = load ptr, ptr @snic_glob, align 4
  %req_cache = getelementptr inbounds %struct.snic_global, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %req_cache to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %req_cache, align 4
  %call.i689 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %64) #9
  %tobool263.not = icmp eq ptr %call.i689, null
  br i1 %tobool263.not, label %do.end267, label %if.end269

do.end267:                                        ; preds = %for.end260
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.69) #12
  br label %err_free_res

if.end269:                                        ; preds = %for.end260
  %req_pool = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 30
  %65 = ptrtoint ptr %req_pool to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i689, ptr %req_pool, align 16
  %66 = load ptr, ptr @snic_glob, align 4
  %arrayidx272 = getelementptr %struct.snic_global, ptr %66, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx272, align 4
  %call.i690 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %68) #9
  %tobool274.not = icmp eq ptr %call.i690, null
  br i1 %tobool274.not, label %do.end278, label %if.end280

do.end278:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.72) #12
  br label %err_free_dflt_sgl_pool

if.end280:                                        ; preds = %if.end269
  %arrayidx282 = getelementptr %struct.Scsi_Host, ptr %call12, i32 1, i32 31
  %69 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i690, ptr %arrayidx282, align 4
  %70 = load ptr, ptr @snic_glob, align 4
  %arrayidx284 = getelementptr %struct.snic_global, ptr %70, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx284, align 4
  %call.i691 = tail call ptr @mempool_create(i32 noundef 2, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %72) #9
  %tobool286.not = icmp eq ptr %call.i691, null
  br i1 %tobool286.not, label %do.end290, label %if.end292

do.end290:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.75) #12
  br label %err_free_max_sgl_pool

if.end292:                                        ; preds = %if.end280
  %arrayidx294 = getelementptr %struct.Scsi_Host, ptr %call12, i32 1, i32 32
  %73 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call.i691, ptr %arrayidx294, align 8
  %state = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #9
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile i32 0, ptr %state, align 4
  %ios_inflight = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 11
  %call.i.i682 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_inflight, i32 noundef 4) #9
  %75 = ptrtoint ptr %ios_inflight to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile i32 0, ptr %ios_inflight, align 4
  %call295 = tail call fastcc i32 @snic_notify_set(ptr noundef %hostdata.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %do.body304, label %do.end300

do.end300:                                        ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.78, i32 noundef %call295) #12
  br label %err_free_tmreq_pool

do.body304:                                       ; preds = %if.end292
  %76 = load ptr, ptr @snic_glob, align 4
  %snic_list_lock = getelementptr inbounds %struct.snic_global, ptr %76, i32 0, i32 1
  %call309 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_list_lock) #9
  %77 = load ptr, ptr @snic_glob, align 4
  %prev.i692 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i692 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i692, align 4
  %call.i.i693 = tail call zeroext i1 @__list_add_valid(ptr noundef %hostdata.i, ptr noundef %79, ptr noundef %77) #9
  br i1 %call.i.i693, label %if.end.i.i, label %do.body304.list_add_tail.exit_crit_edge

do.body304.list_add_tail.exit_crit_edge:          ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %prev.i692 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %hostdata.i, ptr %prev.i692, align 4
  %81 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %77, ptr %hostdata.i, align 4
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %hostdata.i, ptr %79, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body304.list_add_tail.exit_crit_edge
  %84 = load ptr, ptr @snic_glob, align 4
  %snic_list_lock315 = getelementptr inbounds %struct.snic_global, ptr %84, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_list_lock315, i32 noundef %call309) #9
  %disc = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 5, i32 1, i32 1
  tail call void @snic_disc_init(ptr noundef %disc) #9
  %tgt_work = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4
  tail call void @__init_work(ptr noundef %tgt_work, i32 noundef 0) #9
  %85 = ptrtoint ptr %tgt_work to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -64, ptr %tgt_work, align 4
  %lockdep_map = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.81, ptr noundef nonnull @snic_probe.__key.80, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry320 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %entry320 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %entry320, ptr %entry320, align 4
  %prev.i694 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1, i32 1
  %87 = ptrtoint ptr %prev.i694 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %entry320, ptr %prev.i694, align 4
  %func = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 4, i32 2
  %88 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @snic_handle_tgt_disc, ptr %func, align 4
  %disc_work = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 8
  tail call void @__init_work(ptr noundef %disc_work, i32 noundef 0) #9
  %89 = ptrtoint ptr %disc_work to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -64, ptr %disc_work, align 8
  %lockdep_map330 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 8, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map330, ptr noundef nonnull @.str.83, ptr noundef nonnull @snic_probe.__key.82, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry332 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 8, i32 0, i32 0, i32 1
  %90 = ptrtoint ptr %entry332 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %entry332, ptr %entry332, align 4
  %prev.i695 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 8, i32 0, i32 0, i32 2
  %91 = ptrtoint ptr %prev.i695 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %entry332, ptr %prev.i695, align 4
  %func334 = getelementptr inbounds %struct.snic, ptr %hostdata.i, i32 0, i32 33, i32 2
  %92 = ptrtoint ptr %func334 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @snic_handle_disc, ptr %func334, align 4
  %link_work = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 1
  tail call void @__init_work(ptr noundef %link_work, i32 noundef 0) #9
  %93 = ptrtoint ptr %link_work to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %link_work, align 4
  %lockdep_map343 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 3, i32 0, i32 0, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map343, ptr noundef nonnull @.str.85, ptr noundef nonnull @snic_probe.__key.84, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry345 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 2
  %94 = ptrtoint ptr %entry345 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry345, ptr %entry345, align 4
  %prev.i696 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 3
  %95 = ptrtoint ptr %prev.i696 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry345, ptr %prev.i696, align 4
  %func347 = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 2, i32 49, i32 12, i32 3, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %func347 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @snic_handle_link, ptr %func347, align 4
  %wq_count = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 13, i32 1
  %97 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp351704.not = icmp eq i32 %98, 0
  br i1 %cmp351704.not, label %list_add_tail.exit.for.end357_crit_edge, label %list_add_tail.exit.for.body353_crit_edge

list_add_tail.exit.for.body353_crit_edge:         ; preds = %list_add_tail.exit
  br label %for.body353

list_add_tail.exit.for.end357_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end357

for.body353:                                      ; preds = %for.body353.for.body353_crit_edge, %list_add_tail.exit.for.body353_crit_edge
  %i.2705 = phi i32 [ %inc356, %for.body353.for.body353_crit_edge ], [ 0, %list_add_tail.exit.for.body353_crit_edge ]
  %arrayidx354 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 43, i32 %i.2705
  tail call void @svnic_wq_enable(ptr noundef %arrayidx354) #9
  %inc356 = add nuw i32 %i.2705, 1
  %99 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wq_count, align 16
  %cmp351 = icmp ult i32 %inc356, %100
  br i1 %cmp351, label %for.body353.for.body353_crit_edge, label %for.body353.for.end357_crit_edge

for.body353.for.end357_crit_edge:                 ; preds = %for.body353
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end357

for.body353.for.body353_crit_edge:                ; preds = %for.body353
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body353

for.end357:                                       ; preds = %for.body353.for.end357_crit_edge, %list_add_tail.exit.for.end357_crit_edge
  %101 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vdev, align 4
  %call359 = tail call i32 @svnic_dev_enable_wait(ptr noundef %102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %if.end366, label %do.end364

do.end364:                                        ; preds = %for.end357
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.87, i32 noundef %call359) #12
  br label %err_vdev_enable

if.end366:                                        ; preds = %for.end357
  %call367 = tail call i32 @snic_request_intr(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %for.cond375.preheader, label %do.end372

for.cond375.preheader:                            ; preds = %if.end366
  %intr_count = getelementptr inbounds %struct.Scsi_Host, ptr %call12, i32 1, i32 13, i32 13, i32 1, i32 2
  %103 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp376706.not = icmp eq i32 %104, 0
  br i1 %cmp376706.not, label %for.cond375.preheader.for.end382_crit_edge, label %for.cond375.preheader.for.body378_crit_edge

for.cond375.preheader.for.body378_crit_edge:      ; preds = %for.cond375.preheader
  br label %for.body378

for.cond375.preheader.for.end382_crit_edge:       ; preds = %for.cond375.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end382

do.end372:                                        ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.90, i32 noundef %call367) #12
  br label %err_req_intr

for.body378:                                      ; preds = %for.body378.for.body378_crit_edge, %for.cond375.preheader.for.body378_crit_edge
  %i.3707 = phi i32 [ %inc381, %for.body378.for.body378_crit_edge ], [ 0, %for.cond375.preheader.for.body378_crit_edge ]
  %ctrl.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 46, i32 %i.3707, i32 2
  %105 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctrl.i, align 4
  %mask.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %106, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #9, !srcloc !305
  %inc381 = add nuw i32 %i.3707, 1
  %107 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %intr_count, align 8
  %cmp376 = icmp ult i32 %inc381, %108
  br i1 %cmp376, label %for.body378.for.body378_crit_edge, label %for.body378.for.end382_crit_edge

for.body378.for.end382_crit_edge:                 ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end382

for.body378.for.body378_crit_edge:                ; preds = %for.body378
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body378

for.end382:                                       ; preds = %for.body378.for.end382_crit_edge, %for.cond375.preheader.for.end382_crit_edge
  %call383 = tail call i32 @snic_get_conf(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call383)
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %if.end390, label %do.end388

do.end388:                                        ; preds = %for.end382
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.93, i32 noundef %call383) #12
  br label %err_get_conf

if.end390:                                        ; preds = %for.end382
  %call391 = tail call fastcc i32 @snic_add_host(ptr noundef nonnull %call12, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391)
  %tobool392.not = icmp eq i32 %call391, 0
  br i1 %tobool392.not, label %if.end398, label %do.end396

do.end396:                                        ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.96, i32 noundef %call391) #12
  br label %err_get_conf

if.end398:                                        ; preds = %if.end390
  tail call void @snic_set_state(ptr noundef %hostdata.i, i32 noundef 2)
  %call399 = tail call i32 @snic_disc_start(ptr noundef %hostdata.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call399)
  %tobool400.not = icmp eq i32 %call399, 0
  br i1 %tobool400.not, label %do.end409, label %do.end404

do.end404:                                        ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.99, i32 noundef %call399) #12
  br label %err_get_conf

do.end409:                                        ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.102) #12
  br label %cleanup465

err_get_conf:                                     ; preds = %do.end404, %do.end396, %do.end388
  %ret.0 = phi i32 [ %call383, %do.end388 ], [ %call391, %do.end396 ], [ %call399, %do.end404 ]
  tail call void @snic_free_all_untagged_reqs(ptr noundef %hostdata.i) #9
  %109 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp413708.not = icmp eq i32 %110, 0
  br i1 %cmp413708.not, label %err_get_conf.for.end420_crit_edge, label %err_get_conf.for.body415_crit_edge

err_get_conf.for.body415_crit_edge:               ; preds = %err_get_conf
  br label %for.body415

err_get_conf.for.end420_crit_edge:                ; preds = %err_get_conf
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end420

for.body415:                                      ; preds = %for.body415.for.body415_crit_edge, %err_get_conf.for.body415_crit_edge
  %i.4709 = phi i32 [ %inc419, %for.body415.for.body415_crit_edge ], [ 0, %err_get_conf.for.body415_crit_edge ]
  %ctrl.i697 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 46, i32 %i.4709, i32 2
  %111 = ptrtoint ptr %ctrl.i697 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ctrl.i697, align 4
  %mask.i698 = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %112, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i698, i32 16777216) #9, !srcloc !305
  %inc419 = add nuw i32 %i.4709, 1
  %113 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %intr_count, align 8
  %cmp413 = icmp ult i32 %inc419, %114
  br i1 %cmp413, label %for.body415.for.body415_crit_edge, label %for.body415.for.end420_crit_edge

for.body415.for.end420_crit_edge:                 ; preds = %for.body415
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end420

for.body415.for.body415_crit_edge:                ; preds = %for.body415
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body415

for.end420:                                       ; preds = %for.body415.for.end420_crit_edge, %err_get_conf.for.end420_crit_edge
  tail call void @snic_free_intr(ptr noundef %hostdata.i) #9
  br label %err_req_intr

err_req_intr:                                     ; preds = %for.end420, %do.end372
  %ret.1 = phi i32 [ %call367, %do.end372 ], [ %ret.0, %for.end420 ]
  %115 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vdev, align 4
  %call422 = tail call i32 @svnic_dev_disable(ptr noundef %116) #9
  br label %err_vdev_enable

err_vdev_enable:                                  ; preds = %err_req_intr, %do.end364
  %ret.2 = phi i32 [ %call359, %do.end364 ], [ %ret.1, %err_req_intr ]
  %117 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vdev, align 4
  tail call void @svnic_dev_notify_unset(ptr noundef %118) #9
  %119 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp426710.not = icmp eq i32 %120, 0
  br i1 %cmp426710.not, label %err_vdev_enable.for.end441_crit_edge, label %err_vdev_enable.for.body428_crit_edge

err_vdev_enable.for.body428_crit_edge:            ; preds = %err_vdev_enable
  br label %for.body428

err_vdev_enable.for.end441_crit_edge:             ; preds = %err_vdev_enable
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end441

for.cond424:                                      ; preds = %for.body428
  %inc440 = add nuw i32 %i.5711, 1
  %121 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %wq_count, align 16
  %cmp426 = icmp ult i32 %inc440, %122
  br i1 %cmp426, label %for.cond424.for.body428_crit_edge, label %for.cond424.for.end441_crit_edge

for.cond424.for.end441_crit_edge:                 ; preds = %for.cond424
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end441

for.cond424.for.body428_crit_edge:                ; preds = %for.cond424
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body428

for.body428:                                      ; preds = %for.cond424.for.body428_crit_edge, %err_vdev_enable.for.body428_crit_edge
  %i.5711 = phi i32 [ %inc440, %for.cond424.for.body428_crit_edge ], [ 0, %err_vdev_enable.for.body428_crit_edge ]
  %arrayidx430 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 43, i32 %i.5711
  %call431 = tail call i32 @svnic_wq_disable(ptr noundef %arrayidx430) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call431)
  %tobool432.not = icmp eq i32 %call431, 0
  br i1 %tobool432.not, label %for.cond424, label %cleanup

cleanup:                                          ; preds = %for.body428
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.105, i32 noundef %call431) #12
  br label %for.end441

for.end441:                                       ; preds = %cleanup, %for.cond424.for.end441_crit_edge, %err_vdev_enable.for.end441_crit_edge
  %123 = ptrtoint ptr %shost19 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %shost19, align 16
  tail call fastcc void @snic_del_host(ptr noundef %124)
  br label %err_free_tmreq_pool

err_free_tmreq_pool:                              ; preds = %for.end441, %do.end300
  %ret.3 = phi i32 [ %call295, %do.end300 ], [ %ret.2, %for.end441 ]
  %125 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx294, align 8
  tail call void @mempool_destroy(ptr noundef %126) #9
  br label %err_free_max_sgl_pool

err_free_max_sgl_pool:                            ; preds = %err_free_tmreq_pool, %do.end290
  %ret.4 = phi i32 [ %ret.3, %err_free_tmreq_pool ], [ -12, %do.end290 ]
  %127 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx282, align 4
  tail call void @mempool_destroy(ptr noundef %128) #9
  br label %err_free_dflt_sgl_pool

err_free_dflt_sgl_pool:                           ; preds = %err_free_max_sgl_pool, %do.end278
  %ret.5 = phi i32 [ %ret.4, %err_free_max_sgl_pool ], [ -12, %do.end278 ]
  %129 = ptrtoint ptr %req_pool to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %req_pool, align 16
  tail call void @mempool_destroy(ptr noundef %130) #9
  br label %err_free_res

err_free_res:                                     ; preds = %err_free_dflt_sgl_pool, %do.end267
  %ret.6 = phi i32 [ %ret.5, %err_free_dflt_sgl_pool ], [ -12, %do.end267 ]
  tail call void @snic_free_vnic_res(ptr noundef %hostdata.i) #9
  br label %err_clear_intr

err_clear_intr:                                   ; preds = %err_free_res, %do.end231
  %ret.7 = phi i32 [ %call226, %do.end231 ], [ %ret.6, %err_free_res ]
  tail call void @snic_clear_intr_mode(ptr noundef %hostdata.i) #9
  br label %err_dev_close

err_dev_close:                                    ; preds = %err_clear_intr, %do.end223, %do.end194, %do.end186
  %ret.8 = phi i32 [ %call181, %do.end186 ], [ %call189, %do.end194 ], [ %call218, %do.end223 ], [ %ret.7, %err_clear_intr ]
  %131 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vdev, align 4
  %call450 = tail call i32 @svnic_dev_close(ptr noundef %132) #9
  br label %err_vnic_unreg

err_vnic_unreg:                                   ; preds = %err_dev_close, %do.end177, %do.end168
  %ret.9 = phi i32 [ %call163, %do.end168 ], [ %call172, %do.end177 ], [ %ret.8, %err_dev_close ]
  %133 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vdev, align 4
  tail call void @svnic_dev_unregister(ptr noundef %134) #9
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_vnic_unreg, %do.end159
  %ret.10 = phi i32 [ %ret.9, %err_vnic_unreg ], [ -19, %do.end159 ]
  %135 = ptrtoint ptr %bar0 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bar0, align 4
  %tobool.not.i = icmp eq ptr %136, null
  br i1 %tobool.not.i, label %err_iounmap.err_rel_regions_crit_edge, label %if.then.i699

err_iounmap.err_rel_regions_crit_edge:            ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rel_regions

if.then.i699:                                     ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %136) #9
  br label %err_rel_regions

err_rel_regions:                                  ; preds = %if.then.i699, %err_iounmap.err_rel_regions_crit_edge, %do.end79, %do.end69, %do.end59
  %ret.11 = phi i32 [ %call.i683, %do.end59 ], [ -19, %do.end79 ], [ -19, %do.end69 ], [ %ret.10, %err_iounmap.err_rel_regions_crit_edge ], [ %ret.10, %if.then.i699 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  br label %err_pci_disable

err_pci_disable:                                  ; preds = %err_rel_regions, %do.end47
  %ret.12 = phi i32 [ %call42, %do.end47 ], [ %ret.11, %err_rel_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  br label %err_free_snic

err_free_snic:                                    ; preds = %err_pci_disable, %do.end39
  %ret.13 = phi i32 [ %call34, %do.end39 ], [ %ret.12, %err_pci_disable ]
  tail call void @snic_stats_debugfs_remove(ptr noundef %hostdata.i) #9
  tail call void @scsi_host_put(ptr noundef nonnull %call12) #9
  %137 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %do.end454

do.end454:                                        ; preds = %err_free_snic, %do.end15
  %ret.14 = phi i32 [ %ret.13, %err_free_snic ], [ -12, %do.end15 ]
  %138 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus, align 8
  %number457 = getelementptr inbounds %struct.pci_bus, ptr %139, i32 0, i32 12
  %140 = ptrtoint ptr %number457 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %number457, align 4
  %conv458 = zext i8 %141 to i32
  %142 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %devfn, align 4
  %shr460 = lshr i32 %143, 3
  %and461 = and i32 %shr460, 31
  %and463 = and i32 %143, 7
  %call464 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, i32 noundef %conv458, i32 noundef %and461, i32 noundef %and463) #12
  br label %cleanup465

cleanup465:                                       ; preds = %do.end454, %do.end409
  %retval.0 = phi i32 [ %ret.14, %do.end454 ], [ 0, %do.end409 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snic_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bus = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %number = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %number, align 4
  %conv = zext i8 %5 to i32
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %6 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %7, 3
  %and = and i32 %shr, 31
  %and2 = and i32 %7, 7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, i32 noundef %conv, i32 noundef %and, i32 noundef %and2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  %state.i.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state.i.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i.i, align 4
  %call1.i = tail call ptr @snic_state_to_str(i32 noundef %11) #9
  %call2.i = tail call ptr @snic_state_to_str(i32 noundef 3) #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str, ptr noundef %call1.i, ptr noundef %call2.i) #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #9
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 3, ptr %state.i.i, align 4
  %snic_lock = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #9
  %stop_link_events = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %stop_link_events to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %stop_link_events, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call9) #9
  %14 = load ptr, ptr @snic_glob, align 4
  %event_q = getelementptr inbounds %struct.snic_global, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event_q, align 64
  tail call void @flush_workqueue(ptr noundef %16) #9
  tail call void @snic_disc_term(ptr noundef nonnull %1) #9
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #9
  %in_remove = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %in_remove to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %in_remove, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call24) #9
  %vdev.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdev.i, align 4
  %call.i = tail call i32 @svnic_dev_disable(ptr noundef %19) #9
  %intr_count.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 16
  %20 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intr_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp3.not.i = icmp eq i32 %21, 0
  br i1 %cmp3.not.i, label %if.end.for.cond1.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond1.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %if.end.for.cond1.preheader.i_crit_edge
  %wq_count.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wq_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp25.not.i = icmp eq i32 %23, 0
  br i1 %cmp25.not.i, label %for.cond1.preheader.i.for.end8.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.end8.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end8.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %ctrl.i.i = getelementptr %struct.snic, ptr %1, i32 0, i32 46, i32 %i.04.i, i32 2
  %24 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %25, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !304
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i.i, i32 16777216) #9, !srcloc !305
  %inc.i = add nuw i32 %i.04.i, 1
  %26 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intr_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond1.i:                                      ; preds = %for.body3.i
  %inc7.i = add nuw i32 %i.16.i, 1
  %28 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wq_count.i, align 16
  %cmp2.i = icmp ult i32 %inc7.i, %29
  br i1 %cmp2.i, label %for.cond1.i.for.body3.i_crit_edge, label %for.cond1.i.for.end8.i_crit_edge

for.cond1.i.for.end8.i_crit_edge:                 ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end8.i

for.cond1.i.for.body3.i_crit_edge:                ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.16.i = phi i32 [ %inc7.i, %for.cond1.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.snic, ptr %1, i32 0, i32 43, i32 %i.16.i
  %call5.i = tail call i32 @svnic_wq_disable(ptr noundef %arrayidx4.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %for.cond1.i, label %for.body3.i.snic_cleanup.exit_crit_edge

for.body3.i.snic_cleanup.exit_crit_edge:          ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snic_cleanup.exit

for.end8.i:                                       ; preds = %for.cond1.i.for.end8.i_crit_edge, %for.cond1.preheader.i.for.end8.i_crit_edge
  %call9.i = tail call i32 @snic_fwcq_cmpl_handler(ptr noundef %1, i32 noundef -1) #9
  %call10.i = tail call i32 @snic_wq_cmpl_handler(ptr noundef %1, i32 noundef -1) #9
  %30 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wq_count.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp137.not.i = icmp eq i32 %31, 0
  br i1 %cmp137.not.i, label %for.end8.i.for.cond20.preheader.i_crit_edge, label %for.end8.i.for.body14.i_crit_edge

for.end8.i.for.body14.i_crit_edge:                ; preds = %for.end8.i
  br label %for.body14.i

for.end8.i.for.cond20.preheader.i_crit_edge:      ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.preheader.i

for.cond20.preheader.i:                           ; preds = %for.body14.i.for.cond20.preheader.i_crit_edge, %for.end8.i.for.cond20.preheader.i_crit_edge
  %cq_count.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %cq_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp219.not.i = icmp eq i32 %33, 0
  br i1 %cmp219.not.i, label %for.cond20.preheader.i.for.cond27.preheader.i_crit_edge, label %for.cond20.preheader.i.for.body22.i_crit_edge

for.cond20.preheader.i.for.body22.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body22.i

for.cond20.preheader.i.for.cond27.preheader.i_crit_edge: ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond27.preheader.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.end8.i.for.body14.i_crit_edge
  %i.28.i = phi i32 [ %inc18.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %for.end8.i.for.body14.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.snic, ptr %1, i32 0, i32 43, i32 %i.28.i
  tail call void @svnic_wq_clean(ptr noundef %arrayidx16.i, ptr noundef nonnull @snic_free_wq_buf) #9
  %inc18.i = add nuw i32 %i.28.i, 1
  %34 = ptrtoint ptr %wq_count.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wq_count.i, align 16
  %cmp13.i = icmp ult i32 %inc18.i, %35
  br i1 %cmp13.i, label %for.body14.i.for.body14.i_crit_edge, label %for.body14.i.for.cond20.preheader.i_crit_edge

for.body14.i.for.cond20.preheader.i_crit_edge:    ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond20.preheader.i

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.i

for.cond27.preheader.i:                           ; preds = %for.body22.i.for.cond27.preheader.i_crit_edge, %for.cond20.preheader.i.for.cond27.preheader.i_crit_edge
  %36 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intr_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2911.not.i = icmp eq i32 %37, 0
  br i1 %cmp2911.not.i, label %for.cond27.preheader.i.for.end35.i_crit_edge, label %for.cond27.preheader.i.for.body30.i_crit_edge

for.cond27.preheader.i.for.body30.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body30.i

for.cond27.preheader.i.for.end35.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.cond20.preheader.i.for.body22.i_crit_edge
  %i.310.i = phi i32 [ %inc25.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.cond20.preheader.i.for.body22.i_crit_edge ]
  %arrayidx23.i = getelementptr %struct.snic, ptr %1, i32 0, i32 41, i32 %i.310.i
  tail call void @svnic_cq_clean(ptr noundef %arrayidx23.i) #9
  %inc25.i = add nuw i32 %i.310.i, 1
  %38 = ptrtoint ptr %cq_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cq_count.i, align 4
  %cmp21.i = icmp ult i32 %inc25.i, %39
  br i1 %cmp21.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.for.cond27.preheader.i_crit_edge

for.body22.i.for.cond27.preheader.i_crit_edge:    ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond27.preheader.i

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22.i

for.body30.i:                                     ; preds = %for.body30.i.for.body30.i_crit_edge, %for.cond27.preheader.i.for.body30.i_crit_edge
  %i.412.i = phi i32 [ %inc34.i, %for.body30.i.for.body30.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body30.i_crit_edge ]
  %arrayidx32.i = getelementptr %struct.snic, ptr %1, i32 0, i32 46, i32 %i.412.i
  tail call void @svnic_intr_clean(ptr noundef %arrayidx32.i) #9
  %inc34.i = add nuw i32 %i.412.i, 1
  %40 = ptrtoint ptr %intr_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intr_count.i, align 8
  %cmp29.i = icmp ult i32 %inc34.i, %41
  br i1 %cmp29.i, label %for.body30.i.for.body30.i_crit_edge, label %for.body30.i.for.end35.i_crit_edge

for.body30.i.for.end35.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35.i

for.body30.i.for.body30.i_crit_edge:              ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i

for.end35.i:                                      ; preds = %for.body30.i.for.end35.i_crit_edge, %for.cond27.preheader.i.for.end35.i_crit_edge
  tail call void @snic_free_all_untagged_reqs(ptr noundef %1) #9
  tail call void @snic_shutdown_scsi_cleanup(ptr noundef %1) #9
  %arrayidx39.i = getelementptr %struct.snic, ptr %1, i32 0, i32 22, i32 0
  %42 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx39.i, align 4
  tail call void @mempool_destroy(ptr noundef %43) #9
  %arrayidx39.1.i = getelementptr %struct.snic, ptr %1, i32 0, i32 22, i32 1
  %44 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx39.1.i, align 4
  tail call void @mempool_destroy(ptr noundef %45) #9
  %arrayidx39.2.i = getelementptr %struct.snic, ptr %1, i32 0, i32 22, i32 2
  %46 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx39.2.i, align 4
  tail call void @mempool_destroy(ptr noundef %47) #9
  br label %snic_cleanup.exit

snic_cleanup.exit:                                ; preds = %for.end35.i, %for.body3.i.snic_cleanup.exit_crit_edge
  %48 = load ptr, ptr @snic_glob, align 4
  %snic_list_lock = getelementptr inbounds %struct.snic_global, ptr %48, i32 0, i32 1
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_list_lock) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %snic_cleanup.exit.list_del.exit_crit_edge

snic_cleanup.exit.list_del.exit_crit_edge:        ; preds = %snic_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %snic_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %snic_cleanup.exit.list_del.exit_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %57 = load ptr, ptr @snic_glob, align 4
  %snic_list_lock44 = getelementptr inbounds %struct.snic_global, ptr %57, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_list_lock44, i32 noundef %call39) #9
  tail call void @snic_tgt_del_all(ptr noundef nonnull %1) #9
  tail call void @snic_stats_debugfs_remove(ptr noundef nonnull %1) #9
  %58 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shost.i, align 16
  %work_q.i = getelementptr inbounds %struct.Scsi_Host, ptr %59, i32 0, i32 38
  %60 = ptrtoint ptr %work_q.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %work_q.i, align 8
  %tobool.not.i79 = icmp eq ptr %61, null
  br i1 %tobool.not.i79, label %list_del.exit.snic_del_host.exit_crit_edge, label %if.end.i

list_del.exit.snic_del_host.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %snic_del_host.exit

if.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %61) #9
  %62 = ptrtoint ptr %work_q.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %work_q.i, align 8
  tail call void @scsi_remove_host(ptr noundef %59) #9
  br label %snic_del_host.exit

snic_del_host.exit:                               ; preds = %if.end.i, %list_del.exit.snic_del_host.exit_crit_edge
  %63 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdev.i, align 4
  tail call void @svnic_dev_notify_unset(ptr noundef %64) #9
  tail call void @snic_free_intr(ptr noundef nonnull %1) #9
  tail call void @snic_free_vnic_res(ptr noundef nonnull %1) #9
  tail call void @snic_clear_intr_mode(ptr noundef nonnull %1) #9
  %65 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vdev.i, align 4
  %call46 = tail call i32 @svnic_dev_close(ptr noundef %66) #9
  %67 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdev.i, align 4
  tail call void @svnic_dev_unregister(ptr noundef %68) #9
  %bar0.i = getelementptr inbounds %struct.snic, ptr %1, i32 0, i32 9
  %69 = ptrtoint ptr %bar0.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bar0.i, align 4
  %tobool.not.i80 = icmp eq ptr %70, null
  br i1 %tobool.not.i80, label %snic_del_host.exit.snic_iounmap.exit_crit_edge, label %if.then.i

snic_del_host.exit.snic_iounmap.exit_crit_edge:   ; preds = %snic_del_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %snic_iounmap.exit

if.then.i:                                        ; preds = %snic_del_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %70) #9
  br label %snic_iounmap.exit

snic_iounmap.exit:                                ; preds = %if.then.i, %snic_del_host.exit.snic_iounmap.exit_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %driver_data.i.i, align 4
  %72 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %shost.i, align 16
  tail call void @scsi_host_put(ptr noundef %73) #9
  br label %cleanup

cleanup:                                          ; preds = %snic_iounmap.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_stats_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_alloc_discover(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_cmd_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snic_dev_wait(ptr noundef %vdev) unnamed_addr #0 align 64 {
entry:
  %done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %done) #9
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %done, align 4, !annotation !306
  %call = tail call i32 @svnic_dev_open(ptr noundef %vdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -200, %1
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end
  %retry_cnt.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end7.do.body_crit_edge ]
  %call.i = call ptr @svnic_dev_priv(ptr noundef %vdev) #9
  %shost.i = getelementptr inbounds %struct.snic, ptr %call.i, i32 0, i32 8
  %call1.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %do.body.if.end4_crit_edge, label %do.end.i

do.body.if.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end.i:                                         ; preds = %do.body
  %2 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.111) #12
  %call1.1.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp.1.i = icmp eq i32 %call1.1.i, 0
  br i1 %cmp.1.i, label %do.end.i.if.end4_crit_edge, label %do.end.1.i

do.end.i.if.end4_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end.1.i:                                       ; preds = %do.end.i
  %4 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost.i, align 16
  %shost_gendev.1.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.1.i, ptr noundef nonnull @.str.111) #12
  %call1.2.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp.2.i = icmp eq i32 %call1.2.i, 0
  br i1 %cmp.2.i, label %do.end.1.i.if.end4_crit_edge, label %do.end.2.i

do.end.1.i.if.end4_crit_edge:                     ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end.2.i:                                       ; preds = %do.end.1.i
  %6 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost.i, align 16
  %shost_gendev.2.i = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.2.i, ptr noundef nonnull @.str.111) #12
  %call1.3.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3.i)
  %cmp.3.i = icmp eq i32 %call1.3.i, 0
  br i1 %cmp.3.i, label %do.end.2.i.if.end4_crit_edge, label %do.end.3.i

do.end.2.i.if.end4_crit_edge:                     ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end.3.i:                                       ; preds = %do.end.2.i
  %8 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost.i, align 16
  %shost_gendev.3.i = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.3.i, ptr noundef nonnull @.str.111) #12
  %call1.4.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4.i)
  %cmp.4.i = icmp eq i32 %call1.4.i, 0
  br i1 %cmp.4.i, label %do.end.3.i.if.end4_crit_edge, label %do.end.4.i

do.end.3.i.if.end4_crit_edge:                     ; preds = %do.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

do.end.4.i:                                       ; preds = %do.end.3.i
  %10 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost.i, align 16
  %shost_gendev.4.i = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.4.i, ptr noundef nonnull @.str.111) #12
  %call1.5.i = call i32 @svnic_dev_open_done(ptr noundef %vdev, ptr noundef nonnull %done) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5.i)
  %cmp.5.i = icmp eq i32 %call1.5.i, 0
  br i1 %cmp.5.i, label %do.end.4.i.if.end4_crit_edge, label %snic_vdev_open_done.exit

do.end.4.i.if.end4_crit_edge:                     ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

snic_vdev_open_done.exit:                         ; preds = %do.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost.i, align 16
  %shost_gendev.5.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev.5.i, ptr noundef nonnull @.str.111) #12
  br label %cleanup

if.end4:                                          ; preds = %do.end.4.i.if.end4_crit_edge, %do.end.3.i.if.end4_crit_edge, %do.end.2.i.if.end4_crit_edge, %do.end.1.i.if.end4_crit_edge, %do.end.i.if.end4_crit_edge, %do.body.if.end4_crit_edge
  %14 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #9
  %inc = add i32 %retry_cnt.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp9 = icmp slt i32 %inc, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end7.do.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %snic_vdev_open_done.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1.5.i, %snic_vdev_open_done.exit ], [ -110, %if.end7.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %done) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_open(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_get_vnic_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_get_res_counts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_set_intr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_alloc_vnic_res(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snic_notify_set(ptr nocapture noundef readonly %snic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @svnic_dev_get_intr_mode(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %call2 = tail call i32 @svnic_dev_notify_set(ptr noundef %3, i16 noundef zeroext 2) #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.113, i32 noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ -1, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_disc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_tgt_disc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_disc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_enable_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_request_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_get_conf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snic_add_host(ptr noundef %shost, ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call i32 @scsi_add_host_with_dma(ptr noundef %shost, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev, ptr noundef nonnull @.str.115, i32 noundef %call.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %work_q = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 38
  %0 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_q, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.end.if.end49_crit_edge, label %do.end4

if.end.if.end49_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

do.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.116, i32 noundef 316) #12
  %2 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work_q, align 8
  %cmp7.not = icmp eq ptr %3, null
  br i1 %cmp7.not, label %do.end4.if.end49_crit_edge, label %land.rhs

do.end4.if.end49_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.rhs:                                         ; preds = %do.end4
  %.b77 = load i1, ptr @snic_add_host.__already_done, align 1
  br i1 %.b77, label %land.rhs.if.end49_crit_edge, label %if.then15, !prof !303

land.rhs.if.end49_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @snic_add_host.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 316, i32 noundef 9, ptr noundef null) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then15, %land.rhs.if.end49_crit_edge, %do.end4.if.end49_crit_edge, %if.end.if.end49_crit_edge
  %work_q_name = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 37
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call50 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %work_q_name, i32 noundef 20, ptr noundef nonnull @.str.120, i32 noundef %5)
  %call53 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.121, i32 noundef 917514, i32 noundef 1, ptr noundef %work_q_name) #9
  %6 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call53, ptr %work_q, align 8
  %tobool56.not = icmp eq ptr %call53, null
  br i1 %tobool56.not, label %do.end60, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end60:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %shost_gendev61 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.22, ptr noundef %shost_gendev61, ptr noundef nonnull @.str.123) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end49.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end49.cleanup_crit_edge ], [ -12, %do.end60 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_disc_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_free_all_untagged_reqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_free_intr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_notify_unset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_wq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_del_host(ptr noundef %shost) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %work_q = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 38
  %0 = ptrtoint ptr %work_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %work_q, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %work_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %work_q, align 8
  tail call void @scsi_remove_host(ptr noundef %shost) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_free_vnic_res(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_clear_intr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_stats_debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_queuecommand(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_abort_cmd(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_device_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_host_reset(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snic_slave_alloc(ptr nocapture noundef readonly %sdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 35
  %4 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release.i, align 4
  %cmp.i.not = icmp ne ptr %5, @snic_tgt_dev_release
  %add.ptr = getelementptr i8, ptr %3, i32 -24
  %tobool5.not = icmp eq ptr %add.ptr, null
  %or.cond = select i1 %cmp.i.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i12 = icmp eq i32 %7, 2
  %spec.select = select i1 %cmp.i12, i32 0, i32 -6
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %lor.lhs.false ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_slave_configure(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %2 = load i32, ptr @snic_max_qdepth, align 4
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 64)
  %call1 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %3) #9
  %io_tmo = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 49, i32 12, i32 5, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %io_tmo to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %io_tmo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp2 = icmp ugt i16 %5, 1
  %conv = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %tmo.0 = select i1 %cmp2, i32 %mul, i32 9000
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 1
  %6 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %7, i32 noundef %tmo.0) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_change_queue_depth(ptr noundef %sdev, i32 noundef %qdepth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %qdepth, i32 64)
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 9
  %3 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp1 = icmp ult i32 %2, %conv
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %qsz_rampdown = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 12, i32 8, i32 2
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp5 = icmp ugt i32 %2, %conv
  br i1 %cmp5, label %if.then7, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %qsz_rampup = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 12, i32 8, i32 1
  br label %if.end10.sink.split

if.end10.sink.split:                              ; preds = %if.then7, %if.then
  %qsz_rampup.sink31 = phi ptr [ %qsz_rampup, %if.then7 ], [ %qsz_rampdown, %if.then ]
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %qsz_rampup.sink31, i32 noundef 8) #9
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %qsz_rampup.sink31) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  %last_qsz = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 2, i32 50, i32 12, i32 8, i32 4
  %5 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %queue_depth, align 4
  %conv14 = zext i16 %6 to i64
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_qsz, i32 noundef 8) #9
  tail call void @generic_atomic64_set(ptr noundef %last_qsz, i64 noundef %conv14) #9
  %call15 = tail call i32 @scsi_change_queue_depth(ptr noundef %sdev, i32 noundef %2) #9
  %7 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %queue_depth, align 4
  %conv17 = zext i16 %8 to i32
  ret i32 %conv17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_tgt_dev_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_open_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_notify_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_disc_term(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_tgt_del_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_fwcq_cmpl_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_wq_cmpl_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_clean(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_free_wq_buf(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_cq_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_intr_clean(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_shutdown_scsi_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_trc_free() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_debugfs_term() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_trc_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !202, !204, !205, !206, !207, !209, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !222, !224, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !273, !275, !276, !277, !279, !281, !282, !283, !285, !286, !287, !289, !291, !292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @snic_log_level, !1, !"snic_log_level", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_main.c", i32 43, i32 14}
!2 = !{ptr @__param_snic_log_level, !3, !"__param_snic_log_level", i1 false, i1 false}
!3 = !{!"../drivers/scsi/snic/snic_main.c", i32 44, i32 1}
!4 = !{ptr @__UNIQUE_ID_snic_log_leveltype374, !3, !"__UNIQUE_ID_snic_log_leveltype374", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_snic_log_level375, !6, !"__UNIQUE_ID_snic_log_level375", i1 false, i1 false}
!6 = !{!"../drivers/scsi/snic/snic_main.c", i32 45, i32 1}
!7 = !{ptr @snic_trace_max_pages, !8, !"snic_trace_max_pages", i1 false, i1 false}
!8 = !{!"../drivers/scsi/snic/snic_main.c", i32 48, i32 14}
!9 = !{ptr @__param_snic_trace_max_pages, !10, !"__param_snic_trace_max_pages", i1 false, i1 false}
!10 = !{!"../drivers/scsi/snic/snic_main.c", i32 49, i32 1}
!11 = !{ptr @__UNIQUE_ID_snic_trace_max_pagestype376, !10, !"__UNIQUE_ID_snic_trace_max_pagestype376", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_snic_trace_max_pages377, !13, !"__UNIQUE_ID_snic_trace_max_pages377", i1 false, i1 false}
!13 = !{!"../drivers/scsi/snic/snic_main.c", i32 50, i32 1}
!14 = !{ptr @snic_max_qdepth, !15, !"snic_max_qdepth", i1 false, i1 false}
!15 = !{!"../drivers/scsi/snic/snic_main.c", i32 54, i32 14}
!16 = !{ptr @__param_snic_max_qdepth, !17, !"__param_snic_max_qdepth", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/snic_main.c", i32 55, i32 1}
!18 = !{ptr @__UNIQUE_ID_snic_max_qdepthtype378, !17, !"__UNIQUE_ID_snic_max_qdepthtype378", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_snic_max_qdepth379, !20, !"__UNIQUE_ID_snic_max_qdepth379", i1 false, i1 false}
!20 = !{!"../drivers/scsi/snic/snic_main.c", i32 56, i32 1}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/snic/snic_main.c", i32 349, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snic_set_state._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @snic_set_state._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__initcall__kmod_snic__388_1004_snic_init_module6, !30, !"__initcall__kmod_snic__388_1004_snic_init_module6", i1 false, i1 false}
!30 = !{!"../drivers/scsi/snic/snic_main.c", i32 1004, i32 1}
!31 = !{ptr @__exitcall_snic_cleanup_module, !32, !"__exitcall_snic_cleanup_module", i1 false, i1 false}
!32 = !{!"../drivers/scsi/snic/snic_main.c", i32 1005, i32 1}
!33 = !{ptr @__UNIQUE_ID_file389, !34, !"__UNIQUE_ID_file389", i1 false, i1 false}
!34 = !{!"../drivers/scsi/snic/snic_main.c", i32 1007, i32 1}
!35 = !{ptr @__UNIQUE_ID_license390, !34, !"__UNIQUE_ID_license390", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_description391, !37, !"__UNIQUE_ID_description391", i1 false, i1 false}
!37 = !{!"../drivers/scsi/snic/snic_main.c", i32 1008, i32 1}
!38 = !{ptr @__UNIQUE_ID_version392, !39, !"__UNIQUE_ID_version392", i1 false, i1 false}
!39 = !{!"../drivers/scsi/snic/snic_main.c", i32 1009, i32 1}
!40 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__modver_attr, !39, !"__modver_attr", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_author393, !45, !"__UNIQUE_ID_author393", i1 false, i1 false}
!45 = !{!"../drivers/scsi/snic/snic_main.c", i32 1011, i32 1}
!46 = !{ptr @snic_glob, !47, !"snic_glob", i1 false, i1 false}
!47 = !{!"../drivers/scsi/snic/snic_main.c", i32 822, i32 21}
!48 = !{ptr @__param_str_snic_log_level, !3, !"__param_str_snic_log_level", i1 false, i1 false}
!49 = !{ptr @__param_str_snic_trace_max_pages, !10, !"__param_str_snic_trace_max_pages", i1 false, i1 false}
!50 = !{ptr @__param_str_snic_max_qdepth, !17, !"__param_str_snic_max_qdepth", i1 false, i1 false}
!51 = !{ptr @snic_driver, !52, !"snic_driver", i1 false, i1 false}
!52 = !{!"../drivers/scsi/snic/snic_main.c", i32 956, i32 26}
!53 = !{ptr @snic_id_table, !54, !"snic_id_table", i1 false, i1 false}
!54 = !{!"../drivers/scsi/snic/snic_main.c", i32 38, i32 29}
!55 = !{ptr @.str.8, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/scsi/snic/snic_main.c", i32 370, i32 2}
!57 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @snic_probe._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @snic_probe._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/snic/snic_main.c", i32 374, i32 2}
!62 = !{ptr @snic_probe._entry.10, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @snic_probe._entry_ptr.12, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/snic/snic_main.c", i32 383, i32 3}
!66 = !{ptr @snic_probe._entry.13, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snic_probe._entry_ptr.15, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/snic/snic_main.c", i32 391, i32 47}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/snic/snic_main.c", i32 394, i32 2}
!72 = !{ptr @snic_probe._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @snic_probe._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/snic/snic_main.c", i32 409, i32 3}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snic_probe._entry.20, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @snic_probe._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/scsi/snic/snic_main.c", i32 418, i32 3}
!81 = !{ptr @snic_probe._entry.24, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @snic_probe._entry_ptr.26, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/snic/snic_main.c", i32 436, i32 4}
!85 = !{ptr @snic_probe._entry.27, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @snic_probe._entry_ptr.29, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/snic/snic_main.c", i32 445, i32 3}
!89 = !{ptr @snic_probe._entry.30, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snic_probe._entry_ptr.32, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/snic/snic_main.c", i32 453, i32 3}
!93 = !{ptr @snic_probe._entry.33, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @snic_probe._entry_ptr.35, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/snic/snic_main.c", i32 462, i32 2}
!97 = !{ptr @snic_probe._entry.36, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @snic_probe._entry_ptr.38, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!100 = distinct !{null, !96, !"__already_done", i1 false, i1 false}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/snic/snic_main.c", i32 467, i32 3}
!103 = !{ptr @snic_probe._entry.40, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @snic_probe._entry_ptr.42, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/snic/snic_main.c", i32 475, i32 3}
!107 = !{ptr @snic_probe._entry.43, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @snic_probe._entry_ptr.45, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/snic/snic_main.c", i32 482, i32 3}
!111 = !{ptr @snic_probe._entry.46, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @snic_probe._entry_ptr.48, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/snic/snic_main.c", i32 491, i32 3}
!115 = !{ptr @snic_probe._entry.49, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @snic_probe._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/scsi/snic/snic_main.c", i32 501, i32 3}
!119 = !{ptr @snic_probe._entry.52, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @snic_probe._entry_ptr.54, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/snic/snic_main.c", i32 528, i32 3}
!123 = !{ptr @snic_probe._entry.55, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @snic_probe._entry_ptr.57, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/snic/snic_main.c", i32 537, i32 3}
!127 = !{ptr @snic_probe._entry.58, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @snic_probe._entry_ptr.60, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @snic_probe.__key, !130, !"__key", i1 false, i1 false}
!130 = !{!"../drivers/scsi/snic/snic_main.c", i32 552, i32 2}
!131 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @snic_probe.__key.62, !133, !"__key", i1 false, i1 false}
!133 = !{!"../drivers/scsi/snic/snic_main.c", i32 555, i32 2}
!134 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @snic_probe.__key.64, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/scsi/snic/snic_main.c", i32 558, i32 3}
!137 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @snic_probe.__key.66, !139, !"__key", i1 false, i1 false}
!139 = !{!"../drivers/scsi/snic/snic_main.c", i32 561, i32 3}
!140 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/snic/snic_main.c", i32 566, i32 3}
!143 = !{ptr @snic_probe._entry.68, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @snic_probe._entry_ptr.70, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/snic/snic_main.c", i32 577, i32 3}
!147 = !{ptr @snic_probe._entry.71, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @snic_probe._entry_ptr.73, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/snic/snic_main.c", i32 588, i32 3}
!151 = !{ptr @snic_probe._entry.74, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @snic_probe._entry_ptr.76, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.78, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/snic/snic_main.c", i32 604, i32 3}
!155 = !{ptr @snic_probe._entry.77, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @snic_probe._entry_ptr.79, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @snic_probe.__key.80, !158, !"__key", i1 false, i1 false}
!158 = !{!"../drivers/scsi/snic/snic_main.c", i32 616, i32 2}
!159 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @snic_probe.__key.82, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/scsi/snic/snic_main.c", i32 617, i32 2}
!162 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @snic_probe.__key.84, !164, !"__key", i1 false, i1 false}
!164 = !{!"../drivers/scsi/snic/snic_main.c", i32 618, i32 2}
!165 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/snic/snic_main.c", i32 626, i32 3}
!168 = !{ptr @snic_probe._entry.86, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @snic_probe._entry_ptr.88, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/scsi/snic/snic_main.c", i32 635, i32 3}
!172 = !{ptr @snic_probe._entry.89, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @snic_probe._entry_ptr.91, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/scsi/snic/snic_main.c", i32 646, i32 3}
!176 = !{ptr @snic_probe._entry.92, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @snic_probe._entry_ptr.94, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/snic/snic_main.c", i32 659, i32 3}
!180 = !{ptr @snic_probe._entry.95, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @snic_probe._entry_ptr.97, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/snic/snic_main.c", i32 670, i32 3}
!184 = !{ptr @snic_probe._entry.98, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @snic_probe._entry_ptr.100, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/snic/snic_main.c", i32 676, i32 2}
!188 = !{ptr @snic_probe._entry.101, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @snic_probe._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/scsi/snic/snic_main.c", i32 699, i32 4}
!192 = !{ptr @snic_probe._entry.104, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @snic_probe._entry_ptr.106, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.108, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/snic/snic_main.c", i32 745, i32 2}
!196 = !{ptr @snic_probe._entry.107, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @snic_probe._entry_ptr.109, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.110, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/scsi/snic/snic_main.c", i32 135, i32 15}
!200 = !{ptr @snic_host_template, !201, !"snic_host_template", i1 false, i1 false}
!201 = !{!"../drivers/scsi/snic/snic_main.c", i32 117, i32 34}
!202 = !{ptr @.str.111, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/scsi/snic/snic_main.c", i32 293, i32 3}
!204 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @snic_vdev_open_done._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @snic_vdev_open_done._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.113, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/scsi/snic/snic_main.c", i32 174, i32 3}
!209 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @snic_notify_set._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @snic_notify_set._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.115, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/snic/snic_main.c", i32 309, i32 3}
!214 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @snic_add_host._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @snic_add_host._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @snic_add_host._entry.117, !218, !"_entry", i1 false, i1 false}
!218 = !{!"../drivers/scsi/snic/snic_main.c", i32 316, i32 2}
!219 = !{ptr @snic_add_host._entry_ptr.118, !218, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!221 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/scsi/snic/snic_main.c", i32 317, i32 59}
!224 = !{ptr @.str.121, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/snic/snic_main.c", i32 319, i32 18}
!226 = !{ptr @.str.123, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/snic/snic_main.c", i32 321, i32 3}
!228 = !{ptr @snic_add_host._entry.122, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @snic_add_host._entry_ptr.124, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.125, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/snic/snic_main.c", i32 764, i32 3}
!232 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @snic_remove._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @snic_remove._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/scsi/snic/snic_main.c", i32 938, i32 2}
!237 = !{ptr @snic_global_data_cleanup._entry, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @snic_global_data_cleanup._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.128, !236, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !236, !"__already_done", i1 false, i1 false}
!241 = !{ptr @.str.129, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/snic/snic_main.c", i32 969, i32 2}
!243 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @snic_init_module._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @snic_init_module._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.132, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/snic/snic_main.c", i32 973, i32 2}
!248 = !{ptr @snic_init_module._entry.131, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @snic_init_module._entry_ptr.133, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.134, !247, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/snic/snic_main.c", i32 977, i32 3}
!253 = !{ptr @snic_init_module._entry.135, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @snic_init_module._entry_ptr.137, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.139, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/scsi/snic/snic_main.c", i32 984, i32 3}
!257 = !{ptr @snic_init_module._entry.138, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @snic_init_module._entry_ptr.140, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.141, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/scsi/snic/snic_main.c", i32 839, i32 3}
!261 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @snic_global_data_init._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @snic_global_data_init._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.144, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/snic/snic_main.c", i32 854, i32 3}
!266 = !{ptr @snic_global_data_init._entry.143, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @snic_global_data_init._entry_ptr.145, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @snic_global_data_init.__key, !269, !"__key", i1 false, i1 false}
!269 = !{!"../drivers/scsi/snic/snic_main.c", i32 861, i32 2}
!270 = !{ptr @.str.146, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.147, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/scsi/snic/snic_main.c", i32 866, i32 29}
!273 = !{ptr @.str.149, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/snic/snic_main.c", i32 869, i32 3}
!275 = !{ptr @snic_global_data_init._entry.148, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @snic_global_data_init._entry_ptr.150, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.151, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/scsi/snic/snic_main.c", i32 879, i32 29}
!279 = !{ptr @.str.153, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/scsi/snic/snic_main.c", i32 882, i32 3}
!281 = !{ptr @snic_global_data_init._entry.152, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @snic_global_data_init._entry_ptr.154, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/scsi/snic/snic_main.c", i32 893, i32 3}
!285 = !{ptr @snic_global_data_init._entry.155, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @snic_global_data_init._entry_ptr.157, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.158, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/snic/snic_main.c", i32 901, i32 23}
!289 = !{ptr @.str.160, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/snic/snic_main.c", i32 903, i32 3}
!291 = !{ptr @snic_global_data_init._entry.159, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @snic_global_data_init._entry_ptr.161, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{i8 0, i8 2}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{i64 2152940804}
!305 = !{i64 5398682}
!306 = !{!"auto-init"}
