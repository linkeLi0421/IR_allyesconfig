; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_res.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_res.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@snic_get_vnic_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error getting %s, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_get_vnic_config\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/snic/snic_res.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr = internal global ptr @snic_get_vnic_config._entry, section ".printk_index", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wq_enet_desc_count\00", [45 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.7 = internal global ptr @snic_get_vnic_config._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maxdatafieldsize\00", [47 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.10 = internal global ptr @snic_get_vnic_config._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intr_timer\00", [21 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.13 = internal global ptr @snic_get_vnic_config._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intr_timer_type\00", [16 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.16 = internal global ptr @snic_get_vnic_config._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 56, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.19 = internal global ptr @snic_get_vnic_config._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"io_throttle_count\00", [46 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.22 = internal global ptr @snic_get_vnic_config._entry.21, section ".printk_index", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_down_timeout\00", [46 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.25 = internal global ptr @snic_get_vnic_config._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"port_down_io_retries\00", [43 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.28 = internal global ptr @snic_get_vnic_config._entry.27, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"luns_per_tgt\00", [19 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.31 = internal global ptr @snic_get_vnic_config._entry.30, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xpt_type\00", [23 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.34 = internal global ptr @snic_get_vnic_config._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hid\00", [28 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.1, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016snic:vNIC resources wq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.38 = internal global ptr @snic_get_vnic_config._entry.36, section ".printk_index", align 4
@snic_get_vnic_config._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016snic:vNIC mtu %d intr timer %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.41 = internal global ptr @snic_get_vnic_config._entry.39, section ".printk_index", align 4
@snic_get_vnic_config._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016snic:vNIC flags 0x%x luns per tgt %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.44 = internal global ptr @snic_get_vnic_config._entry.42, section ".printk_index", align 4
@snic_get_vnic_config._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016snic:vNIC io throttle count %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.47 = internal global ptr @snic_get_vnic_config._entry.45, section ".printk_index", align 4
@snic_get_vnic_config._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016snic:vNIC port down timeout %d port down io retries %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.50 = internal global ptr @snic_get_vnic_config._entry.48, section ".printk_index", align 4
@snic_get_vnic_config._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016snic:vNIC back end type = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.53 = internal global ptr @snic_get_vnic_config._entry.51, section ".printk_index", align 4
@snic_get_vnic_config._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016snic:vNIC hid = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@snic_get_vnic_config._entry_ptr.56 = internal global ptr @snic_get_vnic_config._entry.54, section ".printk_index", align 4
@snic_get_res_counts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic_get_res_counts\00", [44 x i8] zeroinitializer }, align 32
@snic_get_res_counts._entry_ptr = internal global ptr @snic_get_res_counts._entry, section ".printk_index", align 4
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic->wq_count == 0\00", [44 x i8] zeroinitializer }, align 32
@snic_get_res_counts.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_get_res_counts._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_get_res_counts._entry_ptr.61 = internal global ptr @snic_get_res_counts._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic->cq_count == 0\00", [44 x i8] zeroinitializer }, align 32
@snic_get_res_counts.__already_done.63 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_get_res_counts._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_get_res_counts._entry_ptr.65 = internal global ptr @snic_get_res_counts._entry.64, section ".printk_index", align 4
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic->intr_count == 0\00", [42 x i8] zeroinitializer }, align 32
@snic_get_res_counts.__already_done.67 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_alloc_vnic_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016snic:vNIC interrupt mode: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic_alloc_vnic_res\00", [44 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr = internal global ptr @snic_alloc_vnic_res._entry, section ".printk_index", align 4
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Legacy PCI INTx\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSI-X\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.69, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr.75 = internal global ptr @snic_alloc_vnic_res._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"intr_mode != VNIC_DEV_INTR_MODE_MSIX\00", [59 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_alloc_vnic_res._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.69, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016snic:wq %d cq %d intr %d\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr.79 = internal global ptr @snic_alloc_vnic_res._entry.77, section ".printk_index", align 4
@snic_alloc_vnic_res._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.69, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr.81 = internal global ptr @snic_alloc_vnic_res._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"snic->cq_count != 2 * snic->wq_count\00", [59 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res.__already_done.83 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_alloc_vnic_res._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.69, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr.85 = internal global ptr @snic_alloc_vnic_res._entry.84, section ".printk_index", align 4
@snic_alloc_vnic_res.__already_done.86 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_alloc_vnic_res._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.69, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"svnic_dev_stats_dump failed - x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@snic_alloc_vnic_res._entry_ptr.89 = internal global ptr @snic_alloc_vnic_res._entry.87, section ".printk_index", align 4
@snic_log_q_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 293, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WQ[%d] error status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_log_q_error\00", [47 x i8] zeroinitializer }, align 32
@snic_log_q_error._entry_ptr = internal global ptr @snic_log_q_error._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 51, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 52, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 53, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 54, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 55, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 56, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 57, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 58, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 59, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 60, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 61, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 99, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 100, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 104, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 108, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 109, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 113, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 114, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 123, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 125, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 128, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 159, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 168, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 170, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 197, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 250, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 263, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.294 = private constant [32 x i8] c"../drivers/scsi/snic/snic_res.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 290, i32 4 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @snic_alloc_vnic_res._entry, ptr @snic_alloc_vnic_res._entry.74, ptr @snic_alloc_vnic_res._entry.77, ptr @snic_alloc_vnic_res._entry.80, ptr @snic_alloc_vnic_res._entry.84, ptr @snic_alloc_vnic_res._entry.87, ptr @snic_alloc_vnic_res._entry_ptr, ptr @snic_alloc_vnic_res._entry_ptr.75, ptr @snic_alloc_vnic_res._entry_ptr.79, ptr @snic_alloc_vnic_res._entry_ptr.81, ptr @snic_alloc_vnic_res._entry_ptr.85, ptr @snic_alloc_vnic_res._entry_ptr.89, ptr @snic_get_res_counts._entry, ptr @snic_get_res_counts._entry.60, ptr @snic_get_res_counts._entry.64, ptr @snic_get_res_counts._entry_ptr, ptr @snic_get_res_counts._entry_ptr.61, ptr @snic_get_res_counts._entry_ptr.65, ptr @snic_get_vnic_config._entry, ptr @snic_get_vnic_config._entry.12, ptr @snic_get_vnic_config._entry.15, ptr @snic_get_vnic_config._entry.18, ptr @snic_get_vnic_config._entry.21, ptr @snic_get_vnic_config._entry.24, ptr @snic_get_vnic_config._entry.27, ptr @snic_get_vnic_config._entry.30, ptr @snic_get_vnic_config._entry.33, ptr @snic_get_vnic_config._entry.36, ptr @snic_get_vnic_config._entry.39, ptr @snic_get_vnic_config._entry.42, ptr @snic_get_vnic_config._entry.45, ptr @snic_get_vnic_config._entry.48, ptr @snic_get_vnic_config._entry.51, ptr @snic_get_vnic_config._entry.54, ptr @snic_get_vnic_config._entry.6, ptr @snic_get_vnic_config._entry.9, ptr @snic_get_vnic_config._entry_ptr, ptr @snic_get_vnic_config._entry_ptr.10, ptr @snic_get_vnic_config._entry_ptr.13, ptr @snic_get_vnic_config._entry_ptr.16, ptr @snic_get_vnic_config._entry_ptr.19, ptr @snic_get_vnic_config._entry_ptr.22, ptr @snic_get_vnic_config._entry_ptr.25, ptr @snic_get_vnic_config._entry_ptr.28, ptr @snic_get_vnic_config._entry_ptr.31, ptr @snic_get_vnic_config._entry_ptr.34, ptr @snic_get_vnic_config._entry_ptr.38, ptr @snic_get_vnic_config._entry_ptr.41, ptr @snic_get_vnic_config._entry_ptr.44, ptr @snic_get_vnic_config._entry_ptr.47, ptr @snic_get_vnic_config._entry_ptr.50, ptr @snic_get_vnic_config._entry_ptr.53, ptr @snic_get_vnic_config._entry_ptr.56, ptr @snic_get_vnic_config._entry_ptr.7, ptr @snic_log_q_error._entry, ptr @snic_log_q_error._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.62, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.82, ptr @.str.88, ptr @.str.90, ptr @.str.91], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_vnic_config._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_res_counts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_res_counts._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_get_res_counts._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_alloc_vnic_res._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_log_q_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_get_vnic_config(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %wq_enet_desc_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 1
  %call = tail call i32 @svnic_dev_spec(ptr noundef %1, i32 noundef 4, i32 noundef 4, ptr noundef %wq_enet_desc_count) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call) #7
  br label %cleanup

do.body4:                                         ; preds = %entry
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 4
  %maxdatafieldsize = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 6
  %call6 = tail call i32 @svnic_dev_spec(ptr noundef %5, i32 noundef 24, i32 noundef 2, ptr noundef %maxdatafieldsize) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body17, label %do.end11

do.end11:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  %shost12 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %6 = ptrtoint ptr %shost12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost12, align 16
  %shost_gendev13 = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %call6) #7
  br label %cleanup

do.body17:                                        ; preds = %do.body4
  %8 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdev, align 4
  %intr_timer = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 7
  %call19 = tail call i32 @svnic_dev_spec(ptr noundef %9, i32 noundef 26, i32 noundef 2, ptr noundef %intr_timer) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.body30, label %do.end24

do.end24:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %shost25 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %10 = ptrtoint ptr %shost25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost25, align 16
  %shost_gendev26 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call19) #7
  br label %cleanup

do.body30:                                        ; preds = %do.body17
  %12 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vdev, align 4
  %intr_timer_type = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 8
  %call32 = tail call i32 @svnic_dev_spec(ptr noundef %13, i32 noundef 28, i32 noundef 1, ptr noundef %intr_timer_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body43, label %do.end37

do.end37:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #6
  %shost38 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %14 = ptrtoint ptr %shost38 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost38, align 16
  %shost_gendev39 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev39, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %call32) #7
  br label %cleanup

do.body43:                                        ; preds = %do.body30
  %16 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdev, align 4
  %call45 = tail call i32 @svnic_dev_spec(ptr noundef %17, i32 noundef 0, i32 noundef 4, ptr noundef %config) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body56, label %do.end50

do.end50:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #6
  %shost51 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %18 = ptrtoint ptr %shost51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost51, align 16
  %shost_gendev52 = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev52, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %call45) #7
  br label %cleanup

do.body56:                                        ; preds = %do.body43
  %20 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vdev, align 4
  %io_throttle_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 2
  %call58 = tail call i32 @svnic_dev_spec(ptr noundef %21, i32 noundef 8, i32 noundef 4, ptr noundef %io_throttle_count) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.body69, label %do.end63

do.end63:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #6
  %shost64 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %22 = ptrtoint ptr %shost64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost64, align 16
  %shost_gendev65 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev65, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %call58) #7
  br label %cleanup

do.body69:                                        ; preds = %do.body56
  %24 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vdev, align 4
  %port_down_timeout = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 3
  %call71 = tail call i32 @svnic_dev_spec(ptr noundef %25, i32 noundef 12, i32 noundef 4, ptr noundef %port_down_timeout) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body82, label %do.end76

do.end76:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #6
  %shost77 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %26 = ptrtoint ptr %shost77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shost77, align 16
  %shost_gendev78 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev78, ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, i32 noundef %call71) #7
  br label %cleanup

do.body82:                                        ; preds = %do.body69
  %28 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vdev, align 4
  %port_down_io_retries = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 4
  %call84 = tail call i32 @svnic_dev_spec(ptr noundef %29, i32 noundef 16, i32 noundef 4, ptr noundef %port_down_io_retries) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body95, label %do.end89

do.end89:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #6
  %shost90 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %30 = ptrtoint ptr %shost90 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shost90, align 16
  %shost_gendev91 = getelementptr inbounds %struct.Scsi_Host, ptr %31, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev91, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef %call84) #7
  br label %cleanup

do.body95:                                        ; preds = %do.body82
  %32 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vdev, align 4
  %luns_per_tgt = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 5
  %call97 = tail call i32 @svnic_dev_spec(ptr noundef %33, i32 noundef 20, i32 noundef 4, ptr noundef %luns_per_tgt) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %do.body108, label %do.end102

do.end102:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %shost103 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %34 = ptrtoint ptr %shost103 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shost103, align 16
  %shost_gendev104 = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev104, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef %call97) #7
  br label %cleanup

do.body108:                                       ; preds = %do.body95
  %36 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdev, align 4
  %xpt_type = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 10
  %call110 = tail call i32 @svnic_dev_spec(ptr noundef %37, i32 noundef 30, i32 noundef 1, ptr noundef %xpt_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body121, label %do.end115

do.end115:                                        ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #6
  %shost116 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %38 = ptrtoint ptr %shost116 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost116, align 16
  %shost_gendev117 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev117, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, i32 noundef %call110) #7
  br label %cleanup

do.body121:                                       ; preds = %do.body108
  %40 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vdev, align 4
  %hid = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 11
  %call123 = tail call i32 @svnic_dev_spec(ptr noundef %41, i32 noundef 31, i32 noundef 1, ptr noundef %hid) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %do.end133, label %do.end128

do.end128:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #6
  %shost129 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %42 = ptrtoint ptr %shost129 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shost129, align 16
  %shost_gendev130 = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev130, ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, i32 noundef %call123) #7
  br label %cleanup

do.end133:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %wq_enet_desc_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wq_enet_desc_count, align 4
  %46 = tail call i32 @llvm.umax.i32(i32 %45, i32 64)
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 1024)
  %add = add nuw nsw i32 %47, 15
  %and = and i32 %add, 4080
  %48 = ptrtoint ptr %wq_enet_desc_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and, ptr %wq_enet_desc_count, align 4
  %49 = ptrtoint ptr %maxdatafieldsize to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %maxdatafieldsize, align 4
  %51 = tail call i16 @llvm.umax.i16(i16 %50, i16 256)
  %52 = tail call i16 @llvm.umin.i16(i16 %51, i16 2112)
  %53 = ptrtoint ptr %maxdatafieldsize to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %maxdatafieldsize, align 4
  %54 = ptrtoint ptr %io_throttle_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %io_throttle_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp163 = icmp eq i32 %55, 0
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 1024)
  %57 = select i1 %cmp163, i32 1, i32 %56
  %58 = ptrtoint ptr %io_throttle_count to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %io_throttle_count, align 4
  %59 = ptrtoint ptr %port_down_timeout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port_down_timeout, align 4
  %61 = tail call i32 @llvm.umin.i32(i32 %60, i32 240000)
  %62 = ptrtoint ptr %port_down_timeout to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %port_down_timeout, align 4
  %63 = ptrtoint ptr %port_down_io_retries to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_down_io_retries, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 255)
  %66 = ptrtoint ptr %port_down_io_retries to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %port_down_io_retries, align 4
  %67 = ptrtoint ptr %luns_per_tgt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %luns_per_tgt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp197 = icmp eq i32 %68, 0
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 1024)
  %70 = select i1 %cmp197, i32 1, i32 %69
  %71 = ptrtoint ptr %luns_per_tgt to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %luns_per_tgt, align 4
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %and) #7
  %72 = ptrtoint ptr %maxdatafieldsize to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %maxdatafieldsize, align 4
  %conv233 = zext i16 %73 to i32
  %74 = ptrtoint ptr %intr_timer to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %intr_timer, align 2
  %conv235 = zext i16 %75 to i32
  %call236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv233, i32 noundef %conv235) #7
  %76 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %config, align 4
  %78 = ptrtoint ptr %luns_per_tgt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %luns_per_tgt, align 4
  %call243 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %77, i32 noundef %79) #7
  %80 = ptrtoint ptr %io_throttle_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %io_throttle_count, align 4
  %call249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %81) #7
  %82 = ptrtoint ptr %port_down_timeout to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port_down_timeout, align 4
  %84 = ptrtoint ptr %port_down_io_retries to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port_down_io_retries, align 4
  %call256 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %83, i32 noundef %85) #7
  %86 = ptrtoint ptr %xpt_type to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %xpt_type, align 2
  %conv262 = zext i8 %87 to i32
  %call263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %conv262) #7
  %88 = ptrtoint ptr %hid to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %hid, align 1
  %conv269 = zext i8 %89 to i32
  %call270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %conv269) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end133, %do.end128, %do.end115, %do.end102, %do.end89, %do.end76, %do.end63, %do.end50, %do.end37, %do.end24, %do.end11, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %do.end11 ], [ %call19, %do.end24 ], [ %call32, %do.end37 ], [ %call45, %do.end50 ], [ %call58, %do.end63 ], [ %call71, %do.end76 ], [ %call84, %do.end89 ], [ %call97, %do.end102 ], [ %call110, %do.end115 ], [ %call123, %do.end128 ], [ 0, %do.end133 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_spec(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_get_res_counts(ptr nocapture noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @svnic_dev_get_res_count(ptr noundef %1, i32 noundef 1) #4
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %2 = ptrtoint ptr %wq_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end:                                           ; preds = %entry
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef 123) #7
  %3 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %land.rhs, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

land.rhs:                                         ; preds = %do.end
  %.b197 = load i1, ptr @snic_get_res_counts.__already_done, align 1
  br i1 %.b197, label %land.rhs.if.end43_crit_edge, label %if.then11, !prof !139

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_get_res_counts.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 123, i32 noundef 9, ptr noundef null) #4
  br label %if.end43

if.end43:                                         ; preds = %if.then11, %land.rhs.if.end43_crit_edge, %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %5 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vdev, align 4
  %call45 = tail call i32 @svnic_dev_get_res_count(ptr noundef %6, i32 noundef 3) #4
  %cq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 15
  %7 = ptrtoint ptr %cq_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call45, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp47 = icmp eq i32 %call45, 0
  br i1 %cmp47, label %do.end51, label %if.end43.if.end109_crit_edge

if.end43.if.end109_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

do.end51:                                         ; preds = %if.end43
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58, i32 noundef 125) #7
  %8 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp56 = icmp eq i32 %9, 0
  br i1 %cmp56, label %land.rhs63, label %do.end51.if.end109_crit_edge

do.end51.if.end109_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

land.rhs63:                                       ; preds = %do.end51
  %.b193196 = load i1, ptr @snic_get_res_counts.__already_done.63, align 1
  br i1 %.b193196, label %land.rhs63.if.end109_crit_edge, label %if.then74, !prof !139

land.rhs63.if.end109_crit_edge:                   ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then74:                                        ; preds = %land.rhs63
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_get_res_counts.__already_done.63, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 125, i32 noundef 9, ptr noundef null) #4
  br label %if.end109

if.end109:                                        ; preds = %if.then74, %land.rhs63.if.end109_crit_edge, %do.end51.if.end109_crit_edge, %if.end43.if.end109_crit_edge
  %10 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev, align 4
  %call111 = tail call i32 @svnic_dev_get_res_count(ptr noundef %11, i32 noundef 10) #4
  %intr_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 16
  %12 = ptrtoint ptr %intr_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call111, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp113 = icmp eq i32 %call111, 0
  br i1 %cmp113, label %do.end117, label %if.end109.if.end175_crit_edge

if.end109.if.end175_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

do.end117:                                        ; preds = %if.end109
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.58, i32 noundef 128) #7
  %13 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp122 = icmp eq i32 %14, 0
  br i1 %cmp122, label %land.rhs129, label %do.end117.if.end175_crit_edge

do.end117.if.end175_crit_edge:                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

land.rhs129:                                      ; preds = %do.end117
  %.b194195 = load i1, ptr @snic_get_res_counts.__already_done.67, align 1
  br i1 %.b194195, label %land.rhs129.if.end175_crit_edge, label %if.then140, !prof !139

land.rhs129.if.end175_crit_edge:                  ; preds = %land.rhs129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end175

if.then140:                                       ; preds = %land.rhs129
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_get_res_counts.__already_done.67, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 9, ptr noundef null) #4
  br label %if.end175

if.end175:                                        ; preds = %if.then140, %land.rhs129.if.end175_crit_edge, %do.end117.if.end175_crit_edge, %if.end109.if.end175_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_get_res_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_free_vnic_res(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28.not = icmp eq i32 %1, 0
  br i1 %cmp28.not, label %entry.for.cond1.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %cq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 15
  %2 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp230.not = icmp eq i32 %3, 0
  br i1 %cmp230.not, label %for.cond1.preheader.for.cond8.preheader_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.cond8.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 43, i32 %i.029
  tail call void @svnic_wq_free(ptr noundef %arrayidx) #4
  %inc = add nuw i32 %i.029, 1
  %4 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wq_count, align 16
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body3.for.cond8.preheader_crit_edge, %for.cond1.preheader.for.cond8.preheader_crit_edge
  %intr_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 16
  %6 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp932.not = icmp eq i32 %7, 0
  br i1 %cmp932.not, label %for.cond8.preheader.for.end14_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end14_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.131 = phi i32 [ %inc6, %for.body3.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %arrayidx4 = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.131
  tail call void @svnic_cq_free(ptr noundef %arrayidx4) #4
  %inc6 = add nuw i32 %i.131, 1
  %8 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cq_count, align 4
  %cmp2 = icmp ult i32 %inc6, %9
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond8.preheader_crit_edge

for.body3.for.cond8.preheader_crit_edge:          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.233 = phi i32 [ %inc13, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.snic, ptr %snic, i32 0, i32 46, i32 %i.233
  tail call void @svnic_intr_free(ptr noundef %arrayidx11) #4
  %inc13 = add nuw i32 %i.233, 1
  %10 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intr_count, align 8
  %cmp9 = icmp ult i32 %inc13, %11
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end14_crit_edge

for.body10.for.end14_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end14

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10

for.end14:                                        ; preds = %for.body10.for.end14_crit_edge, %for.cond8.preheader.for.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_cq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_intr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_alloc_vnic_res(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @svnic_dev_get_intr_mode(ptr noundef %1) #4
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %cond.end6 [
    i32 1, label %entry.cond.end6.thread_crit_edge
    i32 2, label %cond.end6.fold.split
  ]

entry.cond.end6.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end6.thread

cond.end6.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end6.thread

cond.end6.thread:                                 ; preds = %cond.end6.fold.split, %entry.cond.end6.thread_crit_edge
  %cond7.ph = phi ptr [ @.str.71, %cond.end6.fold.split ], [ @.str.70, %entry.cond.end6.thread_crit_edge ]
  %call8378 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull %cond7.ph) #7
  br label %do.end12

cond.end6:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp4 = icmp eq i32 %call, 3
  %cond = select i1 %cmp4, ptr @.str.72, ptr @.str.73
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull %cond) #7
  br i1 %cmp4, label %cond.end6.do.end58_crit_edge, label %cond.end6.do.end12_crit_edge

cond.end6.do.end12_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end12

cond.end6.do.end58_crit_edge:                     ; preds = %cond.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end58

do.end12:                                         ; preds = %cond.end6.do.end12_crit_edge, %cond.end6.thread
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.69, i32 noundef 168) #7
  %.b376 = load i1, ptr @snic_alloc_vnic_res.__already_done, align 1
  br i1 %.b376, label %do.end12.do.end58_crit_edge, label %if.then22, !prof !139

do.end12.do.end58_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end58

if.then22:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_alloc_vnic_res.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 168, i32 noundef 9, ptr noundef null) #4
  br label %do.end58

do.end58:                                         ; preds = %if.then22, %do.end12.do.end58_crit_edge, %cond.end6.do.end58_crit_edge
  %cmp9.not381 = phi i1 [ false, %do.end12.do.end58_crit_edge ], [ false, %if.then22 ], [ true, %cond.end6.do.end58_crit_edge ]
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %3 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wq_count, align 16
  %cq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 15
  %5 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cq_count, align 4
  %intr_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 16
  %7 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %intr_count, align 8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %4, i32 noundef %6, i32 noundef %8) #7
  %9 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp62386.not = icmp eq i32 %10, 0
  br i1 %cmp62386.not, label %do.end58.for.end82_crit_edge, label %for.body.lr.ph

do.end58.for.end82_crit_edge:                     ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end82

for.body.lr.ph:                                   ; preds = %do.end58
  %wq_enet_desc_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0387, 1
  %11 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wq_count, align 16
  %cmp62 = icmp ult i32 %inc, %12
  br i1 %cmp62, label %for.cond.for.body_crit_edge, label %for.cond68.preheader

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond68.preheader:                             ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp70388.not = icmp eq i32 %12, 0
  br i1 %cmp70388.not, label %for.cond68.preheader.for.end82_crit_edge, label %for.body71.lr.ph

for.cond68.preheader.for.end82_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end82

for.body71.lr.ph:                                 ; preds = %for.cond68.preheader
  %wq_enet_desc_count75 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 1
  br label %for.body71

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0387 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %13 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdev, align 4
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 43, i32 %i.0387
  %15 = ptrtoint ptr %wq_enet_desc_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wq_enet_desc_count, align 4
  %call64 = tail call i32 @svnic_wq_alloc(ptr noundef %14, ptr noundef %arrayidx, i32 noundef %i.0387, i32 noundef %16, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %for.cond, label %for.body.error_cleanup_crit_edge

for.body.error_cleanup_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_cleanup

for.cond68:                                       ; preds = %for.body71
  %inc81 = add nuw i32 %i.1389, 1
  %17 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wq_count, align 16
  %cmp70 = icmp ult i32 %inc81, %18
  br i1 %cmp70, label %for.cond68.for.body71_crit_edge, label %for.cond68.for.end82_crit_edge

for.cond68.for.end82_crit_edge:                   ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end82

for.cond68.for.body71_crit_edge:                  ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body71

for.body71:                                       ; preds = %for.cond68.for.body71_crit_edge, %for.body71.lr.ph
  %i.1389 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc81, %for.cond68.for.body71_crit_edge ]
  %19 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev, align 4
  %arrayidx73 = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.1389
  %21 = ptrtoint ptr %wq_enet_desc_count75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wq_enet_desc_count75, align 4
  %call76 = tail call i32 @svnic_cq_alloc(ptr noundef %20, ptr noundef %arrayidx73, i32 noundef %i.1389, i32 noundef %22, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.cond68, label %for.body71.error_cleanup_crit_edge

for.body71.error_cleanup_crit_edge:               ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_cleanup

for.end82:                                        ; preds = %for.cond68.for.end82_crit_edge, %for.cond68.preheader.for.end82_crit_edge, %do.end58.for.end82_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond68.preheader.for.end82_crit_edge ], [ 0, %do.end58.for.end82_crit_edge ], [ %18, %for.cond68.for.end82_crit_edge ]
  %23 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cq_count, align 4
  %mul = shl i32 %.lcssa, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %mul)
  %cmp85.not = icmp eq i32 %24, %mul
  br i1 %cmp85.not, label %for.end82.if.end149_crit_edge, label %do.end89

for.end82.if.end149_crit_edge:                    ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

do.end89:                                         ; preds = %for.end82
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.69, i32 noundef 197) #7
  %25 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cq_count, align 4
  %27 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wq_count, align 16
  %mul95 = shl i32 %28, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %mul95)
  %cmp96.not = icmp eq i32 %26, %mul95
  br i1 %cmp96.not, label %do.end89.if.end149_crit_edge, label %land.rhs103

do.end89.if.end149_crit_edge:                     ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

land.rhs103:                                      ; preds = %do.end89
  %.b372375 = load i1, ptr @snic_alloc_vnic_res.__already_done.83, align 1
  br i1 %.b372375, label %land.rhs103.if.end149_crit_edge, label %if.then114, !prof !139

land.rhs103.if.end149_crit_edge:                  ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.then114:                                       ; preds = %land.rhs103
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_alloc_vnic_res.__already_done.83, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 197, i32 noundef 9, ptr noundef null) #4
  br label %if.end149

if.end149:                                        ; preds = %if.then114, %land.rhs103.if.end149_crit_edge, %do.end89.if.end149_crit_edge, %for.end82.if.end149_crit_edge
  %29 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wq_count, align 16
  %31 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp153390 = icmp ult i32 %30, %32
  br i1 %cmp153390, label %for.body154.lr.ph, label %if.end149.for.cond168.preheader_crit_edge

if.end149.for.cond168.preheader_crit_edge:        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond168.preheader

for.body154.lr.ph:                                ; preds = %if.end149
  %wq_enet_desc_count159 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 1
  br label %for.body154

for.cond151:                                      ; preds = %for.body154
  %inc166 = add nuw i32 %i.2391, 1
  %33 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cq_count, align 4
  %cmp153 = icmp ult i32 %inc166, %34
  br i1 %cmp153, label %for.cond151.for.body154_crit_edge, label %for.cond151.for.cond168.preheader_crit_edge

for.cond151.for.cond168.preheader_crit_edge:      ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond168.preheader

for.cond151.for.body154_crit_edge:                ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body154

for.cond168.preheader:                            ; preds = %for.cond151.for.cond168.preheader_crit_edge, %if.end149.for.cond168.preheader_crit_edge
  %35 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp170392.not = icmp eq i32 %36, 0
  br i1 %cmp170392.not, label %for.cond168.preheader.for.end180_crit_edge, label %for.cond168.preheader.for.body171_crit_edge

for.cond168.preheader.for.body171_crit_edge:      ; preds = %for.cond168.preheader
  br label %for.body171

for.cond168.preheader.for.end180_crit_edge:       ; preds = %for.cond168.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end180

for.body154:                                      ; preds = %for.cond151.for.body154_crit_edge, %for.body154.lr.ph
  %i.2391 = phi i32 [ %30, %for.body154.lr.ph ], [ %inc166, %for.cond151.for.body154_crit_edge ]
  %37 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vdev, align 4
  %arrayidx157 = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.2391
  %39 = ptrtoint ptr %wq_enet_desc_count159 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wq_enet_desc_count159, align 4
  %mul160 = mul i32 %40, 3
  %call161 = tail call i32 @svnic_cq_alloc(ptr noundef %38, ptr noundef %arrayidx157, i32 noundef %i.2391, i32 noundef %mul160, i32 noundef 64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %for.cond151, label %for.body154.error_cleanup_crit_edge

for.body154.error_cleanup_crit_edge:              ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_cleanup

for.cond168:                                      ; preds = %for.body171
  %inc179 = add nuw i32 %i.3393, 1
  %41 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %intr_count, align 8
  %cmp170 = icmp ult i32 %inc179, %42
  br i1 %cmp170, label %for.cond168.for.body171_crit_edge, label %for.cond168.for.end180_crit_edge

for.cond168.for.end180_crit_edge:                 ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end180

for.cond168.for.body171_crit_edge:                ; preds = %for.cond168
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body171

for.body171:                                      ; preds = %for.cond168.for.body171_crit_edge, %for.cond168.preheader.for.body171_crit_edge
  %i.3393 = phi i32 [ %inc179, %for.cond168.for.body171_crit_edge ], [ 0, %for.cond168.preheader.for.body171_crit_edge ]
  %43 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vdev, align 4
  %arrayidx173 = getelementptr %struct.snic, ptr %snic, i32 0, i32 46, i32 %i.3393
  %call174 = tail call i32 @svnic_intr_alloc(ptr noundef %44, ptr noundef %arrayidx173, i32 noundef %i.3393) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %for.cond168, label %for.body171.error_cleanup_crit_edge

for.body171.error_cleanup_crit_edge:              ; preds = %for.body171
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_cleanup

for.end180:                                       ; preds = %for.cond168.for.end180_crit_edge, %for.cond168.preheader.for.end180_crit_edge
  %err_intr_offset181 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 17
  %45 = ptrtoint ptr %err_intr_offset181 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err_intr_offset181, align 4
  %47 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp184394.not = icmp eq i32 %48, 0
  br i1 %cmp184394.not, label %for.end180.for.cond191.preheader_crit_edge, label %for.end180.for.body185_crit_edge

for.end180.for.body185_crit_edge:                 ; preds = %for.end180
  br label %for.body185

for.end180.for.cond191.preheader_crit_edge:       ; preds = %for.end180
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond191.preheader

for.cond191.preheader:                            ; preds = %for.body185.for.cond191.preheader_crit_edge, %for.end180.for.cond191.preheader_crit_edge
  %49 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp193396.not = icmp eq i32 %50, 0
  br i1 %cmp193396.not, label %for.cond191.preheader.for.end199_crit_edge, label %for.cond191.preheader.for.body194_crit_edge

for.cond191.preheader.for.body194_crit_edge:      ; preds = %for.cond191.preheader
  br label %for.body194

for.cond191.preheader.for.end199_crit_edge:       ; preds = %for.cond191.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end199

for.body185:                                      ; preds = %for.body185.for.body185_crit_edge, %for.end180.for.body185_crit_edge
  %i.4395 = phi i32 [ %inc189, %for.body185.for.body185_crit_edge ], [ 0, %for.end180.for.body185_crit_edge ]
  %arrayidx187 = getelementptr %struct.snic, ptr %snic, i32 0, i32 43, i32 %i.4395
  tail call void @svnic_wq_init(ptr noundef %arrayidx187, i32 noundef %i.4395, i32 noundef 1, i32 noundef %46) #4
  %inc189 = add nuw i32 %i.4395, 1
  %51 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %wq_count, align 16
  %cmp184 = icmp ult i32 %inc189, %52
  br i1 %cmp184, label %for.body185.for.body185_crit_edge, label %for.body185.for.cond191.preheader_crit_edge

for.body185.for.cond191.preheader_crit_edge:      ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond191.preheader

for.body185.for.body185_crit_edge:                ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body185

for.body194:                                      ; preds = %for.body194.for.body194_crit_edge, %for.cond191.preheader.for.body194_crit_edge
  %i.5397 = phi i32 [ %inc198, %for.body194.for.body194_crit_edge ], [ 0, %for.cond191.preheader.for.body194_crit_edge ]
  %arrayidx196 = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.5397
  tail call void @svnic_cq_init(ptr noundef %arrayidx196, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef %i.5397, i64 noundef 0) #4
  %inc198 = add nuw i32 %i.5397, 1
  %53 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cq_count, align 4
  %cmp193 = icmp ult i32 %inc198, %54
  br i1 %cmp193, label %for.body194.for.body194_crit_edge, label %for.body194.for.end199_crit_edge

for.body194.for.end199_crit_edge:                 ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end199

for.body194.for.body194_crit_edge:                ; preds = %for.body194
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body194

for.end199:                                       ; preds = %for.body194.for.end199_crit_edge, %for.cond191.preheader.for.end199_crit_edge
  br i1 %cmp9.not381, label %for.end199.if.end261_crit_edge, label %do.end204

for.end199.if.end261_crit_edge:                   ; preds = %for.end199
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end261

do.end204:                                        ; preds = %for.end199
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.69, i32 noundef 250) #7
  %.b373374 = load i1, ptr @snic_alloc_vnic_res.__already_done.86, align 1
  br i1 %.b373374, label %do.end204.if.end261_crit_edge, label %if.then226, !prof !139

do.end204.if.end261_crit_edge:                    ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end261

if.then226:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @snic_alloc_vnic_res.__already_done.86, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 250, i32 noundef 9, ptr noundef null) #4
  br label %if.end261

if.end261:                                        ; preds = %if.then226, %do.end204.if.end261_crit_edge, %for.end199.if.end261_crit_edge
  %55 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp264398.not = icmp eq i32 %56, 0
  br i1 %cmp264398.not, label %if.end261.for.end273_crit_edge, label %for.body265.lr.ph

if.end261.for.end273_crit_edge:                   ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273

for.body265.lr.ph:                                ; preds = %if.end261
  %intr_timer = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 7
  %intr_timer_type = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 8
  br label %for.body265

for.body265:                                      ; preds = %for.body265.for.body265_crit_edge, %for.body265.lr.ph
  %i.6399 = phi i32 [ 0, %for.body265.lr.ph ], [ %inc272, %for.body265.for.body265_crit_edge ]
  %arrayidx267 = getelementptr %struct.snic, ptr %snic, i32 0, i32 46, i32 %i.6399
  %57 = ptrtoint ptr %intr_timer to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %intr_timer, align 2
  %conv = zext i16 %58 to i32
  %59 = ptrtoint ptr %intr_timer_type to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %intr_timer_type, align 4
  %conv270 = zext i8 %60 to i32
  tail call void @svnic_intr_init(ptr noundef %arrayidx267, i32 noundef %conv, i32 noundef %conv270, i32 noundef 1) #4
  %inc272 = add nuw i32 %i.6399, 1
  %61 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %intr_count, align 8
  %cmp264 = icmp ult i32 %inc272, %62
  br i1 %cmp264, label %for.body265.for.body265_crit_edge, label %for.body265.for.end273_crit_edge

for.body265.for.end273_crit_edge:                 ; preds = %for.body265
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end273

for.body265.for.body265_crit_edge:                ; preds = %for.body265
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body265

for.end273:                                       ; preds = %for.body265.for.end273_crit_edge, %if.end261.for.end273_crit_edge
  %63 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdev, align 4
  %stats = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 10
  %call275 = tail call i32 @svnic_dev_stats_dump(ptr noundef %64, ptr noundef %stats) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.end281, label %do.end280

do.end280:                                        ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #6
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %65 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.88, i32 noundef %call275) #7
  br label %error_cleanup

if.end281:                                        ; preds = %for.end273
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdev, align 4
  %call283 = tail call i32 @svnic_dev_stats_clear(ptr noundef %68) #4
  br label %cleanup

error_cleanup:                                    ; preds = %do.end280, %for.body171.error_cleanup_crit_edge, %for.body154.error_cleanup_crit_edge, %for.body71.error_cleanup_crit_edge, %for.body.error_cleanup_crit_edge
  %ret.0 = phi i32 [ %call275, %do.end280 ], [ %call174, %for.body171.error_cleanup_crit_edge ], [ %call161, %for.body154.error_cleanup_crit_edge ], [ %call76, %for.body71.error_cleanup_crit_edge ], [ %call64, %for.body.error_cleanup_crit_edge ]
  %69 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp28.not.i = icmp eq i32 %70, 0
  br i1 %cmp28.not.i, label %error_cleanup.for.cond1.preheader.i_crit_edge, label %error_cleanup.for.body.i_crit_edge

error_cleanup.for.body.i_crit_edge:               ; preds = %error_cleanup
  br label %for.body.i

error_cleanup.for.cond1.preheader.i_crit_edge:    ; preds = %error_cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.body.i.for.cond1.preheader.i_crit_edge, %error_cleanup.for.cond1.preheader.i_crit_edge
  %71 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp230.not.i = icmp eq i32 %72, 0
  br i1 %cmp230.not.i, label %for.cond1.preheader.i.for.cond8.preheader.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.cond8.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %error_cleanup.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %error_cleanup.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 43, i32 %i.029.i
  tail call void @svnic_wq_free(ptr noundef %arrayidx.i) #4
  %inc.i = add nuw i32 %i.029.i, 1
  %73 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wq_count, align 16
  %cmp.i = icmp ult i32 %inc.i, %74
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond1.preheader.i_crit_edge

for.body.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond1.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.body3.i.for.cond8.preheader.i_crit_edge, %for.cond1.preheader.i.for.cond8.preheader.i_crit_edge
  %75 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %intr_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp932.not.i = icmp eq i32 %76, 0
  br i1 %cmp932.not.i, label %for.cond8.preheader.i.cleanup_crit_edge, label %for.cond8.preheader.i.for.body10.i_crit_edge

for.cond8.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body10.i

for.cond8.preheader.i.cleanup_crit_edge:          ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.131.i = phi i32 [ %inc6.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.131.i
  tail call void @svnic_cq_free(ptr noundef %arrayidx4.i) #4
  %inc6.i = add nuw i32 %i.131.i, 1
  %77 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cq_count, align 4
  %cmp2.i = icmp ult i32 %inc6.i, %78
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.cond8.preheader.i_crit_edge

for.body3.i.for.cond8.preheader.i_crit_edge:      ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond8.preheader.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %for.cond8.preheader.i.for.body10.i_crit_edge
  %i.233.i = phi i32 [ %inc13.i, %for.body10.i.for.body10.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 46, i32 %i.233.i
  tail call void @svnic_intr_free(ptr noundef %arrayidx11.i) #4
  %inc13.i = add nuw i32 %i.233.i, 1
  %79 = ptrtoint ptr %intr_count to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %intr_count, align 8
  %cmp9.i = icmp ult i32 %inc13.i, %80
  br i1 %cmp9.i, label %for.body10.i.for.body10.i_crit_edge, label %for.body10.i.cleanup_crit_edge

for.body10.i.cleanup_crit_edge:                   ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10.i

cleanup:                                          ; preds = %for.body10.i.cleanup_crit_edge, %for.cond8.preheader.i.cleanup_crit_edge, %if.end281
  %retval.0 = phi i32 [ 0, %if.end281 ], [ %ret.0, %for.cond8.preheader.i.cleanup_crit_edge ], [ %ret.0, %for.body10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_wq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_cq_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_intr_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_cq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_intr_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_stats_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_stats_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_log_q_error(ptr nocapture noundef readonly %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ctrl = getelementptr %struct.snic, ptr %snic, i32 0, i32 43, i32 %i.08, i32 2
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 8
  %error_status = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %3, i32 0, i32 19
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %error_status) #4, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #4
  %6 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.3, ptr noundef %shost_gendev, ptr noundef nonnull @.str.90, i32 noundef %i.08, i32 noundef %5) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %8 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wq_count, align 16
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_res.c", i32 51, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snic_get_vnic_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snic_get_vnic_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @snic_get_vnic_config._entry.6, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../drivers/scsi/snic/snic_res.c", i32 52, i32 2}
!11 = !{ptr @snic_get_vnic_config._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @snic_get_vnic_config._entry.9, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/scsi/snic/snic_res.c", i32 53, i32 2}
!15 = !{ptr @snic_get_vnic_config._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @snic_get_vnic_config._entry.12, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/scsi/snic/snic_res.c", i32 54, i32 2}
!19 = !{ptr @snic_get_vnic_config._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @snic_get_vnic_config._entry.15, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/scsi/snic/snic_res.c", i32 55, i32 2}
!23 = !{ptr @snic_get_vnic_config._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @snic_get_vnic_config._entry.18, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/scsi/snic/snic_res.c", i32 56, i32 2}
!27 = !{ptr @snic_get_vnic_config._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @snic_get_vnic_config._entry.21, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/scsi/snic/snic_res.c", i32 57, i32 2}
!31 = !{ptr @snic_get_vnic_config._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.23, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snic_get_vnic_config._entry.24, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/scsi/snic/snic_res.c", i32 58, i32 2}
!35 = !{ptr @snic_get_vnic_config._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.26, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snic_get_vnic_config._entry.27, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/scsi/snic/snic_res.c", i32 59, i32 2}
!39 = !{ptr @snic_get_vnic_config._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.29, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @snic_get_vnic_config._entry.30, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/scsi/snic/snic_res.c", i32 60, i32 2}
!43 = !{ptr @snic_get_vnic_config._entry_ptr.31, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.32, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @snic_get_vnic_config._entry.33, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/scsi/snic/snic_res.c", i32 61, i32 2}
!47 = !{ptr @snic_get_vnic_config._entry_ptr.34, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.35, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.37, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/scsi/snic/snic_res.c", i32 99, i32 2}
!51 = !{ptr @snic_get_vnic_config._entry.36, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @snic_get_vnic_config._entry_ptr.38, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.40, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/scsi/snic/snic_res.c", i32 100, i32 2}
!55 = !{ptr @snic_get_vnic_config._entry.39, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @snic_get_vnic_config._entry_ptr.41, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.43, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/scsi/snic/snic_res.c", i32 104, i32 2}
!59 = !{ptr @snic_get_vnic_config._entry.42, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @snic_get_vnic_config._entry_ptr.44, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.46, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/scsi/snic/snic_res.c", i32 108, i32 2}
!63 = !{ptr @snic_get_vnic_config._entry.45, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @snic_get_vnic_config._entry_ptr.47, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.49, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/scsi/snic/snic_res.c", i32 109, i32 2}
!67 = !{ptr @snic_get_vnic_config._entry.48, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @snic_get_vnic_config._entry_ptr.50, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.52, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/snic/snic_res.c", i32 113, i32 2}
!71 = !{ptr @snic_get_vnic_config._entry.51, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @snic_get_vnic_config._entry_ptr.53, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.55, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/snic/snic_res.c", i32 114, i32 2}
!75 = !{ptr @snic_get_vnic_config._entry.54, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @snic_get_vnic_config._entry_ptr.56, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.57, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/snic/snic_res.c", i32 123, i32 2}
!79 = !{ptr @.str.58, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @snic_get_res_counts._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @snic_get_res_counts._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.59, !78, !"<string literal>", i1 false, i1 false}
!83 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!84 = !{ptr @snic_get_res_counts._entry.60, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/scsi/snic/snic_res.c", i32 125, i32 2}
!86 = !{ptr @snic_get_res_counts._entry_ptr.61, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.62, !85, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!89 = !{ptr @snic_get_res_counts._entry.64, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/scsi/snic/snic_res.c", i32 128, i32 2}
!91 = !{ptr @snic_get_res_counts._entry_ptr.65, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.66, !90, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!94 = !{ptr @.str.68, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/snic/snic_res.c", i32 159, i32 2}
!96 = !{ptr @.str.69, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @snic_alloc_vnic_res._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @snic_alloc_vnic_res._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.70, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.71, !95, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.72, !95, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.73, !95, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snic_alloc_vnic_res._entry.74, !104, !"_entry", i1 false, i1 false}
!104 = !{!"../drivers/scsi/snic/snic_res.c", i32 168, i32 2}
!105 = !{ptr @snic_alloc_vnic_res._entry_ptr.75, !104, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.76, !104, !"<string literal>", i1 false, i1 false}
!107 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!108 = !{ptr @.str.78, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/snic/snic_res.c", i32 170, i32 2}
!110 = !{ptr @snic_alloc_vnic_res._entry.77, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @snic_alloc_vnic_res._entry_ptr.79, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @snic_alloc_vnic_res._entry.80, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/scsi/snic/snic_res.c", i32 197, i32 2}
!114 = !{ptr @snic_alloc_vnic_res._entry_ptr.81, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.82, !113, !"<string literal>", i1 false, i1 false}
!116 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!117 = !{ptr @snic_alloc_vnic_res._entry.84, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/scsi/snic/snic_res.c", i32 250, i32 2}
!119 = !{ptr @snic_alloc_vnic_res._entry_ptr.85, !118, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!121 = !{ptr @.str.88, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/scsi/snic/snic_res.c", i32 263, i32 3}
!123 = !{ptr @snic_alloc_vnic_res._entry.87, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @snic_alloc_vnic_res._entry_ptr.89, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.90, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/scsi/snic/snic_res.c", i32 290, i32 4}
!127 = !{ptr @.str.91, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @snic_log_q_error._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @snic_log_q_error._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 4985681}
!141 = !{i64 2152526030}
