; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_disc.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_disc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.snic_tgt_id = type { i32, i16, i16 }
%struct.snic_tgt = type { %struct.list_head, i16, i16, i32, i32, i32, %struct.device, %struct.work_struct, %struct.work_struct, %struct.snic_tgt_priv }
%struct.snic_tgt_priv = type { %struct.list_head, i32, i16, [16 x ptr], %union.anon.127 }
%union.anon.127 = type { i8 }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.vnic_snic_config = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.snic_fw_info = type { i32, i32, i32, i32, i32, i32, i32, i16, ptr }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.104, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.104 = type { %struct.atomic_t }
%struct.snic_req_info = type { %struct.list_head, ptr, i64, i16, i16, i32, i32, i8, [3 x i8], ptr, ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.snic_host_req = type { [2 x i64], %struct.snic_io_hdr, %union.anon.130, i32 }
%struct.snic_io_hdr = type { i32, i32, i32, i8, i8, i8, i8, i16, i16 }
%union.anon.130 = type { %struct.snic_icmnd, [8 x i8] }
%struct.snic_icmnd = type { i16, i16, i32, i64, i64, i8, i8, i16, i32, [32 x i8], i64, i64 }
%struct.snic_sg_desc = type { i64, i32, i32 }
%struct.snic_fw_req = type { %struct.snic_io_hdr, %union.anon.129 }
%union.anon.129 = type { %struct.snic_async_evnotify, [8 x i8] }
%struct.snic_async_evnotify = type { i8, i8, [2 x i8], i32, [24 x i8], [4 x i8] }
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }

@snic_tgt_state_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@snic_tgt_dev_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Target Device ID %d (%s) Permanently Deleted.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_tgt_dev_release\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/snic/snic_disc.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_tgt_dev_release._entry_ptr = internal global ptr @snic_tgt_dev_release._entry, section ".printk_index", align 4
@snic_tgt_dev_release._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_tgt_dev_release._entry_ptr.8 = internal global ptr @snic_tgt_dev_release._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!list_empty(&tgt->list)\00", [40 x i8] zeroinitializer }, align 32
@snic_tgt_dev_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_handle_tgt_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tgt_disc: Discovery restart.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_handle_tgt_disc\00", [43 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc._entry_ptr = internal global ptr @snic_handle_tgt_disc._entry, section ".printk_index", align 4
@snic_handle_tgt_disc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc._entry_ptr.13 = internal global ptr @snic_handle_tgt_disc._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"snic->disc.rtgt_cnt == 0 || tgtid == NULL\00", [54 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_handle_tgt_disc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.3, i32 378, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to create tgt.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc._entry_ptr.18 = internal global ptr @snic_handle_tgt_disc._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpt_tgt_rsp\00", [20 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.3, i32 388, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Discovery Completed.\0A\00", [42 x i8] zeroinitializer }, align 32
@snic_handle_tgt_disc._entry_ptr.22 = internal global ptr @snic_handle_tgt_disc._entry.20, section ".printk_index", align 4
@snic_report_tgt_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 411, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No Targets Found on this host.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snic_report_tgt_cmpl_handler\00", [35 x i8] zeroinitializer }, align 32
@snic_report_tgt_cmpl_handler._entry_ptr = internal global ptr @snic_report_tgt_cmpl_handler._entry, section ".printk_index", align 4
@snic_report_tgt_cmpl_handler._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Target Count = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snic_report_tgt_cmpl_handler._entry_ptr.27 = internal global ptr @snic_report_tgt_cmpl_handler._entry.25, section ".printk_index", align 4
@snic_report_tgt_cmpl_handler._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.24, ptr @.str.3, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_report_tgt_cmpl_handler._entry_ptr.29 = internal global ptr @snic_report_tgt_cmpl_handler._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tgt_cnt > snic->fwinfo.max_tgts\00", [32 x i8] zeroinitializer }, align 32
@snic_report_tgt_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_report_tgt_cmpl_handler._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.3, i32 425, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tgt id = 0x%x\0A\00", [17 x i8] zeroinitializer }, align 32
@snic_report_tgt_cmpl_handler._entry_ptr.33 = internal global ptr @snic_report_tgt_cmpl_handler._entry.31, section ".printk_index", align 4
@snic_glob = external dso_local local_unnamed_addr global ptr, align 4
@snic_disc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&disc->mutex\00", [19 x i8] zeroinitializer }, align 32
@snic_log_level = external dso_local local_unnamed_addr global i32, align 4
@snic_disc_term._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terminating Discovery.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snic_disc_term\00", [17 x i8] zeroinitializer }, align 32
@snic_disc_term._entry_ptr = internal global ptr @snic_disc_term._entry, section ".printk_index", align 4
@snic_disc_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Discovery Start.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snic_disc_start\00", [16 x i8] zeroinitializer }, align 32
@snic_disc_start._entry_ptr = internal global ptr @snic_disc_start._entry, section ".printk_index", align 4
@snic_disc_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013snic:snic driver removal in progress ...\0A\00", [52 x i8] zeroinitializer }, align 32
@snic_disc_start._entry_ptr.41 = internal global ptr @snic_disc_start._entry.39, section ".printk_index", align 4
@snic_disc_start._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Discovery Failed, err=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@snic_disc_start._entry_ptr.44 = internal global ptr @snic_disc_start._entry.42, section ".printk_index", align 4
@snic_handle_disc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"disc_work: Discovery\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_handle_disc\00", [47 x i8] zeroinitializer }, align 32
@snic_handle_disc._entry_ptr = internal global ptr @snic_handle_disc._entry, section ".printk_index", align 4
@snic_handle_disc._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 534, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"disc_work: Discovery Failed w/ err = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_handle_disc._entry_ptr.49 = internal global ptr @snic_handle_disc._entry.47, section ".printk_index", align 4
@snic_tgt_del_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tgt %d q'ing for del\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_tgt_del_all\00", [47 x i8] zeroinitializer }, align 32
@snic_tgt_del_all._entry_ptr = internal global ptr @snic_tgt_del_all._entry, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ONLINE\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DELETION IN PROGRESS\00", [43 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 263, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failure to allocate snic_tgt.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snic_tgt_create\00", [16 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr = internal global ptr @snic_tgt_create._entry, section ".printk_index", align 4
@snic_tgt_create._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.57, ptr @.str.3, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr.59 = internal global ptr @snic_tgt_create._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"le16_to_cpu(tgtid->tgt_type) > SNIC_TGT_SAN\00", [52 x i8] zeroinitializer }, align 32
@snic_tgt_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_tgt_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&tgt->scan_work)\00", [61 x i8] zeroinitializer }, align 32
@snic_tgt_create.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&tgt->del_work)\00", [62 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic_das_tgt:%d:%d-%d\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic_san_tgt:%d:%d-%d\00", [42 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.57, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Target type Unknown Detected.\0A\00", [33 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr.68 = internal global ptr @snic_tgt_create._entry.66, section ".printk_index", align 4
@snic_tgt_create._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.57, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Tgt %d, type = %s detected. Adding..\0A\00", [58 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr.71 = internal global ptr @snic_tgt_create._entry.69, section ".printk_index", align 4
@snic_tgt_create._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.57, ptr @.str.3, i32 318, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Snic Tgt: device_add, with err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr.74 = internal global ptr @snic_tgt_create._entry.72, section ".printk_index", align 4
@snic_tgt_create._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.57, ptr @.str.3, i32 327, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Scanning %s.\0A\00", [18 x i8] zeroinitializer }, align 32
@snic_tgt_create._entry_ptr.77 = internal global ptr @snic_tgt_create._entry.75, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snic_scsi_scan_tgt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scanning Target id 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snic_scsi_scan_tgt\00", [45 x i8] zeroinitializer }, align 32
@snic_scsi_scan_tgt._entry_ptr = internal global ptr @snic_scsi_scan_tgt._entry, section ".printk_index", align 4
@snic_tgt_type_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr null, ptr @.str.81, ptr @.str.82], [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAS\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAN\00", [28 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.83, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snic_queue_report_tgt_req\00", [38 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr = internal global ptr @snic_queue_report_tgt_req._entry, section ".printk_index", align 4
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ntgts == 0\00", [21 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_queue_report_tgt_req._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.3, i32 106, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Resp Buf Alloc Failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.87 = internal global ptr @snic_queue_report_tgt_req._entry.85, section ".printk_index", align 4
@snic_queue_report_tgt_req._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.83, ptr @.str.3, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.89 = internal global ptr @snic_queue_report_tgt_req._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(((unsigned long)buf) % SNIC_SG_DESC_ALIGN) != 0\00", [47 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.83, ptr @.str.3, i32 118, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Rpt-tgt rspbuf %p: PCI DMA Mapping Failed\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.94 = internal global ptr @snic_queue_report_tgt_req._entry.92, section ".printk_index", align 4
@snic_queue_report_tgt_req._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.83, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.96 = internal global ptr @snic_queue_report_tgt_req._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pa == 0\00", [24 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req.__already_done.98 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_queue_report_tgt_req._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.83, ptr @.str.3, i32 146, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Queuing Report Tgts Failed.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.101 = internal global ptr @snic_queue_report_tgt_req._entry.99, section ".printk_index", align 4
@snic_queue_report_tgt_req._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.83, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Report Targets Issued.\0A\00", [40 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.104 = internal global ptr @snic_queue_report_tgt_req._entry.102, section ".printk_index", align 4
@snic_queue_report_tgt_req._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.83, ptr @.str.3, i32 158, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Queuing Report Targets Failed, err = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_queue_report_tgt_req._entry_ptr.107 = internal global ptr @snic_queue_report_tgt_req._entry.105, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"snic_tgt_state_str\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 41, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 52, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 209, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 214, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 362, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 371, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 378, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 379, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 388, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 411, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 418, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 420, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 423, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 453, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 472, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 487, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 492, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 511, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 525, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 532, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 557, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 42, i32 25 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 43, i32 27 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 44, i32 28 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 45, i32 24 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 263, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 273, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 284, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 285, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 288, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 293, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 298, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 310, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 316, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 327, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 170, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [18 x i8] c"snic_tgt_type_str\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 29, i32 27 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 38, i32 29 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 30, i32 19 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 31, i32 19 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 100, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 106, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 112, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 116, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 127, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 146, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 151, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.403 = private constant [33 x i8] c"../drivers/scsi/snic/snic_disc.c\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 156, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.409, i32 326, i32 6 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @snic_disc_start._entry, ptr @snic_disc_start._entry.39, ptr @snic_disc_start._entry.42, ptr @snic_disc_start._entry_ptr, ptr @snic_disc_start._entry_ptr.41, ptr @snic_disc_start._entry_ptr.44, ptr @snic_disc_term._entry, ptr @snic_disc_term._entry_ptr, ptr @snic_handle_disc._entry, ptr @snic_handle_disc._entry.47, ptr @snic_handle_disc._entry_ptr, ptr @snic_handle_disc._entry_ptr.49, ptr @snic_handle_tgt_disc._entry, ptr @snic_handle_tgt_disc._entry.12, ptr @snic_handle_tgt_disc._entry.15, ptr @snic_handle_tgt_disc._entry.20, ptr @snic_handle_tgt_disc._entry_ptr, ptr @snic_handle_tgt_disc._entry_ptr.13, ptr @snic_handle_tgt_disc._entry_ptr.18, ptr @snic_handle_tgt_disc._entry_ptr.22, ptr @snic_queue_report_tgt_req._entry, ptr @snic_queue_report_tgt_req._entry.102, ptr @snic_queue_report_tgt_req._entry.105, ptr @snic_queue_report_tgt_req._entry.85, ptr @snic_queue_report_tgt_req._entry.88, ptr @snic_queue_report_tgt_req._entry.92, ptr @snic_queue_report_tgt_req._entry.95, ptr @snic_queue_report_tgt_req._entry.99, ptr @snic_queue_report_tgt_req._entry_ptr, ptr @snic_queue_report_tgt_req._entry_ptr.101, ptr @snic_queue_report_tgt_req._entry_ptr.104, ptr @snic_queue_report_tgt_req._entry_ptr.107, ptr @snic_queue_report_tgt_req._entry_ptr.87, ptr @snic_queue_report_tgt_req._entry_ptr.89, ptr @snic_queue_report_tgt_req._entry_ptr.94, ptr @snic_queue_report_tgt_req._entry_ptr.96, ptr @snic_report_tgt_cmpl_handler._entry, ptr @snic_report_tgt_cmpl_handler._entry.25, ptr @snic_report_tgt_cmpl_handler._entry.28, ptr @snic_report_tgt_cmpl_handler._entry.31, ptr @snic_report_tgt_cmpl_handler._entry_ptr, ptr @snic_report_tgt_cmpl_handler._entry_ptr.27, ptr @snic_report_tgt_cmpl_handler._entry_ptr.29, ptr @snic_report_tgt_cmpl_handler._entry_ptr.33, ptr @snic_scsi_scan_tgt._entry, ptr @snic_scsi_scan_tgt._entry_ptr, ptr @snic_tgt_create._entry, ptr @snic_tgt_create._entry.58, ptr @snic_tgt_create._entry.66, ptr @snic_tgt_create._entry.69, ptr @snic_tgt_create._entry.72, ptr @snic_tgt_create._entry.75, ptr @snic_tgt_create._entry_ptr, ptr @snic_tgt_create._entry_ptr.59, ptr @snic_tgt_create._entry_ptr.68, ptr @snic_tgt_create._entry_ptr.71, ptr @snic_tgt_create._entry_ptr.74, ptr @snic_tgt_create._entry_ptr.77, ptr @snic_tgt_del_all._entry, ptr @snic_tgt_del_all._entry_ptr, ptr @snic_tgt_dev_release._entry, ptr @snic_tgt_dev_release._entry.6, ptr @snic_tgt_dev_release._entry_ptr, ptr @snic_tgt_dev_release._entry_ptr.8, ptr @snic_tgt_state_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.30, ptr @.str.32, ptr @snic_disc_init.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @snic_tgt_create.__key, ptr @.str.61, ptr @snic_tgt_create.__key.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @snic_tgt_type_str, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.90, ptr @.str.93, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109], section "llvm.metadata"
@0 = internal global [100 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_state_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_dev_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_dev_release._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_tgt_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_tgt_disc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_tgt_disc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_tgt_disc._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_report_tgt_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_report_tgt_cmpl_handler._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_report_tgt_cmpl_handler._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_report_tgt_cmpl_handler._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_disc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_disc_term._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_disc_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_disc_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_disc_start._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_disc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_handle_disc._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_del_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_create._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_scsi_scan_tgt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_type_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_report_tgt_req._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @snic_tgt_state_to_str(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %state, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %1 = icmp ult i32 %0, 4
  br i1 %1, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [5 x ptr], ptr @snic_tgt_state_str, i32 0, i32 %state
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ @.str, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_tgt_dev_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -24
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 49
  %id = getelementptr i8, ptr %dev, i32 -16
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id, align 8
  %conv = zext i16 %5 to i32
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i63 = icmp eq ptr %7, null
  br i1 %tobool.not.i63, label %if.end.i, label %dev_to_shost.exit.dev_name.exit_crit_edge

dev_to_shost.exit.dev_name.exit_crit_edge:        ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %dev_to_shost.exit.dev_name.exit_crit_edge
  %retval.0.i64 = phi ptr [ %9, %if.end.i ], [ %7, %dev_to_shost.exit.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.1, i32 noundef %conv, ptr noundef %retval.0.i64) #10
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %11, %add.ptr
  br i1 %cmp.i.not, label %dev_name.exit.if.end54_crit_edge, label %do.end6

dev_name.exit.if.end54_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end6:                                          ; preds = %dev_name.exit
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 214) #10
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i65.not = icmp eq ptr %13, %add.ptr
  br i1 %cmp.i65.not, label %do.end6.if.end54_crit_edge, label %land.rhs

do.end6.if.end54_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.rhs:                                         ; preds = %do.end6
  %.b62 = load i1, ptr @snic_tgt_dev_release.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end54_crit_edge, label %if.then21, !prof !198

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_tgt_dev_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 214, i32 noundef 9, ptr noundef null) #7
  br label %if.end54

if.end54:                                         ; preds = %if.then21, %land.rhs.if.end54_crit_edge, %do.end6.if.end54_crit_edge, %dev_name.exit.if.end54_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_handle_tgt_disc(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3500
  %snic_lock = getelementptr i8, ptr %work, i32 -3472
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #7
  %in_remove = getelementptr i8, ptr %work, i32 -3424
  %0 = ptrtoint ptr %in_remove to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_remove, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call3) #7
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rtgt_info = getelementptr i8, ptr %work, i32 -3304
  %2 = ptrtoint ptr %rtgt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtgt_info, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 -3408
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %req_cnt = getelementptr i8, ptr %work, i32 -3314
  %4 = ptrtoint ptr %req_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not = icmp eq i8 %5, 0
  br i1 %tobool10.not, label %if.end25, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr i8, ptr %work, i32 -3412
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %state, align 8
  %7 = ptrtoint ptr %req_cnt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %req_cnt, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %rtgt_info18 = getelementptr i8, ptr %work, i32 -3304
  %8 = ptrtoint ptr %rtgt_info18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rtgt_info18, align 4
  tail call void @kfree(ptr noundef %9) #7
  %10 = ptrtoint ptr %rtgt_info18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rtgt_info18, align 4
  %shost = getelementptr i8, ptr %work, i32 -3196
  %11 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.10) #10
  %call24 = tail call i32 @snic_disc_start(ptr noundef %add.ptr)
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %rtgt_info27 = getelementptr i8, ptr %work, i32 -3304
  %13 = ptrtoint ptr %rtgt_info27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rtgt_info27, align 4
  %rtgt_cnt = getelementptr i8, ptr %work, i32 -3308
  %15 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rtgt_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp29 = icmp eq i32 %16, 0
  %cmp31 = icmp eq ptr %14, null
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31
  br i1 %or.cond, label %do.end36, label %if.end25.for.body.lr.ph_crit_edge

if.end25.for.body.lr.ph_crit_edge:                ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

do.end36:                                         ; preds = %if.end25
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef 371) #10
  %17 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rtgt_cnt, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp41 = icmp eq i32 %18, 0
  %spec.select = select i1 %cmp41, i1 true, i1 %cmp31
  br i1 %spec.select, label %land.rhs, label %do.end36.for.body.lr.ph_crit_edge

do.end36.for.body.lr.ph_crit_edge:                ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

land.rhs:                                         ; preds = %do.end36
  %.b151 = load i1, ptr @snic_handle_tgt_disc.__already_done, align 1
  br i1 %.b151, label %land.rhs.if.end87_crit_edge, label %if.then53, !prof !198

land.rhs.if.end87_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then53:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_handle_tgt_disc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 371, i32 noundef 9, ptr noundef null) #7
  %19 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %rtgt_cnt, align 16
  br label %if.end87

if.end87:                                         ; preds = %if.then53, %land.rhs.if.end87_crit_edge
  %20 = phi i32 [ %18, %land.rhs.if.end87_crit_edge ], [ %.pr, %if.then53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp90156.not = icmp eq i32 %20, 0
  br i1 %cmp90156.not, label %if.end87.for.end_crit_edge, label %if.end87.for.body.lr.ph_crit_edge

if.end87.for.body.lr.ph_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end87.for.body.lr.ph_crit_edge, %do.end36.for.body.lr.ph_crit_edge, %if.end25.for.body.lr.ph_crit_edge
  %disc.i.i = getelementptr i8, ptr %work, i32 -3420
  %shost62.i = getelementptr i8, ptr %work, i32 -3196
  %prev.i238.i = getelementptr i8, ptr %work, i32 -3416
  %nxt_tgt_id.i = getelementptr i8, ptr %work, i32 -3312
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.snic_tgt_id, ptr %14, i32 %i.0157
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body
  %cur.0.in.i.i = phi ptr [ %disc.i.i, %for.body ], [ %cur.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %21 = ptrtoint ptr %cur.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cur.0.i.i = load ptr, ptr %cur.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %cur.0.i.i, %disc.i.i
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.if.end.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id.i.i = getelementptr inbounds %struct.snic_tgt, ptr %cur.0.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id.i.i, align 8
  %conv.i.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %cmp.i.i = icmp eq i32 %26, %conv.i.i
  br i1 %cmp.i.i, label %snic_tgt_lookup.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i.i

snic_tgt_lookup.exit.i:                           ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %cur.0.i.i, null
  br i1 %tobool.not.i, label %snic_tgt_lookup.exit.i.if.end.i_crit_edge, label %snic_tgt_lookup.exit.i.for.inc_crit_edge

snic_tgt_lookup.exit.i.for.inc_crit_edge:         ; preds = %snic_tgt_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

snic_tgt_lookup.exit.i.if.end.i_crit_edge:        ; preds = %snic_tgt_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %snic_tgt_lookup.exit.i.if.end.i_crit_edge, %for.cond.i.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 1128) #11
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %shost62.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %29, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.56) #10
  br label %if.then94

if.end4.i:                                        ; preds = %if.end.i
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %conv.i = trunc i32 %34 to i16
  %id.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %id.i, align 8
  %channel.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %channel.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %channel.i, align 2
  %tgt_type.i = getelementptr %struct.snic_tgt_id, ptr %14, i32 %i.0157, i32 1
  %37 = ptrtoint ptr %tgt_type.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tgt_type.i, align 4
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp.i = icmp ugt i16 %39, 2
  br i1 %cmp.i, label %do.end10.i, label %if.end4.i.if.end58.i_crit_edge

if.end4.i.if.end58.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

do.end10.i:                                       ; preds = %if.end4.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.57, i32 noundef 273) #10
  %40 = ptrtoint ptr %tgt_type.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tgt_type.i, align 4
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %42)
  %cmp14.i = icmp ugt i16 %42, 2
  br i1 %cmp14.i, label %land.rhs.i, label %do.end10.i.if.end58.i_crit_edge

do.end10.i.if.end58.i_crit_edge:                  ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

land.rhs.i:                                       ; preds = %do.end10.i
  %.b235.i = load i1, ptr @snic_tgt_create.__already_done, align 1
  br i1 %.b235.i, label %land.rhs.i.if.end58.i_crit_edge, label %if.then24.i, !prof !198

land.rhs.i.if.end58.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

if.then24.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_tgt_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 273, i32 noundef 9, ptr noundef null) #7
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then24.i, %land.rhs.i.if.end58.i_crit_edge, %do.end10.i.if.end58.i_crit_edge, %if.end4.i.if.end58.i_crit_edge
  %43 = ptrtoint ptr %tgt_type.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tgt_type.i, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #7
  %conv60.i = zext i16 %45 to i32
  %typ.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 9, i32 1
  %46 = ptrtoint ptr %typ.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv60.i, ptr %typ.i, align 8
  %disc_id.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 9, i32 2
  %47 = ptrtoint ptr %disc_id.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %disc_id.i, align 4
  %state.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %state.i, align 4
  %dev.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @device_initialize(ptr noundef %dev.i) #7
  %49 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shost62.i, align 16
  %shost_gendev63.i = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 49
  %call64.i = tail call ptr @get_device(ptr noundef %shost_gendev63.i) #7
  %parent.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call64.i, ptr %parent.i, align 8
  %release.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 6, i32 35
  %52 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @snic_tgt_dev_release, ptr %release.i, align 4
  %scan_work.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %scan_work.i, i32 noundef 0) #7
  %53 = ptrtoint ptr %scan_work.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -64, ptr %scan_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @snic_tgt_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry71.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %entry71.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %entry71.i, ptr %entry71.i, align 4
  %prev.i236.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 7, i32 1, i32 1
  %55 = ptrtoint ptr %prev.i236.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %entry71.i, ptr %prev.i236.i, align 8
  %func.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %56 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @snic_scsi_scan_tgt, ptr %func.i, align 4
  %del_work.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %del_work.i, i32 noundef 0) #7
  %57 = ptrtoint ptr %del_work.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %del_work.i, align 4
  %lockdep_map81.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map81.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @snic_tgt_create.__key.62, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry83.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %58 = ptrtoint ptr %entry83.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry83.i, ptr %entry83.i, align 8
  %prev.i237.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 8, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i237.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry83.i, ptr %prev.i237.i, align 4
  %func85.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %60 = ptrtoint ptr %func85.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @snic_tgt_del, ptr %func85.i, align 8
  %61 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %typ.i, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %do.end108.i [
    i32 1, label %if.end58.i.do.body120.i_crit_edge
    i32 2, label %sw.bb97.i
  ]

if.end58.i.do.body120.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body120.i

sw.bb97.i:                                        ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body120.i

do.end108.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost62.i, align 16
  %shost_gendev110.i = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev110.i, ptr noundef nonnull @.str.67) #10
  br label %do.body120.i

do.body120.i:                                     ; preds = %do.end108.i, %sw.bb97.i, %if.end58.i.do.body120.i_crit_edge
  %.str.64.sink.i = phi ptr [ @.str.64, %do.end108.i ], [ @.str.65, %sw.bb97.i ], [ @.str.64, %if.end58.i.do.body120.i_crit_edge ]
  %66 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shost62.i, align 16
  %host_no113.i = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 17
  %68 = ptrtoint ptr %host_no113.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %host_no113.i, align 4
  %70 = ptrtoint ptr %channel.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %channel.i, align 2
  %conv115.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %id.i, align 8
  %conv117.i = zext i16 %73 to i32
  %call118.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull %.str.64.sink.i, i32 noundef %69, i32 noundef %conv115.i, i32 noundef %conv117.i) #7
  %74 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost62.i, align 16
  %host_lock.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %host_lock.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %host_lock.i, align 4
  %call126.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %77) #7
  %78 = ptrtoint ptr %prev.i238.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i238.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %79, ptr noundef %disc.i.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body120.i.list_add_tail.exit.i_crit_edge

do.body120.i.list_add_tail.exit.i_crit_edge:      ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %prev.i238.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i.i.i, ptr %prev.i238.i, align 4
  %81 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %disc.i.i, ptr %call7.i.i.i, align 8
  %82 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev.i.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %call7.i.i.i, ptr %79, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.body120.i.list_add_tail.exit.i_crit_edge
  %84 = ptrtoint ptr %nxt_tgt_id.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nxt_tgt_id.i, align 4
  %inc.i = add i32 %85, 1
  store i32 %inc.i, ptr %nxt_tgt_id.i, align 4
  %scsi_tgt_id.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %scsi_tgt_id.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %scsi_tgt_id.i, align 8
  %87 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %state.i, align 4
  %88 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %shost62.i, align 16
  %host_lock135.i = getelementptr inbounds %struct.Scsi_Host, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %host_lock135.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %host_lock135.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %91, i32 noundef %call126.i) #7
  %92 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %shost62.i, align 16
  %shost_gendev140.i = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 49
  %94 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %id.i, align 8
  %conv142.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %typ.i, align 8
  %98 = add i32 %97, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %cond.true.i.i, label %list_add_tail.exit.i.snic_tgt_type_to_str.exit.i_crit_edge

list_add_tail.exit.i.snic_tgt_type_to_str.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_tgt_type_to_str.exit.i

cond.true.i.i:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [3 x ptr], ptr @snic_tgt_type_str, i32 0, i32 %97
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i, align 4
  br label %snic_tgt_type_to_str.exit.i

snic_tgt_type_to_str.exit.i:                      ; preds = %cond.true.i.i, %list_add_tail.exit.i.snic_tgt_type_to_str.exit.i_crit_edge
  %cond.i.i = phi ptr [ %101, %cond.true.i.i ], [ @.str.80, %list_add_tail.exit.i.snic_tgt_type_to_str.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev140.i, ptr noundef nonnull @.str.70, i32 noundef %conv142.i, ptr noundef %cond.i.i) #10
  %call147.i = tail call i32 @device_add(ptr noundef %dev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  %102 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %shost62.i, align 16
  %shost_gendev162.i = getelementptr inbounds %struct.Scsi_Host, ptr %103, i32 0, i32 49
  br i1 %tobool148.not.i, label %do.end160.i, label %do.end152.i

do.end152.i:                                      ; preds = %snic_tgt_type_to_str.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev162.i, ptr noundef nonnull @.str.73, i32 noundef %call147.i) #10
  %104 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shost62.i, align 16
  %shost_gendev156.i = getelementptr inbounds %struct.Scsi_Host, ptr %105, i32 0, i32 49
  tail call void @put_device(ptr noundef %shost_gendev156.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %if.then94

do.end160.i:                                      ; preds = %snic_tgt_type_to_str.exit.i
  %init_name.i.i = getelementptr inbounds %struct.snic_tgt, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %106 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end160.i.dev_name.exit.i_crit_edge

do.end160.i.dev_name.exit.i_crit_edge:            ; preds = %do.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end160.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i, align 8
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end160.i.dev_name.exit.i_crit_edge
  %retval.0.i239.i = phi ptr [ %109, %if.end.i.i ], [ %107, %do.end160.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev162.i, ptr noundef nonnull @.str.76, ptr noundef %retval.0.i239.i) #10
  %110 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %shost62.i, align 16
  %call167.i = tail call i32 @scsi_queue_work(ptr noundef %111, ptr noundef %scan_work.i) #7
  br label %for.inc

if.then94:                                        ; preds = %do.end152.i, %do.end.i
  %112 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rtgt_cnt, align 16
  %mul = shl i32 %113, 3
  %114 = ptrtoint ptr %shost62.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %shost62.i, align 16
  %shost_gendev101 = getelementptr inbounds %struct.Scsi_Host, ptr %115, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev101, ptr noundef nonnull @.str.16) #10
  tail call void @snic_hex_dump(ptr noundef nonnull @.str.19, ptr noundef %14, i32 noundef %mul) #7
  br label %for.end

for.inc:                                          ; preds = %dev_name.exit.i, %snic_tgt_lookup.exit.i.for.inc_crit_edge
  %inc = add nuw i32 %i.0157, 1
  %116 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rtgt_cnt, align 16
  %cmp90 = icmp ult i32 %inc, %117
  br i1 %cmp90, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then94, %if.end87.for.end_crit_edge
  %118 = ptrtoint ptr %rtgt_info27 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rtgt_info27, align 4
  %state106 = getelementptr i8, ptr %work, i32 -3412
  %119 = ptrtoint ptr %state106 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 3, ptr %state106, align 8
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %shost112 = getelementptr i8, ptr %work, i32 -3196
  %120 = ptrtoint ptr %shost112 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shost112, align 16
  %shost_gendev113 = getelementptr inbounds %struct.Scsi_Host, ptr %121, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev113, ptr noundef nonnull @.str.21) #10
  tail call void @kfree(ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_disc_start(ptr noundef %snic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %0 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body11_crit_edge, label %do.end, !prof !198

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %1 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.37) #10
  br label %do.body11

do.body11:                                        ; preds = %do.end, %entry.do.body11_crit_edge
  %snic_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #7
  %in_remove = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 5
  %3 = ptrtoint ptr %in_remove to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_remove, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool17.not = icmp eq i8 %4, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call12) #7
  br i1 %tobool17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end25:                                         ; preds = %do.body11
  %mutex = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp27 = icmp eq i32 %6, 2
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %req_cnt = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 4
  %7 = ptrtoint ptr %req_cnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %req_cnt, align 2
  %inc = add i8 %8, 1
  store i8 %inc, ptr %req_cnt, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %call.i = tail call ptr @snic_req_init(ptr noundef %snic, i32 noundef 1) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end31.do.end39_crit_edge, label %if.end.i

if.end31.do.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.end.i:                                         ; preds = %if.end31
  %max_tgts.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 6
  %10 = ptrtoint ptr %max_tgts.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_tgts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp ne i32 %11, 0
  %shost5.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %12 = ptrtoint ptr %shost5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shost5.i, align 16
  %max_id6.i = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %max_id6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_id6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.i = icmp ult i32 %11, %15
  %or.cond.i = select i1 %tobool1.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.end.i.if.end54.i_crit_edge, label %if.end7.i

if.end.i.if.end54.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp eq i32 %15, 0
  br i1 %cmp8.i, label %do.end.i, label %if.end7.i.if.end54.i_crit_edge

if.end7.i.if.end54.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

do.end.i:                                         ; preds = %if.end7.i
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 100) #10
  %.b304.i = load i1, ptr @snic_queue_report_tgt_req.__already_done, align 1
  br i1 %.b304.i, label %do.end.i.if.end54.i_crit_edge, label %if.then20.i, !prof !198

do.end.i.if.end54.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then20.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_queue_report_tgt_req.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then20.i, %do.end.i.if.end54.i_crit_edge, %if.end7.i.if.end54.i_crit_edge, %if.end.i.if.end54.i_crit_edge
  %ntgts.0309.i = phi i32 [ 0, %do.end.i.if.end54.i_crit_edge ], [ 0, %if.then20.i ], [ %15, %if.end7.i.if.end54.i_crit_edge ], [ %11, %if.end.i.if.end54.i_crit_edge ]
  %mul.i = shl i32 %ntgts.0309.i, 3
  %add.i = add i32 %mul.i, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #12
  %tobool56.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end62.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snic_req_free(ptr noundef %snic, ptr noundef nonnull %call.i) #7
  %16 = ptrtoint ptr %shost5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shost5.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %17, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.86) #10
  br label %do.end39

if.end62.i:                                       ; preds = %if.end54.i
  %18 = ptrtoint ptr %call9.i.i.i to i32
  %pdev.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end62.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !198

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i305.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i305.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i305.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i305.i ], [ %22, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.108, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.109, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  %dev128315.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev128315.i, i32 noundef -1) #7
  br label %do.end134.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end62.i
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %sub.i.i = add i32 %18, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %18, 3968
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 8
  %dev128.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev128.i, i32 noundef %call41.i.i) #7
  %30 = zext i32 %call41.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call41.i.i, label %dma_map_single_attrs.exit.i.if.end199.i_crit_edge [
    i32 -1, label %dma_map_single_attrs.exit.i.do.end134.i_crit_edge
    i32 0, label %do.end142.i
  ]

dma_map_single_attrs.exit.i.do.end134.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end134.i

dma_map_single_attrs.exit.i.if.end199.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199.i

do.end134.i:                                      ; preds = %dma_map_single_attrs.exit.i.do.end134.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %31 = ptrtoint ptr %shost5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shost5.i, align 16
  %shost_gendev136.i = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev136.i, ptr noundef nonnull @.str.93, ptr noundef nonnull %call9.i.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  tail call void @snic_req_free(ptr noundef %snic, ptr noundef nonnull %call.i) #7
  br label %do.end39

do.end142.i:                                      ; preds = %dma_map_single_attrs.exit.i
  %call144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.83, i32 noundef 127) #10
  %.b301302.i = load i1, ptr @snic_queue_report_tgt_req.__already_done.98, align 1
  br i1 %.b301302.i, label %do.end142.i.if.end199.i_crit_edge, label %if.then164.i, !prof !198

do.end142.i.if.end199.i_crit_edge:                ; preds = %do.end142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end199.i

if.then164.i:                                     ; preds = %do.end142.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_queue_report_tgt_req.__already_done.98, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 127, i32 noundef 9, ptr noundef null) #7
  br label %if.end199.i

if.end199.i:                                      ; preds = %if.then164.i, %do.end142.i.if.end199.i_crit_edge, %dma_map_single_attrs.exit.i.if.end199.i_crit_edge
  %sge_va.i = getelementptr inbounds %struct.snic_req_info, ptr %call.i, i32 0, i32 11
  %33 = ptrtoint ptr %sge_va.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %18, ptr %sge_va.i, align 8
  %req.i = getelementptr inbounds %struct.snic_req_info, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req.i, align 8
  %hid.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 11
  %36 = ptrtoint ptr %hid.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hid.i, align 1
  %conv.i = zext i8 %37 to i32
  %38 = ptrtoint ptr %call.i to i32
  %hdr.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1
  %type.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %type.i.i.i, align 4
  %status1.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %status1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %status1.i.i.i, align 1
  %protocol.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 5
  %41 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %protocol.i.i.i, align 2
  %42 = shl nuw i32 %conv.i, 24
  %43 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %hdr.i.i, align 4
  %cmnd_id.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %cmnd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %cmnd_id.i.i.i, align 4
  %sg_cnt3.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 7
  %45 = ptrtoint ptr %sg_cnt3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 256, ptr %sg_cnt3.i.i.i, align 4
  %init_ctx.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %init_ctx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %38, ptr %init_ctx.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 1, i32 6
  %47 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %flags.i.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 2
  %48 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 256, ptr %u.i.i, align 8
  %add.ptr.i306.i = getelementptr %struct.snic_host_req, ptr %35, i32 1
  %conv.i.i = zext i32 %call41.i.i to i64
  %49 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i) #7
  %50 = ptrtoint ptr %add.ptr.i306.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %add.ptr.i306.i, align 8
  %51 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %len2.i.i = getelementptr %struct.snic_host_req, ptr %35, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %len2.i.i, align 8
  %_resvd.i.i = getelementptr inbounds %struct.snic_sg_desc, ptr %add.ptr.i306.i, i32 0, i32 2
  %53 = ptrtoint ptr %_resvd.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %_resvd.i.i, align 4
  %54 = ptrtoint ptr %add.ptr.i306.i to i32
  %conv4.i.i = zext i32 %54 to i64
  %55 = tail call i64 @llvm.bswap.i64(i64 %conv4.i.i) #7
  %sg_addr.i.i = getelementptr inbounds %struct.snic_host_req, ptr %35, i32 0, i32 2, i32 0, i32 3
  %56 = ptrtoint ptr %sg_addr.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %sg_addr.i.i, align 8
  tail call void @snic_handle_untagged_req(ptr noundef %snic, ptr noundef nonnull %call.i) #7
  %57 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %req.i, align 8
  %req_len.i = getelementptr inbounds %struct.snic_req_info, ptr %call.i, i32 0, i32 4
  %59 = ptrtoint ptr %req_len.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %req_len.i, align 2
  %call201.i = tail call i32 @snic_queue_wq_desc(ptr noundef %snic, ptr noundef %58, i16 noundef zeroext %60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201.i)
  %tobool202.not.i = icmp eq i32 %call201.i, 0
  br i1 %tobool202.not.i, label %do.body213.i, label %if.then203.i

if.then203.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev.i, align 8
  %dev205.i = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev205.i, i32 noundef %call41.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  %63 = ptrtoint ptr %sge_va.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sge_va.i, align 8
  tail call void @snic_release_untagged_req(ptr noundef %snic, ptr noundef nonnull %call.i) #7
  %64 = ptrtoint ptr %shost5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %shost5.i, align 16
  %shost_gendev211.i = getelementptr inbounds %struct.Scsi_Host, ptr %65, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev211.i, ptr noundef nonnull @.str.100) #10
  br label %do.end39

do.body213.i:                                     ; preds = %if.end199.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %66 = load i32, ptr @snic_log_level, align 4
  %and.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool214.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool214.not.i, label %do.body213.i.cleanup_crit_edge, label %do.end225.i, !prof !198

do.body213.i.cleanup_crit_edge:                   ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end225.i:                                      ; preds = %do.body213.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %shost5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %shost5.i, align 16
  %shost_gendev227.i = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev227.i, ptr noundef nonnull @.str.103) #10
  br label %cleanup

do.end39:                                         ; preds = %if.then203.i, %do.end134.i, %if.then57.i, %if.end31.do.end39_crit_edge
  %ret.0.i = phi i32 [ -22, %do.end134.i ], [ %call201.i, %if.then203.i ], [ -12, %if.then57.i ], [ -12, %if.end31.do.end39_crit_edge ]
  %shost236.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %69 = ptrtoint ptr %shost236.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %shost236.i, align 16
  %shost_gendev237.i = getelementptr inbounds %struct.Scsi_Host, ptr %70, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev237.i, ptr noundef nonnull @.str.106, i32 noundef %ret.0.i) #10
  %71 = ptrtoint ptr %shost236.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %shost236.i, align 16
  %shost_gendev41 = getelementptr inbounds %struct.Scsi_Host, ptr %72, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev41, ptr noundef nonnull @.str.43, i32 noundef %ret.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %do.end225.i, %do.body213.i.cleanup_crit_edge, %if.then29, %if.then18
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %if.then29 ], [ %ret.0.i, %do.end39 ], [ 0, %do.end225.i ], [ 0, %do.body213.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_hex_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_report_tgt_cmpl_handler(ptr noundef %snic, ptr nocapture noundef readonly %fwreq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_ctx.i = getelementptr inbounds %struct.snic_io_hdr, ptr %fwreq, i32 0, i32 2
  %0 = ptrtoint ptr %init_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_ctx.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %sge_va = getelementptr inbounds %struct.snic_req_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sge_va, align 8
  %5 = inttoptr i32 %4 to ptr
  %u = getelementptr inbounds %struct.snic_fw_req, ptr %fwreq, i32 0, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %9 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 49
  br i1 %cmp, label %if.then65, label %do.end4

do.end4:                                          ; preds = %entry
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.26, i32 noundef %8) #10
  %max_tgts = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 31, i32 6
  %11 = ptrtoint ptr %max_tgts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_tgts, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp7 = icmp ugt i32 %8, %12
  br i1 %cmp7, label %do.end11, label %do.end4.do.end59.preheader_crit_edge

do.end4.do.end59.preheader_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.preheader

do.end11:                                         ; preds = %do.end4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24, i32 noundef 420) #10
  %13 = ptrtoint ptr %max_tgts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_tgts, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %14)
  %cmp14 = icmp ugt i32 %8, %14
  br i1 %cmp14, label %land.rhs, label %do.end11.do.end59.preheader_crit_edge

do.end11.do.end59.preheader_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.preheader

land.rhs:                                         ; preds = %do.end11
  %.b93 = load i1, ptr @snic_report_tgt_cmpl_handler.__already_done, align 1
  br i1 %.b93, label %land.rhs.do.end59.preheader_crit_edge, label %if.then21, !prof !198

land.rhs.do.end59.preheader_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.preheader

if.then21:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_report_tgt_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 420, i32 noundef 9, ptr noundef null) #7
  br label %do.end59.preheader

do.end59.preheader:                               ; preds = %if.then21, %land.rhs.do.end59.preheader_crit_edge, %do.end11.do.end59.preheader_crit_edge, %do.end4.do.end59.preheader_crit_edge
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %do.end59

do.end59:                                         ; preds = %do.end59.do.end59_crit_edge, %do.end59.preheader
  %i.098 = phi i32 [ %inc, %do.end59.do.end59_crit_edge ], [ 0, %do.end59.preheader ]
  %15 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %shost, align 16
  %shost_gendev61 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 49
  %arrayidx = getelementptr %struct.snic_tgt_id, ptr %5, i32 %i.098
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev61, ptr noundef nonnull @.str.32, i32 noundef %19) #10
  %inc = add nuw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %end, label %do.end59.do.end59_crit_edge

do.end59.do.end59_crit_edge:                      ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

end:                                              ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %rtgt_cnt = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %8, ptr %rtgt_cnt, align 16
  %rtgt_info = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 7
  %21 = ptrtoint ptr %rtgt_info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %rtgt_info, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %22 = load ptr, ptr @snic_glob, align 4
  %event_q = getelementptr inbounds %struct.snic_global, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %event_q, align 64
  %tgt_work = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 32
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %tgt_work) #7
  tail call void @snic_pci_unmap_rsp_buf(ptr noundef %snic, ptr noundef %2) #7
  br label %if.end66

if.then65:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev, ptr noundef nonnull @.str.23) #10
  tail call void @snic_pci_unmap_rsp_buf(ptr noundef %snic, ptr noundef %2) #7
  tail call void @kfree(ptr noundef %5) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %end
  %ret.095 = phi i32 [ 1, %if.then65 ], [ 0, %end ]
  %25 = ptrtoint ptr %sge_va to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %sge_va, align 8
  tail call void @snic_release_untagged_req(ptr noundef %snic, ptr noundef %2) #7
  ret i32 %ret.095
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_pci_unmap_rsp_buf(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_release_untagged_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_disc_init(ptr noundef %disc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %disc to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %disc, ptr %disc, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %disc, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %disc, ptr %prev.i, align 4
  %mutex = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.34, ptr noundef nonnull @snic_disc_init.__key) #7
  %disc_id = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 3
  %2 = ptrtoint ptr %disc_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %disc_id, align 4
  %nxt_tgt_id = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 5
  %3 = ptrtoint ptr %nxt_tgt_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nxt_tgt_id, align 4
  %state = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %state, align 4
  %req_cnt = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 4
  %5 = ptrtoint ptr %req_cnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %req_cnt, align 2
  %rtgt_cnt = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 6
  %6 = ptrtoint ptr %rtgt_cnt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rtgt_cnt, align 4
  %rtgt_info = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 7
  %7 = ptrtoint ptr %rtgt_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rtgt_info, align 4
  %cb = getelementptr inbounds %struct.snic_disc, ptr %disc, i32 0, i32 9
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cb, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_disc_term(ptr noundef %snic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %req_cnt = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %req_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %req_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %req_cnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %req_cnt, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %3 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.if.end13_crit_edge, label %do.end, !prof !198

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.35) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_handle_disc(ptr noundef %work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -3544
  %shost = getelementptr i8, ptr %work, i32 -3240
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.45) #10
  %call = tail call i32 @snic_disc_start(ptr noundef %add.ptr)
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %shost_gendev5 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.17, ptr noundef %shost_gendev5, ptr noundef nonnull @.str.48, i32 noundef %call) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_tgt_del_all(ptr noundef %snic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  tail call void @scsi_flush_work(ptr noundef %1) #7
  %disc = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7
  %mutex = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 7, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #7
  %6 = ptrtoint ptr %disc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disc, align 16
  %cmp.i.not38 = icmp eq ptr %7, %disc
  br i1 %cmp.i.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %cur.039 = phi ptr [ %nxt.041, %list_del_init.exit.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %8 = ptrtoint ptr %cur.039 to i32
  call void @__asan_load4_noabort(i32 %8)
  %nxt.041 = load ptr, ptr %cur.039, align 4
  %state = getelementptr inbounds %struct.snic_tgt, ptr %cur.039, i32 0, i32 5
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %state, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.039) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.039, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %cur.039 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.039, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %cur.039 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cur.039, ptr %cur.039, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cur.039, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cur.039, ptr %prev.i3.i, align 4
  %18 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %19, i32 0, i32 49
  %id = getelementptr inbounds %struct.snic_tgt, ptr %cur.039, i32 0, i32 1
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %id, align 8
  %conv16 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.50, i32 noundef %conv16) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %22 = load ptr, ptr @snic_glob, align 4
  %event_q = getelementptr inbounds %struct.snic_global, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %event_q to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %event_q, align 64
  %del_work = getelementptr inbounds %struct.snic_tgt, ptr %cur.039, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %del_work) #7
  %cmp.i.not = icmp eq ptr %nxt.041, %disc
  br i1 %cmp.i.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shost, align 16
  %host_lock20 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %host_lock20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %host_lock20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %call3) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %29 = load ptr, ptr @snic_glob, align 4
  %event_q23 = getelementptr inbounds %struct.snic_global, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %event_q23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %event_q23, align 64
  tail call void @flush_workqueue(ptr noundef %31) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snic_scsi_scan_tgt(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -928
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %dev, %entry ], [ %1, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 49
  %id = getelementptr i8, ptr %work, i32 -944
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %id, align 8
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %shost_gendev, ptr noundef nonnull @.str.78, i32 noundef %conv) #10
  %channel = getelementptr i8, ptr %work, i32 -942
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %channel, align 2
  %conv2 = zext i16 %5 to i32
  %scsi_tgt_id = getelementptr i8, ptr %work, i32 -936
  %6 = ptrtoint ptr %scsi_tgt_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scsi_tgt_id, align 8
  tail call void @scsi_scan_target(ptr noundef %dev, i32 noundef %conv2, i32 noundef %7, i64 noundef -1, i32 noundef 1) #7
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host_lock, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #7
  %flags13 = getelementptr i8, ptr %work, i32 -940
  %10 = ptrtoint ptr %flags13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags13, align 4
  %and = and i32 %11, -2
  store i32 %and, ptr %flags13, align 4
  %12 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %call8) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snic_tgt_del(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %work, i32 -836
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %dev.addr.0.i = phi ptr [ %1, %entry ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %flags = getelementptr i8, ptr %work, i32 -984
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %dev_to_shost.exit.if.end_crit_edge, label %if.then

dev_to_shost.exit.if.end_crit_edge:               ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scsi_flush_work(ptr noundef %retval.0.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_to_shost.exit.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -996
  %dev = getelementptr i8, ptr %work, i32 -972
  tail call void @scsi_target_block(ptr noundef %dev) #7
  %call2 = tail call i32 @snic_tgt_scsi_abort_io(ptr noundef %add.ptr) #7
  tail call void @scsi_target_unblock(ptr noundef %dev, i32 noundef 7) #7
  tail call void @scsi_remove_target(ptr noundef %dev) #7
  tail call void @device_del(ptr noundef %dev) #7
  tail call void @put_device(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_target(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_target_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_tgt_scsi_abort_io(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_target_unblock(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_req_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_req_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_untagged_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_queue_wq_desc(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 100)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !115, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !145, !147, !149, !151, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_disc.c", i32 52, i32 31}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/snic/snic_disc.c", i32 209, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @snic_tgt_dev_release._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @snic_tgt_dev_release._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_disc.c", i32 214, i32 2}
!12 = !{ptr @snic_tgt_dev_release._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @snic_tgt_dev_release._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/snic_disc.c", i32 362, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snic_handle_tgt_disc._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @snic_handle_tgt_disc._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @snic_handle_tgt_disc._entry.12, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/scsi/snic/snic_disc.c", i32 371, i32 2}
!23 = !{ptr @snic_handle_tgt_disc._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/snic/snic_disc.c", i32 378, i32 4}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @snic_handle_tgt_disc._entry.15, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @snic_handle_tgt_disc._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/snic/snic_disc.c", i32 379, i32 18}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/snic/snic_disc.c", i32 388, i32 2}
!35 = !{ptr @snic_handle_tgt_disc._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @snic_handle_tgt_disc._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/snic/snic_disc.c", i32 411, i32 3}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @snic_report_tgt_cmpl_handler._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @snic_report_tgt_cmpl_handler._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/snic/snic_disc.c", i32 418, i32 2}
!44 = !{ptr @snic_report_tgt_cmpl_handler._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @snic_report_tgt_cmpl_handler._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @snic_report_tgt_cmpl_handler._entry.28, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/scsi/snic/snic_disc.c", i32 420, i32 2}
!48 = !{ptr @snic_report_tgt_cmpl_handler._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/snic/snic_disc.c", i32 423, i32 3}
!53 = !{ptr @snic_report_tgt_cmpl_handler._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @snic_report_tgt_cmpl_handler._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @snic_disc_init.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/scsi/snic/snic_disc.c", i32 453, i32 2}
!57 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/snic/snic_disc.c", i32 472, i32 3}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @snic_disc_term._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @snic_disc_term._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/scsi/snic/snic_disc.c", i32 487, i32 2}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @snic_disc_start._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @snic_disc_start._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/snic/snic_disc.c", i32 492, i32 3}
!70 = !{ptr @snic_disc_start._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @snic_disc_start._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/snic/snic_disc.c", i32 511, i32 3}
!74 = !{ptr @snic_disc_start._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @snic_disc_start._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/snic/snic_disc.c", i32 525, i32 2}
!78 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @snic_handle_disc._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @snic_handle_disc._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/snic/snic_disc.c", i32 532, i32 2}
!83 = !{ptr @snic_handle_disc._entry.47, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @snic_handle_disc._entry_ptr.49, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/snic/snic_disc.c", i32 557, i32 3}
!87 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @snic_tgt_del_all._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @snic_tgt_del_all._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/snic/snic_disc.c", i32 42, i32 25}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/snic/snic_disc.c", i32 43, i32 27}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/snic/snic_disc.c", i32 44, i32 28}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/scsi/snic/snic_disc.c", i32 45, i32 24}
!98 = !{ptr @snic_tgt_state_str, !99, !"snic_tgt_state_str", i1 false, i1 false}
!99 = !{!"../drivers/scsi/snic/snic_disc.c", i32 41, i32 27}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/snic/snic_disc.c", i32 263, i32 3}
!102 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snic_tgt_create._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @snic_tgt_create._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @snic_tgt_create._entry.58, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/scsi/snic/snic_disc.c", i32 273, i32 2}
!107 = !{ptr @snic_tgt_create._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!110 = !{ptr @snic_tgt_create.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/scsi/snic/snic_disc.c", i32 284, i32 2}
!112 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @snic_tgt_create.__key.62, !114, !"__key", i1 false, i1 false}
!114 = !{!"../drivers/scsi/snic/snic_disc.c", i32 285, i32 2}
!115 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/snic/snic_disc.c", i32 288, i32 27}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/snic/snic_disc.c", i32 293, i32 27}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/scsi/snic/snic_disc.c", i32 298, i32 3}
!122 = !{ptr @snic_tgt_create._entry.66, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @snic_tgt_create._entry_ptr.68, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/snic/snic_disc.c", i32 310, i32 2}
!126 = !{ptr @snic_tgt_create._entry.69, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @snic_tgt_create._entry_ptr.71, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.73, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/scsi/snic/snic_disc.c", i32 316, i32 3}
!130 = !{ptr @snic_tgt_create._entry.72, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @snic_tgt_create._entry_ptr.74, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/snic/snic_disc.c", i32 327, i32 2}
!134 = !{ptr @snic_tgt_create._entry.75, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @snic_tgt_create._entry_ptr.77, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/snic/snic_disc.c", i32 170, i32 2}
!138 = !{ptr @.str.79, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @snic_scsi_scan_tgt._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @snic_scsi_scan_tgt._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/snic/snic_disc.c", i32 38, i32 29}
!143 = !{ptr @.str.81, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/snic/snic_disc.c", i32 30, i32 19}
!145 = !{ptr @.str.82, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/snic/snic_disc.c", i32 31, i32 19}
!147 = !{ptr @snic_tgt_type_str, !148, !"snic_tgt_type_str", i1 false, i1 false}
!148 = !{!"../drivers/scsi/snic/snic_disc.c", i32 29, i32 27}
!149 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/snic/snic_disc.c", i32 100, i32 2}
!151 = !{ptr @snic_queue_report_tgt_req._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @snic_queue_report_tgt_req._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!154 = distinct !{null, !150, !"__already_done", i1 false, i1 false}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/snic/snic_disc.c", i32 106, i32 3}
!157 = !{ptr @snic_queue_report_tgt_req._entry.85, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @snic_queue_report_tgt_req._entry_ptr.87, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @snic_queue_report_tgt_req._entry.88, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/scsi/snic/snic_disc.c", i32 112, i32 2}
!161 = !{ptr @snic_queue_report_tgt_req._entry_ptr.89, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.90, !160, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/snic/snic_disc.c", i32 116, i32 3}
!166 = !{ptr @snic_queue_report_tgt_req._entry.92, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @snic_queue_report_tgt_req._entry_ptr.94, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @snic_queue_report_tgt_req._entry.95, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/scsi/snic/snic_disc.c", i32 127, i32 2}
!170 = !{ptr @snic_queue_report_tgt_req._entry_ptr.96, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.97, !169, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!173 = !{ptr @.str.100, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/snic/snic_disc.c", i32 146, i32 3}
!175 = !{ptr @snic_queue_report_tgt_req._entry.99, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @snic_queue_report_tgt_req._entry_ptr.101, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.103, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/snic/snic_disc.c", i32 151, i32 2}
!179 = !{ptr @snic_queue_report_tgt_req._entry.102, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @snic_queue_report_tgt_req._entry_ptr.104, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/snic/snic_disc.c", i32 156, i32 2}
!183 = !{ptr @snic_queue_report_tgt_req._entry.105, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @snic_queue_report_tgt_req._entry_ptr.107, !182, !"_entry_ptr", i1 false, i1 false}
!185 = distinct !{null, !186, !"__already_done", i1 false, i1 false}
!186 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!187 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i8 0, i8 2}
