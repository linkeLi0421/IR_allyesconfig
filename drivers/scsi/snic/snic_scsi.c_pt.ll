; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_scsi.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_scsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.scsi_lun = type { [8 x i8] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.snic_tgt = type { %struct.list_head, i16, i16, i32, i32, i32, %struct.device, %struct.work_struct, %struct.work_struct, %struct.snic_tgt_priv }
%struct.snic_tgt_priv = type { %struct.list_head, i32, i16, [16 x ptr], %union.anon.127 }
%union.anon.127 = type { i8 }
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }
%struct.snic_trc_data = type <{ i64, ptr, i32, i32, [5 x i64] }>
%struct.snic_req_info = type { %struct.list_head, ptr, i64, i16, i16, i32, i32, i8, [3 x i8], ptr, ptr, i32, i64, ptr, ptr, ptr, ptr }
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
%struct.snic_host_req = type { [2 x i64], %struct.snic_io_hdr, %union.anon.130, i32 }
%struct.snic_io_hdr = type { i32, i32, i32, i8, i8, i8, i8, i16, i16 }
%union.anon.130 = type { %struct.snic_icmnd, [8 x i8] }
%struct.snic_icmnd = type { i16, i16, i32, i64, i64, i8, i8, i16, i32, [32 x i8], i64, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.snic_sg_desc = type { i64, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.128, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.128 = type { ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.59, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }
%struct.snic_fw_req = type { %struct.snic_io_hdr, %union.anon.129 }
%union.anon.129 = type { %struct.snic_async_evnotify, [8 x i8] }
%struct.snic_async_evnotify = type { i8, i8, [2 x i8], i32, [24 x i8], [4 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.30, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.31, %union.anon.32, %union.anon.33, %union.anon.38, ptr, ptr }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%union.anon.32 = type { %struct.rb_node }
%union.anon.33 = type { %struct.anon.37 }
%struct.anon.37 = type { i32, %struct.list_head, ptr }
%union.anon.38 = type { i64, [8 x i8] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SNIC_INIT\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SNIC_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SNIC_ONLINE\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SNIC_OFFLINE\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SNIC_FWRESET\00", [19 x i8] zeroinitializer }, align 32
@snic_state_str = dso_local global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@snic_queuecommand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 342, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tgt %p id %d Not Ready.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_queuecommand\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/snic/snic_scsi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_queuecommand._entry_ptr = internal global ptr @snic_queuecommand._entry, section ".printk_index", align 4
@snic_queuecommand._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 352, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic state is %s\0A\00", [46 x i8] zeroinitializer }, align 32
@snic_queuecommand._entry_ptr.13 = internal global ptr @snic_queuecommand._entry.11, section ".printk_index", align 4
@snic_log_level = external dso_local local_unnamed_addr global i32, align 4
@snic_queuecommand._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 359, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sc %p Tag %d (sc %0x) lun %lld in snic_qcmd\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snic_queuecommand._entry_ptr.17 = internal global ptr @snic_queuecommand._entry.14, section ".printk_index", align 4
@snic_queuecommand._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 363, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to Q, Scsi Req w/ err %d.\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_queuecommand._entry_ptr.20 = internal global ptr @snic_queuecommand._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snic_abort_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 1636, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abt_cmd:sc %p :0x%x :req = %p :tag = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snic_abort_cmd\00", [17 x i8] zeroinitializer }, align 32
@snic_abort_cmd._entry_ptr = internal global ptr @snic_abort_cmd._entry, section ".printk_index", align 4
@snic_abort_cmd._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 1641, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"abt_cmd: tag %x Parent Devs are not rdy\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_abort_cmd._entry_ptr.25 = internal global ptr @snic_abort_cmd._entry.23, section ".printk_index", align 4
@snic_glob = external dso_local local_unnamed_addr global ptr, align 4
@snic_abort_cmd._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.8, i32 1662, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"abts: Abort Req Status = %s\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_abort_cmd._entry_ptr.28 = internal global ptr @snic_abort_cmd._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUCCESS\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"FAST_IO_FAIL\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@snic_device_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.8, i32 2153, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dev_reset:sc %p :0x%x :req = %p :tag = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_device_reset\00", [46 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr = internal global ptr @snic_device_reset._entry, section ".printk_index", align 4
@snic_device_reset._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.8, i32 2157, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LUN Reset Op not supported.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr.36 = internal global ptr @snic_device_reset._entry.34, section ".printk_index", align 4
@snic_device_reset._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.8, i32 2165, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Devrst: Parent Devs are not online.\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr.39 = internal global ptr @snic_device_reset._entry.37, section ".printk_index", align 4
@snic_device_reset._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.8, i32 2173, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Devrst: LUN Reset Recvd thru IOCTL.\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr.42 = internal global ptr @snic_device_reset._entry.40, section ".printk_index", align 4
@snic_device_reset._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.8, i32 2193, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Devrst: IO w/ Tag %x Failed w/ err = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr.45 = internal global ptr @snic_device_reset._entry.43, section ".printk_index", align 4
@snic_device_reset._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str.8, i32 2209, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Devrst: Returning from Device Reset : %s\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_device_reset._entry_ptr.48 = internal global ptr @snic_device_reset._entry.46, section ".printk_index", align 4
@snic_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 2335, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reset:prev reset is in progress\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snic_reset\00", [21 x i8] zeroinitializer }, align 32
@snic_reset._entry_ptr = internal global ptr @snic_reset._entry, section ".printk_index", align 4
@snic_reset._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.8, i32 2355, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reset:Host Reset Failed w/ err %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_reset._entry_ptr.53 = internal global ptr @snic_reset._entry.51, section ".printk_index", align 4
@snic_host_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.8, i32 2388, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"host reset:sc %p sc_cmd 0x%x req %p tag %d flags 0x%llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snic_host_reset\00", [16 x i8] zeroinitializer }, align 32
@snic_host_reset._entry_ptr = internal global ptr @snic_host_reset._entry, section ".printk_index", align 4
@snic_shutdown_scsi_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.8, i32 2512, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Shutdown time SCSI Cleanup.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snic_shutdown_scsi_cleanup\00", [37 x i8] zeroinitializer }, align 32
@snic_shutdown_scsi_cleanup._entry_ptr = internal global ptr @snic_shutdown_scsi_cleanup._entry, section ".printk_index", align 4
@snic_tgt_scsi_abort_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.8, i32 2620, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tgt_abt_io: Cleaning Pending IOs.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_tgt_scsi_abort_io\00", [41 x i8] zeroinitializer }, align 32
@snic_tgt_scsi_abort_io._entry_ptr = internal global ptr @snic_tgt_scsi_abort_io._entry, section ".printk_index", align 4
@snic_tgt_scsi_abort_io._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.8, i32 2650, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tgt_abt_io: Tag %x, Failed w err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_tgt_scsi_abort_io._entry_ptr.62 = internal global ptr @snic_tgt_scsi_abort_io._entry.60, section ".printk_index", align 4
@snic_tgt_scsi_abort_io._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.8, i32 2659, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tgt_abt_io: abt_cnt = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_tgt_scsi_abort_io._entry_ptr.65 = internal global ptr @snic_tgt_scsi_abort_io._entry.63, section ".printk_index", align 4
@__func__.snic_issue_scsi_req = private unnamed_addr constant [20 x i8] c"snic_issue_scsi_req\00", align 1
@snic_issue_scsi_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.snic_issue_scsi_req, ptr @.str.8, i32 259, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"issue_sc:Failed to map SG List.\0A\00", [63 x i8] zeroinitializer }, align 32
@snic_issue_scsi_req._entry_ptr = internal global ptr @snic_issue_scsi_req._entry, section ".printk_index", align 4
@snic_issue_scsi_req._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.snic_issue_scsi_req, ptr @.str.8, i32 288, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"issue_sc: icmnd qing Failed for sc %p, err %d\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_issue_scsi_req._entry_ptr.69 = internal global ptr @snic_issue_scsi_req._entry.67, section ".printk_index", align 4
@snic_issue_scsi_req._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @__func__.snic_issue_scsi_req, ptr @.str.8, i32 315, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"issue_sc:sc %p, tag %d queued to WQ.\0A\00", [58 x i8] zeroinitializer }, align 32
@snic_issue_scsi_req._entry_ptr.72 = internal global ptr @snic_issue_scsi_req._entry.70, section ".printk_index", align 4
@snic_queue_icmnd_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.8, i32 195, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"QIcmnd:PCI Map Failed for sns buf %p tag %x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_queue_icmnd_req\00", [43 x i8] zeroinitializer }, align 32
@snic_queue_icmnd_req._entry_ptr = internal global ptr @snic_queue_icmnd_req._entry, section ".printk_index", align 4
@snic_queue_icmnd_req._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.8, i32 229, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"QIcmnd: Queuing Icmnd Failed. ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_queue_icmnd_req._entry_ptr.77 = internal global ptr @snic_queue_icmnd_req._entry.75, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@snic_release_req_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.8, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_release_req_buf\00", [43 x i8] zeroinitializer }, align 32
@snic_release_req_buf._entry_ptr = internal global ptr @snic_release_req_buf._entry, section ".printk_index", align 4
@.str.82 = internal constant { [310 x i8], [74 x i8] } { [310 x i8] c"!((CMD_STATE(sc) == SNIC_IOREQ_COMPLETE) || (CMD_STATE(sc) == SNIC_IOREQ_ABTS_COMPLETE) || (CMD_FLAGS(sc) & SNIC_DEV_RST_NOTSUP) || (CMD_FLAGS(sc) & SNIC_IO_INTERNAL_TERM_ISSUED) || (CMD_FLAGS(sc) & SNIC_DEV_RST_TERM_ISSUED) || (CMD_FLAGS(sc) & SNIC_SCSI_CLEANUP) || (CMD_STATE(sc) == SNIC_IOREQ_LR_COMPLETE))\00", [74 x i8] zeroinitializer }, align 32
@snic_release_req_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_release_req_buf._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.8, i32 146, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Rel_req:sc %p:tag %x:rqi %p:ioreq %p:abt %p:dr %p: state %s:flags 0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_release_req_buf._entry_ptr.85 = internal global ptr @snic_release_req_buf._entry.83, section ".printk_index", align 4
@snic_req_state_str = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92], [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_IOREQ_NOT_INITED\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SNIC_IOREQ_PENDING\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNIC_IOREQ_ABTS_PENDING\00", [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SNIC_IOREQ_ABTS_COMPLETE\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_IOREQ_LR_PENDING\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SNIC_IOREQ_LR_COMPLETE\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNIC_IOREQ_CMD_COMPLETE\00", [40 x i8] zeroinitializer }, align 32
@__func__.snic_io_cmpl_handler = private unnamed_addr constant [21 x i8] c"snic_io_cmpl_handler\00", align 1
@snic_io_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.snic_io_cmpl_handler, ptr @.str.8, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler._entry_ptr = internal global ptr @snic_io_cmpl_handler._entry, section ".printk_index", align 4
@.str.93 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"(fwreq->hdr.type > SNIC_RSP_BOOT_LUNS_CMPL) && (fwreq->hdr.type < SNIC_MSG_ASYNC_EVNOTIFY)\00", [37 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_io_cmpl_handler._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @__func__.snic_io_cmpl_handler, ptr @.str.8, i32 1218, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sNIC SubSystem is NOT Ready.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler._entry_ptr.96 = internal global ptr @snic_io_cmpl_handler._entry.94, section ".printk_index", align 4
@snic_io_cmpl_handler._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @__func__.snic_io_cmpl_handler, ptr @.str.8, i32 1223, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sNIC SubSystem in Unrecoverable State.\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler._entry_ptr.99 = internal global ptr @snic_io_cmpl_handler._entry.97, section ".printk_index", align 4
@snic_io_cmpl_handler._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @__func__.snic_io_cmpl_handler, ptr @.str.8, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler._entry_ptr.101 = internal global ptr @snic_io_cmpl_handler._entry.100, section ".printk_index", align 4
@.str.102 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler.__already_done.103 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_io_cmpl_handler._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @__func__.snic_io_cmpl_handler, ptr @.str.8, i32 1260, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unknown Firmware completion request type %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snic_io_cmpl_handler._entry_ptr.106 = internal global ptr @snic_io_cmpl_handler._entry.104, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.8, i32 564, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Icmnd_cmpl: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x,i ctx = %lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic_icmnd_cmpl_handler\00", [40 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr = internal global ptr @snic_icmnd_cmpl_handler._entry, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.8, i32 569, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Icmnd_cmpl:Tag Error:Out of Range Tag %d, hdr status = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.111 = internal global ptr @snic_icmnd_cmpl_handler._entry.109, section ".printk_index", align 4
@snic_icmnd_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_icmnd_cmpl_handler._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.8, i32 582, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Icmnd_cmpl: Scsi Cmnd Not found, sc = NULL Hdr Status = %s tag = 0x%x fwreq = 0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.114 = internal global ptr @snic_icmnd_cmpl_handler._entry.112, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.8, i32 599, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Icmnd_cmpl:lun %lld sc %p cmd %xtag %d flags 0x%llx rqi %p\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.117 = internal global ptr @snic_icmnd_cmpl_handler._entry.115, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.108, ptr @.str.8, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.119 = internal global ptr @snic_icmnd_cmpl_handler._entry.118, section ".printk_index", align 4
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rqi != (struct snic_req_info *)ctx\00", [61 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler.__already_done.121 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_icmnd_cmpl_handler._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.108, ptr @.str.8, i32 617, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Icmnd_cmpl:Host Req Not Found(null), Hdr Status %s, Tag 0x%x, sc 0x%p flags 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.125 = internal global ptr @snic_icmnd_cmpl_handler._entry.123, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.108, ptr @.str.8, i32 646, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"icmnd_cmpl:TM Req Pending(%s), Hdr Status %s sc 0x%p scsi status %x resid %d flags 0x%llx\0A\00", [37 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.128 = internal global ptr @snic_icmnd_cmpl_handler._entry.126, section ".printk_index", align 4
@snic_icmnd_cmpl_handler._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.108, ptr @.str.8, i32 660, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"icmnd_cmpl:IO Failed, sc 0x%p Tag %d Cmd %x Hdr Status %s flags 0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_icmnd_cmpl_handler._entry_ptr.131 = internal global ptr @snic_icmnd_cmpl_handler._entry.129, section ".printk_index", align 4
@snic_io_status_str = internal constant { [20 x ptr], [48 x i8] } { [20 x ptr] [ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151], [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SNIC_STAT_IO_SUCCESS\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_INVALID_HDR\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SNIC_STAT_OUT_OF_RES\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SNIC_STAT_INVALID_PARM\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_REQ_NOT_SUP\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SNIC_STAT_IO_NOT_FOUND\00", [41 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SNIC_STAT_ABORTED\00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SNIC_STAT_TIMEOUT\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_SGL_INVALID\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SNIC_STAT_DATA_CNT_MISMATCH\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SNIC_STAT_FW_ERR\00", [47 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_ITMF_REJECT\00", [42 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SNIC_STAT_ITMF_FAIL\00", [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SNIC_STAT_ITMF_INCORRECT_LUN\00", [35 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_CMND_REJECT\00", [42 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_DEV_OFFLINE\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SNIC_STAT_NO_BOOTLUN\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SNIC_STAT_SCSI_ERR\00", [45 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SNIC_STAT_NOT_READY\00", [44 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNIC_STAT_FATAL_ERROR\00", [42 x i8] zeroinitializer }, align 32
@snic_proc_tmreq_pending_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.152, ptr @.str.8, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snic_proc_tmreq_pending_state\00", [34 x i8] zeroinitializer }, align 32
@snic_proc_tmreq_pending_state._entry_ptr = internal global ptr @snic_proc_tmreq_pending_state._entry, section ".printk_index", align 4
@snic_proc_tmreq_pending_state._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.152, ptr @.str.8, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_proc_tmreq_pending_state._entry_ptr.154 = internal global ptr @snic_proc_tmreq_pending_state._entry.153, section ".printk_index", align 4
@snic_proc_tmreq_pending_state.__already_done.155 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_process_icmnd_cmpl_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.8, i32 532, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"icmnd_cmpl: IO Failed : Hdr Status %s flags 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snic_process_icmnd_cmpl_status\00", [33 x i8] zeroinitializer }, align 32
@snic_process_icmnd_cmpl_status._entry_ptr = internal global ptr @snic_process_icmnd_cmpl_status._entry, section ".printk_index", align 4
@snic_process_io_failed_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.8, i32 469, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Invalid Hdr/Param or Req Not Supported or Cmnd Rejected or Device Offline. or Unknown\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snic_process_io_failed_state\00", [35 x i8] zeroinitializer }, align 32
@snic_process_io_failed_state._entry_ptr = internal global ptr @snic_process_io_failed_state._entry, section ".printk_index", align 4
@snic_process_io_failed_state._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.159, ptr @.str.8, i32 475, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fw returns failed status %s flags 0x%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@snic_process_io_failed_state._entry_ptr.162 = internal global ptr @snic_process_io_failed_state._entry.160, section ".printk_index", align 4
@snic_itmf_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.8, i32 931, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Itmf_cmpl: %s: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x,ctx = %lx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_itmf_cmpl_handler\00", [41 x i8] zeroinitializer }, align 32
@snic_itmf_cmpl_handler._entry_ptr = internal global ptr @snic_itmf_cmpl_handler._entry, section ".printk_index", align 4
@snic_itmf_cmpl_handler._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.164, ptr @.str.8, i32 936, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Itmf_cmpl: nterm %u , flags 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_itmf_cmpl_handler._entry_ptr.167 = internal global ptr @snic_itmf_cmpl_handler._entry.165, section ".printk_index", align 4
@snic_itmf_cmpl_handler._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.164, ptr @.str.8, i32 949, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Itmf_cmpl: Tag 0x%x out of Range,HdrStat %s\0A\00", [51 x i8] zeroinitializer }, align 32
@snic_itmf_cmpl_handler._entry_ptr.170 = internal global ptr @snic_itmf_cmpl_handler._entry.168, section ".printk_index", align 4
@snic_itmf_cmpl_handler._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.164, ptr @.str.8, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_itmf_cmpl_handler._entry_ptr.172 = internal global ptr @snic_itmf_cmpl_handler._entry.171, section ".printk_index", align 4
@snic_itmf_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_itmf_cmpl_handler.__already_done.173 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_itmf_cmpl_handler._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.164, ptr @.str.8, i32 963, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Itmf_cmpl: sc is NULL - Hdr Stat %s Tag 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_itmf_cmpl_handler._entry_ptr.176 = internal global ptr @snic_itmf_cmpl_handler._entry.174, section ".printk_index", align 4
@snic_process_itmf_cmpl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_process_itmf_cmpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.8, i32 802, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"itmf_cmpl: rqi is null,Hdr stat = %s Tag = 0x%x sc = 0x%p flags 0x%llx\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_process_itmf_cmpl\00", [41 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr = internal global ptr @snic_process_itmf_cmpl._entry, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.8, i32 833, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"itmf_cmpl:Abort Cmpl Recvd.Tag 0x%x Status %s flags 0x%llx\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.181 = internal global ptr @snic_process_itmf_cmpl._entry.179, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.178, ptr @.str.8, i32 851, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"itmf_cmpl: Completing IO. sc %p flags 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.184 = internal global ptr @snic_process_itmf_cmpl._entry.182, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.178, ptr @.str.8, i32 884, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"itmf_cmpl:dev reset abts cmpl recvd. id %d status %s flags 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.187 = internal global ptr @snic_process_itmf_cmpl._entry.185, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.178, ptr @.str.8, i32 896, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"itmf_cmpl: Unknown TM tag bit 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.190 = internal global ptr @snic_process_itmf_cmpl._entry.188, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.178, ptr @.str.8, i32 902, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"itmf_cmpl:Unexpected itmf io stat %s Tag = 0x%x flags 0x%llx\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.193 = internal global ptr @snic_process_itmf_cmpl._entry.191, section ".printk_index", align 4
@snic_process_itmf_cmpl._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.178, ptr @.str.8, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_process_itmf_cmpl._entry_ptr.195 = internal global ptr @snic_process_itmf_cmpl._entry.194, section ".printk_index", align 4
@snic_process_itmf_cmpl.__already_done.196 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_update_abort_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.8, i32 751, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Updating Abort stats.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic_update_abort_stats\00", [40 x i8] zeroinitializer }, align 32
@snic_update_abort_stats._entry_ptr = internal global ptr @snic_update_abort_stats._entry, section ".printk_index", align 4
@snic_proc_dr_cmpl_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.200, ptr @.str.8, i32 697, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"itmf_cmpl: Cmd State = %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snic_proc_dr_cmpl_locked\00", [39 x i8] zeroinitializer }, align 32
@snic_proc_dr_cmpl_locked._entry_ptr = internal global ptr @snic_proc_dr_cmpl_locked._entry, section ".printk_index", align 4
@snic_proc_dr_cmpl_locked._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.200, ptr @.str.8, i32 710, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"itmf_cmpl: Terminate Pending Dev Reset Cmpl Recvd.id %x, status %s flags 0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@snic_proc_dr_cmpl_locked._entry_ptr.203 = internal global ptr @snic_proc_dr_cmpl_locked._entry.201, section ".printk_index", align 4
@snic_proc_dr_cmpl_locked._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.200, ptr @.str.8, i32 725, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"itmf_cmpl:Dev Reset Completion Received after timeout. id %d cmpl status %s flags 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_proc_dr_cmpl_locked._entry_ptr.206 = internal global ptr @snic_proc_dr_cmpl_locked._entry.204, section ".printk_index", align 4
@snic_proc_dr_cmpl_locked._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.200, ptr @.str.8, i32 737, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"itmf_cmpl:Dev Reset Cmpl Recvd id %d cmpl status %s flags 0x%llx\0A\00", [62 x i8] zeroinitializer }, align 32
@snic_proc_dr_cmpl_locked._entry_ptr.209 = internal global ptr @snic_proc_dr_cmpl_locked._entry.207, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.211, ptr @.str.8, i32 1015, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"reset_cmpl:Tag %d ctx %lx cmpl status %s HBA Reset Completion received.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snic_hba_reset_cmpl_handler\00", [36 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr = internal global ptr @snic_hba_reset_cmpl_handler._entry, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.8, i32 1019, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"reset_cmpl: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x, ctx = %lx\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.214 = internal global ptr @snic_hba_reset_cmpl_handler._entry.212, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.211, ptr @.str.8, i32 1026, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"reset_cmpl:Tag %d ctx %lx cmpl stat %s\0A\00", [56 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.217 = internal global ptr @snic_hba_reset_cmpl_handler._entry.215, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.8, i32 1035, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reset_cmpl: Tag 0x%x out of Range,HdrStat %s\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.220 = internal global ptr @snic_hba_reset_cmpl_handler._entry.218, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.211, ptr @.str.8, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.222 = internal global ptr @snic_hba_reset_cmpl_handler._entry.221, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_hba_reset_cmpl_handler._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.211, ptr @.str.8, i32 1047, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"reset_cmpl: sc is NULL - Hdr Stat %s Tag 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.225 = internal global ptr @snic_hba_reset_cmpl_handler._entry.223, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.211, ptr @.str.8, i32 1055, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"reset_cmpl: sc %p rqi %p Tag %d flags 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.228 = internal global ptr @snic_hba_reset_cmpl_handler._entry.226, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.211, ptr @.str.8, i32 1063, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"reset_cmpl:host reset completed after timeout\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.231 = internal global ptr @snic_hba_reset_cmpl_handler._entry.229, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler.__already_done.232 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_hba_reset_cmpl_handler._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.211, ptr @.str.8, i32 1079, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"reset_cmpl: rqi is null,Hdr stat %s Tag 0x%x sc 0x%p flags 0x%llx\0A\00", [61 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.235 = internal global ptr @snic_hba_reset_cmpl_handler._entry.233, section ".printk_index", align 4
@snic_hba_reset_cmpl_handler._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.211, ptr @.str.8, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.237 = internal global ptr @snic_hba_reset_cmpl_handler._entry.236, section ".printk_index", align 4
@.str.238 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"snic_get_state(snic) != SNIC_OFFLINE && snic_get_state(snic) != SNIC_FWRESET\00", [51 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler.__already_done.239 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_hba_reset_cmpl_handler._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.211, ptr @.str.8, i32 1112, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reset_cmpl: Queuing discovery work.\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_hba_reset_cmpl_handler._entry_ptr.242 = internal global ptr @snic_hba_reset_cmpl_handler._entry.240, section ".printk_index", align 4
@snic_hba_reset_scsi_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.8, i32 979, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HBA Reset scsi cleanup.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snic_hba_reset_scsi_cleanup\00", [36 x i8] zeroinitializer }, align 32
@snic_hba_reset_scsi_cleanup._entry_ptr = internal global ptr @snic_hba_reset_scsi_cleanup._entry, section ".printk_index", align 4
@snic_msg_ack_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.246, ptr @.str.8, i32 1121, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Message Ack Received.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_msg_ack_handler\00", [43 x i8] zeroinitializer }, align 32
@snic_msg_ack_handler._entry_ptr = internal global ptr @snic_msg_ack_handler._entry, section ".printk_index", align 4
@snic_msg_ack_handler._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.246, ptr @.str.8, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016snic:Functionality not impl'ed at %s:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_msg_ack_handler._entry_ptr.249 = internal global ptr @snic_msg_ack_handler._entry.247, section ".printk_index", align 4
@snic_msg_ack_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_aen_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.8, i32 1138, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"aen: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x, ctx = %lx\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_aen_handler\00", [47 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr = internal global ptr @snic_aen_handler._entry, section ".printk_index", align 4
@snic_aen_handler._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.8, i32 1144, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"aen:TGT_OFFLINE Event Recvd.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.254 = internal global ptr @snic_aen_handler._entry.252, section ".printk_index", align 4
@snic_aen_handler._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.251, ptr @.str.8, i32 1148, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aen:TGT_ONLINE Event Recvd.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.257 = internal global ptr @snic_aen_handler._entry.255, section ".printk_index", align 4
@snic_aen_handler._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.251, ptr @.str.8, i32 1152, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"aen:LUN_OFFLINE Event Recvd.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.260 = internal global ptr @snic_aen_handler._entry.258, section ".printk_index", align 4
@snic_aen_handler._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.251, ptr @.str.8, i32 1156, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aen:LUN_ONLINE Event Recvd.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.263 = internal global ptr @snic_aen_handler._entry.261, section ".printk_index", align 4
@snic_aen_handler._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.251, ptr @.str.8, i32 1160, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"aen:Config Change Event Recvd.\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.266 = internal global ptr @snic_aen_handler._entry.264, section ".printk_index", align 4
@snic_aen_handler._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.251, ptr @.str.8, i32 1164, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aen:TGT_ADD Event Recvd.\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.269 = internal global ptr @snic_aen_handler._entry.267, section ".printk_index", align 4
@snic_aen_handler._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.251, ptr @.str.8, i32 1168, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aen:TGT_DEL Event Recvd.\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.272 = internal global ptr @snic_aen_handler._entry.270, section ".printk_index", align 4
@snic_aen_handler._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.251, ptr @.str.8, i32 1172, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aen:LUN_ADD Event Recvd.\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.275 = internal global ptr @snic_aen_handler._entry.273, section ".printk_index", align 4
@snic_aen_handler._entry.276 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.251, ptr @.str.8, i32 1176, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aen:LUN_DEL Event Recvd.\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.278 = internal global ptr @snic_aen_handler._entry.276, section ".printk_index", align 4
@snic_aen_handler._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.251, ptr @.str.8, i32 1180, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"aen:DISC_CMPL Event Recvd.\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.281 = internal global ptr @snic_aen_handler._entry.279, section ".printk_index", align 4
@snic_aen_handler._entry.282 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.251, ptr @.str.8, i32 1184, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aen:Unknown Event Recvd.\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.284 = internal global ptr @snic_aen_handler._entry.282, section ".printk_index", align 4
@snic_aen_handler._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.251, ptr @.str.8, i32 1185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.286 = internal global ptr @snic_aen_handler._entry.285, section ".printk_index", align 4
@snic_aen_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_aen_handler._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.251, ptr @.str.8, i32 1189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_aen_handler._entry_ptr.288 = internal global ptr @snic_aen_handler._entry.287, section ".printk_index", align 4
@snic_aen_handler.__already_done.289 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_send_abort_and_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.8, i32 1542, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"abt_cmd: rqi is null. Tag %d flags 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snic_send_abort_and_wait\00", [39 x i8] zeroinitializer }, align 32
@snic_send_abort_and_wait._entry_ptr = internal global ptr @snic_send_abort_and_wait._entry, section ".printk_index", align 4
@snic_send_abort_and_wait._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.291, ptr @.str.8, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_send_abort_and_wait._entry_ptr.293 = internal global ptr @snic_send_abort_and_wait._entry.292, section ".printk_index", align 4
@snic_send_abort_and_wait._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.291, ptr @.str.8, i32 1570, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"send_abt_cmd: TAG 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@snic_send_abort_and_wait._entry_ptr.297 = internal global ptr @snic_send_abort_and_wait._entry.295, section ".printk_index", align 4
@snic_send_abort_and_wait._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.299, ptr @.str.291, ptr @.str.8, i32 1580, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"send_abt_cmd: IO w/ Tag 0x%x fail w/ err %d flags 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@snic_send_abort_and_wait._entry_ptr.300 = internal global ptr @snic_send_abort_and_wait._entry.298, section ".printk_index", align 4
@snic_send_abort_and_wait._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.291, ptr @.str.8, i32 1606, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"send_abt_cmd: sc %p Tag %x flags 0x%llx\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_send_abort_and_wait._entry_ptr.303 = internal global ptr @snic_send_abort_and_wait._entry.301, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.304 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@snic_queue_abort_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.306, ptr @.str.8, i32 1414, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"q_abtreq: sc %p, rqi %p, tag %x, tmf %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_queue_abort_req\00", [43 x i8] zeroinitializer }, align 32
@snic_queue_abort_req._entry_ptr = internal global ptr @snic_queue_abort_req._entry, section ".printk_index", align 4
@snic_issue_tm_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.308, ptr @.str.8, i32 1369, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"issu_tmreq: Task mgmt req %d. rqi %p w/ tag %x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_issue_tm_req\00", [46 x i8] zeroinitializer }, align 32
@snic_issue_tm_req._entry_ptr = internal global ptr @snic_issue_tm_req._entry, section ".printk_index", align 4
@snic_issue_tm_req._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.308, ptr @.str.8, i32 1392, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"issu_tmreq: Queueing ITMF(%d) Req, sc %p rqi %p req_id %d tag %x fails err = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@snic_issue_tm_req._entry_ptr.311 = internal global ptr @snic_issue_tm_req._entry.309, section ".printk_index", align 4
@snic_issue_tm_req._entry.312 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.308, ptr @.str.8, i32 1396, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"issu_tmreq: Queueing ITMF(%d) Req, sc %p, rqi %p, req_id %d tag %x - Success.\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_issue_tm_req._entry_ptr.314 = internal global ptr @snic_issue_tm_req._entry.312, section ".printk_index", align 4
@snic_queue_itmf_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.315, ptr @.str.8, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic_queue_itmf_req\00", [44 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req._entry_ptr = internal global ptr @snic_queue_itmf_req._entry, section ".printk_index", align 4
@.str.316 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!rqi\00", [27 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_queue_itmf_req._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.315, ptr @.str.8, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req._entry_ptr.318 = internal global ptr @snic_queue_itmf_req._entry.317, section ".printk_index", align 4
@.str.319 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"!rqi->tm_tag\00", [19 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req.__already_done.320 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_queue_itmf_req._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.315, ptr @.str.8, i32 1343, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d tag %d Failed, ret = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req._entry_ptr.323 = internal global ptr @snic_queue_itmf_req._entry.321, section ".printk_index", align 4
@snic_queue_itmf_req._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.315, ptr @.str.8, i32 1347, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"qitmf:Queuing ITMF(%d) Req sc %p, rqi %p, req_id %d, tag %d (req_id)- Success.\00", [49 x i8] zeroinitializer }, align 32
@snic_queue_itmf_req._entry_ptr.326 = internal global ptr @snic_queue_itmf_req._entry.324, section ".printk_index", align 4
@snic_abort_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.328, ptr @.str.8, i32 1442, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"abt_fini:req info is null tag 0x%x, sc 0x%p flags 0x%llx\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_abort_finish\00", [46 x i8] zeroinitializer }, align 32
@snic_abort_finish._entry_ptr = internal global ptr @snic_abort_finish._entry, section ".printk_index", align 4
@snic_abort_finish._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.328, ptr @.str.8, i32 1460, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"abt_fini:sc %p Tag %x Driver Timeout.flags 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@snic_abort_finish._entry_ptr.331 = internal global ptr @snic_abort_finish._entry.329, section ".printk_index", align 4
@snic_abort_finish._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.328, ptr @.str.8, i32 1489, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"abt_fini: Tag %x, Cmpl Status %s flags 0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@snic_abort_finish._entry_ptr.334 = internal global ptr @snic_abort_finish._entry.332, section ".printk_index", align 4
@__func__.snic_unlink_and_release_req = private unnamed_addr constant [28 x i8] c"snic_unlink_and_release_req\00", align 1
@snic_send_dr_and_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.336, ptr @.str.8, i32 2036, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"send_dr: rqi is null, Tag 0x%x flags 0x%llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snic_send_dr_and_wait\00", [42 x i8] zeroinitializer }, align 32
@snic_send_dr_and_wait._entry_ptr = internal global ptr @snic_send_dr_and_wait._entry, section ".printk_index", align 4
@snic_send_dr_and_wait._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.336, ptr @.str.8, i32 2049, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dr: TAG = %x\0A\00", [18 x i8] zeroinitializer }, align 32
@snic_send_dr_and_wait._entry_ptr.339 = internal global ptr @snic_send_dr_and_wait._entry.337, section ".printk_index", align 4
@snic_send_dr_and_wait._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.336, ptr @.str.8, i32 2052, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_send_dr_and_wait._entry_ptr.341 = internal global ptr @snic_send_dr_and_wait._entry.340, section ".printk_index", align 4
@snic_send_dr_and_wait._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.336, ptr @.str.8, i32 2066, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"send_dr: IO w/ Tag 0x%x Failed err = %d. flags 0x%llx\0A\00", [41 x i8] zeroinitializer }, align 32
@snic_send_dr_and_wait._entry_ptr.345 = internal global ptr @snic_send_dr_and_wait._entry.343, section ".printk_index", align 4
@snic_dr_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.347, ptr @.str.8, i32 1929, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dr_fini: rqi is null tag 0x%x sc 0x%p flags 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snic_dr_finish\00", [17 x i8] zeroinitializer }, align 32
@snic_dr_finish._entry_ptr = internal global ptr @snic_dr_finish._entry, section ".printk_index", align 4
@snic_dr_finish._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.347, ptr @.str.8, i32 1944, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"dr_fini: Tag %x Dev Reset Timedout. flags 0x%llx\0A\00", [46 x i8] zeroinitializer }, align 32
@snic_dr_finish._entry_ptr.350 = internal global ptr @snic_dr_finish._entry.348, section ".printk_index", align 4
@snic_dr_finish._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.347, ptr @.str.8, i32 1954, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dr_fini: Tag %x Dev Reset cmpl\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_dr_finish._entry_ptr.353 = internal global ptr @snic_dr_finish._entry.351, section ".printk_index", align 4
@snic_dr_finish._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.355, ptr @.str.347, ptr @.str.8, i32 1962, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"dr_fini:Device Reset completed& failed.Tag = %x lr_status %s flags 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_dr_finish._entry_ptr.356 = internal global ptr @snic_dr_finish._entry.354, section ".printk_index", align 4
@snic_dr_finish._entry.357 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.358, ptr @.str.347, ptr @.str.8, i32 1981, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"dr_fini: Device Reset Failed since could not abort all IOs. Tag = %x.\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_dr_finish._entry_ptr.359 = internal global ptr @snic_dr_finish._entry.357, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@snic_dr_clean_pending_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.361, ptr @.str.8, i32 1880, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clean_err:tag = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snic_dr_clean_pending_req\00", [38 x i8] zeroinitializer }, align 32
@snic_dr_clean_pending_req._entry_ptr = internal global ptr @snic_dr_clean_pending_req._entry, section ".printk_index", align 4
@snic_dr_clean_pending_req._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.361, ptr @.str.8, i32 1896, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clean_pending_req: Success.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_dr_clean_pending_req._entry_ptr.364 = internal global ptr @snic_dr_clean_pending_req._entry.362, section ".printk_index", align 4
@snic_dr_clean_pending_req._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.361, ptr @.str.8, i32 1904, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to Clean Pending IOs on %s device.\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_dr_clean_pending_req._entry_ptr.367 = internal global ptr @snic_dr_clean_pending_req._entry.365, section ".printk_index", align 4
@snic_dr_clean_single_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.368, ptr @.str.369, ptr @.str.8, i32 1758, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"clean_single_req: devrst is not pending sc 0x%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snic_dr_clean_single_req\00", [39 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr = internal global ptr @snic_dr_clean_single_req._entry, section ".printk_index", align 4
@snic_dr_clean_single_req._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @.str.369, ptr @.str.8, i32 1765, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"clean_single_req: Found IO in %s on lun\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr.372 = internal global ptr @snic_dr_clean_single_req._entry.370, section ".printk_index", align 4
@snic_dr_clean_single_req._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.369, ptr @.str.8, i32 1779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr.374 = internal global ptr @snic_dr_clean_single_req._entry.373, section ".printk_index", align 4
@.str.375 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rqi->abts_done\00", [17 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_dr_clean_single_req._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.369, ptr @.str.8, i32 1785, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"clean_single_req:devrst sc 0x%p\0A\00", [63 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr.378 = internal global ptr @snic_dr_clean_single_req._entry.376, section ".printk_index", align 4
@snic_dr_clean_single_req._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.369, ptr @.str.8, i32 1803, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"clean_single_req_err:sc %p, tag %d abt failed. tm_tag %d flags 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr.381 = internal global ptr @snic_dr_clean_single_req._entry.379, section ".printk_index", align 4
@snic_dr_clean_single_req._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.369, ptr @.str.8, i32 1840, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"clean_single_req_err:sc %p tag %d abt still pending w/ fw, tm_tag %d flags 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@snic_dr_clean_single_req._entry_ptr.384 = internal global ptr @snic_dr_clean_single_req._entry.382, section ".printk_index", align 4
@snic_is_abts_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.385, ptr @.str.386, ptr @.str.8, i32 1707, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Found IO in %s on LUN\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_is_abts_pending\00", [43 x i8] zeroinitializer }, align 32
@snic_is_abts_pending._entry_ptr = internal global ptr @snic_is_abts_pending._entry, section ".printk_index", align 4
@snic_issue_hba_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.387, ptr @.str.388, ptr @.str.8, i32 2244, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"issu_hr:Host reset thru ioctl.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snic_issue_hba_reset\00", [43 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr = internal global ptr @snic_issue_hba_reset._entry, section ".printk_index", align 4
@snic_issue_hba_reset._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.388, ptr @.str.8, i32 2252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr.390 = internal global ptr @snic_issue_hba_reset._entry.389, section ".printk_index", align 4
@.str.391 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CMD_SP(sc) != NULL\00", [45 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_issue_hba_reset._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.388, ptr @.str.8, i32 2269, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"issu_hr:Queuing HBA Reset Failed. w err %d\0A\00", [52 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr.394 = internal global ptr @snic_issue_hba_reset._entry.392, section ".printk_index", align 4
@snic_issue_hba_reset._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.388, ptr @.str.8, i32 2278, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Queued HBA Reset Successfully.\0A\00", [32 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr.397 = internal global ptr @snic_issue_hba_reset._entry.395, section ".printk_index", align 4
@snic_issue_hba_reset._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.388, ptr @.str.8, i32 2284, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reset_cmpl: Reset Timedout.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr.400 = internal global ptr @snic_issue_hba_reset._entry.398, section ".printk_index", align 4
@snic_issue_hba_reset._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.388, ptr @.str.8, i32 2316, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reset:HBA Reset Failed w/ err = %d.\0A\00", [59 x i8] zeroinitializer }, align 32
@snic_issue_hba_reset._entry_ptr.403 = internal global ptr @snic_issue_hba_reset._entry.401, section ".printk_index", align 4
@snic_scsi_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.404, ptr @.str.405, ptr @.str.8, i32 2441, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sc_clean: scsi cleanup.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_scsi_cleanup\00", [46 x i8] zeroinitializer }, align 32
@snic_scsi_cleanup._entry_ptr = internal global ptr @snic_scsi_cleanup._entry, section ".printk_index", align 4
@snic_scsi_cleanup._entry.406 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.407, ptr @.str.405, ptr @.str.8, i32 2477, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sc_clean: sc %p, rqi %p, tag %d flags 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_scsi_cleanup._entry_ptr.408 = internal global ptr @snic_scsi_cleanup._entry.406, section ".printk_index", align 4
@snic_scsi_cleanup._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.410, ptr @.str.405, ptr @.str.8, i32 2486, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sc_clean: Releasing rqi %p : flags 0x%llx\0A\00", [53 x i8] zeroinitializer }, align 32
@snic_scsi_cleanup._entry_ptr.411 = internal global ptr @snic_scsi_cleanup._entry.409, section ".printk_index", align 4
@snic_scsi_cleanup._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.405, ptr @.str.8, i32 2495, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"sc_clean: DID_TRANSPORT_DISRUPTED for sc %p, Tag %d flags 0x%llx rqi %p duration %u msecs\0A\00", [37 x i8] zeroinitializer }, align 32
@snic_scsi_cleanup._entry_ptr.414 = internal global ptr @snic_scsi_cleanup._entry.412, section ".printk_index", align 4
@snic_cmpl_pending_tmreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.415, ptr @.str.416, ptr @.str.8, i32 2409, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Completing Pending TM Req sc %p, state %s flags 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic_cmpl_pending_tmreq\00", [40 x i8] zeroinitializer }, align 32
@snic_cmpl_pending_tmreq._entry_ptr = internal global ptr @snic_cmpl_pending_tmreq._entry, section ".printk_index", align 4
@snic_internal_abort_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.418, ptr @.str.8, i32 2544, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"internal_abts: dev rst not pending sc 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_internal_abort_io\00", [41 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr = internal global ptr @snic_internal_abort_io._entry, section ".printk_index", align 4
@snic_internal_abort_io._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.418, ptr @.str.8, i32 2553, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"internal_abts: IO not yet issued sc 0x%p tag 0x%x flags 0x%llx state %d\0A\00", [55 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr.421 = internal global ptr @snic_internal_abort_io._entry.419, section ".printk_index", align 4
@snic_internal_abort_io._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.418, ptr @.str.8, i32 2566, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"internal_abts:dev rst sc %p\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr.424 = internal global ptr @snic_internal_abort_io._entry.422, section ".printk_index", align 4
@snic_internal_abort_io._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.418, ptr @.str.8, i32 2570, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"internal_abts: Issuing abts tag %x\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr.427 = internal global ptr @snic_internal_abort_io._entry.425, section ".printk_index", align 4
@snic_internal_abort_io._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.418, ptr @.str.8, i32 2571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr.429 = internal global ptr @snic_internal_abort_io._entry.428, section ".printk_index", align 4
@snic_internal_abort_io.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_internal_abort_io._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.418, ptr @.str.8, i32 2578, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"internal_abts: Tag = %x , Failed w/ err = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@snic_internal_abort_io._entry_ptr.432 = internal global ptr @snic_internal_abort_io._entry.430, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 19]
@__sancov_gen_cov_switch_values.433 = internal global [9 x i64] [i64 7, i64 8, i64 18, i64 19, i64 20, i64 21, i64 22, i64 128, i64 129]
@__sancov_gen_cov_switch_values.434 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.435 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.436 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17, i64 18]
@__sancov_gen_cov_switch_values.437 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.438 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 5, i64 7]
@__sancov_gen_cov_switch_values.439 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 16]
@__sancov_gen_cov_switch_values.440 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 256]
@__sancov_gen_cov_switch_values.441 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.442 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.443 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@__sancov_gen_cov_switch_values.444 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 39, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 40, i32 17 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 41, i32 18 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 42, i32 19 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 43, i32 19 }
@___asan_gen_.460 = private unnamed_addr constant [15 x i8] c"snic_state_str\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 38, i32 13 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 86, i32 10 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 342, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 351, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 358, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 363, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1635, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1639, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1659, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2151, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2157, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2165, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2172, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2191, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2207, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2335, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2353, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2385, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2512, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2620, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2648, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2659, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 259, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 286, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 313, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 193, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 227, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.665, i32 326, i32 6 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 134, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 142, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant [19 x i8] c"snic_req_state_str\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 46, i32 27 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 47, i32 28 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 48, i32 25 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 49, i32 30 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 50, i32 31 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 51, i32 28 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 52, i32 29 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 53, i32 26 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1211, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1217, i32 3 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1222, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1257, i32 3 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1258, i32 3 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 562, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 567, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 578, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 596, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 607, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 614, i32 3 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 641, i32 3 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 657, i32 3 }
@___asan_gen_.790 = private unnamed_addr constant [19 x i8] c"snic_io_status_str\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 57, i32 27 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 58, i32 27 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 59, i32 28 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 60, i32 27 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 61, i32 29 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 62, i32 28 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 63, i32 29 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 64, i32 24 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 65, i32 24 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 66, i32 28 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 67, i32 34 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 68, i32 23 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 69, i32 28 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 70, i32 26 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 71, i32 35 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 72, i32 28 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 73, i32 28 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 74, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 75, i32 25 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 76, i32 26 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 77, i32 28 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 388, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 400, i32 3 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 530, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 468, i32 3 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 474, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 929, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 934, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 947, i32 3 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 950, i32 3 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 961, i32 3 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 799, i32 3 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 829, i32 3 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 849, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 881, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 895, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 898, i32 3 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 904, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 751, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 696, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 706, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 721, i32 3 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 733, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1013, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1017, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1024, i32 3 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1033, i32 3 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1036, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1045, i32 3 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1053, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1062, i32 3 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1076, i32 3 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1091, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1112, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 979, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1121, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1123, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1136, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1144, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1148, i32 3 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1152, i32 3 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1156, i32 3 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1160, i32 3 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1164, i32 3 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1168, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1172, i32 3 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1176, i32 3 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1180, i32 3 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1184, i32 3 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1185, i32 3 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1189, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1540, i32 3 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1556, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1570, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1578, i32 3 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1604, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1199, i32 87, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1413, i32 2 }
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1367, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1390, i32 3 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1394, i32 3 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1315, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1316, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1341, i32 3 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1345, i32 3 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1440, i32 3 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1458, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1486, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2034, i32 3 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2049, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2052, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2064, i32 3 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1927, i32 3 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1942, i32 3 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1952, i32 3 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1959, i32 3 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1979, i32 3 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1880, i32 4 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1896, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1902, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1756, i32 3 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1763, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1779, i32 2 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1784, i32 3 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1801, i32 3 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1838, i32 3 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 1706, i32 3 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2244, i32 3 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2252, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2267, i32 3 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2278, i32 2 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2284, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2314, i32 2 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2441, i32 2 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2475, i32 3 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2484, i32 3 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2492, i32 3 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2407, i32 2 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2542, i32 3 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2551, i32 3 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2566, i32 3 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2569, i32 2 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2571, i32 2 }
@___asan_gen_.1510 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1514 = private constant [33 x i8] c"../drivers/scsi/snic/snic_scsi.c\00", align 1
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1514, i32 2576, i32 3 }
@llvm.compiler.used = appending global [499 x ptr] [ptr @snic_abort_cmd._entry, ptr @snic_abort_cmd._entry.23, ptr @snic_abort_cmd._entry.26, ptr @snic_abort_cmd._entry_ptr, ptr @snic_abort_cmd._entry_ptr.25, ptr @snic_abort_cmd._entry_ptr.28, ptr @snic_abort_finish._entry, ptr @snic_abort_finish._entry.329, ptr @snic_abort_finish._entry.332, ptr @snic_abort_finish._entry_ptr, ptr @snic_abort_finish._entry_ptr.331, ptr @snic_abort_finish._entry_ptr.334, ptr @snic_aen_handler._entry, ptr @snic_aen_handler._entry.252, ptr @snic_aen_handler._entry.255, ptr @snic_aen_handler._entry.258, ptr @snic_aen_handler._entry.261, ptr @snic_aen_handler._entry.264, ptr @snic_aen_handler._entry.267, ptr @snic_aen_handler._entry.270, ptr @snic_aen_handler._entry.273, ptr @snic_aen_handler._entry.276, ptr @snic_aen_handler._entry.279, ptr @snic_aen_handler._entry.282, ptr @snic_aen_handler._entry.285, ptr @snic_aen_handler._entry.287, ptr @snic_aen_handler._entry_ptr, ptr @snic_aen_handler._entry_ptr.254, ptr @snic_aen_handler._entry_ptr.257, ptr @snic_aen_handler._entry_ptr.260, ptr @snic_aen_handler._entry_ptr.263, ptr @snic_aen_handler._entry_ptr.266, ptr @snic_aen_handler._entry_ptr.269, ptr @snic_aen_handler._entry_ptr.272, ptr @snic_aen_handler._entry_ptr.275, ptr @snic_aen_handler._entry_ptr.278, ptr @snic_aen_handler._entry_ptr.281, ptr @snic_aen_handler._entry_ptr.284, ptr @snic_aen_handler._entry_ptr.286, ptr @snic_aen_handler._entry_ptr.288, ptr @snic_cmpl_pending_tmreq._entry, ptr @snic_cmpl_pending_tmreq._entry_ptr, ptr @snic_device_reset._entry, ptr @snic_device_reset._entry.34, ptr @snic_device_reset._entry.37, ptr @snic_device_reset._entry.40, ptr @snic_device_reset._entry.43, ptr @snic_device_reset._entry.46, ptr @snic_device_reset._entry_ptr, ptr @snic_device_reset._entry_ptr.36, ptr @snic_device_reset._entry_ptr.39, ptr @snic_device_reset._entry_ptr.42, ptr @snic_device_reset._entry_ptr.45, ptr @snic_device_reset._entry_ptr.48, ptr @snic_dr_clean_pending_req._entry, ptr @snic_dr_clean_pending_req._entry.362, ptr @snic_dr_clean_pending_req._entry.365, ptr @snic_dr_clean_pending_req._entry_ptr, ptr @snic_dr_clean_pending_req._entry_ptr.364, ptr @snic_dr_clean_pending_req._entry_ptr.367, ptr @snic_dr_clean_single_req._entry, ptr @snic_dr_clean_single_req._entry.370, ptr @snic_dr_clean_single_req._entry.373, ptr @snic_dr_clean_single_req._entry.376, ptr @snic_dr_clean_single_req._entry.379, ptr @snic_dr_clean_single_req._entry.382, ptr @snic_dr_clean_single_req._entry_ptr, ptr @snic_dr_clean_single_req._entry_ptr.372, ptr @snic_dr_clean_single_req._entry_ptr.374, ptr @snic_dr_clean_single_req._entry_ptr.378, ptr @snic_dr_clean_single_req._entry_ptr.381, ptr @snic_dr_clean_single_req._entry_ptr.384, ptr @snic_dr_finish._entry, ptr @snic_dr_finish._entry.348, ptr @snic_dr_finish._entry.351, ptr @snic_dr_finish._entry.354, ptr @snic_dr_finish._entry.357, ptr @snic_dr_finish._entry_ptr, ptr @snic_dr_finish._entry_ptr.350, ptr @snic_dr_finish._entry_ptr.353, ptr @snic_dr_finish._entry_ptr.356, ptr @snic_dr_finish._entry_ptr.359, ptr @snic_hba_reset_cmpl_handler._entry, ptr @snic_hba_reset_cmpl_handler._entry.212, ptr @snic_hba_reset_cmpl_handler._entry.215, ptr @snic_hba_reset_cmpl_handler._entry.218, ptr @snic_hba_reset_cmpl_handler._entry.221, ptr @snic_hba_reset_cmpl_handler._entry.223, ptr @snic_hba_reset_cmpl_handler._entry.226, ptr @snic_hba_reset_cmpl_handler._entry.229, ptr @snic_hba_reset_cmpl_handler._entry.233, ptr @snic_hba_reset_cmpl_handler._entry.236, ptr @snic_hba_reset_cmpl_handler._entry.240, ptr @snic_hba_reset_cmpl_handler._entry_ptr, ptr @snic_hba_reset_cmpl_handler._entry_ptr.214, ptr @snic_hba_reset_cmpl_handler._entry_ptr.217, ptr @snic_hba_reset_cmpl_handler._entry_ptr.220, ptr @snic_hba_reset_cmpl_handler._entry_ptr.222, ptr @snic_hba_reset_cmpl_handler._entry_ptr.225, ptr @snic_hba_reset_cmpl_handler._entry_ptr.228, ptr @snic_hba_reset_cmpl_handler._entry_ptr.231, ptr @snic_hba_reset_cmpl_handler._entry_ptr.235, ptr @snic_hba_reset_cmpl_handler._entry_ptr.237, ptr @snic_hba_reset_cmpl_handler._entry_ptr.242, ptr @snic_hba_reset_scsi_cleanup._entry, ptr @snic_hba_reset_scsi_cleanup._entry_ptr, ptr @snic_host_reset._entry, ptr @snic_host_reset._entry_ptr, ptr @snic_icmnd_cmpl_handler._entry, ptr @snic_icmnd_cmpl_handler._entry.109, ptr @snic_icmnd_cmpl_handler._entry.112, ptr @snic_icmnd_cmpl_handler._entry.115, ptr @snic_icmnd_cmpl_handler._entry.118, ptr @snic_icmnd_cmpl_handler._entry.123, ptr @snic_icmnd_cmpl_handler._entry.126, ptr @snic_icmnd_cmpl_handler._entry.129, ptr @snic_icmnd_cmpl_handler._entry_ptr, ptr @snic_icmnd_cmpl_handler._entry_ptr.111, ptr @snic_icmnd_cmpl_handler._entry_ptr.114, ptr @snic_icmnd_cmpl_handler._entry_ptr.117, ptr @snic_icmnd_cmpl_handler._entry_ptr.119, ptr @snic_icmnd_cmpl_handler._entry_ptr.125, ptr @snic_icmnd_cmpl_handler._entry_ptr.128, ptr @snic_icmnd_cmpl_handler._entry_ptr.131, ptr @snic_internal_abort_io._entry, ptr @snic_internal_abort_io._entry.419, ptr @snic_internal_abort_io._entry.422, ptr @snic_internal_abort_io._entry.425, ptr @snic_internal_abort_io._entry.428, ptr @snic_internal_abort_io._entry.430, ptr @snic_internal_abort_io._entry_ptr, ptr @snic_internal_abort_io._entry_ptr.421, ptr @snic_internal_abort_io._entry_ptr.424, ptr @snic_internal_abort_io._entry_ptr.427, ptr @snic_internal_abort_io._entry_ptr.429, ptr @snic_internal_abort_io._entry_ptr.432, ptr @snic_io_cmpl_handler._entry, ptr @snic_io_cmpl_handler._entry.100, ptr @snic_io_cmpl_handler._entry.104, ptr @snic_io_cmpl_handler._entry.94, ptr @snic_io_cmpl_handler._entry.97, ptr @snic_io_cmpl_handler._entry_ptr, ptr @snic_io_cmpl_handler._entry_ptr.101, ptr @snic_io_cmpl_handler._entry_ptr.106, ptr @snic_io_cmpl_handler._entry_ptr.96, ptr @snic_io_cmpl_handler._entry_ptr.99, ptr @snic_is_abts_pending._entry, ptr @snic_is_abts_pending._entry_ptr, ptr @snic_issue_hba_reset._entry, ptr @snic_issue_hba_reset._entry.389, ptr @snic_issue_hba_reset._entry.392, ptr @snic_issue_hba_reset._entry.395, ptr @snic_issue_hba_reset._entry.398, ptr @snic_issue_hba_reset._entry.401, ptr @snic_issue_hba_reset._entry_ptr, ptr @snic_issue_hba_reset._entry_ptr.390, ptr @snic_issue_hba_reset._entry_ptr.394, ptr @snic_issue_hba_reset._entry_ptr.397, ptr @snic_issue_hba_reset._entry_ptr.400, ptr @snic_issue_hba_reset._entry_ptr.403, ptr @snic_issue_scsi_req._entry, ptr @snic_issue_scsi_req._entry.67, ptr @snic_issue_scsi_req._entry.70, ptr @snic_issue_scsi_req._entry_ptr, ptr @snic_issue_scsi_req._entry_ptr.69, ptr @snic_issue_scsi_req._entry_ptr.72, ptr @snic_issue_tm_req._entry, ptr @snic_issue_tm_req._entry.309, ptr @snic_issue_tm_req._entry.312, ptr @snic_issue_tm_req._entry_ptr, ptr @snic_issue_tm_req._entry_ptr.311, ptr @snic_issue_tm_req._entry_ptr.314, ptr @snic_itmf_cmpl_handler._entry, ptr @snic_itmf_cmpl_handler._entry.165, ptr @snic_itmf_cmpl_handler._entry.168, ptr @snic_itmf_cmpl_handler._entry.171, ptr @snic_itmf_cmpl_handler._entry.174, ptr @snic_itmf_cmpl_handler._entry_ptr, ptr @snic_itmf_cmpl_handler._entry_ptr.167, ptr @snic_itmf_cmpl_handler._entry_ptr.170, ptr @snic_itmf_cmpl_handler._entry_ptr.172, ptr @snic_itmf_cmpl_handler._entry_ptr.176, ptr @snic_msg_ack_handler._entry, ptr @snic_msg_ack_handler._entry.247, ptr @snic_msg_ack_handler._entry_ptr, ptr @snic_msg_ack_handler._entry_ptr.249, ptr @snic_proc_dr_cmpl_locked._entry, ptr @snic_proc_dr_cmpl_locked._entry.201, ptr @snic_proc_dr_cmpl_locked._entry.204, ptr @snic_proc_dr_cmpl_locked._entry.207, ptr @snic_proc_dr_cmpl_locked._entry_ptr, ptr @snic_proc_dr_cmpl_locked._entry_ptr.203, ptr @snic_proc_dr_cmpl_locked._entry_ptr.206, ptr @snic_proc_dr_cmpl_locked._entry_ptr.209, ptr @snic_proc_tmreq_pending_state._entry, ptr @snic_proc_tmreq_pending_state._entry.153, ptr @snic_proc_tmreq_pending_state._entry_ptr, ptr @snic_proc_tmreq_pending_state._entry_ptr.154, ptr @snic_process_icmnd_cmpl_status._entry, ptr @snic_process_icmnd_cmpl_status._entry_ptr, ptr @snic_process_io_failed_state._entry, ptr @snic_process_io_failed_state._entry.160, ptr @snic_process_io_failed_state._entry_ptr, ptr @snic_process_io_failed_state._entry_ptr.162, ptr @snic_process_itmf_cmpl._entry, ptr @snic_process_itmf_cmpl._entry.179, ptr @snic_process_itmf_cmpl._entry.182, ptr @snic_process_itmf_cmpl._entry.185, ptr @snic_process_itmf_cmpl._entry.188, ptr @snic_process_itmf_cmpl._entry.191, ptr @snic_process_itmf_cmpl._entry.194, ptr @snic_process_itmf_cmpl._entry_ptr, ptr @snic_process_itmf_cmpl._entry_ptr.181, ptr @snic_process_itmf_cmpl._entry_ptr.184, ptr @snic_process_itmf_cmpl._entry_ptr.187, ptr @snic_process_itmf_cmpl._entry_ptr.190, ptr @snic_process_itmf_cmpl._entry_ptr.193, ptr @snic_process_itmf_cmpl._entry_ptr.195, ptr @snic_queue_abort_req._entry, ptr @snic_queue_abort_req._entry_ptr, ptr @snic_queue_icmnd_req._entry, ptr @snic_queue_icmnd_req._entry.75, ptr @snic_queue_icmnd_req._entry_ptr, ptr @snic_queue_icmnd_req._entry_ptr.77, ptr @snic_queue_itmf_req._entry, ptr @snic_queue_itmf_req._entry.317, ptr @snic_queue_itmf_req._entry.321, ptr @snic_queue_itmf_req._entry.324, ptr @snic_queue_itmf_req._entry_ptr, ptr @snic_queue_itmf_req._entry_ptr.318, ptr @snic_queue_itmf_req._entry_ptr.323, ptr @snic_queue_itmf_req._entry_ptr.326, ptr @snic_queuecommand._entry, ptr @snic_queuecommand._entry.11, ptr @snic_queuecommand._entry.14, ptr @snic_queuecommand._entry.18, ptr @snic_queuecommand._entry_ptr, ptr @snic_queuecommand._entry_ptr.13, ptr @snic_queuecommand._entry_ptr.17, ptr @snic_queuecommand._entry_ptr.20, ptr @snic_release_req_buf._entry, ptr @snic_release_req_buf._entry.83, ptr @snic_release_req_buf._entry_ptr, ptr @snic_release_req_buf._entry_ptr.85, ptr @snic_reset._entry, ptr @snic_reset._entry.51, ptr @snic_reset._entry_ptr, ptr @snic_reset._entry_ptr.53, ptr @snic_scsi_cleanup._entry, ptr @snic_scsi_cleanup._entry.406, ptr @snic_scsi_cleanup._entry.409, ptr @snic_scsi_cleanup._entry.412, ptr @snic_scsi_cleanup._entry_ptr, ptr @snic_scsi_cleanup._entry_ptr.408, ptr @snic_scsi_cleanup._entry_ptr.411, ptr @snic_scsi_cleanup._entry_ptr.414, ptr @snic_send_abort_and_wait._entry, ptr @snic_send_abort_and_wait._entry.292, ptr @snic_send_abort_and_wait._entry.295, ptr @snic_send_abort_and_wait._entry.298, ptr @snic_send_abort_and_wait._entry.301, ptr @snic_send_abort_and_wait._entry_ptr, ptr @snic_send_abort_and_wait._entry_ptr.293, ptr @snic_send_abort_and_wait._entry_ptr.297, ptr @snic_send_abort_and_wait._entry_ptr.300, ptr @snic_send_abort_and_wait._entry_ptr.303, ptr @snic_send_dr_and_wait._entry, ptr @snic_send_dr_and_wait._entry.337, ptr @snic_send_dr_and_wait._entry.340, ptr @snic_send_dr_and_wait._entry.343, ptr @snic_send_dr_and_wait._entry_ptr, ptr @snic_send_dr_and_wait._entry_ptr.339, ptr @snic_send_dr_and_wait._entry_ptr.341, ptr @snic_send_dr_and_wait._entry_ptr.345, ptr @snic_shutdown_scsi_cleanup._entry, ptr @snic_shutdown_scsi_cleanup._entry_ptr, ptr @snic_tgt_scsi_abort_io._entry, ptr @snic_tgt_scsi_abort_io._entry.60, ptr @snic_tgt_scsi_abort_io._entry.63, ptr @snic_tgt_scsi_abort_io._entry_ptr, ptr @snic_tgt_scsi_abort_io._entry_ptr.62, ptr @snic_tgt_scsi_abort_io._entry_ptr.65, ptr @snic_update_abort_stats._entry, ptr @snic_update_abort_stats._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snic_state_str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @snic_req_state_str, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.102, ptr @.str.105, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.120, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @snic_io_status_str, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.164, ptr @.str.166, ptr @.str.169, ptr @.str.175, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.234, ptr @.str.238, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.248, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @.str.256, ptr @.str.259, ptr @.str.262, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274, ptr @.str.277, ptr @.str.280, ptr @.str.283, ptr @.str.290, ptr @.str.291, ptr @.str.296, ptr @.str.299, ptr @.str.302, ptr @init_completion.__key, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.310, ptr @.str.313, ptr @.str.315, ptr @.str.316, ptr @.str.319, ptr @.str.322, ptr @.str.325, ptr @.str.327, ptr @.str.328, ptr @.str.330, ptr @.str.333, ptr @.str.335, ptr @.str.336, ptr @.str.338, ptr @.str.344, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.352, ptr @.str.355, ptr @.str.358, ptr @.str.360, ptr @.str.361, ptr @.str.363, ptr @.str.366, ptr @.str.368, ptr @.str.369, ptr @.str.371, ptr @.str.375, ptr @.str.377, ptr @.str.380, ptr @.str.383, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.391, ptr @.str.393, ptr @.str.396, ptr @.str.399, ptr @.str.402, ptr @.str.404, ptr @.str.405, ptr @.str.407, ptr @.str.410, ptr @.str.413, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.420, ptr @.str.423, ptr @.str.426, ptr @.str.431], section "llvm.metadata"
@0 = internal global [357 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_state_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queuecommand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queuecommand._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queuecommand._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queuecommand._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_cmd._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_cmd._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_device_reset._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_reset._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_host_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_shutdown_scsi_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_scsi_abort_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_scsi_abort_io._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_tgt_scsi_abort_io._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_scsi_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_scsi_req._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_scsi_req._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_icmnd_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_icmnd_req._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_release_req_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 310, i32 384, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_release_req_buf._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_state_str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_cmpl_handler._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_cmpl_handler._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_cmpl_handler._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_cmpl_handler._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_icmnd_cmpl_handler._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_io_status_str to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_tmreq_pending_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_tmreq_pending_state._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_icmnd_cmpl_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_io_failed_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_io_failed_state._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_itmf_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_itmf_cmpl_handler._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_itmf_cmpl_handler._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_itmf_cmpl_handler._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_itmf_cmpl_handler._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_process_itmf_cmpl._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_update_abort_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_dr_cmpl_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_dr_cmpl_locked._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_dr_cmpl_locked._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_proc_dr_cmpl_locked._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_cmpl_handler._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hba_reset_scsi_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_msg_ack_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_msg_ack_handler._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.276 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.282 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_aen_handler._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_abort_and_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_abort_and_wait._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_abort_and_wait._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_abort_and_wait._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_abort_and_wait._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_abort_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_tm_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_tm_req._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_tm_req._entry.312 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_itmf_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_itmf_req._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_itmf_req._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_itmf_req._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_finish._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_finish._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_dr_and_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_dr_and_wait._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_dr_and_wait._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_send_dr_and_wait._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_finish._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_finish._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_finish._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_finish._entry.357 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_pending_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_pending_req._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_pending_req._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_clean_single_req._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_is_abts_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_issue_hba_reset._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_scsi_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_scsi_cleanup._entry.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_scsi_cleanup._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_scsi_cleanup._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_cmpl_pending_tmreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_internal_abort_io._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @snic_state_to_str(i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %cmp = icmp ugt i32 %state, 4
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [5 x ptr], ptr @snic_state_str, i32 0, i32 %state
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %spec.select = select i1 %tobool.not, ptr @.str.5, ptr %1
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.5, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_queuecommand(ptr noundef %shost, ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  %lun.i.i = alloca %struct.scsi_lun, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %parent.i = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 55, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %parent = getelementptr i8, ptr %3, i32 136
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release.i, align 4
  %cmp.i.not = icmp eq ptr %7, @snic_tgt_dev_release
  %add.ptr = getelementptr i8, ptr %5, i32 -24
  %spec.select = select i1 %cmp.i.not, ptr %add.ptr, ptr null
  %state.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i76 = icmp eq i32 %9, 2
  br i1 %cmp.i76, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %id = getelementptr inbounds %struct.snic_tgt, ptr %spec.select, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id, align 8
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev, ptr noundef nonnull @.str.6, ptr noundef %spec.select, i32 noundef %conv) #10
  %tgt_not_rdy = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 12, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tgt_not_rdy, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %tgt_not_rdy) #7
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 24
  %12 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65536, ptr %result, align 4
  tail call void @scsi_done(ptr noundef %sc) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 2
  br i1 %cmp.not, label %if.end17, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shost_gendev15 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %call16 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  %arrayidx = getelementptr [5 x ptr], ptr @snic_state_str, i32 0, i32 %call16
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev15, ptr noundef nonnull @.str.12, ptr noundef %14) #10
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %ios_inflight = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 49, i32 11
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_inflight, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ios_inflight, i32 1, i32 3, i32 1) #7
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_inflight, ptr %ios_inflight, i32 1, ptr elementtype(i32) %ios_inflight) #7, !srcloc !727
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %16 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end17.do.end36_crit_edge, label %do.end26, !prof !728

if.end17.do.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %shost_gendev27 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %tag = getelementptr i8, ptr %sc, i32 -172
  %17 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tag, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %19 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmnd, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %conv30 = zext i8 %22 to i32
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 4
  %lun = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %lun to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev27, ptr noundef nonnull @.str.15, ptr noundef %sc, i32 noundef %18, i32 noundef %conv30, i64 noundef %26) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end26, %if.end17.do.end36_crit_edge
  %tag1.i = getelementptr i8, ptr %sc, i32 -172
  %27 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tag1.i, align 4
  %add.ptr.i.i77 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %state.i78 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %state.i78 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state.i78, align 8
  %flags4.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %30 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %flags4.i, align 8
  %call5.i = tail call i32 @scsi_dma_map(ptr noundef %sc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i79 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i79, label %do.body.i, label %if.end19.i

do.body.i:                                        ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %31 = load ptr, ptr @snic_glob, align 4
  %enable.i = getelementptr inbounds %struct.snic_global, ptr %31, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enable.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %do.body.i.do.end17.i_crit_edge, label %if.then8.i, !prof !728

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

if.then8.i:                                       ; preds = %do.body.i
  %shost.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %34 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %shost.i, align 16
  %host_no.i = getelementptr inbounds %struct.Scsi_Host, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %host_no.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %host_no.i, align 4
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %38 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cmnd.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = ptrtoint ptr %state.i78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i78, align 8
  %call.i260.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i.i = icmp eq ptr %call.i260.i, null
  br i1 %tobool.not.i.i, label %if.then8.i.do.end17.i_crit_edge, label %if.end.i.i

if.then8.i.do.end17.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

if.end.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i = zext i32 %43 to i64
  %conv11.i = sext i32 %call5.i to i64
  %conv10.i = zext i8 %41 to i64
  %44 = ptrtoint ptr %sc to i32
  %conv9.i = zext i32 %44 to i64
  %fn1.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 1
  %45 = ptrtoint ptr %fn1.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store ptr @__func__.snic_issue_scsi_req, ptr %fn1.i.i, align 1
  %conv.i.i = and i32 %37, 65535
  %hno2.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 2
  %46 = ptrtoint ptr %hno2.i.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %conv.i.i, ptr %hno2.i.i, align 1
  %tag3.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 3
  %47 = ptrtoint ptr %tag3.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %28, ptr %tag3.i.i, align 1
  %data.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 4
  %48 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %conv9.i, ptr %data.i.i, align 1
  %arrayidx5.i.i = getelementptr %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 0, ptr %arrayidx5.i.i, align 1
  %arrayidx7.i.i = getelementptr %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 4, i32 2
  %50 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %conv10.i, ptr %arrayidx7.i.i, align 1
  %arrayidx9.i.i = getelementptr %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 4, i32 3
  %51 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %conv11.i, ptr %arrayidx9.i.i, align 1
  %arrayidx11.i.i = getelementptr %struct.snic_trc_data, ptr %call.i260.i, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %conv14.i, ptr %arrayidx11.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %conv12.i.i = zext i32 %53 to i64
  %54 = ptrtoint ptr %call.i260.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %conv12.i.i, ptr %call.i260.i, align 1
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.end.i.i, %if.then8.i.do.end17.i_crit_edge, %do.body.i.do.end17.i_crit_edge
  %shost18.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %55 = ptrtoint ptr %shost18.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shost18.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.66) #10
  br label %do.end42

if.end19.i:                                       ; preds = %do.end36
  %call20.i = tail call ptr @snic_req_init(ptr noundef %hostdata.i, i32 noundef %call5.i) #7
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scsi_dma_unmap(ptr noundef %sc) #7
  br label %do.end42

if.end23.i:                                       ; preds = %if.end19.i
  %id.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select, i32 0, i32 1
  %57 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %id.i, align 8
  %conv24.i = zext i16 %58 to i32
  %tgt_id.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 5
  %59 = ptrtoint ptr %tgt_id.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv24.i, ptr %tgt_id.i, align 4
  %sc25.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 9
  %60 = ptrtoint ptr %sc25.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %sc, ptr %sc25.i, align 8
  %61 = ptrtoint ptr %state.i78 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %state.i78, align 8
  %62 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call20.i, ptr %add.ptr.i.i77, align 8
  %cmnd30.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %63 = ptrtoint ptr %cmnd30.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cmnd30.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv32.i = zext i8 %66 to i64
  %shl.i = shl nuw i64 %conv32.i, 56
  %arrayidx34.i = getelementptr i8, ptr %64, i32 7
  %67 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx34.i, align 1
  %conv35.i = zext i8 %68 to i64
  %shl36.i = shl nuw nsw i64 %conv35.i, 40
  %or.i = or i64 %shl36.i, %shl.i
  %arrayidx38.i = getelementptr i8, ptr %64, i32 8
  %69 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %70 to i64
  %shl40.i = shl nuw nsw i64 %conv39.i, 32
  %or41.i = or i64 %or.i, %shl40.i
  %arrayidx43.i = getelementptr i8, ptr %64, i32 2
  %71 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx43.i, align 1
  %conv44.i = zext i8 %72 to i64
  %shl45.i = shl nuw nsw i64 %conv44.i, 24
  %or46.i = or i64 %or41.i, %shl45.i
  %arrayidx48.i = getelementptr i8, ptr %64, i32 3
  %73 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %74 to i64
  %shl50.i = shl nuw nsw i64 %conv49.i, 16
  %or51.i = or i64 %or46.i, %shl50.i
  %arrayidx53.i = getelementptr i8, ptr %64, i32 4
  %75 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %76 to i64
  %shl55.i = shl nuw nsw i64 %conv54.i, 8
  %or56.i = or i64 %or51.i, %shl55.i
  %arrayidx58.i = getelementptr i8, ptr %64, i32 5
  %77 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %78 to i64
  %or60.i = or i64 %or56.i, %conv59.i
  %79 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %flags4.i, align 8
  %or63.i = or i64 %80, 3
  store i64 %or63.i, ptr %flags4.i, align 8
  %shl66.i = shl i64 %or63.i, 32
  %or70.i = or i64 %shl66.i, 1
  %81 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tag1.i, align 4
  %and.i.i = and i32 %82, 63
  %arrayidx.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i266.i = icmp eq i32 %call5.i, 0
  %83 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 -1, ptr %lun.i.i, align 8
  br i1 %tobool.not.i266.i, label %if.end23.i.if.end.i270.i_crit_edge, label %for.body.preheader.i.i

if.end23.i.if.end.i270.i_crit_edge:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i270.i

for.body.preheader.i.i:                           ; preds = %if.end23.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17
  %84 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sdb.i.i.i, align 4
  %req.i.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 1
  %86 = ptrtoint ptr %req.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %req.i.i, align 8
  %add.ptr.i267.i = getelementptr %struct.snic_host_req, ptr %87, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.0104.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %sgd.0103.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i267.i, %for.body.preheader.i.i ]
  %sg.0102.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %85, %for.body.preheader.i.i ]
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0102.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_address.i.i, align 4
  %conv.i268.i = zext i32 %89 to i64
  %90 = tail call i64 @llvm.bswap.i64(i64 %conv.i268.i) #7
  %91 = ptrtoint ptr %sgd.0103.i.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %sgd.0103.i.i, align 8
  %dma_length.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0102.i.i, i32 0, i32 4
  %92 = ptrtoint ptr %dma_length.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_length.i.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  %len.i.i = getelementptr inbounds %struct.snic_sg_desc, ptr %sgd.0103.i.i, i32 0, i32 1
  %95 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %len.i.i, align 8
  %_resvd.i.i = getelementptr inbounds %struct.snic_sg_desc, ptr %sgd.0103.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %_resvd.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %_resvd.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.snic_sg_desc, ptr %sgd.0103.i.i, i32 1
  %inc.i.i = add nuw nsw i32 %i.0104.i.i, 1
  %call1.i.i = tail call ptr @sg_next(ptr noundef %sg.0102.i.i) #7
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call5.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i270.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.if.end.i270.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i270.i

if.end.i270.i:                                    ; preds = %for.body.i.i.if.end.i270.i_crit_edge, %if.end23.i.if.end.i270.i_crit_edge
  %flags.0.i.i = phi i16 [ 0, %if.end23.i.if.end.i270.i_crit_edge ], [ 4, %for.body.i.i.if.end.i270.i_crit_edge ]
  %pdev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 13, i32 1, i32 4, i32 1, i32 1
  %97 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %sense_buffer.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 21
  %99 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sense_buffer.i.i, align 4
  %call.i.i269.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %100) #7
  br i1 %call.i.i269.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i270.i
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !728

land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i.i) #7
  %init_name.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44, i32 3
  %101 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %104, %if.end.i.i.i.i ], [ %102, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #7
  br label %dma_map_single_attrs.exit.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i270.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef %100, i32 noundef 96) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %105 = load ptr, ptr @mem_map, align 4
  %106 = ptrtoint ptr %100 to i32
  %sub.i.i.i = add i32 %106, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i.i271.i = getelementptr %struct.page, ptr %105, i32 %shr.i.i.i
  %and.i.i.i = and i32 %106, 4095
  %call41.i.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i271.i, i32 noundef %and.i.i.i, i32 noundef 96, i32 noundef 2, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit.i.i

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.dma_map_single_attrs.exit.i.i_crit_edge ]
  %107 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pdev.i.i, align 8
  %dev4.i.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev4.i.i, i32 noundef %retval.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i.i)
  %cmp.i.i.i = icmp eq i32 %retval.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end10.i.i

do.end.i.i:                                       ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %109 = ptrtoint ptr %shost.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %shost.i.i, align 16
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %110, i32 0, i32 49
  %111 = ptrtoint ptr %sense_buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sense_buffer.i.i, align 4
  %113 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tag1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.73, ptr noundef %112, i32 noundef %114) #10
  br label %do.end77.i

if.end10.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  %115 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %device, align 4
  %lun11.i.i = getelementptr inbounds %struct.scsi_device, ptr %116, i32 0, i32 18
  %117 = ptrtoint ptr %lun11.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %lun11.i.i, align 8
  call void @int_to_scsilun(i64 noundef %118, ptr noundef nonnull %lun.i.i) #7
  %sc_data_direction.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 15
  %119 = ptrtoint ptr %sc_data_direction.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sc_data_direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp12.i.i = icmp eq i32 %120, 2
  %121 = or i16 %flags.0.i.i, 2
  %spec.select.i.i = select i1 %cmp12.i.i, i16 %121, i16 %flags.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp19.i.i = icmp eq i32 %120, 1
  %122 = zext i1 %cmp19.i.i to i16
  %flags.2.i.i = or i16 %spec.select.i.i, %122
  %req26.i.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 1
  %123 = ptrtoint ptr %req26.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %req26.i.i, align 8
  %125 = ptrtoint ptr %tag1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tag1.i, align 4
  %hid.i.i = getelementptr inbounds %struct.snic, ptr %hostdata.i, i32 0, i32 29, i32 11
  %127 = ptrtoint ptr %hid.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %hid.i.i, align 1
  %conv29.i.i = zext i8 %128 to i32
  %129 = ptrtoint ptr %call20.i to i32
  %130 = ptrtoint ptr %tgt_id.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tgt_id.i, align 4
  %conv31.i.i = zext i32 %131 to i64
  %132 = ptrtoint ptr %cmnd30.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cmnd30.i, align 4
  %cmd_len.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 14
  %134 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %cmd_len.i.i, align 4
  %conv32.i.i = trunc i16 %135 to i8
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 17, i32 1
  %136 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %length.i.i.i, align 4
  %conv34.i.i = trunc i32 %call5.i to i16
  %add.ptr36.i.i = getelementptr %struct.snic_host_req, ptr %124, i32 1
  %138 = ptrtoint ptr %add.ptr36.i.i to i32
  %hdr.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1
  %type.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 3
  %139 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 3, ptr %type.i.i.i.i, align 4
  %status1.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 4
  %140 = ptrtoint ptr %status1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %status1.i.i.i.i, align 1
  %protocol.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 5
  %141 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %protocol.i.i.i.i, align 2
  %142 = shl nuw i32 %conv29.i.i, 24
  %143 = ptrtoint ptr %hdr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %hdr.i.i.i, align 4
  %144 = call i32 @llvm.bswap.i32(i32 %126) #7
  %cmnd_id.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 1
  %145 = ptrtoint ptr %cmnd_id.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %cmnd_id.i.i.i.i, align 4
  %146 = call i16 @llvm.bswap.i16(i16 %conv34.i.i) #7
  %sg_cnt3.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 7
  %147 = ptrtoint ptr %sg_cnt3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %146, ptr %sg_cnt3.i.i.i.i, align 4
  %init_ctx.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 2
  %148 = ptrtoint ptr %init_ctx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %129, ptr %init_ctx.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 1, i32 6
  %149 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %flags.i.i.i.i, align 1
  %150 = shl nuw nsw i16 %flags.2.i.i, 8
  %flags1.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 1
  %151 = ptrtoint ptr %flags1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %150, ptr %flags1.i.i.i, align 2
  %152 = call i64 @llvm.bswap.i64(i64 %conv31.i.i) #7
  %tgt_id3.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 3
  %153 = ptrtoint ptr %tgt_id3.i.i.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %tgt_id3.i.i.i, align 8
  %lun_id.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 4
  %154 = ptrtoint ptr %lun.i.i to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %lun.i.i, align 8
  %156 = ptrtoint ptr %lun_id.i.i.i to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %lun_id.i.i.i, align 8
  %cdb_len6.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 5
  %157 = ptrtoint ptr %cdb_len6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv32.i.i, ptr %cdb_len6.i.i.i, align 8
  %cdb.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 9
  %158 = call ptr @memset(ptr %cdb.i.i.i, i32 0, i32 32)
  %conv32.mask.i.i = and i16 %135, 255
  %conv11.i.i.i = zext i16 %conv32.mask.i.i to i32
  %159 = call ptr @memcpy(ptr %cdb.i.i.i, ptr %133, i32 %conv11.i.i.i)
  %160 = call i32 @llvm.bswap.i32(i32 %137) #7
  %data_len13.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 8
  %161 = ptrtoint ptr %data_len13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %data_len13.i.i.i, align 4
  %conv14.i.i.i = zext i32 %138 to i64
  %162 = call i64 @llvm.bswap.i64(i64 %conv14.i.i.i) #7
  %sg_addr.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 10
  %163 = ptrtoint ptr %sg_addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %sg_addr.i.i.i, align 8
  %sense_len17.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 2
  %164 = ptrtoint ptr %sense_len17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1610612736, ptr %sense_len17.i.i.i, align 4
  %conv18.i.i.i = zext i32 %retval.0.i.i.i to i64
  %165 = call i64 @llvm.bswap.i64(i64 %conv18.i.i.i) #7
  %sense_addr.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %124, i32 0, i32 2, i32 0, i32 11
  %166 = ptrtoint ptr %sense_addr.i.i.i to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %sense_addr.i.i.i, align 8
  %s_stats.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 49, i32 12, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_stats.i.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %s_stats.i.i) #7
  %167 = ptrtoint ptr %req26.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %req26.i.i, align 8
  %req_len.i.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 4
  %169 = ptrtoint ptr %req_len.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %req_len.i.i, align 2
  %call38.i.i = call i32 @snic_queue_wq_desc(ptr noundef %hostdata.i, ptr noundef %168, i16 noundef zeroext %170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i.i)
  %tobool39.not.i.i = icmp eq i32 %call38.i.i, 0
  br i1 %tobool39.not.i.i, label %if.else.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i95.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %s_stats.i.i, i32 noundef 8) #7
  call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %s_stats.i.i) #7
  %shost47.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %171 = ptrtoint ptr %shost47.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %shost47.i.i, align 16
  %shost_gendev48.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %172, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev48.i.i, ptr noundef nonnull @.str.76, i32 noundef %call38.i.i) #10
  br label %do.end77.i

if.else.i.i:                                      ; preds = %if.end10.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %s_stats.i.i, i32 noundef 8) #7
  %call.i.i97.i.i = call i64 @generic_atomic64_read(ptr noundef %s_stats.i.i) #7
  %max_active.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 49, i32 12, i32 10, i32 1, i32 1
  %call.i.i11.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %max_active.i.i.i, i32 noundef 8) #7
  %call.i12.i.i.i = call i64 @generic_atomic64_read(ptr noundef %max_active.i.i.i) #7
  %173 = shl i64 %call.i.i97.i.i, 32
  %conv3.i.i.i = ashr exact i64 %173, 32
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i12.i.i.i, i64 %conv3.i.i.i)
  %cmp.i98.i.i = icmp slt i64 %call.i12.i.i.i, %conv3.i.i.i
  br i1 %cmp.i98.i.i, label %if.then.i99.i.i, label %if.else.i.i.if.else.i_crit_edge

if.else.i.i.if.else.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i99.i.i:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i13.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %max_active.i.i.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %max_active.i.i.i, i64 noundef %conv3.i.i.i) #7
  br label %if.else.i

do.end77.i:                                       ; preds = %if.then40.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ %call38.i.i, %if.then40.i.i ], [ -12, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun.i.i) #7
  %shost78.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %174 = ptrtoint ptr %shost78.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %shost78.i, align 16
  %shost_gendev79.i = getelementptr inbounds %struct.Scsi_Host, ptr %175, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev79.i, ptr noundef nonnull @.str.68, ptr noundef %sc, i32 noundef %retval.0.i.ph.i) #10
  %call85.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %176 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i.i77, align 8
  store ptr null, ptr %add.ptr.i.i77, align 8
  %178 = ptrtoint ptr %state.i78 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 6, ptr %state.i78, align 8
  %179 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %flags4.i, align 8
  %and.i = and i64 %180, 4294967293
  store i64 %and.i, ptr %flags4.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call85.i) #7
  %tobool98.not.i = icmp eq ptr %177, null
  br i1 %tobool98.not.i, label %do.end77.i.do.body101.i_crit_edge, label %if.then99.i

do.end77.i.do.body101.i_crit_edge:                ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101.i

if.then99.i:                                      ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @snic_release_req_buf(ptr noundef %hostdata.i, ptr noundef nonnull %177, ptr noundef %sc) #7
  br label %do.body101.i

do.body101.i:                                     ; preds = %if.then99.i, %do.end77.i.do.body101.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %181 = load ptr, ptr @snic_glob, align 4
  %enable103.i = getelementptr inbounds %struct.snic_global, ptr %181, i32 0, i32 7, i32 5
  %182 = ptrtoint ptr %enable103.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %enable103.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool104.not.i = icmp eq i8 %183, 0
  br i1 %tobool104.not.i, label %do.body101.i.do.end42_crit_edge, label %if.then111.i, !prof !728

do.body101.i.do.end42_crit_edge:                  ; preds = %do.body101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.then111.i:                                     ; preds = %do.body101.i
  %184 = ptrtoint ptr %shost78.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %shost78.i, align 16
  %host_no113.i = getelementptr inbounds %struct.Scsi_Host, ptr %185, i32 0, i32 17
  %186 = ptrtoint ptr %host_no113.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %host_no113.i, align 4
  %188 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %flags4.i, align 8
  %190 = ptrtoint ptr %state.i78 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %state.i78, align 8
  %call.i279.i = call ptr @snic_get_trc_buf() #7
  %tobool.not.i280.i = icmp eq ptr %call.i279.i, null
  br i1 %tobool.not.i280.i, label %if.then111.i.do.end42_crit_edge, label %if.end.i291.i

if.then111.i.do.end42_crit_edge:                  ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

if.end.i291.i:                                    ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl118.i = shl i64 %189, 32
  %conv121.i = zext i32 %191 to i64
  %or122.i = or i64 %shl118.i, %conv121.i
  %192 = ptrtoint ptr %sc to i32
  %conv115.i = zext i32 %192 to i64
  %fn1.i281.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 1
  %193 = ptrtoint ptr %fn1.i281.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 4)
  store ptr @__func__.snic_issue_scsi_req, ptr %fn1.i281.i, align 1
  %conv.i282.i = and i32 %187, 65535
  %hno2.i283.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 2
  %194 = ptrtoint ptr %hno2.i283.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 4)
  store i32 %conv.i282.i, ptr %hno2.i283.i, align 1
  %tag3.i284.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 3
  %195 = ptrtoint ptr %tag3.i284.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 4)
  store i32 %28, ptr %tag3.i284.i, align 1
  %data.i285.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 4
  %196 = ptrtoint ptr %data.i285.i to i32
  call void @__asan_storeN_noabort(i32 %196, i32 8)
  store i64 %conv115.i, ptr %data.i285.i, align 1
  %arrayidx5.i286.i = getelementptr %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 4, i32 1
  %arrayidx11.i289.i = getelementptr %struct.snic_trc_data, ptr %call.i279.i, i32 0, i32 4, i32 4
  %197 = call ptr @memset(ptr %arrayidx5.i286.i, i32 0, i32 24)
  %198 = ptrtoint ptr %arrayidx11.i289.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 8)
  store i64 %or122.i, ptr %arrayidx11.i289.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %199 = load volatile i32, ptr @jiffies, align 128
  %conv12.i290.i = zext i32 %199 to i64
  %200 = ptrtoint ptr %call.i279.i to i32
  call void @__asan_storeN_noabort(i32 %200, i32 8)
  store i64 %conv12.i290.i, ptr %call.i279.i, align 1
  br label %do.end42

if.else.i:                                        ; preds = %if.then.i99.i.i, %if.else.i.i.if.else.i_crit_edge
  %num_ios.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 9, i32 3, i32 1
  %call.i.i14.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %num_ios.i.i.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %num_ios.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun.i.i) #7
  %201 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %length.i.i.i, align 4
  %shr.i = lshr i32 %202, 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %203 = load volatile i32, ptr @jiffies, align 128
  %start_time.i = getelementptr inbounds %struct.snic_req_info, ptr %call20.i, i32 0, i32 2
  %204 = ptrtoint ptr %start_time.i to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %start_time.i, align 8
  %206 = trunc i64 %205 to i32
  %conv128.i = sub i32 %203, %206
  %conv129.i = zext i32 %shr.i to i64
  %max_io_sz.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 9
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %max_io_sz.i, i32 noundef 8) #7
  %call.i.i80 = call i64 @generic_atomic64_read(ptr noundef %max_io_sz.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i80, i64 %conv129.i)
  %cmp131.i = icmp slt i64 %call.i.i80, %conv129.i
  br i1 %cmp131.i, label %if.then133.i, label %if.else.i.if.end136.i_crit_edge

if.else.i.if.end136.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136.i

if.then133.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i254.i = call zeroext i1 @__kasan_check_write(ptr noundef %max_io_sz.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %max_io_sz.i, i64 noundef %conv129.i) #7
  br label %if.end136.i

if.end136.i:                                      ; preds = %if.then133.i, %if.else.i.if.end136.i_crit_edge
  %conv137.i = zext i32 %conv128.i to i64
  %max_qtime.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 49, i32 12, i32 10, i32 3, i32 3
  %call.i.i255.i = call zeroext i1 @__kasan_check_read(ptr noundef %max_qtime.i, i32 noundef 8) #7
  %call.i256.i = call i64 @generic_atomic64_read(ptr noundef %max_qtime.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i256.i, i64 %conv137.i)
  %cmp139.i = icmp slt i64 %call.i256.i, %conv137.i
  br i1 %cmp139.i, label %if.then141.i, label %if.end136.i.do.body145.i_crit_edge

if.end136.i.do.body145.i_crit_edge:               ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145.i

if.then141.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i257.i = call zeroext i1 @__kasan_check_write(ptr noundef %max_qtime.i, i32 noundef 8) #7
  call void @generic_atomic64_set(ptr noundef %max_qtime.i, i64 noundef %conv137.i) #7
  br label %do.body145.i

do.body145.i:                                     ; preds = %if.then141.i, %if.end136.i.do.body145.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %207 = load i32, ptr @snic_log_level, align 4
  %and146.i = and i32 %207, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146.i)
  %tobool147.not.i = icmp eq i32 %and146.i, 0
  br i1 %tobool147.not.i, label %do.body145.i.do.body166.i_crit_edge, label %do.end158.i, !prof !728

do.body145.i.do.body166.i_crit_edge:              ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body166.i

do.end158.i:                                      ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost159.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %208 = ptrtoint ptr %shost159.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %shost159.i, align 16
  %shost_gendev160.i = getelementptr inbounds %struct.Scsi_Host, ptr %209, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev160.i, ptr noundef nonnull @.str.71, ptr noundef %sc, i32 noundef %28) #10
  br label %do.body166.i

do.body166.i:                                     ; preds = %do.end158.i, %do.body145.i.do.body166.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %210 = load ptr, ptr @snic_glob, align 4
  %enable168.i = getelementptr inbounds %struct.snic_global, ptr %210, i32 0, i32 7, i32 5
  %211 = ptrtoint ptr %enable168.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %enable168.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool169.not.i = icmp eq i8 %212, 0
  br i1 %tobool169.not.i, label %do.body166.i.if.end44_crit_edge, label %if.then176.i, !prof !728

do.body166.i.if.end44_crit_edge:                  ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then176.i:                                     ; preds = %do.body166.i
  %shost177.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %213 = ptrtoint ptr %shost177.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %shost177.i, align 16
  %host_no178.i = getelementptr inbounds %struct.Scsi_Host, ptr %214, i32 0, i32 17
  %215 = ptrtoint ptr %host_no178.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %host_no178.i, align 4
  %call.i293.i = call ptr @snic_get_trc_buf() #7
  %tobool.not.i294.i = icmp eq ptr %call.i293.i, null
  br i1 %tobool.not.i294.i, label %if.then176.i.if.end44_crit_edge, label %if.end.i305.i

if.then176.i.if.end44_crit_edge:                  ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.end.i305.i:                                    ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv182.i = sext i32 %call5.i to i64
  %conv181.i = zext i32 %129 to i64
  %217 = ptrtoint ptr %sc to i32
  %conv180.i = zext i32 %217 to i64
  %fn1.i295.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 1
  %218 = ptrtoint ptr %fn1.i295.i to i32
  call void @__asan_storeN_noabort(i32 %218, i32 4)
  store ptr @__func__.snic_issue_scsi_req, ptr %fn1.i295.i, align 1
  %conv.i296.i = and i32 %216, 65535
  %hno2.i297.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 2
  %219 = ptrtoint ptr %hno2.i297.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 %conv.i296.i, ptr %hno2.i297.i, align 1
  %tag3.i298.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 3
  %220 = ptrtoint ptr %tag3.i298.i to i32
  call void @__asan_storeN_noabort(i32 %220, i32 4)
  store i32 %28, ptr %tag3.i298.i, align 1
  %data.i299.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 4
  %221 = ptrtoint ptr %data.i299.i to i32
  call void @__asan_storeN_noabort(i32 %221, i32 8)
  store i64 %conv180.i, ptr %data.i299.i, align 1
  %arrayidx5.i300.i = getelementptr %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 4, i32 1
  %222 = ptrtoint ptr %arrayidx5.i300.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %conv181.i, ptr %arrayidx5.i300.i, align 1
  %arrayidx7.i301.i = getelementptr %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 4, i32 2
  %223 = ptrtoint ptr %arrayidx7.i301.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 8)
  store i64 %conv182.i, ptr %arrayidx7.i301.i, align 1
  %arrayidx9.i302.i = getelementptr %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 4, i32 3
  %224 = ptrtoint ptr %arrayidx9.i302.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 8)
  store i64 %or60.i, ptr %arrayidx9.i302.i, align 1
  %arrayidx11.i303.i = getelementptr %struct.snic_trc_data, ptr %call.i293.i, i32 0, i32 4, i32 4
  %225 = ptrtoint ptr %arrayidx11.i303.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 8)
  store i64 %or70.i, ptr %arrayidx11.i303.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %226 = load volatile i32, ptr @jiffies, align 128
  %conv12.i304.i = zext i32 %226 to i64
  %227 = ptrtoint ptr %call.i293.i to i32
  call void @__asan_storeN_noabort(i32 %227, i32 8)
  store i64 %conv12.i304.i, ptr %call.i293.i, align 1
  br label %if.end44

do.end42:                                         ; preds = %if.end.i291.i, %if.then111.i.do.end42_crit_edge, %do.body101.i.do.end42_crit_edge, %if.then22.i, %do.end17.i
  %ret.0.i.ph = phi i32 [ %retval.0.i.ph.i, %if.end.i291.i ], [ %retval.0.i.ph.i, %if.then111.i.do.end42_crit_edge ], [ -12, %if.then22.i ], [ %retval.0.i.ph.i, %do.body101.i.do.end42_crit_edge ], [ -12, %do.end17.i ]
  %shost_gendev43 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev43, ptr noundef nonnull @.str.19, i32 noundef %ret.0.i.ph) #10
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %if.end.i305.i, %if.then176.i.if.end44_crit_edge, %do.body166.i.if.end44_crit_edge
  %ret.0 = phi i32 [ 4181, %do.end42 ], [ 0, %do.body166.i.if.end44_crit_edge ], [ 0, %if.then176.i.if.end44_crit_edge ], [ 0, %if.end.i305.i ]
  %call.i.i73 = call zeroext i1 @__kasan_check_write(ptr noundef %ios_inflight, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %ios_inflight, i32 1, i32 3, i32 1) #7
  %228 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_inflight, ptr %ios_inflight, i32 1, ptr elementtype(i32) %ios_inflight) #7, !srcloc !730
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end14, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 4181, %do.end14 ], [ %ret.0, %if.end44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_get_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_fwcq_cmpl_handler(ptr noundef %snic, i32 noundef %io_cmpl_work) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 16
  %cq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 15
  %2 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp17 = icmp ult i32 %1, %3
  br i1 %cmp17, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %umax.i = tail call i32 @llvm.umax.i32(i32 %io_cmpl_work, i32 1) #7
  %max_cq_ents = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 4, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cq_idx.019 = phi i32 [ %1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %num_ent.018 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %ring.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 3
  %4 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring.i, align 4
  %desc_size.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 3, i32 7
  %6 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_size.i, align 4
  %to_clean.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 4
  %8 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_clean.i, align 4
  %mul.i = mul i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i, i32 63
  %10 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr1.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !731
  %last_color.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 5
  %vdev.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 1
  %desc_count.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %cq_idx.019, i32 3, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %for.body
  %color.0.in.i = phi i8 [ %11, %for.body ], [ %675, %if.end13.i.while.cond.i_crit_edge ]
  %desc.0.i = phi ptr [ %add.ptr.i, %for.body ], [ %add.ptr20.i, %if.end13.i.while.cond.i_crit_edge ]
  %work_done.0.i = phi i32 [ 0, %for.body ], [ %inc21.i, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.i = lshr i8 %color.0.in.i, 7
  %conv.i = zext i8 %color.0.i to i32
  %12 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_color.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %13, %conv.i
  br i1 %cmp.not.i, label %while.cond.i.vnic_cq_fw_service.exit_crit_edge, label %while.body.i

while.cond.i.vnic_cq_fw_service.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vnic_cq_fw_service.exit

while.body.i:                                     ; preds = %while.cond.i
  %14 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev.i, align 4
  %call.i.i16 = tail call ptr @svnic_dev_priv(ptr noundef %15) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %conv.i.i = zext i32 %16 to i64
  tail call void @snic_print_desc(ptr noundef nonnull @__func__.snic_io_cmpl_handler, ptr noundef %desc.0.i, i32 noundef 64) #7
  %type.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i.i, align 4
  %19 = add i8 %18, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %19)
  %20 = icmp ult i8 %19, 6
  br i1 %20, label %if.then.i.i, label %while.body.i.if.end.i.i_crit_edge

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %fw.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.if.end.i.i_crit_edge
  %21 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i.i, align 4
  %23 = add i8 %22, -24
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %23)
  %24 = icmp ult i8 %23, 105
  br i1 %24, label %do.end.i.i, label %if.end.i.i.if.end74.i.i_crit_edge

if.end.i.i.if.end74.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  %call20.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.93, ptr noundef nonnull @__func__.snic_io_cmpl_handler, i32 noundef 1212) #10
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %type.i.i, align 4
  %27 = add i8 %26, -24
  call void @__sanitizer_cov_trace_const_cmp1(i8 105, i8 %27)
  %28 = icmp ult i8 %27, 105
  br i1 %28, label %land.rhs33.i.i, label %do.end.i.i.if.end74.i.i_crit_edge

do.end.i.i.if.end74.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

land.rhs33.i.i:                                   ; preds = %do.end.i.i
  %.b221.i.i = load i1, ptr @snic_io_cmpl_handler.__already_done, align 1
  br i1 %.b221.i.i, label %land.rhs33.i.i.if.end74.i.i_crit_edge, label %if.then40.i.i, !prof !728

land.rhs33.i.i.if.end74.i.i_crit_edge:            ; preds = %land.rhs33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i.i

if.then40.i.i:                                    ; preds = %land.rhs33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_io_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1212, i32 noundef 9, ptr noundef null) #7
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.then40.i.i, %land.rhs33.i.i.if.end74.i.i_crit_edge, %do.end.i.i.if.end74.i.i_crit_edge, %if.end.i.i.if.end74.i.i_crit_edge
  %status.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 4
  %29 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %status.i.i, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %if.end74.i.i.sw.epilog.i.i_crit_edge [
    i8 18, label %if.end74.i.i.sw.epilog.sink.split.i.i_crit_edge
    i8 19, label %do.end83.i.i
  ]

if.end74.i.i.sw.epilog.sink.split.i.i_crit_edge:  ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

if.end74.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

do.end83.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %do.end83.i.i, %if.end74.i.i.sw.epilog.sink.split.i.i_crit_edge
  %.str.98.sink.i.i = phi ptr [ @.str.98, %do.end83.i.i ], [ @.str.95, %if.end74.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %shost84.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %32 = ptrtoint ptr %shost84.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shost84.i.i, align 16
  %shost_gendev85.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %33, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev85.i.i, ptr noundef nonnull %.str.98.sink.i.i) #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end74.i.i.sw.epilog.i.i_crit_edge
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type.i.i, align 4
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.433)
  switch i8 %35, label %do.end100.i.i [
    i8 22, label %sw.bb89.i.i
    i8 18, label %sw.bb90.i.i
    i8 19, label %sw.bb92.i.i
    i8 20, label %sw.bb93.i.i
    i8 21, label %sw.bb94.i.i
    i8 -128, label %sw.bb96.i.i
    i8 -127, label %sw.bb97.i.i
  ]

sw.bb89.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snic_io_exch_ver_cmpl_handler(ptr noundef %call.i.i16, ptr noundef %desc.0.i) #7
  br label %sw.epilog175.i.i

sw.bb90.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call91.i.i = tail call i32 @snic_report_tgt_cmpl_handler(ptr noundef %call.i.i16, ptr noundef %desc.0.i) #7
  br label %sw.epilog175.i.i

sw.bb92.i.i:                                      ; preds = %sw.epilog.i.i
  %37 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %status.i.i, align 1
  %cmnd_id2.i.i.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 1
  %39 = ptrtoint ptr %cmnd_id2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmnd_id2.i.i.i.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %init_ctx.i.i.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %init_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %init_ctx.i.i.i.i, align 4
  %u.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1
  %44 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %u.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %46 = load i32, ptr @snic_log_level, align 4
  %and.i.i.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb92.i.i.do.end9.i.i.i_crit_edge, label %do.end.i.i.i, !prof !728

sw.bb92.i.i.do.end9.i.i.i_crit_edge:              ; preds = %sw.bb92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb92.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %desc.0.i, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %shost.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %50 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 49
  %conv5.i.i.i = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i.i, ptr noundef nonnull @.str.107, i32 noundef 19, i32 noundef %conv5.i.i.i, i32 noundef %41, i32 noundef %49, i32 noundef %43) #10
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %do.end.i.i.i, %sw.bb92.i.i.do.end9.i.i.i_crit_edge
  %max_tag_id.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 27
  %52 = ptrtoint ptr %max_tag_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_tag_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %53)
  %cmp.not.i.i.i = icmp ult i32 %41, %53
  %shost19.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %54 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost19.i.i.i, align 16
  br i1 %cmp.not.i.i.i, label %if.end.i601.i.i.i, label %do.end14.i.i.i

do.end14.i.i.i:                                   ; preds = %do.end9.i.i.i
  %shost_gendev16.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i.i.i.i = icmp ugt i8 %38, 19
  br i1 %cmp.i.i.i.i, label %do.end14.i.i.i.snic_io_status_to_str.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

do.end14.i.i.i.snic_io_status_to_str.exit.i.i.i_crit_edge: ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv17.i.i.i = zext i8 %38 to i32
  %arrayidx.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv17.i.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit.i.i.i

snic_io_status_to_str.exit.i.i.i:                 ; preds = %if.end.i.i.i.i, %do.end14.i.i.i.snic_io_status_to_str.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %57, %if.end.i.i.i.i ], [ @.str.5, %do.end14.i.i.i.snic_io_status_to_str.exit.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev16.i.i.i, ptr noundef nonnull @.str.110, i32 noundef %41, ptr noundef %retval.0.i.i.i.i) #10
  br label %sw.epilog175.i.i

if.end.i601.i.i.i:                                ; preds = %do.end9.i.i.i
  %shr.i.i.i.i.i = lshr i32 %41, 16
  %nr_hw_queues.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 13, i32 3
  %58 = ptrtoint ptr %nr_hw_queues.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_hw_queues.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %shr.i.i.i.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %59, %shr.i.i.i.i.i
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i601.i.i.i.land.rhs.i.i.i_crit_edge

if.end.i601.i.i.i.land.rhs.i.i.i_crit_edge:       ; preds = %if.end.i601.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i601.i.i.i
  %tags.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 13, i32 11
  %60 = ptrtoint ptr %tags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tags.i.i.i.i, align 4
  %arrayidx.i602.i.i.i = getelementptr ptr, ptr %61, i32 %shr.i.i.i.i.i
  %62 = ptrtoint ptr %arrayidx.i602.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i602.i.i.i, align 4
  %conv6.i.i.i.i = and i32 %41, 65535
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv6.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %65, %conv6.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.end8.i.i.i.i, label %if.then3.i.i.i.i.land.rhs.i.i.i_crit_edge

if.then3.i.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i
  %rqs.i.i.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %63, i32 0, i32 5
  %66 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %67, i32 %conv6.i.i.i.i
  %68 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %69) #7, !srcloc !732
  %70 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx2.i.i.i.i.i = getelementptr ptr, ptr %71, i32 %conv6.i.i.i.i
  %72 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx2.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.i.i.i.land.rhs.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end8.i.i.i.i.land.rhs.i.i.i_crit_edge:         ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.request, ptr %73, i32 0, i32 25
  %74 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i22.not.i.i.i.i = icmp eq i32 %75, 0
  %add.ptr.i.i.i.i.i = getelementptr %struct.request, ptr %73, i32 1
  %tobool21.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %or.cond.i.i.i = select i1 %cmp.i22.not.i.i.i.i, i1 true, i1 %tobool21.not.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false.i.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end104.i.i.i

lor.lhs.false.i.i.i.i.land.rhs.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i.land.rhs.i.i.i_crit_edge, %if.end8.i.i.i.i.land.rhs.i.i.i_crit_edge, %if.then3.i.i.i.i.land.rhs.i.i.i_crit_edge, %if.end.i601.i.i.i.land.rhs.i.i.i_crit_edge
  %.b597.i.i.i = load i1, ptr @snic_icmnd_cmpl_handler.__already_done, align 1
  br i1 %.b597.i.i.i, label %land.rhs.i.i.i.if.then73.i.i.i_crit_edge, label %if.then39.i.i.i, !prof !728

land.rhs.i.i.i.if.then73.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73.i.i.i

if.then39.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_icmnd_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 574, i32 noundef 9, ptr noundef null) #7
  br label %if.then73.i.i.i

if.then73.i.i.i:                                  ; preds = %if.then39.i.i.i, %land.rhs.i.i.i.if.then73.i.i.i_crit_edge
  %sc_null.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 12
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_null.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %sc_null.i.i.i) #7
  %76 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev78.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %77, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i604.i.i.i = icmp ugt i8 %38, 19
  br i1 %cmp.i604.i.i.i, label %if.then73.i.i.i.snic_io_status_to_str.exit608.i.i.i_crit_edge, label %if.end.i606.i.i.i

if.then73.i.i.i.snic_io_status_to_str.exit608.i.i.i_crit_edge: ; preds = %if.then73.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit608.i.i.i

if.end.i606.i.i.i:                                ; preds = %if.then73.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv79.i.i.i = zext i8 %38 to i32
  %arrayidx.i605.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv79.i.i.i
  %78 = ptrtoint ptr %arrayidx.i605.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i605.i.i.i, align 4
  br label %snic_io_status_to_str.exit608.i.i.i

snic_io_status_to_str.exit608.i.i.i:              ; preds = %if.end.i606.i.i.i, %if.then73.i.i.i.snic_io_status_to_str.exit608.i.i.i_crit_edge
  %retval.0.i607.i.i.i = phi ptr [ %79, %if.end.i606.i.i.i ], [ @.str.5, %if.then73.i.i.i.snic_io_status_to_str.exit608.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev78.i.i.i, ptr noundef nonnull @.str.113, ptr noundef %retval.0.i607.i.i.i, i32 noundef %41, ptr noundef %desc.0.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %80 = load ptr, ptr @snic_glob, align 4
  %enable.i.i.i = getelementptr inbounds %struct.snic_global, ptr %80, i32 0, i32 7, i32 5
  %81 = ptrtoint ptr %enable.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %enable.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool82.not.i.i.i = icmp eq i8 %82, 0
  br i1 %tobool82.not.i.i.i, label %snic_io_status_to_str.exit608.i.i.i.sw.epilog175.i.i_crit_edge, label %if.then89.i.i.i, !prof !728

snic_io_status_to_str.exit608.i.i.i.sw.epilog175.i.i_crit_edge: ; preds = %snic_io_status_to_str.exit608.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then89.i.i.i:                                  ; preds = %snic_io_status_to_str.exit608.i.i.i
  %83 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %shost19.i.i.i, align 16
  %host_no.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %84, i32 0, i32 17
  %85 = ptrtoint ptr %host_no.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %host_no.i.i.i, align 4
  %flags95.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 1
  %87 = ptrtoint ptr %flags95.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags95.i.i.i, align 1
  %resid.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %89 = ptrtoint ptr %resid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %resid.i.i.i, align 4
  %call.i.i225.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i609.i.i.i = icmp eq ptr %call.i.i225.i.i, null
  br i1 %tobool.not.i609.i.i.i, label %if.then89.i.i.i.sw.epilog175.i.i_crit_edge, label %if.end.i610.i.i.i

if.then89.i.i.i.sw.epilog175.i.i_crit_edge:       ; preds = %if.then89.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.end.i610.i.i.i:                                ; preds = %if.then89.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv100.i.i.i = zext i32 %43 to i64
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #7
  %conv99.i.i.i = zext i32 %91 to i64
  %92 = ptrtoint ptr %desc.0.i to i32
  %conv98.i.i.i = zext i32 %92 to i64
  %conv92.i.i.i = zext i8 %38 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv92.i.i.i, 16
  %conv93.i.i.i = zext i8 %45 to i64
  %shl94.i.i.i = shl nuw nsw i64 %conv93.i.i.i, 8
  %or.i.i.i = or i64 %shl94.i.i.i, %shl.i.i.i
  %conv96.i.i.i = zext i8 %88 to i64
  %or97.i.i.i = or i64 %or.i.i.i, %conv96.i.i.i
  %fn1.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %fn1.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store ptr @.str.108, ptr %fn1.i.i.i.i, align 1
  %conv.i.i.i.i = and i32 %86, 65535
  %hno2.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 2
  %94 = ptrtoint ptr %hno2.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 4)
  store i32 %conv.i.i.i.i, ptr %hno2.i.i.i.i, align 1
  %tag3.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %tag3.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 %41, ptr %tag3.i.i.i.i, align 1
  %data.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 4
  %96 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 0, ptr %data.i.i.i.i, align 1
  %arrayidx5.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %or97.i.i.i, ptr %arrayidx5.i.i.i.i, align 1
  %arrayidx7.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 4, i32 2
  %98 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 8)
  store i64 %conv98.i.i.i, ptr %arrayidx7.i.i.i.i, align 1
  %arrayidx9.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 4, i32 3
  %99 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %conv99.i.i.i, ptr %arrayidx9.i.i.i.i, align 1
  %arrayidx11.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i225.i.i, i32 0, i32 4, i32 4
  %100 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %conv100.i.i.i, ptr %arrayidx11.i.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %101 = load volatile i32, ptr @jiffies, align 128
  %conv12.i.i.i.i = zext i32 %101 to i64
  %102 = ptrtoint ptr %call.i.i225.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %conv12.i.i.i.i, ptr %call.i.i225.i.i, align 1
  br label %sw.epilog175.i.i

if.end104.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i
  %tag.i.i.i.i = getelementptr %struct.request, ptr %73, i32 0, i32 5
  %103 = ptrtoint ptr %tag.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tag.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %104, 63
  %arrayidx.i611.i.i.i = getelementptr %struct.snic, ptr %call.i.i16, i32 0, i32 24, i32 %and.i.i.i.i
  %call112.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i611.i.i.i) #7
  %add.ptr.i.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 19
  %105 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %add.ptr.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %107 = load i32, ptr @snic_log_level, align 4
  %and120.i.i.i = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i.i.i)
  %tobool121.not.i.i.i = icmp eq i32 %and120.i.i.i, 0
  br i1 %tobool121.not.i.i.i, label %if.end104.i.i.i.do.end143.i.i.i_crit_edge, label %do.end132.i.i.i, !prof !728

if.end104.i.i.i.do.end143.i.i.i_crit_edge:        ; preds = %if.end104.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end143.i.i.i

do.end132.i.i.i:                                  ; preds = %if.end104.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev134.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %109, i32 0, i32 49
  %device.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %110 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %device.i.i.i, align 4
  %lun.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %111, i32 0, i32 18
  %112 = ptrtoint ptr %lun.i.i.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %lun.i.i.i, align 8
  %cmnd.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 1
  %114 = ptrtoint ptr %cmnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cmnd.i.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv135.i.i.i = zext i8 %117 to i32
  %118 = ptrtoint ptr %tag.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tag.i.i.i.i, align 4
  %flags138.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 22
  %120 = ptrtoint ptr %flags138.i.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %flags138.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev134.i.i.i, ptr noundef nonnull @.str.116, i64 noundef %113, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %conv135.i.i.i, i32 noundef %119, i64 noundef %121, ptr noundef %106) #10
  br label %do.end143.i.i.i

do.end143.i.i.i:                                  ; preds = %do.end132.i.i.i, %if.end104.i.i.i.do.end143.i.i.i_crit_edge
  %flags145.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 22
  %122 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %flags145.i.i.i, align 8
  %and146.i.i.i = and i64 %123, 234881024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and146.i.i.i)
  %tobool147.not.i.i.i = icmp eq i64 %and146.i.i.i, 0
  br i1 %tobool147.not.i.i.i, label %if.end149.i.i.i, label %if.then148.i.i.i

if.then148.i.i.i:                                 ; preds = %do.end143.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i611.i.i.i, i32 noundef %call112.i.i.i) #7
  br label %sw.epilog175.i.i

if.end149.i.i.i:                                  ; preds = %do.end143.i.i.i
  %124 = inttoptr i32 %43 to ptr
  %cmp150.not.i.i.i = icmp eq ptr %106, %124
  br i1 %cmp150.not.i.i.i, label %if.end149.i.i.i.if.end262.i.i.i_crit_edge, label %land.rhs168.i.i.i

if.end149.i.i.i.if.end262.i.i.i_crit_edge:        ; preds = %if.end149.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end262.i.i.i

land.rhs168.i.i.i:                                ; preds = %if.end149.i.i.i
  %call157.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.108, i32 noundef 607) #10
  %.b595596.i.i.i = load i1, ptr @snic_icmnd_cmpl_handler.__already_done.121, align 1
  br i1 %.b595596.i.i.i, label %land.rhs168.i.i.i.if.end262.i.i.i_crit_edge, label %if.then179.i.i.i, !prof !728

land.rhs168.i.i.i.if.end262.i.i.i_crit_edge:      ; preds = %land.rhs168.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end262.i.i.i

if.then179.i.i.i:                                 ; preds = %land.rhs168.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_icmnd_cmpl_handler.__already_done.121, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 607, i32 noundef 9, ptr noundef null) #7
  br label %if.end262.i.i.i

if.end262.i.i.i:                                  ; preds = %if.then179.i.i.i, %land.rhs168.i.i.i.if.end262.i.i.i_crit_edge, %if.end149.i.i.i.if.end262.i.i.i_crit_edge
  %tobool270.not.i.i.i = icmp eq ptr %106, null
  br i1 %tobool270.not.i.i.i, label %if.then271.i.i.i, label %if.end286.i.i.i

if.then271.i.i.i:                                 ; preds = %if.end262.i.i.i
  %req_null.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 10
  %call.i.i599.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_null.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %req_null.i.i.i) #7
  %125 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %flags145.i.i.i, align 8
  %or276.i.i.i = or i64 %126, 8
  store i64 %or276.i.i.i, ptr %flags145.i.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i611.i.i.i, i32 noundef %call112.i.i.i) #7
  %127 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev281.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %128, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i616.i.i.i = icmp ugt i8 %38, 19
  br i1 %cmp.i616.i.i.i, label %if.then271.i.i.i.snic_io_status_to_str.exit620.i.i.i_crit_edge, label %if.end.i618.i.i.i

if.then271.i.i.i.snic_io_status_to_str.exit620.i.i.i_crit_edge: ; preds = %if.then271.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit620.i.i.i

if.end.i618.i.i.i:                                ; preds = %if.then271.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv282.i.i.i = zext i8 %38 to i32
  %arrayidx.i617.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv282.i.i.i
  %129 = ptrtoint ptr %arrayidx.i617.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i617.i.i.i, align 4
  br label %snic_io_status_to_str.exit620.i.i.i

snic_io_status_to_str.exit620.i.i.i:              ; preds = %if.end.i618.i.i.i, %if.then271.i.i.i.snic_io_status_to_str.exit620.i.i.i_crit_edge
  %retval.0.i619.i.i.i = phi ptr [ %130, %if.end.i618.i.i.i ], [ @.str.5, %if.then271.i.i.i.snic_io_status_to_str.exit620.i.i.i_crit_edge ]
  %131 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %flags145.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev281.i.i.i, ptr noundef nonnull @.str.124, ptr noundef %retval.0.i619.i.i.i, i32 noundef %41, ptr noundef nonnull %add.ptr.i.i.i.i.i, i64 noundef %132) #10
  br label %sw.epilog175.i.i

if.end286.i.i.i:                                  ; preds = %if.end262.i.i.i
  %start_time287.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %124, i32 0, i32 2
  %133 = ptrtoint ptr %start_time287.i.i.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %start_time287.i.i.i, align 8
  %conv288.i.i.i = trunc i64 %134 to i32
  %io_cmpl.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %124, i32 0, i32 7
  %135 = ptrtoint ptr %io_cmpl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load.i.i.i = load i8, ptr %io_cmpl.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %io_cmpl.i.i.i, align 4
  %state1.i.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 25
  %136 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %state1.i.i.i.i, align 8
  %138 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.434)
  switch i32 %137, label %if.end400.i.i.i [
    i32 2, label %if.end286.i.i.i.if.end48.i.i.i_crit_edge
    i32 4, label %if.then4.i.i.i
  ]

if.end286.i.i.i.if.end48.i.i.i_crit_edge:         ; preds = %if.end286.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end286.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then4.i.i.i, %if.end286.i.i.i.if.end48.i.i.i_crit_edge
  %.sink342.i.i = phi i64 [ 16777216, %if.then4.i.i.i ], [ 16, %if.end286.i.i.i.if.end48.i.i.i_crit_edge ]
  %139 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %flags145.i.i.i, align 8
  %or7.i.i.i = or i64 %140, %.sink342.i.i
  store i64 %or7.i.i.i, ptr %flags145.i.i.i, align 8
  %141 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.435)
  switch i8 %38, label %do.end58.i.i.i [
    i8 0, label %sw.bb.i.i.i
    i8 6, label %sw.bb52.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or51.i.i.i = or i64 %or7.i.i.i, 4
  %142 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %or51.i.i.i, ptr %flags145.i.i.i, align 8
  br label %snic_proc_tmreq_pending_state.exit.i.i

sw.bb52.i.i.i:                                    ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or55.i.i.i = or i64 %or7.i.i.i, 32
  %143 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %or55.i.i.i, ptr %flags145.i.i.i, align 8
  br label %snic_proc_tmreq_pending_state.exit.i.i

do.end58.i.i.i:                                   ; preds = %if.end48.i.i.i
  %call60.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.152, i32 noundef 400) #10
  %.b1192.i.i.i = load i1, ptr @snic_proc_tmreq_pending_state.__already_done.155, align 1
  br i1 %.b1192.i.i.i, label %do.end58.i.i.i.snic_proc_tmreq_pending_state.exit.i.i_crit_edge, label %if.then75.i.i.i, !prof !728

do.end58.i.i.i.snic_proc_tmreq_pending_state.exit.i.i_crit_edge: ; preds = %do.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_proc_tmreq_pending_state.exit.i.i

if.then75.i.i.i:                                  ; preds = %do.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_proc_tmreq_pending_state.__already_done.155, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 400, i32 noundef 9, ptr noundef null) #7
  br label %snic_proc_tmreq_pending_state.exit.i.i

snic_proc_tmreq_pending_state.exit.i.i:           ; preds = %if.then75.i.i.i, %do.end58.i.i.i.snic_proc_tmreq_pending_state.exit.i.i_crit_edge, %sw.bb52.i.i.i, %sw.bb.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i611.i.i.i, i32 noundef %call112.i.i.i) #7
  %s_stats298.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36
  %call.i.i.i333.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_stats298.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %s_stats298.i.i.i) #7
  %io_cmpl_skip.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 5
  %call.i.i8.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_cmpl_skip.i.i.i, i32 noundef 8) #7
  %call.i.i334.i.i = tail call i64 @generic_atomic64_read(ptr noundef %io_cmpl_skip.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i334.i.i)
  %tobool.not.i335.i.i = icmp eq i64 %call.i.i334.i.i, 0
  br i1 %tobool.not.i335.i.i, label %if.else.i.i.i, label %if.then.i336.i.i, !prof !728

if.then.i336.i.i:                                 ; preds = %snic_proc_tmreq_pending_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i9.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_cmpl_skip.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %io_cmpl_skip.i.i.i) #7
  br label %snic_stats_update_io_cmpl.exit.i.i

if.else.i.i.i:                                    ; preds = %snic_proc_tmreq_pending_state.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %compl.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 8
  %call.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compl.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %compl.i.i.i) #7
  br label %snic_stats_update_io_cmpl.exit.i.i

snic_stats_update_io_cmpl.exit.i.i:               ; preds = %if.else.i.i.i, %if.then.i336.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp300.i.i.i = icmp eq i8 %38, 6
  br i1 %cmp300.i.i.i, label %snic_stats_update_io_cmpl.exit.i.i.sw.epilog175.i.i_crit_edge, label %do.body310.i.i.i, !prof !728

snic_stats_update_io_cmpl.exit.i.i.sw.epilog175.i.i_crit_edge: ; preds = %snic_stats_update_io_cmpl.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

do.body310.i.i.i:                                 ; preds = %snic_stats_update_io_cmpl.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %144 = load i32, ptr @snic_log_level, align 4
  %and311.i.i.i = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311.i.i.i)
  %tobool312.not.i.i.i = icmp eq i32 %and311.i.i.i, 0
  br i1 %tobool312.not.i.i.i, label %do.body310.i.i.i.do.body339.i.i.i_crit_edge, label %do.end323.i.i.i, !prof !728

do.body310.i.i.i.do.body339.i.i.i_crit_edge:      ; preds = %do.body310.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body339.i.i.i

do.end323.i.i.i:                                  ; preds = %do.body310.i.i.i
  %145 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev325.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %146, i32 0, i32 49
  %147 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %state1.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %148)
  %cmp.i624.i.i.i = icmp ugt i32 %148, 6
  br i1 %cmp.i624.i.i.i, label %do.end323.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge, label %if.end.i626.i.i.i

do.end323.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge: ; preds = %do.end323.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit.i.i.i

if.end.i626.i.i.i:                                ; preds = %do.end323.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i625.i.i.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %148
  %149 = ptrtoint ptr %arrayidx.i625.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i625.i.i.i, align 4
  br label %snic_ioreq_state_to_str.exit.i.i.i

snic_ioreq_state_to_str.exit.i.i.i:               ; preds = %if.end.i626.i.i.i, %do.end323.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge
  %retval.0.i627.i.i.i = phi ptr [ %150, %if.end.i626.i.i.i ], [ @.str.5, %do.end323.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i628.i.i.i = icmp ugt i8 %38, 19
  br i1 %cmp.i628.i.i.i, label %snic_ioreq_state_to_str.exit.i.i.i.snic_io_status_to_str.exit632.i.i.i_crit_edge, label %if.end.i630.i.i.i

snic_ioreq_state_to_str.exit.i.i.i.snic_io_status_to_str.exit632.i.i.i_crit_edge: ; preds = %snic_ioreq_state_to_str.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit632.i.i.i

if.end.i630.i.i.i:                                ; preds = %snic_ioreq_state_to_str.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv328.i.i.i = zext i8 %38 to i32
  %arrayidx.i629.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv328.i.i.i
  %151 = ptrtoint ptr %arrayidx.i629.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx.i629.i.i.i, align 4
  br label %snic_io_status_to_str.exit632.i.i.i

snic_io_status_to_str.exit632.i.i.i:              ; preds = %if.end.i630.i.i.i, %snic_ioreq_state_to_str.exit.i.i.i.snic_io_status_to_str.exit632.i.i.i_crit_edge
  %retval.0.i631.i.i.i = phi ptr [ %152, %if.end.i630.i.i.i ], [ @.str.5, %snic_ioreq_state_to_str.exit.i.i.i.snic_io_status_to_str.exit632.i.i.i_crit_edge ]
  %conv330.i.i.i = zext i8 %45 to i32
  %resid331.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %153 = ptrtoint ptr %resid331.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %resid331.i.i.i, align 4
  %155 = tail call i32 @llvm.bswap.i32(i32 %154) #7
  %156 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %flags145.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev325.i.i.i, ptr noundef nonnull @.str.127, ptr noundef %retval.0.i627.i.i.i, ptr noundef %retval.0.i631.i.i.i, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %conv330.i.i.i, i32 noundef %155, i64 noundef %157) #10
  br label %do.body339.i.i.i

do.body339.i.i.i:                                 ; preds = %snic_io_status_to_str.exit632.i.i.i, %do.body310.i.i.i.do.body339.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %158 = load ptr, ptr @snic_glob, align 4
  %enable341.i.i.i = getelementptr inbounds %struct.snic_global, ptr %158, i32 0, i32 7, i32 5
  %159 = ptrtoint ptr %enable341.i.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %enable341.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool342.not.i.i.i = icmp eq i8 %160, 0
  br i1 %tobool342.not.i.i.i, label %do.body339.i.i.i.sw.epilog175.i.i_crit_edge, label %if.then349.i.i.i, !prof !728

do.body339.i.i.i.sw.epilog175.i.i_crit_edge:      ; preds = %do.body339.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then349.i.i.i:                                 ; preds = %do.body339.i.i.i
  %161 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %shost19.i.i.i, align 16
  %host_no351.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %162, i32 0, i32 17
  %163 = ptrtoint ptr %host_no351.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %host_no351.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %165, %conv288.i.i.i
  %call354.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i) #7
  %cmnd357.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 1
  %166 = ptrtoint ptr %cmnd357.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cmnd357.i.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %167, align 1
  %arrayidx362.i.i.i = getelementptr i8, ptr %167, i32 7
  %170 = ptrtoint ptr %arrayidx362.i.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx362.i.i.i, align 1
  %arrayidx367.i.i.i = getelementptr i8, ptr %167, i32 8
  %172 = ptrtoint ptr %arrayidx367.i.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx367.i.i.i, align 1
  %arrayidx372.i.i.i = getelementptr i8, ptr %167, i32 2
  %174 = ptrtoint ptr %arrayidx372.i.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx372.i.i.i, align 1
  %arrayidx377.i.i.i = getelementptr i8, ptr %167, i32 3
  %176 = ptrtoint ptr %arrayidx377.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx377.i.i.i, align 1
  %arrayidx382.i.i.i = getelementptr i8, ptr %167, i32 4
  %178 = ptrtoint ptr %arrayidx382.i.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx382.i.i.i, align 1
  %arrayidx387.i.i.i = getelementptr i8, ptr %167, i32 5
  %180 = ptrtoint ptr %arrayidx387.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx387.i.i.i, align 1
  %182 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %flags145.i.i.i, align 8
  %184 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %state1.i.i.i.i, align 8
  %call.i636.i.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i637.i.i.i = icmp eq ptr %call.i636.i.i.i, null
  br i1 %tobool.not.i637.i.i.i, label %if.then349.i.i.i.sw.epilog175.i.i_crit_edge, label %if.end.i648.i.i.i

if.then349.i.i.i.sw.epilog175.i.i_crit_edge:      ; preds = %if.then349.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.end.i648.i.i.i:                                ; preds = %if.then349.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl392.i.i.i = shl i64 %183, 32
  %conv395.i.i.i = zext i32 %185 to i64
  %or396.i.i.i = or i64 %shl392.i.i.i, %conv395.i.i.i
  %conv359.i.i.i = zext i8 %169 to i64
  %shl360.i.i.i = shl nuw i64 %conv359.i.i.i, 56
  %conv363.i.i.i = zext i8 %171 to i64
  %shl364.i.i.i = shl nuw nsw i64 %conv363.i.i.i, 40
  %or365.i.i.i = or i64 %shl364.i.i.i, %shl360.i.i.i
  %conv368.i.i.i = zext i8 %173 to i64
  %shl369.i.i.i = shl nuw nsw i64 %conv368.i.i.i, 32
  %or370.i.i.i = or i64 %or365.i.i.i, %shl369.i.i.i
  %conv373.i.i.i = zext i8 %175 to i64
  %shl374.i.i.i = shl nuw nsw i64 %conv373.i.i.i, 24
  %or375.i.i.i = or i64 %or370.i.i.i, %shl374.i.i.i
  %conv378.i.i.i = zext i8 %177 to i64
  %shl379.i.i.i = shl nuw nsw i64 %conv378.i.i.i, 16
  %or380.i.i.i = or i64 %or375.i.i.i, %shl379.i.i.i
  %conv383.i.i.i = zext i8 %179 to i64
  %shl384.i.i.i = shl nuw nsw i64 %conv383.i.i.i, 8
  %or385.i.i.i = or i64 %or380.i.i.i, %shl384.i.i.i
  %conv388.i.i.i = zext i8 %181 to i64
  %or389.i.i.i = or i64 %or385.i.i.i, %conv388.i.i.i
  %186 = ptrtoint ptr %desc.0.i to i32
  %conv356.i.i.i = zext i32 %186 to i64
  %conv355.i.i.i = zext i32 %call354.i.i.i to i64
  %187 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %conv353.i.i.i = zext i32 %187 to i64
  %fn1.i638.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 1
  %188 = ptrtoint ptr %fn1.i638.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store ptr @.str.108, ptr %fn1.i638.i.i.i, align 1
  %conv.i639.i.i.i = and i32 %164, 65535
  %hno2.i640.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 2
  %189 = ptrtoint ptr %hno2.i640.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %conv.i639.i.i.i, ptr %hno2.i640.i.i.i, align 1
  %tag3.i641.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 3
  %190 = ptrtoint ptr %tag3.i641.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %41, ptr %tag3.i641.i.i.i, align 1
  %data.i642.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 4
  %191 = ptrtoint ptr %data.i642.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 8)
  store i64 %conv353.i.i.i, ptr %data.i642.i.i.i, align 1
  %arrayidx5.i643.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 4, i32 1
  %192 = ptrtoint ptr %arrayidx5.i643.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 8)
  store i64 %conv355.i.i.i, ptr %arrayidx5.i643.i.i.i, align 1
  %arrayidx7.i644.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 4, i32 2
  %193 = ptrtoint ptr %arrayidx7.i644.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %193, i32 8)
  store i64 %conv356.i.i.i, ptr %arrayidx7.i644.i.i.i, align 1
  %arrayidx9.i645.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 4, i32 3
  %194 = ptrtoint ptr %arrayidx9.i645.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %194, i32 8)
  store i64 %or389.i.i.i, ptr %arrayidx9.i645.i.i.i, align 1
  %arrayidx11.i646.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i636.i.i.i, i32 0, i32 4, i32 4
  %195 = ptrtoint ptr %arrayidx11.i646.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 8)
  store i64 %or396.i.i.i, ptr %arrayidx11.i646.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %196 = load volatile i32, ptr @jiffies, align 128
  %conv12.i647.i.i.i = zext i32 %196 to i64
  %197 = ptrtoint ptr %call.i636.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 8)
  store i64 %conv12.i647.i.i.i, ptr %call.i636.i.i.i, align 1
  br label %sw.epilog175.i.i

if.end400.i.i.i:                                  ; preds = %if.end286.i.i.i
  %198 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %u.i.i.i, align 4
  %200 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 6, ptr %state1.i.i.i.i, align 8
  %201 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.436)
  switch i8 %38, label %do.body.i.i [
    i8 0, label %if.then.i.i.i.i
    i8 7, label %sw.bb.i.i
    i8 6, label %sw.bb1.i.i
    i8 9, label %sw.bb4.i.i
    i8 2, label %sw.bb7.i.i
    i8 5, label %sw.bb9.i.i
    i8 8, label %sw.bb11.i.i
    i8 10, label %sw.bb14.i.i
    i8 17, label %sw.bb17.i.i
    i8 18, label %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge
    i8 15, label %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge20
  ], !prof !733

if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge20: ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.sink.split.i.i

if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge: ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.sink.split.i.i

if.then.i.i.i.i:                                  ; preds = %if.end400.i.i.i
  %conv3.i.i.i.i = zext i8 %199 to i32
  %result.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i.i.i, i32 0, i32 24
  %202 = ptrtoint ptr %result.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %conv3.i.i.i.i, ptr %result.i.i.i.i, align 4
  %resid.i.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %203 = ptrtoint ptr %resid.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %resid.i.i.i.i, align 4
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  %resid_len.i.i.i.i.i = getelementptr %struct.request, ptr %73, i32 1, i32 8
  %206 = ptrtoint ptr %resid_len.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %resid_len.i.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %flags.i.i.i.i, align 1
  %209 = and i8 %208, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool7.not.i.i.i.i = icmp eq i8 %209, 0
  br i1 %tobool7.not.i.i.i.i, label %if.then.i.i.i.i.if.end.i651.i.i.i_crit_edge, label %if.then8.i.i.i.i

if.then.i.i.i.i.if.end.i651.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i651.i.i.i

if.then8.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_under_run.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_under_run.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %io_under_run.i.i.i.i) #7
  br label %if.end.i651.i.i.i

if.end.i651.i.i.i:                                ; preds = %if.then8.i.i.i.i, %if.then.i.i.i.i.if.end.i651.i.i.i_crit_edge
  %210 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %u.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %211)
  %cmp13.i.i.i.i = icmp eq i8 %211, 40
  br i1 %cmp13.i.i.i.i, label %if.then15.i.i.i.i, label %if.end.i651.i.i.i.if.end416.i.i.i_crit_edge

if.end.i651.i.i.i.if.end416.i.i.i_crit_edge:      ; preds = %if.end.i651.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end416.i.i.i

if.then15.i.i.i.i:                                ; preds = %if.end.i651.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %qfull.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 15
  %call.i.i41.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qfull.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %qfull.i.i.i.i) #7
  br label %if.end416.i.i.i

sw.bb.i.i:                                        ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_tmo.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 7
  %call.i.i.i2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_tmo.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %io_tmo.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb1.i.i:                                       ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_aborted.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 8
  %call.i.i51.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_aborted.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %io_aborted.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb4.i.i:                                       ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_cnt_mismat.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 6
  %call.i.i52.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data_cnt_mismat.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %data_cnt_mismat.i.i) #7
  %resid.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %212 = ptrtoint ptr %resid.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %resid.i.i, align 4
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #7
  %resid_len.i.i.i = getelementptr %struct.request, ptr %73, i32 1, i32 8
  %215 = ptrtoint ptr %resid_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %214, ptr %resid_len.i.i.i, align 4
  br label %if.end.i.sink.split.i.i

sw.bb7.i.i:                                       ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %out_of_res.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 3, i32 2
  %call.i.i53.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %out_of_res.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %out_of_res.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_not_found.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 13
  %call.i.i54.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_not_found.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %io_not_found.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb11.i.i:                                      ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sgl_inval.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 4, i32 9
  %call.i.i55.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sgl_inval.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %sgl_inval.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb14.i.i:                                      ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_errs.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 3, i32 3
  %call.i.i56.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_errs.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %io_errs.i.i) #7
  br label %if.end.i.sink.split.i.i

sw.bb17.i.i:                                      ; preds = %if.end400.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %scsi_errs.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 3, i32 4
  %call.i.i57.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %scsi_errs.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %scsi_errs.i.i) #7
  br label %if.end.i.sink.split.i.i

do.body.i.i:                                      ; preds = %if.end400.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %216 = load i32, ptr @snic_log_level, align 4
  %and.i3.i = and i32 %216, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end32.i.i_crit_edge, label %do.end.i4.i, !prof !728

do.body.i.i.do.end32.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32.i.i

do.end.i4.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %217 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %218, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.158) #10
  br label %do.end32.i.i

do.end32.i.i:                                     ; preds = %do.end.i4.i, %do.body.i.i.do.end32.i.i_crit_edge
  %219 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev34.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %220, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i.i5.i = icmp ugt i8 %38, 19
  br i1 %cmp.i.i5.i, label %do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge, label %do.end32.i.i.if.end.i.i.i_crit_edge

do.end32.i.i.if.end.i.i.i_crit_edge:              ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge: ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_process_io_failed_state.exit.i

if.end.i.sink.split.i.i:                          ; preds = %sw.bb17.i.i, %sw.bb14.i.i, %sw.bb11.i.i, %sw.bb9.i.i, %sw.bb7.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge, %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge20
  %res.063.ph.i.i = phi i32 [ 196608, %sw.bb.i.i ], [ 327680, %sw.bb1.i.i ], [ 458752, %sw.bb4.i.i ], [ 851968, %sw.bb7.i.i ], [ 458752, %sw.bb9.i.i ], [ 458752, %sw.bb11.i.i ], [ 458752, %sw.bb14.i.i ], [ 0, %sw.bb17.i.i ], [ 65536, %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge ], [ 65536, %if.end400.i.i.i.if.end.i.sink.split.i.i_crit_edge20 ]
  %221 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev3471.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %222, i32 0, i32 49
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.sink.split.i.i, %do.end32.i.i.if.end.i.i.i_crit_edge
  %shost_gendev3466.i.i = phi ptr [ %shost_gendev34.i.i, %do.end32.i.i.if.end.i.i.i_crit_edge ], [ %shost_gendev3471.i.i, %if.end.i.sink.split.i.i ]
  %res.063.i.i = phi i32 [ 458752, %do.end32.i.i.if.end.i.i.i_crit_edge ], [ %res.063.ph.i.i, %if.end.i.sink.split.i.i ]
  %conv65.i.i = zext i8 %38 to i32
  %arrayidx.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv65.i.i
  %223 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx.i.i.i, align 4
  br label %snic_process_io_failed_state.exit.i

snic_process_io_failed_state.exit.i:              ; preds = %if.end.i.i.i, %do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge
  %shost_gendev3467.i.i = phi ptr [ %shost_gendev3466.i.i, %if.end.i.i.i ], [ %shost_gendev34.i.i, %do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge ]
  %res.064.i.i = phi i32 [ %res.063.i.i, %if.end.i.i.i ], [ 458752, %do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge ]
  %retval.0.i.i.i = phi ptr [ %224, %if.end.i.i.i ], [ @.str.5, %do.end32.i.i.snic_process_io_failed_state.exit.i_crit_edge ]
  %225 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %flags145.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev3467.i.i, ptr noundef nonnull @.str.161, ptr noundef %retval.0.i.i.i, i64 noundef %226) #10
  %227 = ptrtoint ptr %u.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %u.i.i.i, align 4
  %conv37.i.i = zext i8 %228 to i32
  %or.i.i = or i32 %res.064.i.i, %conv37.i.i
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i.i.i, i32 0, i32 24
  %229 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %or.i.i, ptr %result.i.i, align 4
  %fail.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 9
  %call.i.i42.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fail.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %fail.i.i.i.i) #7
  %230 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %231, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %38)
  %cmp.i.i652.i.i.i = icmp ugt i8 %38, 19
  br i1 %cmp.i.i652.i.i.i, label %snic_process_io_failed_state.exit.i.if.then403.i.i.i_crit_edge, label %if.end.i.i.i.i.i

snic_process_io_failed_state.exit.i.if.then403.i.i.i_crit_edge: ; preds = %snic_process_io_failed_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then403.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %snic_process_io_failed_state.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i653.i.i.i = zext i8 %38 to i32
  %arrayidx.i.i654.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i653.i.i.i
  %232 = ptrtoint ptr %arrayidx.i.i654.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx.i.i654.i.i.i, align 4
  br label %if.then403.i.i.i

if.then403.i.i.i:                                 ; preds = %if.end.i.i.i.i.i, %snic_process_io_failed_state.exit.i.if.then403.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %233, %if.end.i.i.i.i.i ], [ @.str.5, %snic_process_io_failed_state.exit.i.if.then403.i.i.i_crit_edge ]
  %234 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %flags145.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i.i.i.i, ptr noundef nonnull @.str.156, ptr noundef %retval.0.i.i.i.i.i, i64 noundef %235) #10
  tail call void @scsi_print_command(ptr noundef nonnull %add.ptr.i.i.i.i.i) #7
  %236 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %shost19.i.i.i, align 16
  %shost_gendev408.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %237, i32 0, i32 49
  %cmnd409.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 1
  %238 = ptrtoint ptr %cmnd409.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cmnd409.i.i.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %239, align 1
  %conv411.i.i.i = zext i8 %241 to i32
  br i1 %cmp.i.i652.i.i.i, label %if.then403.i.i.i.snic_io_status_to_str.exit659.i.i.i_crit_edge, label %if.end.i657.i.i.i

if.then403.i.i.i.snic_io_status_to_str.exit659.i.i.i_crit_edge: ; preds = %if.then403.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit659.i.i.i

if.end.i657.i.i.i:                                ; preds = %if.then403.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv412.i.i.i = zext i8 %38 to i32
  %arrayidx.i656.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv412.i.i.i
  %242 = ptrtoint ptr %arrayidx.i656.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx.i656.i.i.i, align 4
  br label %snic_io_status_to_str.exit659.i.i.i

snic_io_status_to_str.exit659.i.i.i:              ; preds = %if.end.i657.i.i.i, %if.then403.i.i.i.snic_io_status_to_str.exit659.i.i.i_crit_edge
  %retval.0.i658.i.i.i = phi ptr [ %243, %if.end.i657.i.i.i ], [ @.str.5, %if.then403.i.i.i.snic_io_status_to_str.exit659.i.i.i_crit_edge ]
  %244 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %flags145.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev408.i.i.i, ptr noundef nonnull @.str.130, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %conv411.i.i.i, i32 noundef %41, ptr noundef %retval.0.i658.i.i.i, i64 noundef %245) #10
  br label %if.end416.i.i.i

if.end416.i.i.i:                                  ; preds = %snic_io_status_to_str.exit659.i.i.i, %if.then15.i.i.i.i, %if.end.i651.i.i.i.if.end416.i.i.i_crit_edge
  %246 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr null, ptr %add.ptr.i.i.i.i, align 8
  %247 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %flags145.i.i.i, align 8
  %or421.i.i.i = or i64 %248, 4
  store i64 %or421.i.i.i, ptr %flags145.i.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i611.i.i.i, i32 noundef %call112.i.i.i) #7
  tail call void @snic_calc_io_process_time(ptr noundef %call.i.i16, ptr noundef %124) #7
  tail call fastcc void @snic_release_req_buf(ptr noundef %call.i.i16, ptr noundef %124, ptr noundef nonnull %add.ptr.i.i.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %249 = load ptr, ptr @snic_glob, align 4
  %enable424.i.i.i = getelementptr inbounds %struct.snic_global, ptr %249, i32 0, i32 7, i32 5
  %250 = ptrtoint ptr %enable424.i.i.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %enable424.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %251)
  %tobool425.not.i.i.i = icmp eq i8 %251, 0
  br i1 %tobool425.not.i.i.i, label %if.end416.i.i.i.do.end483.i.i.i_crit_edge, label %if.then432.i.i.i, !prof !728

if.end416.i.i.i.do.end483.i.i.i_crit_edge:        ; preds = %if.end416.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end483.i.i.i

if.then432.i.i.i:                                 ; preds = %if.end416.i.i.i
  %252 = ptrtoint ptr %shost19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %shost19.i.i.i, align 16
  %host_no434.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %253, i32 0, i32 17
  %254 = ptrtoint ptr %host_no434.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %host_no434.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %256 = load volatile i32, ptr @jiffies, align 128
  %sub437.i.i.i = sub i32 %256, %conv288.i.i.i
  %call438.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub437.i.i.i) #7
  %cmnd441.i.i.i = getelementptr %struct.request, ptr %73, i32 2, i32 1
  %257 = ptrtoint ptr %cmnd441.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %cmnd441.i.i.i, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %258, align 1
  %arrayidx446.i.i.i = getelementptr i8, ptr %258, i32 7
  %261 = ptrtoint ptr %arrayidx446.i.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx446.i.i.i, align 1
  %arrayidx451.i.i.i = getelementptr i8, ptr %258, i32 8
  %263 = ptrtoint ptr %arrayidx451.i.i.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx451.i.i.i, align 1
  %arrayidx456.i.i.i = getelementptr i8, ptr %258, i32 2
  %265 = ptrtoint ptr %arrayidx456.i.i.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx456.i.i.i, align 1
  %arrayidx461.i.i.i = getelementptr i8, ptr %258, i32 3
  %267 = ptrtoint ptr %arrayidx461.i.i.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx461.i.i.i, align 1
  %arrayidx466.i.i.i = getelementptr i8, ptr %258, i32 4
  %269 = ptrtoint ptr %arrayidx466.i.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %arrayidx466.i.i.i, align 1
  %arrayidx471.i.i.i = getelementptr i8, ptr %258, i32 5
  %271 = ptrtoint ptr %arrayidx471.i.i.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx471.i.i.i, align 1
  %273 = ptrtoint ptr %flags145.i.i.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %flags145.i.i.i, align 8
  %275 = ptrtoint ptr %state1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %state1.i.i.i.i, align 8
  %call.i665.i.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i666.i.i.i = icmp eq ptr %call.i665.i.i.i, null
  br i1 %tobool.not.i666.i.i.i, label %if.then432.i.i.i.do.end483.i.i.i_crit_edge, label %if.end.i677.i.i.i

if.then432.i.i.i.do.end483.i.i.i_crit_edge:       ; preds = %if.then432.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end483.i.i.i

if.end.i677.i.i.i:                                ; preds = %if.then432.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl476.i.i.i = shl i64 %274, 32
  %conv479.i.i.i = zext i32 %276 to i64
  %or480.i.i.i = or i64 %shl476.i.i.i, %conv479.i.i.i
  %conv443.i.i.i = zext i8 %260 to i64
  %shl444.i.i.i = shl nuw i64 %conv443.i.i.i, 56
  %conv447.i.i.i = zext i8 %262 to i64
  %shl448.i.i.i = shl nuw nsw i64 %conv447.i.i.i, 40
  %or449.i.i.i = or i64 %shl448.i.i.i, %shl444.i.i.i
  %conv452.i.i.i = zext i8 %264 to i64
  %shl453.i.i.i = shl nuw nsw i64 %conv452.i.i.i, 32
  %or454.i.i.i = or i64 %or449.i.i.i, %shl453.i.i.i
  %conv457.i.i.i = zext i8 %266 to i64
  %shl458.i.i.i = shl nuw nsw i64 %conv457.i.i.i, 24
  %or459.i.i.i = or i64 %or454.i.i.i, %shl458.i.i.i
  %conv462.i.i.i = zext i8 %268 to i64
  %shl463.i.i.i = shl nuw nsw i64 %conv462.i.i.i, 16
  %or464.i.i.i = or i64 %or459.i.i.i, %shl463.i.i.i
  %conv467.i.i.i = zext i8 %270 to i64
  %shl468.i.i.i = shl nuw nsw i64 %conv467.i.i.i, 8
  %or469.i.i.i = or i64 %or464.i.i.i, %shl468.i.i.i
  %conv472.i.i.i = zext i8 %272 to i64
  %or473.i.i.i = or i64 %or469.i.i.i, %conv472.i.i.i
  %277 = ptrtoint ptr %desc.0.i to i32
  %conv440.i.i.i = zext i32 %277 to i64
  %conv439.i.i.i = zext i32 %call438.i.i.i to i64
  %278 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %conv436.i.i.i = zext i32 %278 to i64
  %fn1.i667.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 1
  %279 = ptrtoint ptr %fn1.i667.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %279, i32 4)
  store ptr @.str.108, ptr %fn1.i667.i.i.i, align 1
  %conv.i668.i.i.i = and i32 %255, 65535
  %hno2.i669.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 2
  %280 = ptrtoint ptr %hno2.i669.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %280, i32 4)
  store i32 %conv.i668.i.i.i, ptr %hno2.i669.i.i.i, align 1
  %tag3.i670.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 3
  %281 = ptrtoint ptr %tag3.i670.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 4)
  store i32 %41, ptr %tag3.i670.i.i.i, align 1
  %data.i671.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 4
  %282 = ptrtoint ptr %data.i671.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %282, i32 8)
  store i64 %conv436.i.i.i, ptr %data.i671.i.i.i, align 1
  %arrayidx5.i672.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 4, i32 1
  %283 = ptrtoint ptr %arrayidx5.i672.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %283, i32 8)
  store i64 %conv439.i.i.i, ptr %arrayidx5.i672.i.i.i, align 1
  %arrayidx7.i673.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 4, i32 2
  %284 = ptrtoint ptr %arrayidx7.i673.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %284, i32 8)
  store i64 %conv440.i.i.i, ptr %arrayidx7.i673.i.i.i, align 1
  %arrayidx9.i674.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 4, i32 3
  %285 = ptrtoint ptr %arrayidx9.i674.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %285, i32 8)
  store i64 %or473.i.i.i, ptr %arrayidx9.i674.i.i.i, align 1
  %arrayidx11.i675.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i665.i.i.i, i32 0, i32 4, i32 4
  %286 = ptrtoint ptr %arrayidx11.i675.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %286, i32 8)
  store i64 %or480.i.i.i, ptr %arrayidx11.i675.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %287 = load volatile i32, ptr @jiffies, align 128
  %conv12.i676.i.i.i = zext i32 %287 to i64
  %288 = ptrtoint ptr %call.i665.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 8)
  store i64 %conv12.i676.i.i.i, ptr %call.i665.i.i.i, align 1
  br label %do.end483.i.i.i

do.end483.i.i.i:                                  ; preds = %if.end.i677.i.i.i, %if.then432.i.i.i.do.end483.i.i.i_crit_edge, %if.end416.i.i.i.do.end483.i.i.i_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %add.ptr.i.i.i.i.i) #7
  %s_stats484.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36
  %call.i.i.i679.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_stats484.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %s_stats484.i.i.i) #7
  %io_cmpl_skip.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 5
  %call.i.i8.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_cmpl_skip.i.i.i.i, i32 noundef 8) #7
  %call.i.i680.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %io_cmpl_skip.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i680.i.i.i)
  %tobool.not.i681.i.i.i = icmp eq i64 %call.i.i680.i.i.i, 0
  br i1 %tobool.not.i681.i.i.i, label %if.else.i683.i.i.i, label %if.then.i682.i.i.i, !prof !728

if.then.i682.i.i.i:                               ; preds = %do.end483.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i9.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_cmpl_skip.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %io_cmpl_skip.i.i.i.i) #7
  br label %sw.epilog175.i.i

if.else.i683.i.i.i:                               ; preds = %do.end483.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %compl.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 8
  %call.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compl.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %compl.i.i.i.i) #7
  br label %sw.epilog175.i.i

sw.bb93.i.i:                                      ; preds = %sw.epilog.i.i
  %289 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %status.i.i, align 1
  %cmnd_id2.i.i227.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 1
  %291 = ptrtoint ptr %cmnd_id2.i.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %cmnd_id2.i.i227.i.i, align 4
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #7
  %init_ctx.i.i228.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 2
  %294 = ptrtoint ptr %init_ctx.i.i228.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %init_ctx.i.i228.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %296 = load i32, ptr @snic_log_level, align 4
  %and.i229.i.i = and i32 %296, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i229.i.i)
  %tobool.not.i230.i.i = icmp eq i32 %and.i229.i.i, 0
  br i1 %tobool.not.i230.i.i, label %sw.bb93.i.i.do.end9.i237.i.i_crit_edge, label %do.end.i236.i.i, !prof !728

sw.bb93.i.i.do.end9.i237.i.i_crit_edge:           ; preds = %sw.bb93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i237.i.i

do.end.i236.i.i:                                  ; preds = %sw.bb93.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %297 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %desc.0.i, align 4
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #7
  %shost.i232.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %300 = ptrtoint ptr %shost.i232.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %shost.i232.i.i, align 16
  %shost_gendev.i233.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %301, i32 0, i32 49
  %conv5.i235.i.i = zext i8 %290 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i233.i.i, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.164, i32 noundef 20, i32 noundef %conv5.i235.i.i, i32 noundef %293, i32 noundef %299, i32 noundef %295) #10
  br label %do.end9.i237.i.i

do.end9.i237.i.i:                                 ; preds = %do.end.i236.i.i, %sw.bb93.i.i.do.end9.i237.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %302 = load i32, ptr @snic_log_level, align 4
  %and11.i.i.i = and i32 %302, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %and11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %do.end9.i237.i.i.do.end31.i.i.i_crit_edge, label %do.end23.i.i.i, !prof !728

do.end9.i237.i.i.do.end31.i.i.i_crit_edge:        ; preds = %do.end9.i237.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i.i.i

do.end23.i.i.i:                                   ; preds = %do.end9.i237.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %u.i238.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1
  %shost24.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %303 = ptrtoint ptr %shost24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %shost24.i.i.i, align 16
  %shost_gendev25.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %304, i32 0, i32 49
  %305 = ptrtoint ptr %u.i238.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %u.i238.i.i, align 4
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #7
  %flags.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %308 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %flags.i.i.i, align 4
  %conv26.i.i.i = zext i8 %309 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev25.i.i.i, ptr noundef nonnull @.str.166, i32 noundef %307, i32 noundef %conv26.i.i.i) #10
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %do.end23.i.i.i, %do.end9.i237.i.i.do.end31.i.i.i_crit_edge
  %and32.i.i.i = and i32 %293, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %and32.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %if.end36.i.i.i, label %ioctl_dev_rst.i.i.i

if.end36.i.i.i:                                   ; preds = %do.end31.i.i.i
  %and37.i.i.i = and i32 %293, 16777215
  %max_tag_id.i239.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 27
  %310 = ptrtoint ptr %max_tag_id.i239.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %max_tag_id.i239.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and37.i.i.i, i32 %311)
  %cmp.not.i240.i.i = icmp ult i32 %and37.i.i.i, %311
  %shost96.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %312 = ptrtoint ptr %shost96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %shost96.i.i.i, align 16
  br i1 %cmp.not.i240.i.i, label %if.end95.i.i.i, label %do.end42.i.i.i

do.end42.i.i.i:                                   ; preds = %if.end36.i.i.i
  %shost_gendev44.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %313, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i.i241.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i.i241.i.i, label %do.end42.i.i.i.snic_io_status_to_str.exit.i245.i.i_crit_edge, label %if.end.i.i243.i.i

do.end42.i.i.i.snic_io_status_to_str.exit.i245.i.i_crit_edge: ; preds = %do.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i245.i.i

if.end.i.i243.i.i:                                ; preds = %do.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv45.i.i.i = zext i8 %290 to i32
  %arrayidx.i.i242.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv45.i.i.i
  %314 = ptrtoint ptr %arrayidx.i.i242.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx.i.i242.i.i, align 4
  br label %snic_io_status_to_str.exit.i245.i.i

snic_io_status_to_str.exit.i245.i.i:              ; preds = %if.end.i.i243.i.i, %do.end42.i.i.i.snic_io_status_to_str.exit.i245.i.i_crit_edge
  %retval.0.i.i244.i.i = phi ptr [ %315, %if.end.i.i243.i.i ], [ @.str.5, %do.end42.i.i.i.snic_io_status_to_str.exit.i245.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev44.i.i.i, ptr noundef nonnull @.str.169, i32 noundef %293, ptr noundef %retval.0.i.i244.i.i) #10
  %call49.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.164, i32 noundef 950) #10
  %.b191.i.i.i = load i1, ptr @snic_itmf_cmpl_handler.__already_done, align 1
  br i1 %.b191.i.i.i, label %snic_io_status_to_str.exit.i245.i.i.sw.epilog175.i.i_crit_edge, label %if.then61.i.i.i, !prof !728

snic_io_status_to_str.exit.i245.i.i.sw.epilog175.i.i_crit_edge: ; preds = %snic_io_status_to_str.exit.i245.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then61.i.i.i:                                  ; preds = %snic_io_status_to_str.exit.i245.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_itmf_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 950, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog175.i.i

if.end95.i.i.i:                                   ; preds = %if.end36.i.i.i
  %shr.i.i.i246.i.i = lshr i32 %and37.i.i.i, 16
  %nr_hw_queues.i.i247.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %313, i32 0, i32 13, i32 3
  %316 = ptrtoint ptr %nr_hw_queues.i.i247.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %nr_hw_queues.i.i247.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %shr.i.i.i246.i.i)
  %cmp1.i.i248.i.i = icmp ugt i32 %317, %shr.i.i.i246.i.i
  br i1 %cmp1.i.i248.i.i, label %if.then3.i.i252.i.i, label %if.end95.i.i.i.land.rhs109.i.i.i_crit_edge

if.end95.i.i.i.land.rhs109.i.i.i_crit_edge:       ; preds = %if.end95.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs109.i.i.i

if.then3.i.i252.i.i:                              ; preds = %if.end95.i.i.i
  %tags.i.i249.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %313, i32 0, i32 13, i32 11
  %318 = ptrtoint ptr %tags.i.i249.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %tags.i.i249.i.i, align 4
  %arrayidx.i193.i.i.i = getelementptr ptr, ptr %319, i32 %shr.i.i.i246.i.i
  %320 = ptrtoint ptr %arrayidx.i193.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i193.i.i.i, align 4
  %conv6.i.i250.i.i = and i32 %293, 65535
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %321, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %323, i32 %conv6.i.i250.i.i)
  %cmp.i.i.i251.i.i = icmp ugt i32 %323, %conv6.i.i250.i.i
  br i1 %cmp.i.i.i251.i.i, label %if.end8.i.i257.i.i, label %if.then3.i.i252.i.i.land.rhs109.i.i.i_crit_edge

if.then3.i.i252.i.i.land.rhs109.i.i.i_crit_edge:  ; preds = %if.then3.i.i252.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs109.i.i.i

if.end8.i.i257.i.i:                               ; preds = %if.then3.i.i252.i.i
  %rqs.i.i.i253.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %321, i32 0, i32 5
  %324 = ptrtoint ptr %rqs.i.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %rqs.i.i.i253.i.i, align 4
  %arrayidx.i.i.i254.i.i = getelementptr ptr, ptr %325, i32 %conv6.i.i250.i.i
  %326 = ptrtoint ptr %arrayidx.i.i.i254.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %arrayidx.i.i.i254.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %327) #7, !srcloc !732
  %328 = ptrtoint ptr %rqs.i.i.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %rqs.i.i.i253.i.i, align 4
  %arrayidx2.i.i.i255.i.i = getelementptr ptr, ptr %329, i32 %conv6.i.i250.i.i
  %330 = ptrtoint ptr %arrayidx2.i.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %arrayidx2.i.i.i255.i.i, align 4
  %tobool.not.i.i256.i.i = icmp eq ptr %331, null
  br i1 %tobool.not.i.i256.i.i, label %if.end8.i.i257.i.i.land.rhs109.i.i.i_crit_edge, label %lor.lhs.false.i.i262.i.i

if.end8.i.i257.i.i.land.rhs109.i.i.i_crit_edge:   ; preds = %if.end8.i.i257.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs109.i.i.i

lor.lhs.false.i.i262.i.i:                         ; preds = %if.end8.i.i257.i.i
  %state.i.i.i.i258.i.i = getelementptr inbounds %struct.request, ptr %331, i32 0, i32 25
  %332 = ptrtoint ptr %state.i.i.i.i258.i.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load volatile i32, ptr %state.i.i.i.i258.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp.i22.not.i.i259.i.i = icmp eq i32 %333, 0
  %add.ptr.i.i.i260.i.i = getelementptr %struct.request, ptr %331, i32 1
  %tobool100.not.i.i.i = icmp eq ptr %add.ptr.i.i.i260.i.i, null
  %or.cond.i261.i.i = select i1 %cmp.i22.not.i.i259.i.i, i1 true, i1 %tobool100.not.i.i.i
  br i1 %or.cond.i261.i.i, label %lor.lhs.false.i.i262.i.i.land.rhs109.i.i.i_crit_edge, label %lor.lhs.false.i.i262.i.i.if.end164.i.i.i_crit_edge

lor.lhs.false.i.i262.i.i.if.end164.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i262.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i.i.i

lor.lhs.false.i.i262.i.i.land.rhs109.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i262.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs109.i.i.i

land.rhs109.i.i.i:                                ; preds = %lor.lhs.false.i.i262.i.i.land.rhs109.i.i.i_crit_edge, %if.end8.i.i257.i.i.land.rhs109.i.i.i_crit_edge, %if.then3.i.i252.i.i.land.rhs109.i.i.i_crit_edge, %if.end95.i.i.i.land.rhs109.i.i.i_crit_edge
  %.b189190.i.i.i = load i1, ptr @snic_itmf_cmpl_handler.__already_done.173, align 1
  br i1 %.b189190.i.i.i, label %land.rhs109.i.i.i.if.then156.i.i.i_crit_edge, label %if.then120.i.i.i, !prof !728

land.rhs109.i.i.i.if.then156.i.i.i_crit_edge:     ; preds = %land.rhs109.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156.i.i.i

if.then120.i.i.i:                                 ; preds = %land.rhs109.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_itmf_cmpl_handler.__already_done.173, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 956, i32 noundef 9, ptr noundef null) #7
  br label %if.then156.i.i.i

ioctl_dev_rst.i.i.i:                              ; preds = %do.end31.i.i.i
  %334 = inttoptr i32 %295 to ptr
  %sc35.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %334, i32 0, i32 9
  %335 = ptrtoint ptr %sc35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %sc35.i.i.i, align 8
  %tobool155.not.i.i.i = icmp eq ptr %336, null
  br i1 %tobool155.not.i.i.i, label %ioctl_dev_rst.i.i.i.if.then156.i.i.i_crit_edge, label %ioctl_dev_rst.i.i.i.if.end164.i.i.i_crit_edge

ioctl_dev_rst.i.i.i.if.end164.i.i.i_crit_edge:    ; preds = %ioctl_dev_rst.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164.i.i.i

ioctl_dev_rst.i.i.i.if.then156.i.i.i_crit_edge:   ; preds = %ioctl_dev_rst.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then156.i.i.i

if.then156.i.i.i:                                 ; preds = %ioctl_dev_rst.i.i.i.if.then156.i.i.i_crit_edge, %if.then120.i.i.i, %land.rhs109.i.i.i.if.then156.i.i.i_crit_edge
  %sc_null.i263.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 12
  %call.i.i.i264.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_null.i263.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %sc_null.i263.i.i) #7
  %shost160.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %337 = ptrtoint ptr %shost160.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %shost160.i.i.i, align 16
  %shost_gendev161.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %338, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i195.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i195.i.i.i, label %if.then156.i.i.i.snic_io_status_to_str.exit199.i.i.i_crit_edge, label %if.end.i197.i.i.i

if.then156.i.i.i.snic_io_status_to_str.exit199.i.i.i_crit_edge: ; preds = %if.then156.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit199.i.i.i

if.end.i197.i.i.i:                                ; preds = %if.then156.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv162.i.i.i = zext i8 %290 to i32
  %arrayidx.i196.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv162.i.i.i
  %339 = ptrtoint ptr %arrayidx.i196.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %arrayidx.i196.i.i.i, align 4
  br label %snic_io_status_to_str.exit199.i.i.i

snic_io_status_to_str.exit199.i.i.i:              ; preds = %if.end.i197.i.i.i, %if.then156.i.i.i.snic_io_status_to_str.exit199.i.i.i_crit_edge
  %retval.0.i198.i.i.i = phi ptr [ %340, %if.end.i197.i.i.i ], [ @.str.5, %if.then156.i.i.i.snic_io_status_to_str.exit199.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev161.i.i.i, ptr noundef nonnull @.str.175, ptr noundef %retval.0.i198.i.i.i, i32 noundef %293) #10
  br label %sw.epilog175.i.i

if.end164.i.i.i:                                  ; preds = %ioctl_dev_rst.i.i.i.if.end164.i.i.i_crit_edge, %lor.lhs.false.i.i262.i.i.if.end164.i.i.i_crit_edge
  %sc.0224.i.i.i = phi ptr [ %336, %ioctl_dev_rst.i.i.i.if.end164.i.i.i_crit_edge ], [ %add.ptr.i.i.i260.i.i, %lor.lhs.false.i.i262.i.i.if.end164.i.i.i_crit_edge ]
  %tag.i.i.i.i.i = getelementptr i8, ptr %sc.0224.i.i.i, i32 -172
  %341 = ptrtoint ptr %tag.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %tag.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %342, 63
  %arrayidx.i.i200.i.i.i = getelementptr %struct.snic, ptr %call.i.i16, i32 0, i32 24, i32 %and.i.i.i.i.i
  %call3.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i200.i.i.i) #7
  %add.ptr.i.i201.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1
  %flags7.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 0, i32 8
  %343 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %flags7.i.i.i.i, align 8
  %and.i.i265.i.i = and i64 %344, 234881024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i265.i.i)
  %tobool.not.i202.i.i.i = icmp eq i64 %and.i.i265.i.i, 0
  br i1 %tobool.not.i202.i.i.i, label %if.end.i203.i.i.i, label %if.then.i.i266.i.i

if.then.i.i266.i.i:                               ; preds = %if.end164.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  br label %sw.epilog175.i.i

if.end.i203.i.i.i:                                ; preds = %if.end164.i.i.i
  %345 = ptrtoint ptr %add.ptr.i.i201.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %add.ptr.i.i201.i.i.i, align 8
  %tobool10.not.i.i.i.i = icmp eq ptr %346, null
  br i1 %tobool10.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.end65.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i203.i.i.i
  %.b2.i.i.i.i = load i1, ptr @snic_process_itmf_cmpl.__already_done, align 1
  br i1 %.b2.i.i.i.i, label %land.rhs.i.i.i.i.if.then55.i.i.i.i_crit_edge, label %if.then20.i.i.i.i, !prof !728

land.rhs.i.i.i.i.if.then55.i.i.i.i_crit_edge:     ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i.i.i.i

if.then20.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_process_itmf_cmpl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 793, i32 noundef 9, ptr noundef null) #7
  br label %if.then55.i.i.i.i

if.then55.i.i.i.i:                                ; preds = %if.then20.i.i.i.i, %land.rhs.i.i.i.i.if.then55.i.i.i.i_crit_edge
  %req_null.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 10
  %call.i.i.i.i267.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_null.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %req_null.i.i.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  %347 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %flags7.i.i.i.i, align 8
  %or.i.i.i.i = or i64 %348, 1024
  store i64 %or.i.i.i.i, ptr %flags7.i.i.i.i, align 8
  %shost.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %349 = ptrtoint ptr %shost.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %shost.i.i.i.i, align 16
  %shost_gendev.i.i268.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %350, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i.i204.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i.i204.i.i.i, label %if.then55.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i_crit_edge, label %if.end.i.i.i269.i.i

if.then55.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i_crit_edge: ; preds = %if.then55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i.i.i.i

if.end.i.i.i269.i.i:                              ; preds = %if.then55.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv61.i.i.i.i = zext i8 %290 to i32
  %arrayidx.i6.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv61.i.i.i.i
  %351 = ptrtoint ptr %arrayidx.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %arrayidx.i6.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit.i.i.i.i

snic_io_status_to_str.exit.i.i.i.i:               ; preds = %if.end.i.i.i269.i.i, %if.then55.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i270.i.i = phi ptr [ %352, %if.end.i.i.i269.i.i ], [ @.str.5, %if.then55.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i.i268.i.i, ptr noundef nonnull @.str.177, ptr noundef %retval.0.i.i.i270.i.i, i32 noundef %293, ptr noundef nonnull %sc.0224.i.i.i, i64 noundef %or.i.i.i.i) #10
  br label %sw.epilog175.i.i

if.end65.i.i.i.i:                                 ; preds = %if.end.i203.i.i.i
  %and66.i.i.i.i = and i32 %293, -16777216
  %start_time67.i.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %346, i32 0, i32 2
  %353 = ptrtoint ptr %start_time67.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %start_time67.i.i.i.i, align 8
  %conv68.i.i.i.i = trunc i64 %354 to i32
  %and69.i.i.i.i = and i32 %293, 16777215
  %355 = add i32 %and66.i.i.i.i, -536870912
  %356 = tail call i32 @llvm.fshl.i32(i32 %355, i32 %355, i32 4) #7
  %357 = zext i32 %356 to i64
  call void @__sanitizer_cov_trace_switch(i64 %357, ptr @__sancov_gen_cov_switch_values.437)
  switch i32 %356, label %sw.default.i.i.i.i [
    i32 2, label %sw.bb.i.i.i.i
    i32 0, label %if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge
    i32 1, label %if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge21
    i32 4, label %sw.bb192.i.i.i.i
  ]

if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge21:    ; preds = %if.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb191.i.i.i.i

if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge:      ; preds = %if.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb191.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.end65.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %358 = load i32, ptr @snic_log_level, align 4
  %and.i8.i.i.i.i = and i32 %358, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i8.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %sw.bb.i.i.i.i.do.end8.i.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i, !prof !728

sw.bb.i.i.i.i.do.end8.i.i.i.i.i_crit_edge:        ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %359 = ptrtoint ptr %shost.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %shost.i.i.i.i.i, align 16
  %shost_gendev.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %360, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i.i.i.i, ptr noundef nonnull @.str.197) #10
  br label %do.end8.i.i.i.i.i

do.end8.i.i.i.i.i:                                ; preds = %do.end.i.i.i.i.i, %sw.bb.i.i.i.i.do.end8.i.i.i.i.i_crit_edge
  %361 = zext i8 %290 to i64
  call void @__sanitizer_cov_trace_switch(i64 %361, ptr @__sancov_gen_cov_switch_values.438)
  switch i8 %290, label %sw.default.i.i.i.i.i [
    i8 0, label %do.end8.i.i.i.i.i.snic_update_abort_stats.exit.i.i.i.i_crit_edge
    i8 7, label %sw.bb.i.i.i.i.i
    i8 5, label %sw.bb9.i.i.i.i.i
  ]

do.end8.i.i.i.i.i.snic_update_abort_stats.exit.i.i.i.i_crit_edge: ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_update_abort_stats.exit.i.i.i.i

sw.bb.i.i.i.i.i:                                  ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fw_tmo.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 1, i32 3
  br label %sw.epilog.sink.split.i.i.i.i.i

sw.bb9.i.i.i.i.i:                                 ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %io_not_found.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 1, i32 4
  br label %sw.epilog.sink.split.i.i.i.i.i

sw.default.i.i.i.i.i:                             ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %fail.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 1, i32 1
  br label %sw.epilog.sink.split.i.i.i.i.i

sw.epilog.sink.split.i.i.i.i.i:                   ; preds = %sw.default.i.i.i.i.i, %sw.bb9.i.i.i.i.i, %sw.bb.i.i.i.i.i
  %fail.sink15.i.i.i.i.i = phi ptr [ %fail.i.i.i.i.i, %sw.default.i.i.i.i.i ], [ %io_not_found.i.i.i.i.i, %sw.bb9.i.i.i.i.i ], [ %fw_tmo.i.i.i.i.i, %sw.bb.i.i.i.i.i ]
  %call.i.i14.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fail.sink15.i.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %fail.sink15.i.i.i.i.i) #7
  br label %snic_update_abort_stats.exit.i.i.i.i

snic_update_abort_stats.exit.i.i.i.i:             ; preds = %sw.epilog.sink.split.i.i.i.i.i, %do.end8.i.i.i.i.i.snic_update_abort_stats.exit.i.i.i.i_crit_edge
  %state.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 1
  %362 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %363)
  %cmp71.not.i.i.i.i = icmp eq i32 %363, 2
  br i1 %cmp71.not.i.i.i.i, label %if.end74.i.i.i.i, label %if.then73.i.i.i.i

if.then73.i.i.i.i:                                ; preds = %snic_update_abort_stats.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  br label %sw.epilog175.i.i

if.end74.i.i.i.i:                                 ; preds = %snic_update_abort_stats.exit.i.i.i.i
  %364 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 3, ptr %state.i.i.i.i, align 8
  %conv77.i.i.i.i = zext i8 %290 to i32
  %abts_status.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 2
  %365 = ptrtoint ptr %abts_status.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %conv77.i.i.i.i, ptr %abts_status.i.i.i.i, align 4
  %366 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %366)
  %367 = load i64, ptr %flags7.i.i.i.i, align 8
  %or81.i.i.i.i = or i64 %367, 512
  store i64 %or81.i.i.i.i, ptr %flags7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %368 = load i32, ptr @snic_log_level, align 4
  %and83.i.i.i.i = and i32 %368, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i.i.i)
  %tobool84.not.i.i.i.i = icmp eq i32 %and83.i.i.i.i, 0
  br i1 %tobool84.not.i.i.i.i, label %if.end74.i.i.i.i.do.end106.i.i.i.i_crit_edge, label %do.end95.i.i.i.i, !prof !728

if.end74.i.i.i.i.do.end106.i.i.i.i_crit_edge:     ; preds = %if.end74.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106.i.i.i.i

do.end95.i.i.i.i:                                 ; preds = %if.end74.i.i.i.i
  %shost96.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %369 = ptrtoint ptr %shost96.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %shost96.i.i.i.i, align 16
  %shost_gendev97.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %370, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i13.i.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i13.i.i.i.i, label %do.end95.i.i.i.i.snic_io_status_to_str.exit17.i.i.i.i_crit_edge, label %if.end.i15.i.i.i.i

do.end95.i.i.i.i.snic_io_status_to_str.exit17.i.i.i.i_crit_edge: ; preds = %do.end95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit17.i.i.i.i

if.end.i15.i.i.i.i:                               ; preds = %do.end95.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i14.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv77.i.i.i.i
  %371 = ptrtoint ptr %arrayidx.i14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %arrayidx.i14.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit17.i.i.i.i

snic_io_status_to_str.exit17.i.i.i.i:             ; preds = %if.end.i15.i.i.i.i, %do.end95.i.i.i.i.snic_io_status_to_str.exit17.i.i.i.i_crit_edge
  %retval.0.i16.i.i.i.i = phi ptr [ %372, %if.end.i15.i.i.i.i ], [ @.str.5, %do.end95.i.i.i.i.snic_io_status_to_str.exit17.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev97.i.i.i.i, ptr noundef nonnull @.str.180, i32 noundef %and69.i.i.i.i, ptr noundef %retval.0.i16.i.i.i.i, i64 noundef %or81.i.i.i.i) #10
  br label %do.end106.i.i.i.i

do.end106.i.i.i.i:                                ; preds = %snic_io_status_to_str.exit17.i.i.i.i, %if.end74.i.i.i.i.do.end106.i.i.i.i_crit_edge
  %abts_done.i.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %346, i32 0, i32 14
  %373 = ptrtoint ptr %abts_done.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %abts_done.i.i.i.i, align 4
  %tobool107.not.i.i.i.i = icmp eq ptr %374, null
  br i1 %tobool107.not.i.i.i.i, label %if.end110.i.i.i.i, label %if.then108.i.i.i.i

if.then108.i.i.i.i:                               ; preds = %do.end106.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %374) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  br label %sw.epilog175.i.i

if.end110.i.i.i.i:                                ; preds = %do.end106.i.i.i.i
  %375 = ptrtoint ptr %add.ptr.i.i201.i.i.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr null, ptr %add.ptr.i.i201.i.i.i, align 8
  %result.i.i271.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 0, i32 24
  %376 = ptrtoint ptr %result.i.i271.i.i to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 458752, ptr %result.i.i271.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %377 = load i32, ptr @snic_log_level, align 4
  %and114.i.i.i.i = and i32 %377, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i.i.i.i)
  %tobool115.not.i.i.i.i = icmp eq i32 %and114.i.i.i.i, 0
  br i1 %tobool115.not.i.i.i.i, label %if.end110.i.i.i.i.do.end135.i.i.i.i_crit_edge, label %do.end126.i.i.i.i, !prof !728

if.end110.i.i.i.i.do.end135.i.i.i.i_crit_edge:    ; preds = %if.end110.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end135.i.i.i.i

do.end126.i.i.i.i:                                ; preds = %if.end110.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost127.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %378 = ptrtoint ptr %shost127.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %shost127.i.i.i.i, align 16
  %shost_gendev128.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %379, i32 0, i32 49
  %380 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %380)
  %381 = load i64, ptr %flags7.i.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev128.i.i.i.i, ptr noundef nonnull @.str.183, ptr noundef nonnull %sc.0224.i.i.i, i64 noundef %381) #10
  br label %do.end135.i.i.i.i

do.end135.i.i.i.i:                                ; preds = %do.end126.i.i.i.i, %if.end110.i.i.i.i.do.end135.i.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  tail call fastcc void @snic_release_req_buf(ptr noundef %call.i.i16, ptr noundef nonnull %346, ptr noundef nonnull %sc.0224.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %382 = load ptr, ptr @snic_glob, align 4
  %enable.i.i.i.i = getelementptr inbounds %struct.snic_global, ptr %382, i32 0, i32 7, i32 5
  %383 = ptrtoint ptr %enable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %enable.i.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %384)
  %tobool137.not.i.i.i.i = icmp eq i8 %384, 0
  br i1 %tobool137.not.i.i.i.i, label %do.end135.i.i.i.i.do.end190.i.i.i.i_crit_edge, label %if.then144.i.i.i.i, !prof !728

do.end135.i.i.i.i.do.end190.i.i.i.i_crit_edge:    ; preds = %do.end135.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end190.i.i.i.i

if.then144.i.i.i.i:                               ; preds = %do.end135.i.i.i.i
  %shost145.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %385 = ptrtoint ptr %shost145.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %shost145.i.i.i.i, align 16
  %host_no.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %386, i32 0, i32 17
  %387 = ptrtoint ptr %host_no.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %host_no.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %389 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i = sub i32 %389, %conv68.i.i.i.i
  %call148.i.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i.i) #7
  %cmnd.i.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 0, i32 16
  %390 = ptrtoint ptr %cmnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %cmnd.i.i.i.i, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %391, align 1
  %arrayidx153.i.i.i.i = getelementptr i8, ptr %391, i32 7
  %394 = ptrtoint ptr %arrayidx153.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %arrayidx153.i.i.i.i, align 1
  %arrayidx158.i.i.i.i = getelementptr i8, ptr %391, i32 8
  %396 = ptrtoint ptr %arrayidx158.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx158.i.i.i.i, align 1
  %arrayidx163.i.i.i.i = getelementptr i8, ptr %391, i32 2
  %398 = ptrtoint ptr %arrayidx163.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %398)
  %399 = load i8, ptr %arrayidx163.i.i.i.i, align 1
  %arrayidx168.i.i.i.i = getelementptr i8, ptr %391, i32 3
  %400 = ptrtoint ptr %arrayidx168.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %arrayidx168.i.i.i.i, align 1
  %arrayidx173.i.i.i.i = getelementptr i8, ptr %391, i32 4
  %402 = ptrtoint ptr %arrayidx173.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx173.i.i.i.i, align 1
  %arrayidx178.i.i.i.i = getelementptr i8, ptr %391, i32 5
  %404 = ptrtoint ptr %arrayidx178.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %arrayidx178.i.i.i.i, align 1
  %406 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %flags7.i.i.i.i, align 8
  %408 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %state.i.i.i.i, align 8
  %call.i.i205.i.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i23.i.i.i.i = icmp eq ptr %call.i.i205.i.i.i, null
  br i1 %tobool.not.i23.i.i.i.i, label %if.then144.i.i.i.i.do.end190.i.i.i.i_crit_edge, label %if.end.i24.i.i.i.i

if.then144.i.i.i.i.do.end190.i.i.i.i_crit_edge:   ; preds = %if.then144.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end190.i.i.i.i

if.end.i24.i.i.i.i:                               ; preds = %if.then144.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl183.i.i.i.i = shl i64 %407, 32
  %conv186.i.i.i.i = zext i32 %409 to i64
  %or187.i.i.i.i = or i64 %shl183.i.i.i.i, %conv186.i.i.i.i
  %conv151.i.i.i.i = zext i8 %393 to i64
  %shl.i.i.i.i = shl nuw i64 %conv151.i.i.i.i, 56
  %conv154.i.i.i.i = zext i8 %395 to i64
  %shl155.i.i.i.i = shl nuw nsw i64 %conv154.i.i.i.i, 40
  %or156.i.i.i.i = or i64 %shl155.i.i.i.i, %shl.i.i.i.i
  %conv159.i.i.i.i = zext i8 %397 to i64
  %shl160.i.i.i.i = shl nuw nsw i64 %conv159.i.i.i.i, 32
  %or161.i.i.i.i = or i64 %or156.i.i.i.i, %shl160.i.i.i.i
  %conv164.i.i.i.i = zext i8 %399 to i64
  %shl165.i.i.i.i = shl nuw nsw i64 %conv164.i.i.i.i, 24
  %or166.i.i.i.i = or i64 %or161.i.i.i.i, %shl165.i.i.i.i
  %conv169.i.i.i.i = zext i8 %401 to i64
  %shl170.i.i.i.i = shl nuw nsw i64 %conv169.i.i.i.i, 16
  %or171.i.i.i.i = or i64 %or166.i.i.i.i, %shl170.i.i.i.i
  %conv174.i.i.i.i = zext i8 %403 to i64
  %shl175.i.i.i.i = shl nuw nsw i64 %conv174.i.i.i.i, 8
  %or176.i.i.i.i = or i64 %or171.i.i.i.i, %shl175.i.i.i.i
  %conv179.i.i.i.i = zext i8 %405 to i64
  %or180.i.i.i.i = or i64 %or176.i.i.i.i, %conv179.i.i.i.i
  %410 = ptrtoint ptr %desc.0.i to i32
  %conv150.i.i.i.i = zext i32 %410 to i64
  %conv149.i.i.i.i = zext i32 %call148.i.i.i.i to i64
  %411 = ptrtoint ptr %sc.0224.i.i.i to i32
  %conv147.i.i.i.i = zext i32 %411 to i64
  %fn1.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 1
  %412 = ptrtoint ptr %fn1.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %412, i32 4)
  store ptr @.str.178, ptr %fn1.i.i.i.i.i, align 1
  %conv.i.i.i.i.i = and i32 %388, 65535
  %hno2.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 2
  %413 = ptrtoint ptr %hno2.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %413, i32 4)
  store i32 %conv.i.i.i.i.i, ptr %hno2.i.i.i.i.i, align 1
  %tag3.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 3
  %414 = ptrtoint ptr %tag3.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %414, i32 4)
  store i32 %and69.i.i.i.i, ptr %tag3.i.i.i.i.i, align 1
  %data.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 4
  %415 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %415, i32 8)
  store i64 %conv147.i.i.i.i, ptr %data.i.i.i.i.i, align 1
  %arrayidx5.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 4, i32 1
  %416 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %416, i32 8)
  store i64 %conv149.i.i.i.i, ptr %arrayidx5.i.i.i.i.i, align 1
  %arrayidx7.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 4, i32 2
  %417 = ptrtoint ptr %arrayidx7.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %417, i32 8)
  store i64 %conv150.i.i.i.i, ptr %arrayidx7.i.i.i.i.i, align 1
  %arrayidx9.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 4, i32 3
  %418 = ptrtoint ptr %arrayidx9.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %418, i32 8)
  store i64 %or180.i.i.i.i, ptr %arrayidx9.i.i.i.i.i, align 1
  %arrayidx11.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i205.i.i.i, i32 0, i32 4, i32 4
  %419 = ptrtoint ptr %arrayidx11.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %419, i32 8)
  store i64 %or187.i.i.i.i, ptr %arrayidx11.i.i.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %420 = load volatile i32, ptr @jiffies, align 128
  %conv12.i.i.i.i.i = zext i32 %420 to i64
  %421 = ptrtoint ptr %call.i.i205.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %421, i32 8)
  store i64 %conv12.i.i.i.i.i, ptr %call.i.i205.i.i.i, align 1
  br label %do.end190.i.i.i.i

do.end190.i.i.i.i:                                ; preds = %if.end.i24.i.i.i.i, %if.then144.i.i.i.i.do.end190.i.i.i.i_crit_edge, %do.end135.i.i.i.i.do.end190.i.i.i.i_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %sc.0224.i.i.i) #7
  br label %sw.epilog175.i.i

sw.bb191.i.i.i.i:                                 ; preds = %if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge, %if.end65.i.i.i.i.sw.bb191.i.i.i.i_crit_edge21
  %conv3.i.i.i.i.i = zext i8 %290 to i32
  %lr_status.i.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 3
  %422 = ptrtoint ptr %lr_status.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %conv3.i.i.i.i.i, ptr %lr_status.i.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %423 = load i32, ptr @snic_log_level, align 4
  %and.i26.i.i.i.i = and i32 %423, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i.i.i)
  %tobool.not.i27.i.i.i.i = icmp eq i32 %and.i26.i.i.i.i, 0
  br i1 %tobool.not.i27.i.i.i.i, label %sw.bb191.i.i.i.i.do.end14.i.i.i.i.i_crit_edge, label %do.end.i30.i.i.i.i, !prof !728

sw.bb191.i.i.i.i.do.end14.i.i.i.i.i_crit_edge:    ; preds = %sw.bb191.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end14.i.i.i.i.i

do.end.i30.i.i.i.i:                               ; preds = %sw.bb191.i.i.i.i
  %shost.i28.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %424 = ptrtoint ptr %shost.i28.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %shost.i28.i.i.i.i, align 16
  %shost_gendev.i29.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %425, i32 0, i32 49
  %state.i.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 1
  %426 = ptrtoint ptr %state.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %state.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %427)
  %cmp.i.i.i.i.i.i = icmp ugt i32 %427, 6
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i30.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i

do.end.i30.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i.i_crit_edge: ; preds = %do.end.i30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.end.i30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i.i.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %427
  %428 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx.i.i.i.i.i.i, align 4
  br label %snic_ioreq_state_to_str.exit.i.i.i.i.i

snic_ioreq_state_to_str.exit.i.i.i.i.i:           ; preds = %if.end.i.i.i.i.i.i, %do.end.i30.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi ptr [ %429, %if.end.i.i.i.i.i.i ], [ @.str.5, %do.end.i30.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i29.i.i.i.i, ptr noundef nonnull @.str.199, ptr noundef %retval.0.i.i.i.i.i.i) #10
  br label %do.end14.i.i.i.i.i

do.end14.i.i.i.i.i:                               ; preds = %snic_ioreq_state_to_str.exit.i.i.i.i.i, %sw.bb191.i.i.i.i.do.end14.i.i.i.i.i_crit_edge
  %state16.i.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 1
  %430 = ptrtoint ptr %state16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %state16.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %431)
  %cmp.i31.i.i.i.i = icmp eq i32 %431, 2
  %432 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %432)
  %433 = load i64, ptr %flags7.i.i.i.i, align 8
  br i1 %cmp.i31.i.i.i.i, label %if.then18.i.i.i.i.i, label %if.end70.i.i.i.i.i

if.then18.i.i.i.i.i:                              ; preds = %do.end14.i.i.i.i.i
  %or.i.i.i.i.i = or i64 %433, 8388608
  %434 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %434)
  store i64 %or.i.i.i.i.i, ptr %flags7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %435 = load ptr, ptr @snic_glob, align 4
  %enable.i.i.i.i.i = getelementptr inbounds %struct.snic_global, ptr %435, i32 0, i32 7, i32 5
  %436 = ptrtoint ptr %enable.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %enable.i.i.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %437)
  %tobool21.not.i.i.i.i.i = icmp eq i8 %437, 0
  br i1 %tobool21.not.i.i.i.i.i, label %if.then18.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge, label %if.then28.i.i.i.i.i, !prof !728

if.then18.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge: ; preds = %if.then18.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44.i.i.i.i.i

if.then28.i.i.i.i.i:                              ; preds = %if.then18.i.i.i.i.i
  %shost29.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %438 = ptrtoint ptr %shost29.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %shost29.i.i.i.i.i, align 16
  %host_no.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %439, i32 0, i32 17
  %440 = ptrtoint ptr %host_no.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %host_no.i.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %442 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i.i.i = sub i32 %442, %conv68.i.i.i.i
  %call32.i.i.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub.i.i.i.i.i) #7
  %443 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %flags7.i.i.i.i, align 8
  %445 = ptrtoint ptr %state16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %state16.i.i.i.i.i, align 8
  %call.i.i32.i.i.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i.i.i.i.i.i = icmp eq ptr %call.i.i32.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i.i, label %if.then28.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge, label %if.end.i206.i.i.i.i.i

if.then28.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge: ; preds = %if.then28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44.i.i.i.i.i

if.end.i206.i.i.i.i.i:                            ; preds = %if.then28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i.i.i.i.i = shl i64 %444, 32
  %conv39.i.i.i.i.i = zext i32 %446 to i64
  %or40.i.i.i.i.i = or i64 %shl.i.i.i.i.i, %conv39.i.i.i.i.i
  %447 = ptrtoint ptr %desc.0.i to i32
  %conv34.i.i.i.i.i = zext i32 %447 to i64
  %conv33.i.i.i.i.i = zext i32 %call32.i.i.i.i.i to i64
  %448 = ptrtoint ptr %sc.0224.i.i.i to i32
  %conv31.i.i.i.i.i = zext i32 %448 to i64
  %fn1.i.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 1
  %449 = ptrtoint ptr %fn1.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %449, i32 4)
  store ptr @.str.200, ptr %fn1.i.i.i.i.i.i, align 1
  %conv.i.i.i.i.i.i = and i32 %441, 65535
  %hno2.i.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 2
  %450 = ptrtoint ptr %hno2.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %450, i32 4)
  store i32 %conv.i.i.i.i.i.i, ptr %hno2.i.i.i.i.i.i, align 1
  %tag3.i.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 3
  %451 = ptrtoint ptr %tag3.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %451, i32 4)
  store i32 %and69.i.i.i.i, ptr %tag3.i.i.i.i.i.i, align 1
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 4
  %452 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %452, i32 8)
  store i64 %conv31.i.i.i.i.i, ptr %data.i.i.i.i.i.i, align 1
  %arrayidx5.i.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 4, i32 1
  %453 = ptrtoint ptr %arrayidx5.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %453, i32 8)
  store i64 %conv33.i.i.i.i.i, ptr %arrayidx5.i.i.i.i.i.i, align 1
  %arrayidx7.i.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 4, i32 2
  %454 = ptrtoint ptr %arrayidx7.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %454, i32 8)
  store i64 %conv34.i.i.i.i.i, ptr %arrayidx7.i.i.i.i.i.i, align 1
  %arrayidx9.i.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 4, i32 3
  %455 = ptrtoint ptr %arrayidx9.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %455, i32 8)
  store i64 0, ptr %arrayidx9.i.i.i.i.i.i, align 1
  %arrayidx11.i.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i.i32.i.i.i.i, i32 0, i32 4, i32 4
  %456 = ptrtoint ptr %arrayidx11.i.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %456, i32 8)
  store i64 %or40.i.i.i.i.i, ptr %arrayidx11.i.i.i.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %457 = load volatile i32, ptr @jiffies, align 128
  %conv12.i.i.i.i.i.i = zext i32 %457 to i64
  %458 = ptrtoint ptr %call.i.i32.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %458, i32 8)
  store i64 %conv12.i.i.i.i.i.i, ptr %call.i.i32.i.i.i.i, align 1
  br label %do.body44.i.i.i.i.i

do.body44.i.i.i.i.i:                              ; preds = %if.end.i206.i.i.i.i.i, %if.then28.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge, %if.then18.i.i.i.i.i.do.body44.i.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %459 = load i32, ptr @snic_log_level, align 4
  %and45.i.i.i.i.i = and i32 %459, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i.i.i.i.i)
  %tobool46.not.i.i.i.i.i = icmp eq i32 %and45.i.i.i.i.i, 0
  br i1 %tobool46.not.i.i.i.i.i, label %do.body44.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge, label %do.end57.i.i.i.i.i, !prof !728

do.body44.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge: ; preds = %do.body44.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

do.end57.i.i.i.i.i:                               ; preds = %do.body44.i.i.i.i.i
  %shost58.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %460 = ptrtoint ptr %shost58.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %shost58.i.i.i.i.i, align 16
  %shost_gendev59.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %461, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i207.i.i.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i207.i.i.i.i.i, label %do.end57.i.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i.i_crit_edge, label %if.end.i209.i.i.i.i.i

do.end57.i.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i.i_crit_edge: ; preds = %do.end57.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i.i.i.i.i

if.end.i209.i.i.i.i.i:                            ; preds = %do.end57.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i208.i.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv3.i.i.i.i.i
  %462 = ptrtoint ptr %arrayidx.i208.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %arrayidx.i208.i.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit.i.i.i.i.i

snic_io_status_to_str.exit.i.i.i.i.i:             ; preds = %if.end.i209.i.i.i.i.i, %do.end57.i.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i.i_crit_edge
  %retval.0.i210.i.i.i.i.i = phi ptr [ %463, %if.end.i209.i.i.i.i.i ], [ @.str.5, %do.end57.i.i.i.i.i.snic_io_status_to_str.exit.i.i.i.i.i_crit_edge ]
  %464 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %flags7.i.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev59.i.i.i.i.i, ptr noundef nonnull @.str.202, i32 noundef %and69.i.i.i.i, ptr noundef %retval.0.i210.i.i.i.i.i, i64 noundef %465) #10
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

if.end70.i.i.i.i.i:                               ; preds = %do.end14.i.i.i.i.i
  %and73.i.i.i.i.i = and i64 %433, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and73.i.i.i.i.i)
  %tobool74.not.i.i.i.i.i = icmp eq i64 %and73.i.i.i.i.i, 0
  br i1 %tobool74.not.i.i.i.i.i, label %if.end131.i.i.i.i.i, label %do.body76.i.i.i.i.i

do.body76.i.i.i.i.i:                              ; preds = %if.end70.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %466 = load ptr, ptr @snic_glob, align 4
  %enable78.i.i.i.i.i = getelementptr inbounds %struct.snic_global, ptr %466, i32 0, i32 7, i32 5
  %467 = ptrtoint ptr %enable78.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %enable78.i.i.i.i.i, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %468)
  %tobool79.not.i.i.i.i.i = icmp eq i8 %468, 0
  br i1 %tobool79.not.i.i.i.i.i, label %do.body76.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge, label %if.then86.i.i.i.i.i, !prof !728

do.body76.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge: ; preds = %do.body76.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105.i.i.i.i.i

if.then86.i.i.i.i.i:                              ; preds = %do.body76.i.i.i.i.i
  %shost87.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %469 = ptrtoint ptr %shost87.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %shost87.i.i.i.i.i, align 16
  %host_no88.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %470, i32 0, i32 17
  %471 = ptrtoint ptr %host_no88.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %host_no88.i.i.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %473 = load volatile i32, ptr @jiffies, align 128
  %sub91.i.i.i.i.i = sub i32 %473, %conv68.i.i.i.i
  %call92.i.i.i.i.i = tail call i32 @jiffies_to_msecs(i32 noundef %sub91.i.i.i.i.i) #7
  %474 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %flags7.i.i.i.i, align 8
  %476 = ptrtoint ptr %state16.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %state16.i.i.i.i.i, align 8
  %call.i215.i.i.i.i.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i216.i.i.i.i.i = icmp eq ptr %call.i215.i.i.i.i.i, null
  br i1 %tobool.not.i216.i.i.i.i.i, label %if.then86.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge, label %if.end.i227.i.i.i.i.i

if.then86.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge: ; preds = %if.then86.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105.i.i.i.i.i

if.end.i227.i.i.i.i.i:                            ; preds = %if.then86.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl97.i.i.i.i.i = shl i64 %475, 32
  %conv100.i.i.i.i.i = zext i32 %477 to i64
  %or101.i.i.i.i.i = or i64 %shl97.i.i.i.i.i, %conv100.i.i.i.i.i
  %478 = ptrtoint ptr %desc.0.i to i32
  %conv94.i.i.i.i.i = zext i32 %478 to i64
  %conv93.i.i.i.i.i = zext i32 %call92.i.i.i.i.i to i64
  %479 = ptrtoint ptr %sc.0224.i.i.i to i32
  %conv90.i.i.i.i.i = zext i32 %479 to i64
  %fn1.i217.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 1
  %480 = ptrtoint ptr %fn1.i217.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 4)
  store ptr @.str.200, ptr %fn1.i217.i.i.i.i.i, align 1
  %conv.i218.i.i.i.i.i = and i32 %472, 65535
  %hno2.i219.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 2
  %481 = ptrtoint ptr %hno2.i219.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %481, i32 4)
  store i32 %conv.i218.i.i.i.i.i, ptr %hno2.i219.i.i.i.i.i, align 1
  %tag3.i220.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 3
  %482 = ptrtoint ptr %tag3.i220.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %482, i32 4)
  store i32 %and69.i.i.i.i, ptr %tag3.i220.i.i.i.i.i, align 1
  %data.i221.i.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 4
  %483 = ptrtoint ptr %data.i221.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %483, i32 8)
  store i64 %conv90.i.i.i.i.i, ptr %data.i221.i.i.i.i.i, align 1
  %arrayidx5.i222.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 4, i32 1
  %484 = ptrtoint ptr %arrayidx5.i222.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %484, i32 8)
  store i64 %conv93.i.i.i.i.i, ptr %arrayidx5.i222.i.i.i.i.i, align 1
  %arrayidx7.i223.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 4, i32 2
  %485 = ptrtoint ptr %arrayidx7.i223.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %485, i32 8)
  store i64 %conv94.i.i.i.i.i, ptr %arrayidx7.i223.i.i.i.i.i, align 1
  %arrayidx9.i224.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 4, i32 3
  %486 = ptrtoint ptr %arrayidx9.i224.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %486, i32 8)
  store i64 0, ptr %arrayidx9.i224.i.i.i.i.i, align 1
  %arrayidx11.i225.i.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i215.i.i.i.i.i, i32 0, i32 4, i32 4
  %487 = ptrtoint ptr %arrayidx11.i225.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %487, i32 8)
  store i64 %or101.i.i.i.i.i, ptr %arrayidx11.i225.i.i.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %488 = load volatile i32, ptr @jiffies, align 128
  %conv12.i226.i.i.i.i.i = zext i32 %488 to i64
  %489 = ptrtoint ptr %call.i215.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %489, i32 8)
  store i64 %conv12.i226.i.i.i.i.i, ptr %call.i215.i.i.i.i.i, align 1
  br label %do.body105.i.i.i.i.i

do.body105.i.i.i.i.i:                             ; preds = %if.end.i227.i.i.i.i.i, %if.then86.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge, %do.body76.i.i.i.i.i.do.body105.i.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %490 = load i32, ptr @snic_log_level, align 4
  %and106.i.i.i.i.i = and i32 %490, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i.i.i.i.i)
  %tobool107.not.i.i.i.i.i = icmp eq i32 %and106.i.i.i.i.i, 0
  br i1 %tobool107.not.i.i.i.i.i, label %do.body105.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge, label %do.end118.i.i.i.i.i, !prof !728

do.body105.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge: ; preds = %do.body105.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

do.end118.i.i.i.i.i:                              ; preds = %do.body105.i.i.i.i.i
  %shost119.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %491 = ptrtoint ptr %shost119.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %shost119.i.i.i.i.i, align 16
  %shost_gendev120.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %492, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i229.i.i.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i229.i.i.i.i.i, label %do.end118.i.i.i.i.i.snic_io_status_to_str.exit233.i.i.i.i.i_crit_edge, label %if.end.i231.i.i.i.i.i

do.end118.i.i.i.i.i.snic_io_status_to_str.exit233.i.i.i.i.i_crit_edge: ; preds = %do.end118.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit233.i.i.i.i.i

if.end.i231.i.i.i.i.i:                            ; preds = %do.end118.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i230.i.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv3.i.i.i.i.i
  %493 = ptrtoint ptr %arrayidx.i230.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %arrayidx.i230.i.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit233.i.i.i.i.i

snic_io_status_to_str.exit233.i.i.i.i.i:          ; preds = %if.end.i231.i.i.i.i.i, %do.end118.i.i.i.i.i.snic_io_status_to_str.exit233.i.i.i.i.i_crit_edge
  %retval.0.i232.i.i.i.i.i = phi ptr [ %494, %if.end.i231.i.i.i.i.i ], [ @.str.5, %do.end118.i.i.i.i.i.snic_io_status_to_str.exit233.i.i.i.i.i_crit_edge ]
  %495 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %495)
  %496 = load i64, ptr %flags7.i.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev120.i.i.i.i.i, ptr noundef nonnull @.str.205, i32 noundef %and69.i.i.i.i, ptr noundef %retval.0.i232.i.i.i.i.i, i64 noundef %496) #10
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

if.end131.i.i.i.i.i:                              ; preds = %if.end70.i.i.i.i.i
  %497 = ptrtoint ptr %state16.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 5, ptr %state16.i.i.i.i.i, align 8
  %or136.i.i.i.i.i = or i64 %433, 524288
  %498 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %498)
  store i64 %or136.i.i.i.i.i, ptr %flags7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %499 = load i32, ptr @snic_log_level, align 4
  %and138.i.i.i.i.i = and i32 %499, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i.i.i.i.i)
  %tobool139.not.i.i.i.i.i = icmp eq i32 %and138.i.i.i.i.i, 0
  br i1 %tobool139.not.i.i.i.i.i, label %if.end131.i.i.i.i.i.do.end162.i.i.i.i.i_crit_edge, label %do.end150.i.i.i.i.i, !prof !728

if.end131.i.i.i.i.i.do.end162.i.i.i.i.i_crit_edge: ; preds = %if.end131.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end162.i.i.i.i.i

do.end150.i.i.i.i.i:                              ; preds = %if.end131.i.i.i.i.i
  %shost151.i.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %500 = ptrtoint ptr %shost151.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %shost151.i.i.i.i.i, align 16
  %shost_gendev152.i.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %501, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i237.i.i.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i237.i.i.i.i.i, label %do.end150.i.i.i.i.i.snic_io_status_to_str.exit241.i.i.i.i.i_crit_edge, label %if.end.i239.i.i.i.i.i

do.end150.i.i.i.i.i.snic_io_status_to_str.exit241.i.i.i.i.i_crit_edge: ; preds = %do.end150.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit241.i.i.i.i.i

if.end.i239.i.i.i.i.i:                            ; preds = %do.end150.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i238.i.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv3.i.i.i.i.i
  %502 = ptrtoint ptr %arrayidx.i238.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %arrayidx.i238.i.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit241.i.i.i.i.i

snic_io_status_to_str.exit241.i.i.i.i.i:          ; preds = %if.end.i239.i.i.i.i.i, %do.end150.i.i.i.i.i.snic_io_status_to_str.exit241.i.i.i.i.i_crit_edge
  %retval.0.i240.i.i.i.i.i = phi ptr [ %503, %if.end.i239.i.i.i.i.i ], [ @.str.5, %do.end150.i.i.i.i.i.snic_io_status_to_str.exit241.i.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev152.i.i.i.i.i, ptr noundef nonnull @.str.208, i32 noundef %and69.i.i.i.i, ptr noundef %retval.0.i240.i.i.i.i.i, i64 noundef %or136.i.i.i.i.i) #10
  br label %do.end162.i.i.i.i.i

do.end162.i.i.i.i.i:                              ; preds = %snic_io_status_to_str.exit241.i.i.i.i.i, %if.end131.i.i.i.i.i.do.end162.i.i.i.i.i_crit_edge
  %dr_done.i.i.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %346, i32 0, i32 16
  %504 = ptrtoint ptr %dr_done.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %dr_done.i.i.i.i.i, align 4
  %tobool163.not.i.i.i.i.i = icmp eq ptr %505, null
  br i1 %tobool163.not.i.i.i.i.i, label %do.end162.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge, label %if.then164.i.i.i.i.i

do.end162.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge: ; preds = %do.end162.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

if.then164.i.i.i.i.i:                             ; preds = %do.end162.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %505) #7
  br label %snic_proc_dr_cmpl_locked.exit.i.i.i.i

snic_proc_dr_cmpl_locked.exit.i.i.i.i:            ; preds = %if.then164.i.i.i.i.i, %do.end162.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge, %snic_io_status_to_str.exit233.i.i.i.i.i, %do.body105.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge, %snic_io_status_to_str.exit.i.i.i.i.i, %do.body44.i.i.i.i.i.snic_proc_dr_cmpl_locked.exit.i.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  br label %sw.epilog175.i.i

sw.bb192.i.i.i.i:                                 ; preds = %if.end65.i.i.i.i
  %state194.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 1
  %506 = ptrtoint ptr %state194.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 3, ptr %state194.i.i.i.i, align 8
  %conv195.i.i.i.i = zext i8 %290 to i32
  %abts_status197.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 2
  %507 = ptrtoint ptr %abts_status197.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %conv195.i.i.i.i, ptr %abts_status197.i.i.i.i, align 4
  %or200.i.i.i.i = or i64 %344, 524288
  %508 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %508)
  store i64 %or200.i.i.i.i, ptr %flags7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %509 = load i32, ptr @snic_log_level, align 4
  %and202.i.i.i.i = and i32 %509, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202.i.i.i.i)
  %tobool203.not.i.i.i.i = icmp eq i32 %and202.i.i.i.i, 0
  br i1 %tobool203.not.i.i.i.i, label %sw.bb192.i.i.i.i.do.end225.i.i.i.i_crit_edge, label %do.end214.i.i.i.i, !prof !728

sw.bb192.i.i.i.i.do.end225.i.i.i.i_crit_edge:     ; preds = %sw.bb192.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end225.i.i.i.i

do.end214.i.i.i.i:                                ; preds = %sw.bb192.i.i.i.i
  %shost215.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %510 = ptrtoint ptr %shost215.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %shost215.i.i.i.i, align 16
  %shost_gendev216.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %511, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %290)
  %cmp.i36.i.i.i.i = icmp ugt i8 %290, 19
  br i1 %cmp.i36.i.i.i.i, label %do.end214.i.i.i.i.snic_io_status_to_str.exit40.i.i.i.i_crit_edge, label %if.end.i38.i.i.i.i

do.end214.i.i.i.i.snic_io_status_to_str.exit40.i.i.i.i_crit_edge: ; preds = %do.end214.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit40.i.i.i.i

if.end.i38.i.i.i.i:                               ; preds = %do.end214.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i37.i.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv195.i.i.i.i
  %512 = ptrtoint ptr %arrayidx.i37.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %arrayidx.i37.i.i.i.i, align 4
  br label %snic_io_status_to_str.exit40.i.i.i.i

snic_io_status_to_str.exit40.i.i.i.i:             ; preds = %if.end.i38.i.i.i.i, %do.end214.i.i.i.i.snic_io_status_to_str.exit40.i.i.i.i_crit_edge
  %retval.0.i39.i.i.i.i = phi ptr [ %513, %if.end.i38.i.i.i.i ], [ @.str.5, %do.end214.i.i.i.i.snic_io_status_to_str.exit40.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev216.i.i.i.i, ptr noundef nonnull @.str.186, i32 noundef %and69.i.i.i.i, ptr noundef %retval.0.i39.i.i.i.i, i64 noundef %or200.i.i.i.i) #10
  br label %do.end225.i.i.i.i

do.end225.i.i.i.i:                                ; preds = %snic_io_status_to_str.exit40.i.i.i.i, %sw.bb192.i.i.i.i.do.end225.i.i.i.i_crit_edge
  %abts_done226.i.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %346, i32 0, i32 14
  %514 = ptrtoint ptr %abts_done226.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %abts_done226.i.i.i.i, align 4
  %tobool227.not.i.i.i.i = icmp eq ptr %515, null
  br i1 %tobool227.not.i.i.i.i, label %do.end225.i.i.i.i.if.end230.i.i.i.i_crit_edge, label %if.then228.i.i.i.i

do.end225.i.i.i.i.if.end230.i.i.i.i_crit_edge:    ; preds = %do.end225.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end230.i.i.i.i

if.then228.i.i.i.i:                               ; preds = %do.end225.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %515) #7
  br label %if.end230.i.i.i.i

if.end230.i.i.i.i:                                ; preds = %if.then228.i.i.i.i, %do.end225.i.i.i.i.if.end230.i.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  br label %sw.epilog175.i.i

sw.default.i.i.i.i:                               ; preds = %if.end65.i.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i200.i.i.i, i32 noundef %call3.i.i.i.i) #7
  %shost234.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %516 = ptrtoint ptr %shost234.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %shost234.i.i.i.i, align 16
  %shost_gendev235.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %517, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev235.i.i.i.i, ptr noundef nonnull @.str.189, i32 noundef %and66.i.i.i.i) #10
  %518 = ptrtoint ptr %shost234.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %shost234.i.i.i.i, align 16
  %shost_gendev240.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %519, i32 0, i32 49
  %state242.i.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0224.i.i.i, i32 1, i32 0, i32 1
  %520 = ptrtoint ptr %state242.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load i32, ptr %state242.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %521)
  %cmp.i43.i.i.i.i = icmp ugt i32 %521, 6
  br i1 %cmp.i43.i.i.i.i, label %sw.default.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i_crit_edge, label %if.end.i45.i.i.i.i

sw.default.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i_crit_edge: ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit.i.i.i.i

if.end.i45.i.i.i.i:                               ; preds = %sw.default.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i44.i.i.i.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %521
  %522 = ptrtoint ptr %arrayidx.i44.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %arrayidx.i44.i.i.i.i, align 4
  br label %snic_ioreq_state_to_str.exit.i.i.i.i

snic_ioreq_state_to_str.exit.i.i.i.i:             ; preds = %if.end.i45.i.i.i.i, %sw.default.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i_crit_edge
  %retval.0.i46.i.i.i.i = phi ptr [ %523, %if.end.i45.i.i.i.i ], [ @.str.5, %sw.default.i.i.i.i.snic_ioreq_state_to_str.exit.i.i.i.i_crit_edge ]
  %524 = ptrtoint ptr %flags7.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %flags7.i.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev240.i.i.i.i, ptr noundef nonnull @.str.192, ptr noundef %retval.0.i46.i.i.i.i, i32 noundef %and69.i.i.i.i, i64 noundef %525) #10
  %call250.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.178, i32 noundef 904) #10
  %.b3941.i.i.i.i = load i1, ptr @snic_process_itmf_cmpl.__already_done.196, align 1
  br i1 %.b3941.i.i.i.i, label %snic_ioreq_state_to_str.exit.i.i.i.i.sw.epilog175.i.i_crit_edge, label %if.then265.i.i.i.i, !prof !728

snic_ioreq_state_to_str.exit.i.i.i.i.sw.epilog175.i.i_crit_edge: ; preds = %snic_ioreq_state_to_str.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then265.i.i.i.i:                               ; preds = %snic_ioreq_state_to_str.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_process_itmf_cmpl.__already_done.196, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 904, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog175.i.i

sw.bb94.i.i:                                      ; preds = %sw.epilog.i.i
  %526 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %526)
  %527 = load i8, ptr %status.i.i, align 1
  %528 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %desc.0.i, align 4
  %530 = tail call i32 @llvm.bswap.i32(i32 %529) #7
  %cmnd_id2.i.i274.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 1
  %531 = ptrtoint ptr %cmnd_id2.i.i274.i.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %cmnd_id2.i.i274.i.i, align 4
  %533 = tail call i32 @llvm.bswap.i32(i32 %532) #7
  %init_ctx.i.i275.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 2
  %534 = ptrtoint ptr %init_ctx.i.i275.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %init_ctx.i.i275.i.i, align 4
  %shost.i276.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %536 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev.i277.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %537, i32 0, i32 49
  %conv.i278.i.i = zext i8 %527 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %527)
  %cmp.i.i279.i.i = icmp ugt i8 %527, 19
  br i1 %cmp.i.i279.i.i, label %sw.bb94.i.i.snic_io_status_to_str.exit.i285.i.i_crit_edge, label %if.end.i.i281.i.i

sw.bb94.i.i.snic_io_status_to_str.exit.i285.i.i_crit_edge: ; preds = %sw.bb94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i285.i.i

if.end.i.i281.i.i:                                ; preds = %sw.bb94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i280.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i278.i.i
  %538 = ptrtoint ptr %arrayidx.i.i280.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %arrayidx.i.i280.i.i, align 4
  br label %snic_io_status_to_str.exit.i285.i.i

snic_io_status_to_str.exit.i285.i.i:              ; preds = %if.end.i.i281.i.i, %sw.bb94.i.i.snic_io_status_to_str.exit.i285.i.i_crit_edge
  %retval.0.i.i282.i.i = phi ptr [ %539, %if.end.i.i281.i.i ], [ @.str.5, %sw.bb94.i.i.snic_io_status_to_str.exit.i285.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i277.i.i, ptr noundef nonnull @.str.210, i32 noundef %533, i32 noundef %535, ptr noundef %retval.0.i.i282.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %540 = load i32, ptr @snic_log_level, align 4
  %and.i283.i.i = and i32 %540, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i283.i.i)
  %tobool.not.i284.i.i = icmp eq i32 %and.i283.i.i, 0
  br i1 %tobool.not.i284.i.i, label %snic_io_status_to_str.exit.i285.i.i.do.end15.i.i.i_crit_edge, label %do.end7.i.i.i, !prof !728

snic_io_status_to_str.exit.i285.i.i.do.end15.i.i.i_crit_edge: ; preds = %snic_io_status_to_str.exit.i285.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15.i.i.i

do.end7.i.i.i:                                    ; preds = %snic_io_status_to_str.exit.i285.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %541 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev9.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %542, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev9.i.i.i, ptr noundef nonnull @.str.213, i32 noundef 21, i32 noundef %conv.i278.i.i, i32 noundef %533, i32 noundef %530, i32 noundef %535) #10
  br label %do.end15.i.i.i

do.end15.i.i.i:                                   ; preds = %do.end7.i.i.i, %snic_io_status_to_str.exit.i285.i.i.do.end15.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %532)
  %cmp.i.i.i = icmp eq i32 %532, -1
  br i1 %cmp.i.i.i, label %if.then17.i.i.i, label %if.end26.i.i.i

if.then17.i.i.i:                                  ; preds = %do.end15.i.i.i
  %543 = inttoptr i32 %535 to ptr
  %544 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev22.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %545, i32 0, i32 49
  br i1 %cmp.i.i279.i.i, label %if.then17.i.i.i.snic_io_status_to_str.exit12.i.i.i_crit_edge, label %if.end.i10.i.i.i

if.then17.i.i.i.snic_io_status_to_str.exit12.i.i.i_crit_edge: ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit12.i.i.i

if.end.i10.i.i.i:                                 ; preds = %if.then17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i9.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i278.i.i
  %546 = ptrtoint ptr %arrayidx.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %arrayidx.i9.i.i.i, align 4
  br label %snic_io_status_to_str.exit12.i.i.i

snic_io_status_to_str.exit12.i.i.i:               ; preds = %if.end.i10.i.i.i, %if.then17.i.i.i.snic_io_status_to_str.exit12.i.i.i_crit_edge
  %retval.0.i11.i.i.i = phi ptr [ %547, %if.end.i10.i.i.i ], [ @.str.5, %if.then17.i.i.i.snic_io_status_to_str.exit12.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev22.i.i.i, ptr noundef nonnull @.str.216, i32 noundef -1, i32 noundef %535, ptr noundef %retval.0.i11.i.i.i) #10
  %sc25.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %543, i32 0, i32 9
  %548 = ptrtoint ptr %sc25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %sc25.i.i.i, align 8
  br label %ioctl_hba_rst.i.i.i

if.end26.i.i.i:                                   ; preds = %do.end15.i.i.i
  %max_tag_id.i286.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 27
  %550 = ptrtoint ptr %max_tag_id.i286.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %max_tag_id.i286.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %533, i32 %551)
  %cmp27.not.i.i.i = icmp ult i32 %533, %551
  %552 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %shost.i276.i.i, align 16
  br i1 %cmp27.not.i.i.i, label %if.end.i19.i.i.i, label %do.end32.i.i.i

do.end32.i.i.i:                                   ; preds = %if.end26.i.i.i
  %shost_gendev34.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %553, i32 0, i32 49
  br i1 %cmp.i.i279.i.i, label %do.end32.i.i.i.snic_io_status_to_str.exit17.i.i.i_crit_edge, label %if.end.i15.i.i.i

do.end32.i.i.i.snic_io_status_to_str.exit17.i.i.i_crit_edge: ; preds = %do.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit17.i.i.i

if.end.i15.i.i.i:                                 ; preds = %do.end32.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i14.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i278.i.i
  %554 = ptrtoint ptr %arrayidx.i14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx.i14.i.i.i, align 4
  br label %snic_io_status_to_str.exit17.i.i.i

snic_io_status_to_str.exit17.i.i.i:               ; preds = %if.end.i15.i.i.i, %do.end32.i.i.i.snic_io_status_to_str.exit17.i.i.i_crit_edge
  %retval.0.i16.i.i.i = phi ptr [ %555, %if.end.i15.i.i.i ], [ @.str.5, %do.end32.i.i.i.snic_io_status_to_str.exit17.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev34.i.i.i, ptr noundef nonnull @.str.219, i32 noundef %533, ptr noundef %retval.0.i16.i.i.i) #10
  %call40.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.211, i32 noundef 1036) #10
  %.b3.i.i.i = load i1, ptr @snic_hba_reset_cmpl_handler.__already_done, align 1
  br i1 %.b3.i.i.i, label %snic_io_status_to_str.exit17.i.i.i.sw.epilog175.i.i_crit_edge, label %if.then52.i.i.i, !prof !728

snic_io_status_to_str.exit17.i.i.i.sw.epilog175.i.i_crit_edge: ; preds = %snic_io_status_to_str.exit17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then52.i.i.i:                                  ; preds = %snic_io_status_to_str.exit17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_hba_reset_cmpl_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1036, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog175.i.i

if.end.i19.i.i.i:                                 ; preds = %if.end26.i.i.i
  %shr.i.i.i287.i.i = lshr i32 %533, 16
  %nr_hw_queues.i.i288.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %553, i32 0, i32 13, i32 3
  %556 = ptrtoint ptr %nr_hw_queues.i.i288.i.i to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %nr_hw_queues.i.i288.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %557, i32 %shr.i.i.i287.i.i)
  %cmp1.i.i289.i.i = icmp ugt i32 %557, %shr.i.i.i287.i.i
  br i1 %cmp1.i.i289.i.i, label %if.then3.i.i293.i.i, label %if.end.i19.i.i.i.if.then90.i.i.i_crit_edge

if.end.i19.i.i.i.if.then90.i.i.i_crit_edge:       ; preds = %if.end.i19.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i.i.i

if.then3.i.i293.i.i:                              ; preds = %if.end.i19.i.i.i
  %tags.i.i290.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %553, i32 0, i32 13, i32 11
  %558 = ptrtoint ptr %tags.i.i290.i.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %tags.i.i290.i.i, align 4
  %arrayidx.i20.i.i.i = getelementptr ptr, ptr %559, i32 %shr.i.i.i287.i.i
  %560 = ptrtoint ptr %arrayidx.i20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %arrayidx.i20.i.i.i, align 4
  %conv6.i.i291.i.i = and i32 %533, 65535
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %561, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %563, i32 %conv6.i.i291.i.i)
  %cmp.i.i.i292.i.i = icmp ugt i32 %563, %conv6.i.i291.i.i
  br i1 %cmp.i.i.i292.i.i, label %if.end8.i.i298.i.i, label %if.then3.i.i293.i.i.if.then90.i.i.i_crit_edge

if.then3.i.i293.i.i.if.then90.i.i.i_crit_edge:    ; preds = %if.then3.i.i293.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i.i.i

if.end8.i.i298.i.i:                               ; preds = %if.then3.i.i293.i.i
  %rqs.i.i.i294.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %561, i32 0, i32 5
  %564 = ptrtoint ptr %rqs.i.i.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %rqs.i.i.i294.i.i, align 4
  %arrayidx.i.i.i295.i.i = getelementptr ptr, ptr %565, i32 %conv6.i.i291.i.i
  %566 = ptrtoint ptr %arrayidx.i.i.i295.i.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %arrayidx.i.i.i295.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %567) #7, !srcloc !732
  %568 = ptrtoint ptr %rqs.i.i.i294.i.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %rqs.i.i.i294.i.i, align 4
  %arrayidx2.i.i.i296.i.i = getelementptr ptr, ptr %569, i32 %conv6.i.i291.i.i
  %570 = ptrtoint ptr %arrayidx2.i.i.i296.i.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %arrayidx2.i.i.i296.i.i, align 4
  %tobool.not.i.i297.i.i = icmp eq ptr %571, null
  br i1 %tobool.not.i.i297.i.i, label %if.end8.i.i298.i.i.if.then90.i.i.i_crit_edge, label %lor.lhs.false.i.i302.i.i

if.end8.i.i298.i.i.if.then90.i.i.i_crit_edge:     ; preds = %if.end8.i.i298.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i.i.i

lor.lhs.false.i.i302.i.i:                         ; preds = %if.end8.i.i298.i.i
  %state.i.i.i.i299.i.i = getelementptr inbounds %struct.request, ptr %571, i32 0, i32 25
  %572 = ptrtoint ptr %state.i.i.i.i299.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load volatile i32, ptr %state.i.i.i.i299.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %573)
  %cmp.i22.not.i.i300.i.i = icmp eq i32 %573, 0
  %add.ptr.i.i.i301.i.i = getelementptr %struct.request, ptr %571, i32 1
  br i1 %cmp.i22.not.i.i300.i.i, label %lor.lhs.false.i.i302.i.i.if.then90.i.i.i_crit_edge, label %lor.lhs.false.i.i302.i.i.ioctl_hba_rst.i.i.i_crit_edge

lor.lhs.false.i.i302.i.i.ioctl_hba_rst.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ioctl_hba_rst.i.i.i

lor.lhs.false.i.i302.i.i.if.then90.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i302.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i.i.i

ioctl_hba_rst.i.i.i:                              ; preds = %lor.lhs.false.i.i302.i.i.ioctl_hba_rst.i.i.i_crit_edge, %snic_io_status_to_str.exit12.i.i.i
  %rqi.0.i.i.i = phi ptr [ %543, %snic_io_status_to_str.exit12.i.i.i ], [ null, %lor.lhs.false.i.i302.i.i.ioctl_hba_rst.i.i.i_crit_edge ]
  %sc.0.i.i.i = phi ptr [ %549, %snic_io_status_to_str.exit12.i.i.i ], [ %add.ptr.i.i.i301.i.i, %lor.lhs.false.i.i302.i.i.ioctl_hba_rst.i.i.i_crit_edge ]
  %tobool89.not.i.i.i = icmp eq ptr %sc.0.i.i.i, null
  br i1 %tobool89.not.i.i.i, label %ioctl_hba_rst.i.i.i.if.then90.i.i.i_crit_edge, label %do.end101.i.i.i

ioctl_hba_rst.i.i.i.if.then90.i.i.i_crit_edge:    ; preds = %ioctl_hba_rst.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then90.i.i.i

if.then90.i.i.i:                                  ; preds = %ioctl_hba_rst.i.i.i.if.then90.i.i.i_crit_edge, %lor.lhs.false.i.i302.i.i.if.then90.i.i.i_crit_edge, %if.end8.i.i298.i.i.if.then90.i.i.i_crit_edge, %if.then3.i.i293.i.i.if.then90.i.i.i_crit_edge, %if.end.i19.i.i.i.if.then90.i.i.i_crit_edge
  %sc_null.i303.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 12
  %call.i.i.i304.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sc_null.i303.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %sc_null.i303.i.i) #7
  %574 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev95.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %575, i32 0, i32 49
  br i1 %cmp.i.i279.i.i, label %if.then90.i.i.i.snic_io_status_to_str.exit26.i.i.i_crit_edge, label %if.end.i24.i.i.i

if.then90.i.i.i.snic_io_status_to_str.exit26.i.i.i_crit_edge: ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit26.i.i.i

if.end.i24.i.i.i:                                 ; preds = %if.then90.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i23.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i278.i.i
  %576 = ptrtoint ptr %arrayidx.i23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %arrayidx.i23.i.i.i, align 4
  br label %snic_io_status_to_str.exit26.i.i.i

snic_io_status_to_str.exit26.i.i.i:               ; preds = %if.end.i24.i.i.i, %if.then90.i.i.i.snic_io_status_to_str.exit26.i.i.i_crit_edge
  %retval.0.i25.i.i.i = phi ptr [ %577, %if.end.i24.i.i.i ], [ @.str.5, %if.then90.i.i.i.snic_io_status_to_str.exit26.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev95.i.i.i, ptr noundef nonnull @.str.224, ptr noundef %retval.0.i25.i.i.i, i32 noundef %533) #10
  br label %sw.epilog175.i.i

do.end101.i.i.i:                                  ; preds = %ioctl_hba_rst.i.i.i
  %578 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev103.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %579, i32 0, i32 49
  %flags105.i.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0.i.i.i, i32 1, i32 0, i32 0, i32 8
  %580 = ptrtoint ptr %flags105.i.i.i to i32
  call void @__asan_load8_noabort(i32 %580)
  %581 = load i64, ptr %flags105.i.i.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev103.i.i.i, ptr noundef nonnull @.str.227, ptr noundef nonnull %sc.0.i.i.i, ptr noundef %rqi.0.i.i.i, i32 noundef %533, i64 noundef %581) #10
  %tag.i.i305.i.i = getelementptr i8, ptr %sc.0.i.i.i, i32 -172
  %582 = ptrtoint ptr %tag.i.i305.i.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %tag.i.i305.i.i, align 4
  %and.i.i306.i.i = and i32 %583, 63
  %arrayidx.i27.i.i.i = getelementptr %struct.snic, ptr %call.i.i16, i32 0, i32 24, i32 %and.i.i306.i.i
  %call113.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i27.i.i.i) #7
  %remove_wait.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 4
  %584 = ptrtoint ptr %remove_wait.i.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %remove_wait.i.i.i, align 8
  %tobool118.not.i.i.i = icmp eq ptr %585, null
  br i1 %tobool118.not.i.i.i, label %if.then119.i.i.i, label %if.end125.i.i.i

if.then119.i.i.i:                                 ; preds = %do.end101.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i27.i.i.i, i32 noundef %call113.i.i.i) #7
  %586 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev124.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %587, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev124.i.i.i, ptr noundef nonnull @.str.230) #10
  br label %sw.epilog175.i.i

if.end125.i.i.i:                                  ; preds = %do.end101.i.i.i
  %add.ptr.i.i307.i.i = getelementptr %struct.scsi_cmnd, ptr %sc.0.i.i.i, i32 1
  %588 = ptrtoint ptr %add.ptr.i.i307.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %add.ptr.i.i307.i.i, align 8
  %tobool129.not.i.i.i = icmp eq ptr %589, null
  br i1 %tobool129.not.i.i.i, label %land.rhs138.i.i.i, label %if.end199.i.i.i

land.rhs138.i.i.i:                                ; preds = %if.end125.i.i.i
  %.b4082.i.i.i = load i1, ptr @snic_hba_reset_cmpl_handler.__already_done.232, align 1
  br i1 %.b4082.i.i.i, label %land.rhs138.i.i.i.if.then185.i.i.i_crit_edge, label %if.then149.i.i.i, !prof !728

land.rhs138.i.i.i.if.then185.i.i.i_crit_edge:     ; preds = %land.rhs138.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then185.i.i.i

if.then149.i.i.i:                                 ; preds = %land.rhs138.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_hba_reset_cmpl_handler.__already_done.232, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1070, i32 noundef 9, ptr noundef null) #7
  br label %if.then185.i.i.i

if.then185.i.i.i:                                 ; preds = %if.then149.i.i.i, %land.rhs138.i.i.i.if.then185.i.i.i_crit_edge
  %req_null.i308.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 10
  %call.i.i6.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %req_null.i308.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %req_null.i308.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i27.i.i.i, i32 noundef %call113.i.i.i) #7
  %590 = ptrtoint ptr %flags105.i.i.i to i32
  call void @__asan_load8_noabort(i32 %590)
  %591 = load i64, ptr %flags105.i.i.i, align 8
  %or.i309.i.i = or i64 %591, 1024
  store i64 %or.i309.i.i, ptr %flags105.i.i.i, align 8
  %592 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev194.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %593, i32 0, i32 49
  br i1 %cmp.i.i279.i.i, label %if.then185.i.i.i.snic_io_status_to_str.exit34.i.i.i_crit_edge, label %if.end.i32.i.i.i

if.then185.i.i.i.snic_io_status_to_str.exit34.i.i.i_crit_edge: ; preds = %if.then185.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit34.i.i.i

if.end.i32.i.i.i:                                 ; preds = %if.then185.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i31.i.i.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %conv.i278.i.i
  %594 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %arrayidx.i31.i.i.i, align 4
  br label %snic_io_status_to_str.exit34.i.i.i

snic_io_status_to_str.exit34.i.i.i:               ; preds = %if.end.i32.i.i.i, %if.then185.i.i.i.snic_io_status_to_str.exit34.i.i.i_crit_edge
  %retval.0.i33.i.i.i = phi ptr [ %595, %if.end.i32.i.i.i ], [ @.str.5, %if.then185.i.i.i.snic_io_status_to_str.exit34.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev194.i.i.i, ptr noundef nonnull @.str.234, ptr noundef %retval.0.i33.i.i.i, i32 noundef %533, ptr noundef nonnull %sc.0.i.i.i, i64 noundef %or.i309.i.i) #10
  br label %sw.epilog175.i.i

if.end199.i.i.i:                                  ; preds = %if.end125.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i27.i.i.i, i32 noundef %call113.i.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %596 = load i32, ptr @snic_log_level, align 4
  %and.i36.i.i.i = and i32 %596, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i.i.i)
  %tobool.not.i37.i.i.i = icmp eq i32 %and.i36.i.i.i, 0
  br i1 %tobool.not.i37.i.i.i, label %if.end199.i.i.i.snic_hba_reset_scsi_cleanup.exit.i.i.i_crit_edge, label %do.end.i.i.i.i, !prof !728

if.end199.i.i.i.snic_hba_reset_scsi_cleanup.exit.i.i.i_crit_edge: ; preds = %if.end199.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_hba_reset_scsi_cleanup.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end199.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %597 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev.i.i310.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %598, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i310.i.i, ptr noundef nonnull @.str.243) #10
  br label %snic_hba_reset_scsi_cleanup.exit.i.i.i

snic_hba_reset_scsi_cleanup.exit.i.i.i:           ; preds = %do.end.i.i.i.i, %if.end199.i.i.i.snic_hba_reset_scsi_cleanup.exit.i.i.i_crit_edge
  %s_stats.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36
  %599 = ptrtoint ptr %tag.i.i305.i.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %tag.i.i305.i.i, align 4
  tail call fastcc void @snic_scsi_cleanup(ptr noundef %call.i.i16, i32 noundef %600) #7
  %call.i.i.i.i311.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %s_stats.i.i.i.i, i32 noundef 8) #7
  %call.i.i39.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %s_stats.i.i.i.i) #7
  %601 = shl i64 %call.i.i39.i.i.i, 32
  %conv10.i.i.i.i = ashr exact i64 %601, 32
  %compl.i.i312.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 8
  %call.i.i27.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compl.i.i312.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef %conv10.i.i.i.i, ptr noundef %compl.i.i312.i.i) #7
  %call.i.i28.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_stats.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef %conv10.i.i.i.i, ptr noundef %s_stats.i.i.i.i) #7
  %fw.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 3
  %call.i.i29.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw.i.i.i.i, i32 noundef 8) #7
  %call.i30.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %fw.i.i.i.i) #7
  %602 = shl i64 %call.i30.i.i.i.i, 32
  %conv17.i.i.i.i = ashr exact i64 %602, 32
  %call.i.i31.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw.i.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef %conv17.i.i.i.i, ptr noundef %fw.i.i.i.i) #7
  %call200.i.i.i = tail call i32 @snic_get_state(ptr noundef %call.i.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call200.i.i.i)
  %cmp201.not.i.i.i = icmp eq i32 %call200.i.i.i, 3
  br i1 %cmp201.not.i.i.i, label %snic_hba_reset_scsi_cleanup.exit.i.i.i.do.body276.i.i.i_crit_edge, label %land.lhs.true.i.i.i

snic_hba_reset_scsi_cleanup.exit.i.i.i.do.body276.i.i.i_crit_edge: ; preds = %snic_hba_reset_scsi_cleanup.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i.i.i

land.lhs.true.i.i.i:                              ; preds = %snic_hba_reset_scsi_cleanup.exit.i.i.i
  %call203.i.i.i = tail call i32 @snic_get_state(ptr noundef %call.i.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call203.i.i.i)
  %cmp204.not.i.i.i = icmp eq i32 %call203.i.i.i, 4
  br i1 %cmp204.not.i.i.i, label %land.lhs.true.i.i.i.do.body276.i.i.i_crit_edge, label %do.end209.i.i.i

land.lhs.true.i.i.i.do.body276.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i.i.i

do.end209.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %call211.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.211, i32 noundef 1092) #10
  %call213.i.i.i = tail call i32 @snic_get_state(ptr noundef %call.i.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call213.i.i.i)
  %cmp214.not.i.i.i = icmp eq i32 %call213.i.i.i, 3
  br i1 %cmp214.not.i.i.i, label %do.end209.i.i.i.do.body276.i.i.i_crit_edge, label %land.rhs216.i.i.i

do.end209.i.i.i.do.body276.i.i.i_crit_edge:       ; preds = %do.end209.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i.i.i

land.rhs216.i.i.i:                                ; preds = %do.end209.i.i.i
  %call217.i.i.i = tail call i32 @snic_get_state(ptr noundef %call.i.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call217.i.i.i)
  %cmp218.not.i.i.i = icmp eq i32 %call217.i.i.i, 4
  br i1 %cmp218.not.i.i.i, label %land.rhs216.i.i.i.do.body276.i.i.i_crit_edge, label %land.rhs228.i.i.i

land.rhs216.i.i.i.do.body276.i.i.i_crit_edge:     ; preds = %land.rhs216.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i.i.i

land.rhs228.i.i.i:                                ; preds = %land.rhs216.i.i.i
  %.b4091.i.i.i = load i1, ptr @snic_hba_reset_cmpl_handler.__already_done.239, align 1
  br i1 %.b4091.i.i.i, label %land.rhs228.i.i.i.do.body276.i.i.i_crit_edge, label %if.then239.i.i.i, !prof !728

land.rhs228.i.i.i.do.body276.i.i.i_crit_edge:     ; preds = %land.rhs228.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body276.i.i.i

if.then239.i.i.i:                                 ; preds = %land.rhs228.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_hba_reset_cmpl_handler.__already_done.239, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1092, i32 noundef 9, ptr noundef null) #7
  br label %do.body276.i.i.i

do.body276.i.i.i:                                 ; preds = %if.then239.i.i.i, %land.rhs228.i.i.i.do.body276.i.i.i_crit_edge, %land.rhs216.i.i.i.do.body276.i.i.i_crit_edge, %do.end209.i.i.i.do.body276.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body276.i.i.i_crit_edge, %snic_hba_reset_scsi_cleanup.exit.i.i.i.do.body276.i.i.i_crit_edge
  %call283.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i27.i.i.i) #7
  %snic_lock.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 3
  %call296.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock.i.i.i) #7
  %call301.i.i.i = tail call i32 @snic_get_state(ptr noundef %call.i.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call301.i.i.i)
  %cmp302.i.i.i = icmp eq i32 %call301.i.i.i, 4
  br i1 %cmp302.i.i.i, label %if.then304.i.i.i, label %do.body276.i.i.i.if.end305.i.i.i_crit_edge

do.body276.i.i.i.if.end305.i.i.i_crit_edge:       ; preds = %do.body276.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305.i.i.i

if.then304.i.i.i:                                 ; preds = %do.body276.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snic_set_state(ptr noundef %call.i.i16, i32 noundef 2) #7
  br label %if.end305.i.i.i

if.end305.i.i.i:                                  ; preds = %if.then304.i.i.i, %do.body276.i.i.i.if.end305.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock.i.i.i, i32 noundef %call296.i.i.i) #7
  %603 = ptrtoint ptr %remove_wait.i.i.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %remove_wait.i.i.i, align 8
  %tobool308.not.i.i.i = icmp eq ptr %604, null
  br i1 %tobool308.not.i.i.i, label %if.end305.i.i.i.if.end311.i.i.i_crit_edge, label %if.then309.i.i.i

if.end305.i.i.i.if.end311.i.i.i_crit_edge:        ; preds = %if.end305.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end311.i.i.i

if.then309.i.i.i:                                 ; preds = %if.end305.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @complete(ptr noundef nonnull %604) #7
  br label %if.end311.i.i.i

if.end311.i.i.i:                                  ; preds = %if.then309.i.i.i, %if.end305.i.i.i.if.end311.i.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i27.i.i.i, i32 noundef %call283.i.i.i) #7
  %hba_reset_cmpl.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 2, i32 6
  %call.i.i7.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hba_reset_cmpl.i.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %hba_reset_cmpl.i.i.i) #7
  %xpt_type.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 29, i32 10
  %605 = ptrtoint ptr %xpt_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %605)
  %606 = load i8, ptr %xpt_type.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %606)
  %cmp314.i.i.i = icmp eq i8 %606, 1
  br i1 %cmp314.i.i.i, label %if.end311.i.i.i.sw.epilog175.i.i_crit_edge, label %do.body318.i.i.i

if.end311.i.i.i.sw.epilog175.i.i_crit_edge:       ; preds = %if.end311.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

do.body318.i.i.i:                                 ; preds = %if.end311.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %607 = load i32, ptr @snic_log_level, align 4
  %and319.i.i.i = and i32 %607, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i.i.i)
  %tobool320.not.i.i.i = icmp eq i32 %and319.i.i.i, 0
  br i1 %tobool320.not.i.i.i, label %do.body318.i.i.i.do.end338.i.i.i_crit_edge, label %do.end331.i.i.i, !prof !728

do.body318.i.i.i.do.end338.i.i.i_crit_edge:       ; preds = %do.body318.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end338.i.i.i

do.end331.i.i.i:                                  ; preds = %do.body318.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %608 = ptrtoint ptr %shost.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %shost.i276.i.i, align 16
  %shost_gendev333.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %609, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev333.i.i.i, ptr noundef nonnull @.str.241) #10
  br label %do.end338.i.i.i

do.end338.i.i.i:                                  ; preds = %do.end331.i.i.i, %do.body318.i.i.i.do.end338.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %610 = load ptr, ptr @snic_glob, align 4
  %event_q.i.i.i = getelementptr inbounds %struct.snic_global, ptr %610, i32 0, i32 3
  %611 = ptrtoint ptr %event_q.i.i.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %event_q.i.i.i, align 64
  %disc_work.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 33
  %call.i.i313.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %612, ptr noundef %disc_work.i.i.i) #7
  br label %sw.epilog175.i.i

sw.bb96.i.i:                                      ; preds = %sw.epilog.i.i
  %shost.i314.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %613 = ptrtoint ptr %shost.i314.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %shost.i314.i.i, align 16
  %shost_gendev.i315.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %614, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i315.i.i, ptr noundef nonnull @.str.245) #10
  %call.i316.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.246, i32 noundef 1123) #10
  %.b1.i.i.i = load i1, ptr @snic_msg_ack_handler.__already_done, align 1
  br i1 %.b1.i.i.i, label %sw.bb96.i.i.sw.epilog175.i.i_crit_edge, label %if.then.i.i.i, !prof !728

sw.bb96.i.i.sw.epilog175.i.i_crit_edge:           ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then.i.i.i:                                    ; preds = %sw.bb96.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_msg_ack_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1123, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog175.i.i

sw.bb97.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %615 = load i32, ptr @snic_log_level, align 4
  %and.i317.i.i = and i32 %615, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317.i.i)
  %tobool.not.i318.i.i = icmp eq i32 %and.i317.i.i, 0
  br i1 %tobool.not.i318.i.i, label %sw.bb97.i.i.do.end9.i328.i.i_crit_edge, label %do.end.i327.i.i, !prof !728

sw.bb97.i.i.do.end9.i328.i.i_crit_edge:           ; preds = %sw.bb97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i328.i.i

do.end.i327.i.i:                                  ; preds = %sw.bb97.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %init_ctx.i.i319.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 2
  %616 = ptrtoint ptr %init_ctx.i.i319.i.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load i32, ptr %init_ctx.i.i319.i.i, align 4
  %cmnd_id2.i.i320.i.i = getelementptr inbounds %struct.snic_io_hdr, ptr %desc.0.i, i32 0, i32 1
  %618 = ptrtoint ptr %cmnd_id2.i.i320.i.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %cmnd_id2.i.i320.i.i, align 4
  %620 = tail call i32 @llvm.bswap.i32(i32 %619) #7
  %621 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load i32, ptr %desc.0.i, align 4
  %623 = tail call i32 @llvm.bswap.i32(i32 %622) #7
  %624 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %status.i.i, align 1
  %shost.i323.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %626 = ptrtoint ptr %shost.i323.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %shost.i323.i.i, align 16
  %shost_gendev.i324.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %627, i32 0, i32 49
  %conv5.i326.i.i = zext i8 %625 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i324.i.i, ptr noundef nonnull @.str.250, i32 noundef 129, i32 noundef %conv5.i326.i.i, i32 noundef %620, i32 noundef %623, i32 noundef %617) #10
  br label %do.end9.i328.i.i

do.end9.i328.i.i:                                 ; preds = %do.end.i327.i.i, %sw.bb97.i.i.do.end9.i328.i.i_crit_edge
  %ev_id.i.i.i = getelementptr inbounds %struct.snic_fw_req, ptr %desc.0.i, i32 0, i32 1, i32 0, i32 3
  %628 = ptrtoint ptr %ev_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %ev_id.i.i.i, align 4
  %630 = tail call i32 @llvm.bswap.i32(i32 %629) #7
  %631 = zext i32 %630 to i64
  call void @__sanitizer_cov_trace_switch(i64 %631, ptr @__sancov_gen_cov_switch_values.439)
  switch i32 %630, label %do.end71.i.i.i [
    i32 1, label %do.end12.i.i.i
    i32 2, label %do.end18.i.i.i
    i32 3, label %do.end24.i.i.i
    i32 4, label %do.end30.i.i.i
    i32 5, label %do.end36.i.i.i
    i32 6, label %do.end42.i331.i.i
    i32 7, label %do.end48.i.i.i
    i32 8, label %do.end54.i.i.i
    i32 9, label %do.end60.i.i.i
    i32 16, label %do.end66.i.i.i
  ]

do.end12.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost13.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %632 = ptrtoint ptr %shost13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %shost13.i.i.i, align 16
  %shost_gendev14.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %633, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev14.i.i.i, ptr noundef nonnull @.str.253) #10
  br label %do.end124.i.i.i

do.end18.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost19.i329.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %634 = ptrtoint ptr %shost19.i329.i.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %shost19.i329.i.i, align 16
  %shost_gendev20.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %635, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev20.i.i.i, ptr noundef nonnull @.str.256) #10
  br label %do.end124.i.i.i

do.end24.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost25.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %636 = ptrtoint ptr %shost25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %shost25.i.i.i, align 16
  %shost_gendev26.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %637, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev26.i.i.i, ptr noundef nonnull @.str.259) #10
  br label %do.end124.i.i.i

do.end30.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost31.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %638 = ptrtoint ptr %shost31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %shost31.i.i.i, align 16
  %shost_gendev32.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %639, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev32.i.i.i, ptr noundef nonnull @.str.262) #10
  br label %do.end124.i.i.i

do.end36.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost37.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %640 = ptrtoint ptr %shost37.i.i.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %shost37.i.i.i, align 16
  %shost_gendev38.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %641, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev38.i.i.i, ptr noundef nonnull @.str.265) #10
  br label %do.end124.i.i.i

do.end42.i331.i.i:                                ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost43.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %642 = ptrtoint ptr %shost43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %shost43.i.i.i, align 16
  %shost_gendev44.i330.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %643, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev44.i330.i.i, ptr noundef nonnull @.str.268) #10
  br label %do.end124.i.i.i

do.end48.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost49.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %644 = ptrtoint ptr %shost49.i.i.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %shost49.i.i.i, align 16
  %shost_gendev50.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %645, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev50.i.i.i, ptr noundef nonnull @.str.271) #10
  br label %do.end124.i.i.i

do.end54.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost55.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %646 = ptrtoint ptr %shost55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %shost55.i.i.i, align 16
  %shost_gendev56.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %647, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev56.i.i.i, ptr noundef nonnull @.str.274) #10
  br label %do.end124.i.i.i

do.end60.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost61.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %648 = ptrtoint ptr %shost61.i.i.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %shost61.i.i.i, align 16
  %shost_gendev62.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %649, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev62.i.i.i, ptr noundef nonnull @.str.277) #10
  br label %do.end124.i.i.i

do.end66.i.i.i:                                   ; preds = %do.end9.i328.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost67.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %650 = ptrtoint ptr %shost67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %shost67.i.i.i, align 16
  %shost_gendev68.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %651, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev68.i.i.i, ptr noundef nonnull @.str.280) #10
  br label %do.end124.i.i.i

do.end71.i.i.i:                                   ; preds = %do.end9.i328.i.i
  %shost72.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %652 = ptrtoint ptr %shost72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %shost72.i.i.i, align 16
  %shost_gendev73.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %653, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev73.i.i.i, ptr noundef nonnull @.str.283) #10
  %call.i332.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.251, i32 noundef 1185) #10
  %.b194.i.i.i = load i1, ptr @snic_aen_handler.__already_done, align 1
  br i1 %.b194.i.i.i, label %do.end71.i.i.i.do.end124.i.i.i_crit_edge, label %if.then88.i.i.i, !prof !728

do.end71.i.i.i.do.end124.i.i.i_crit_edge:         ; preds = %do.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124.i.i.i

if.then88.i.i.i:                                  ; preds = %do.end71.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_aen_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1185, i32 noundef 9, ptr noundef null) #7
  br label %do.end124.i.i.i

do.end124.i.i.i:                                  ; preds = %if.then88.i.i.i, %do.end71.i.i.i.do.end124.i.i.i_crit_edge, %do.end66.i.i.i, %do.end60.i.i.i, %do.end54.i.i.i, %do.end48.i.i.i, %do.end42.i331.i.i, %do.end36.i.i.i, %do.end30.i.i.i, %do.end24.i.i.i, %do.end18.i.i.i, %do.end12.i.i.i
  %call126.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.251, i32 noundef 1189) #10
  %.b192193.i.i.i = load i1, ptr @snic_aen_handler.__already_done.289, align 1
  br i1 %.b192193.i.i.i, label %do.end124.i.i.i.sw.epilog175.i.i_crit_edge, label %if.then141.i.i.i, !prof !728

do.end124.i.i.i.sw.epilog175.i.i_crit_edge:       ; preds = %do.end124.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

if.then141.i.i.i:                                 ; preds = %do.end124.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_aen_handler.__already_done.289, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1189, i32 noundef 9, ptr noundef null) #7
  br label %sw.epilog175.i.i

do.end100.i.i:                                    ; preds = %sw.epilog.i.i
  %call102.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.102, ptr noundef nonnull @__func__.snic_io_cmpl_handler, i32 noundef 1257) #10
  %.b219220.i.i = load i1, ptr @snic_io_cmpl_handler.__already_done.103, align 1
  br i1 %.b219220.i.i, label %do.end100.i.i.if.end144.i.i_crit_edge, label %if.then117.i.i, !prof !728

do.end100.i.i.if.end144.i.i_crit_edge:            ; preds = %do.end100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i.i

if.then117.i.i:                                   ; preds = %do.end100.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_io_cmpl_handler.__already_done.103, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1257, i32 noundef 9, ptr noundef null) #7
  br label %if.end144.i.i

if.end144.i.i:                                    ; preds = %if.then117.i.i, %do.end100.i.i.if.end144.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %654 = load i32, ptr @snic_log_level, align 4
  %and.i.i = and i32 %654, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool153.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool153.not.i.i, label %if.end144.i.i.sw.epilog175.i.i_crit_edge, label %do.end164.i.i, !prof !728

if.end144.i.i.sw.epilog175.i.i_crit_edge:         ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog175.i.i

do.end164.i.i:                                    ; preds = %if.end144.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost165.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 8
  %655 = ptrtoint ptr %shost165.i.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %shost165.i.i, align 16
  %shost_gendev166.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %656, i32 0, i32 49
  %657 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %type.i.i, align 4
  %conv169.i.i = zext i8 %658 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev166.i.i, ptr noundef nonnull @.str.105, i32 noundef %conv169.i.i) #10
  br label %sw.epilog175.i.i

sw.epilog175.i.i:                                 ; preds = %do.end164.i.i, %if.end144.i.i.sw.epilog175.i.i_crit_edge, %if.then141.i.i.i, %do.end124.i.i.i.sw.epilog175.i.i_crit_edge, %if.then.i.i.i, %sw.bb96.i.i.sw.epilog175.i.i_crit_edge, %do.end338.i.i.i, %if.end311.i.i.i.sw.epilog175.i.i_crit_edge, %snic_io_status_to_str.exit34.i.i.i, %if.then119.i.i.i, %snic_io_status_to_str.exit26.i.i.i, %if.then52.i.i.i, %snic_io_status_to_str.exit17.i.i.i.sw.epilog175.i.i_crit_edge, %if.then265.i.i.i.i, %snic_ioreq_state_to_str.exit.i.i.i.i.sw.epilog175.i.i_crit_edge, %if.end230.i.i.i.i, %snic_proc_dr_cmpl_locked.exit.i.i.i.i, %do.end190.i.i.i.i, %if.then108.i.i.i.i, %if.then73.i.i.i.i, %snic_io_status_to_str.exit.i.i.i.i, %if.then.i.i266.i.i, %snic_io_status_to_str.exit199.i.i.i, %if.then61.i.i.i, %snic_io_status_to_str.exit.i245.i.i.sw.epilog175.i.i_crit_edge, %if.else.i683.i.i.i, %if.then.i682.i.i.i, %if.end.i648.i.i.i, %if.then349.i.i.i.sw.epilog175.i.i_crit_edge, %do.body339.i.i.i.sw.epilog175.i.i_crit_edge, %snic_stats_update_io_cmpl.exit.i.i.sw.epilog175.i.i_crit_edge, %snic_io_status_to_str.exit620.i.i.i, %if.then148.i.i.i, %if.end.i610.i.i.i, %if.then89.i.i.i.sw.epilog175.i.i_crit_edge, %snic_io_status_to_str.exit608.i.i.i.sw.epilog175.i.i_crit_edge, %snic_io_status_to_str.exit.i.i.i, %sw.bb90.i.i, %sw.bb89.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %659 = load volatile i32, ptr @jiffies, align 128
  %conv176.i.i = zext i32 %659 to i64
  %sub.i.i = sub nsw i64 %conv176.i.i, %conv.i.i
  %max_cmpl_time.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i16, i32 0, i32 36, i32 0, i32 5
  %call.i.i223.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmpl_time.i.i, i32 noundef 8) #7
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %max_cmpl_time.i.i) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %call.i.i.i)
  %cmp179.i.i = icmp ugt i64 %sub.i.i, %call.i.i.i
  br i1 %cmp179.i.i, label %if.then181.i.i, label %sw.epilog175.i.i.if.end.i_crit_edge

sw.epilog175.i.i.if.end.i_crit_edge:              ; preds = %sw.epilog175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then181.i.i:                                   ; preds = %sw.epilog175.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i224.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_cmpl_time.i.i, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %max_cmpl_time.i.i, i64 noundef %sub.i.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then181.i.i, %sw.epilog175.i.i.if.end.i_crit_edge
  %660 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %to_clean.i, align 4
  %inc.i = add i32 %661, 1
  store i32 %inc.i, ptr %to_clean.i, align 4
  %662 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %663)
  %cmp6.i = icmp eq i32 %inc.i, %663
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %664 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 0, ptr %to_clean.i, align 4
  %665 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %last_color.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %666)
  %tobool11.not.i = icmp eq i32 %666, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %667 = ptrtoint ptr %last_color.i to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %cond.i, ptr %last_color.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %668 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %ring.i, align 4
  %670 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %desc_size.i, align 4
  %672 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %to_clean.i, align 4
  %mul19.i = mul i32 %673, %671
  %add.ptr20.i = getelementptr i8, ptr %669, i32 %mul19.i
  %add.ptr1.i1.i = getelementptr i8, ptr %add.ptr20.i, i32 63
  %674 = ptrtoint ptr %add.ptr1.i1.i to i32
  call void @__asan_load1_noabort(i32 %674)
  %675 = load i8, ptr %add.ptr1.i1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !731
  %inc21.i = add nuw i32 %work_done.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %umax.i
  br i1 %exitcond.not.i, label %if.end13.i.vnic_cq_fw_service.exit_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

if.end13.i.vnic_cq_fw_service.exit_crit_edge:     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vnic_cq_fw_service.exit

vnic_cq_fw_service.exit:                          ; preds = %if.end13.i.vnic_cq_fw_service.exit_crit_edge, %while.cond.i.vnic_cq_fw_service.exit_crit_edge
  %work_done.1.i = phi i32 [ %umax.i, %if.end13.i.vnic_cq_fw_service.exit_crit_edge ], [ %work_done.0.i, %while.cond.i.vnic_cq_fw_service.exit_crit_edge ]
  %add = add i32 %work_done.1.i, %num_ent.018
  %conv = zext i32 %work_done.1.i to i64
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cq_ents, i32 noundef 8) #7
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %max_cq_ents) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %conv)
  %cmp2 = icmp slt i64 %call.i, %conv
  br i1 %cmp2, label %if.then, label %vnic_cq_fw_service.exit.for.inc_crit_edge

vnic_cq_fw_service.exit.for.inc_crit_edge:        ; preds = %vnic_cq_fw_service.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %vnic_cq_fw_service.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_cq_ents, i32 noundef 8) #7
  tail call void @generic_atomic64_set(ptr noundef %max_cq_ents, i64 noundef %conv) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %vnic_cq_fw_service.exit.for.inc_crit_edge
  %inc = add nuw i32 %cq_idx.019, 1
  %676 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %cq_count, align 4
  %cmp = icmp ult i32 %inc, %677
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %num_ent.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  ret i32 %num_ent.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_abort_cmd(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  %tm_done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %tag2 = getelementptr i8, ptr %sc, i32 -172
  %4 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %7 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end, !prof !728

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %sc, i32 -192
  %shost = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %8 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %9, i32 0, i32 49
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %10 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmnd, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.21, ptr noundef %sc, i32 noundef %conv, ptr noundef %add.ptr.i.i, i32 noundef %5) #10
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  %call12 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 2
  br i1 %cmp.not, label %if.end26, label %do.end23, !prof !728

do.end23:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %shost24 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %14 = ptrtoint ptr %shost24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost24, align 16
  %shost_gendev25 = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev25, ptr noundef nonnull @.str.24, i32 noundef %5) #10
  br label %do.body32

if.end26:                                         ; preds = %do.end11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm_done.i) #7
  %16 = getelementptr inbounds i8, ptr %tm_done.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 52)
  %18 = ptrtoint ptr %tm_done.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tm_done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %16, ptr noundef nonnull @.str.304, ptr noundef nonnull @init_completion.__key) #7
  %19 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tag2, align 4
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 55, i32 1
  %23 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i.i, align 8
  %parent.i = getelementptr i8, ptr %24, i32 136
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 35
  %27 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %28, @snic_tgt_dev_release
  %add.ptr.i = getelementptr i8, ptr %26, i32 -24
  %spec.select.i = select i1 %cmp.i.not.i, ptr %add.ptr.i, ptr null
  %state.i.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select.i, i32 0, i32 5
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp.i249.i = icmp eq i32 %30, 2
  br i1 %cmp.i249.i, label %if.end26.if.else.i_crit_edge, label %land.lhs.true.i

if.end26.if.else.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end26
  %typ.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select.i, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %typ.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp10.i = icmp eq i32 %32, 2
  br i1 %cmp10.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end26.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true.i.if.end.i_crit_edge
  %cmp158.i = phi i1 [ true, %if.else.i ], [ false, %land.lhs.true.i.if.end.i_crit_edge ]
  %tmf.0.i = phi i32 [ 1, %if.else.i ], [ 6, %land.lhs.true.i.if.end.i_crit_edge ]
  %and.i.i = and i32 %20, 63
  %arrayidx.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i
  %call16.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %add.ptr.i250.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %33 = ptrtoint ptr %add.ptr.i250.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i250.i, align 8
  %tobool21.not.i = icmp eq ptr %34, null
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end28.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call16.i) #7
  %shost.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %35 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %36, i32 0, i32 49
  %flags27.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %37 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %flags27.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.290, i32 noundef %20, i64 noundef %38) #10
  br label %snic_send_abort_and_wait.exit.thread

if.end28.i:                                       ; preds = %if.end.i
  %abts_done.i = getelementptr inbounds %struct.snic_req_info, ptr %34, i32 0, i32 14
  %39 = ptrtoint ptr %abts_done.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tm_done.i, ptr %abts_done.i, align 4
  %state.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp30.i = icmp eq i32 %41, 2
  br i1 %cmp30.i, label %if.then32.i, label %if.end87.i

if.then32.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call16.i) #7
  br label %if.end30

if.end87.i:                                       ; preds = %if.end28.i
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %state.i, align 8
  %abts_status.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 2
  %43 = ptrtoint ptr %abts_status.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 256, ptr %abts_status.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %44 = load i32, ptr @snic_log_level, align 4
  %and.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool94.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool94.not.i, label %if.end87.i.do.end112.i_crit_edge, label %do.end105.i, !prof !728

if.end87.i.do.end112.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112.i

do.end105.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost106.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %45 = ptrtoint ptr %shost106.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost106.i, align 16
  %shost_gendev107.i = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev107.i, ptr noundef nonnull @.str.296, i32 noundef %20) #10
  br label %do.end112.i

do.end112.i:                                      ; preds = %do.end105.i, %if.end87.i.do.end112.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call16.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %47 = load i32, ptr @snic_log_level, align 4
  %and.i256.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256.i)
  %tobool.not.i.i = icmp eq i32 %and.i256.i, 0
  br i1 %tobool.not.i.i, label %do.end112.i.snic_queue_abort_req.exit.i_crit_edge, label %do.end.i.i, !prof !728

do.end112.i.snic_queue_abort_req.exit.i_crit_edge: ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_queue_abort_req.exit.i

do.end.i.i:                                       ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %48 = ptrtoint ptr %shost.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %shost.i.i, align 16
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %49, i32 0, i32 49
  %50 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tag2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.305, ptr noundef %sc, ptr noundef nonnull %34, i32 noundef %51, i32 noundef %tmf.0.i) #10
  br label %snic_queue_abort_req.exit.i

snic_queue_abort_req.exit.i:                      ; preds = %do.end.i.i, %do.end112.i.snic_queue_abort_req.exit.i_crit_edge
  %tm_tag.i.i = getelementptr inbounds %struct.snic_req_info, ptr %34, i32 0, i32 6
  %52 = ptrtoint ptr %tm_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tm_tag.i.i, align 8
  %or.i.i = or i32 %53, 1073741824
  store i32 %or.i.i, ptr %tm_tag.i.i, align 8
  %call7.i.i = call fastcc i32 @snic_issue_tm_req(ptr noundef %hostdata.i, ptr noundef nonnull %34, ptr noundef %sc, i32 noundef %tmf.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool114.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool114.not.i, label %do.body146.i, label %if.then115.i

if.then115.i:                                     ; preds = %snic_queue_abort_req.exit.i
  %q_fail.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 2, i32 50, i32 10, i32 1, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %q_fail.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %q_fail.i) #7
  %shost119.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %54 = ptrtoint ptr %shost119.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost119.i, align 16
  %shost_gendev120.i = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 49
  %flags122.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %56 = ptrtoint ptr %flags122.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %flags122.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev120.i, ptr noundef nonnull @.str.299, i32 noundef %20, i32 noundef %call7.i.i, i64 noundef %57) #10
  %call131.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %58 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %41, ptr %state.i, align 8
  %59 = ptrtoint ptr %add.ptr.i250.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i250.i, align 8
  %tobool140.not.i = icmp eq ptr %60, null
  br i1 %tobool140.not.i, label %if.then115.i.if.end143.i_crit_edge, label %if.then141.i

if.then115.i.if.end143.i_crit_edge:               ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.i

if.then141.i:                                     ; preds = %if.then115.i
  call void @__sanitizer_cov_trace_pc() #9
  %abts_done142.i = getelementptr inbounds %struct.snic_req_info, ptr %60, i32 0, i32 14
  %61 = ptrtoint ptr %abts_done142.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %abts_done142.i, align 4
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then141.i, %if.then115.i.if.end143.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call131.i) #7
  br label %snic_send_abort_and_wait.exit.thread

do.body146.i:                                     ; preds = %snic_queue_abort_req.exit.i
  %call153.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %flags162.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %62 = ptrtoint ptr %flags162.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %flags162.i, align 8
  br i1 %cmp158.i, label %if.then160.i, label %if.else165.i

if.then160.i:                                     ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i64 %63, 64
  %64 = ptrtoint ptr %flags162.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %or.i, ptr %flags162.i, align 8
  %abts164.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 2, i32 50, i32 9, i32 5
  %call.i.i246.i = call zeroext i1 @__kasan_check_write(ptr noundef %abts164.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %abts164.i) #7
  br label %if.end169.i

if.else165.i:                                     ; preds = %do.body146.i
  call void @__sanitizer_cov_trace_pc() #9
  %or168.i = or i64 %63, 128
  %65 = ptrtoint ptr %flags162.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %or168.i, ptr %flags162.i, align 8
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.else165.i, %if.then160.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call153.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %66 = load i32, ptr @snic_log_level, align 4
  %and171.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.end169.i.if.end30_crit_edge, label %do.end183.i, !prof !728

if.end169.i.if.end30_crit_edge:                   ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end183.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost184.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %67 = ptrtoint ptr %shost184.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %shost184.i, align 16
  %shost_gendev185.i = getelementptr inbounds %struct.Scsi_Host, ptr %68, i32 0, i32 49
  %69 = ptrtoint ptr %flags162.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %flags162.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev185.i, ptr noundef nonnull @.str.302, ptr noundef %sc, i32 noundef %20, i64 noundef %70) #10
  br label %if.end30

snic_send_abort_and_wait.exit.thread:             ; preds = %if.end143.i, %if.then22.i
  %ret.1.i.ph = phi i32 [ 8194, %if.then22.i ], [ 8195, %if.end143.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i) #7
  br label %do.body32

if.end30:                                         ; preds = %do.end183.i, %if.end169.i.if.end30_crit_edge, %if.then32.i
  %call193.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tm_done.i, i32 noundef 30000) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i) #7
  %71 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tag2, align 4
  %and.i.i140 = and i32 %72, 63
  %arrayidx.i.i141 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i140
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i141) #7
  %73 = ptrtoint ptr %add.ptr.i250.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i250.i, align 8
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end27.i

if.then.i:                                        ; preds = %if.end30
  %req_null.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 2, i32 50, i32 9, i32 1, i32 4, i32 1
  %call.i.i.i143 = call zeroext i1 @__kasan_check_write(ptr noundef %req_null.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %req_null.i) #7
  %flags11.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %75 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %flags11.i, align 8
  %or.i144 = or i64 %76, 1024
  store i64 %or.i144, ptr %flags11.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %77 = load i32, ptr @snic_log_level, align 4
  %and.i145 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool13.not.i = icmp eq i32 %and.i145, 0
  br i1 %tobool13.not.i, label %if.then.i.abort_fail.thread.i_crit_edge, label %do.end20.i, !prof !728

if.then.i.abort_fail.thread.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort_fail.thread.i

do.end20.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i146 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %78 = ptrtoint ptr %shost.i146 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %shost.i146, align 16
  %shost_gendev.i147 = getelementptr inbounds %struct.Scsi_Host, ptr %79, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i147, ptr noundef nonnull @.str.327, i32 noundef %72, ptr noundef %sc, i64 noundef %or.i144) #10
  br label %abort_fail.thread.i

if.end27.i:                                       ; preds = %if.end30
  %abts_done.i148 = getelementptr inbounds %struct.snic_req_info, ptr %74, i32 0, i32 14
  %80 = ptrtoint ptr %abts_done.i148 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %abts_done.i148, align 4
  %abts_status.i149 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %abts_status.i149 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %abts_status.i149, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.440)
  switch i32 %82, label %if.end27.i.sw.epilog.i_crit_edge [
    i32 256, label %sw.bb.i
    i32 0, label %if.end27.i.sw.bb58.i_crit_edge
    i32 5, label %if.end27.i.sw.bb58.i_crit_edge156
  ]

if.end27.i.sw.bb58.i_crit_edge156:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end27.i.sw.bb58.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb58.i

if.end27.i.sw.epilog.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end27.i
  %flags30.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %84 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %flags30.i, align 8
  %or31.i = or i64 %85, 256
  store i64 %or31.i, ptr %flags30.i, align 8
  %drv_tmo.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 2, i32 50, i32 9, i32 5, i32 3
  %call.i.i101.i = call zeroext i1 @__kasan_check_write(ptr noundef %drv_tmo.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %drv_tmo.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %86 = load i32, ptr @snic_log_level, align 4
  %and34.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %sw.bb.i.abort_fail.thread.i_crit_edge, label %do.end46.i, !prof !728

sw.bb.i.abort_fail.thread.i_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort_fail.thread.i

do.end46.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost47.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %87 = ptrtoint ptr %shost47.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %shost47.i, align 16
  %shost_gendev48.i = getelementptr inbounds %struct.Scsi_Host, ptr %88, i32 0, i32 49
  %89 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tag2, align 4
  %91 = ptrtoint ptr %flags30.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %flags30.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev48.i, ptr noundef nonnull @.str.330, ptr noundef %sc, i32 noundef %90, i64 noundef %92) #10
  br label %abort_fail.thread.i

sw.bb58.i:                                        ; preds = %if.end27.i.sw.bb58.i_crit_edge, %if.end27.i.sw.bb58.i_crit_edge156
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 24
  %93 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 458752, ptr %result.i, align 4
  call void @scsi_done(ptr noundef %sc) #7
  %94 = ptrtoint ptr %abts_status.i149 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pr.i = load i32, ptr %abts_status.i149, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb58.i, %if.end27.i.sw.epilog.i_crit_edge
  %95 = phi i32 [ %82, %if.end27.i.sw.epilog.i_crit_edge ], [ %.pr.i, %sw.bb58.i ]
  %ret.0.i = phi i32 [ 8195, %if.end27.i.sw.epilog.i_crit_edge ], [ 8194, %sw.bb58.i ]
  %rqi.0.i = phi ptr [ null, %if.end27.i.sw.epilog.i_crit_edge ], [ %74, %sw.bb58.i ]
  %96 = ptrtoint ptr %add.ptr.i250.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %add.ptr.i250.i, align 8
  %shost64.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %97 = ptrtoint ptr %shost64.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %shost64.i, align 16
  %shost_gendev65.i = getelementptr inbounds %struct.Scsi_Host, ptr %98, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %95)
  %cmp.i.i = icmp ugt i32 %95, 19
  br i1 %cmp.i.i, label %sw.epilog.i.abort_fail.i_crit_edge, label %if.end.i.i

sw.epilog.i.abort_fail.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort_fail.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i110.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %95
  %99 = ptrtoint ptr %arrayidx.i110.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i110.i, align 4
  br label %abort_fail.i

abort_fail.thread.i:                              ; preds = %do.end46.i, %sw.bb.i.abort_fail.thread.i_crit_edge, %do.end20.i, %if.then.i.abort_fail.thread.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i141, i32 noundef %call5.i) #7
  br label %do.body32

abort_fail.i:                                     ; preds = %if.end.i.i, %sw.epilog.i.abort_fail.i_crit_edge
  %retval.0.i.i = phi ptr [ %100, %if.end.i.i ], [ @.str.5, %sw.epilog.i.abort_fail.i_crit_edge ]
  %flags70.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %101 = ptrtoint ptr %flags70.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %flags70.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev65.i, ptr noundef nonnull @.str.333, i32 noundef %72, ptr noundef %retval.0.i.i, i64 noundef %102) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i141, i32 noundef %call5.i) #7
  %tobool71.not.i = icmp eq ptr %rqi.0.i, null
  br i1 %tobool71.not.i, label %abort_fail.i.do.body32_crit_edge, label %if.then72.i

abort_fail.i.do.body32_crit_edge:                 ; preds = %abort_fail.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body32

if.then72.i:                                      ; preds = %abort_fail.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @snic_release_req_buf(ptr noundef %hostdata.i, ptr noundef nonnull %rqi.0.i, ptr noundef %sc) #7
  br label %do.body32

do.body32:                                        ; preds = %if.then72.i, %abort_fail.i.do.body32_crit_edge, %abort_fail.thread.i, %snic_send_abort_and_wait.exit.thread, %do.end23
  %ret.0 = phi i32 [ 8201, %do.end23 ], [ %ret.1.i.ph, %snic_send_abort_and_wait.exit.thread ], [ 8195, %abort_fail.thread.i ], [ %ret.0.i, %if.then72.i ], [ %ret.0.i, %abort_fail.i.do.body32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %103 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %103, i32 0, i32 7, i32 5
  %104 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %enable, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool33.not = icmp eq i8 %105, 0
  br i1 %tobool33.not, label %do.body32.do.body85_crit_edge, label %if.then40, !prof !728

do.body32.do.body85_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body85

if.then40:                                        ; preds = %do.body32
  %shost41 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %106 = ptrtoint ptr %shost41 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %shost41, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %107, i32 0, i32 17
  %108 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %host_no, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %110, %6
  %call44 = call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %cmnd46 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %111 = ptrtoint ptr %cmnd46 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cmnd46, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  %arrayidx50 = getelementptr i8, ptr %112, i32 7
  %115 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx50, align 1
  %arrayidx54 = getelementptr i8, ptr %112, i32 8
  %117 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx54, align 1
  %arrayidx59 = getelementptr i8, ptr %112, i32 2
  %119 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx59, align 1
  %arrayidx64 = getelementptr i8, ptr %112, i32 3
  %121 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx64, align 1
  %arrayidx69 = getelementptr i8, ptr %112, i32 4
  %123 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx69, align 1
  %arrayidx74 = getelementptr i8, ptr %112, i32 5
  %125 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx74, align 1
  %flags = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %127 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %flags, align 8
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %state, align 8
  %call.i = call ptr @snic_get_trc_buf() #7
  %tobool.not.i152 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i152, label %if.then40.do.body85_crit_edge, label %if.end.i153

if.then40.do.body85_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body85

if.end.i153:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %shl78 = shl i64 %128, 32
  %conv80 = zext i32 %130 to i64
  %or81 = or i64 %shl78, %conv80
  %conv48 = zext i8 %114 to i64
  %shl = shl nuw i64 %conv48, 56
  %conv51 = zext i8 %116 to i64
  %shl52 = shl nuw nsw i64 %conv51, 40
  %or = or i64 %shl52, %shl
  %conv55 = zext i8 %118 to i64
  %shl56 = shl nuw nsw i64 %conv55, 32
  %or57 = or i64 %or, %shl56
  %conv60 = zext i8 %120 to i64
  %shl61 = shl nuw nsw i64 %conv60, 24
  %or62 = or i64 %or57, %shl61
  %conv65 = zext i8 %122 to i64
  %shl66 = shl nuw nsw i64 %conv65, 16
  %or67 = or i64 %or62, %shl66
  %conv70 = zext i8 %124 to i64
  %shl71 = shl nuw nsw i64 %conv70, 8
  %or72 = or i64 %or67, %shl71
  %conv75 = zext i8 %126 to i64
  %or76 = or i64 %or72, %conv75
  %conv45 = zext i32 %call44 to i64
  %131 = ptrtoint ptr %sc to i32
  %conv43 = zext i32 %131 to i64
  %fn1.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 1
  %132 = ptrtoint ptr %fn1.i to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store ptr @.str.22, ptr %fn1.i, align 1
  %conv.i = and i32 %109, 65535
  %hno2.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 2
  %133 = ptrtoint ptr %hno2.i to i32
  call void @__asan_storeN_noabort(i32 %133, i32 4)
  store i32 %conv.i, ptr %hno2.i, align 1
  %tag3.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 3
  %134 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %134, i32 4)
  store i32 %5, ptr %tag3.i, align 1
  %data.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 4
  %135 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %conv43, ptr %data.i, align 1
  %arrayidx5.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 1
  %136 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 8)
  store i64 %conv45, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 2
  %137 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 8)
  store i64 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 3
  %138 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 8)
  store i64 %or76, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 4
  %139 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 %or81, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %140 = load volatile i32, ptr @jiffies, align 128
  %conv12.i = zext i32 %140 to i64
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 8)
  store i64 %conv12.i, ptr %call.i, align 1
  br label %do.body85

do.body85:                                        ; preds = %if.end.i153, %if.then40.do.body85_crit_edge, %do.body32.do.body85_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %142 = load i32, ptr @snic_log_level, align 4
  %and86 = and i32 %142, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %do.body85.do.end110_crit_edge, label %do.end98, !prof !728

do.body85.do.end110_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end110

do.end98:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #9
  %shost99 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %143 = ptrtoint ptr %shost99 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %shost99, align 16
  %shost_gendev100 = getelementptr inbounds %struct.Scsi_Host, ptr %144, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %ret.0)
  %cmp101 = icmp eq i32 %ret.0, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 8201, i32 %ret.0)
  %cmp103 = icmp eq i32 %ret.0, 8201
  %cond = select i1 %cmp103, ptr @.str.30, ptr @.str.31
  %cond105 = select i1 %cmp101, ptr @.str.29, ptr %cond
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev100, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond105) #10
  br label %do.end110

do.end110:                                        ; preds = %do.end98, %do.body85.do.end110_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_device_reset(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  %tm_done.i.i.i = alloca %struct.completion, align 4
  %tm_done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %tag2 = getelementptr i8, ptr %sc, i32 -172
  %4 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tag2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %7 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end, !prof !728

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %sc, i32 -192
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %8 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmnd, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.32, ptr noundef %sc, i32 noundef %conv, ptr noundef %add.ptr.i.i, i32 noundef %5) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %parent.i.i = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 55, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %parent.i = getelementptr i8, ptr %15, i32 136
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 35
  %18 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %release.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, @snic_tgt_dev_release
  %add.ptr.i = getelementptr i8, ptr %17, i32 -24
  %spec.select.i = select i1 %cmp.i.not.i, ptr %add.ptr.i, ptr null
  %typ.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %typ.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i.not = icmp eq i32 %21, 1
  br i1 %cmp.i.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %shost_gendev21 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev21, ptr noundef nonnull @.str.35) #10
  tail call fastcc void @snic_unlink_and_release_req(ptr noundef %hostdata.i, ptr noundef %sc, i32 noundef 33554432)
  br label %do.body71

if.end22:                                         ; preds = %do.end13
  %call23 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call23)
  %cmp.not = icmp eq i32 %call23, 2
  br i1 %cmp.not, label %if.end36, label %if.then31, !prof !728

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @snic_unlink_and_release_req(ptr noundef %hostdata.i, ptr noundef %sc, i32 noundef 0)
  %shost_gendev35 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev35, ptr noundef nonnull @.str.38) #10
  br label %do.body71

if.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp37 = icmp slt i32 %5, 0
  br i1 %cmp37, label %do.end48, label %if.end36.if.end60_crit_edge, !prof !734

if.end36.if.end60_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end48:                                         ; preds = %if.end36
  %shost49 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %22 = ptrtoint ptr %shost49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost49, align 16
  %shost_gendev50 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev50, ptr noundef nonnull @.str.41) #10
  %call51 = tail call ptr @snic_req_init(ptr noundef %hostdata.i, i32 noundef 0) #7
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end48.do.body71_crit_edge, label %if.end54

do.end48.do.body71_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

if.end54:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i196 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %24 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 28)
  %26 = ptrtoint ptr %add.ptr.i196 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call51, ptr %add.ptr.i196, align 8
  %tm_tag = getelementptr inbounds %struct.snic_req_info, ptr %call51, i32 0, i32 6
  %27 = ptrtoint ptr %tm_tag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 268435456, ptr %tm_tag, align 8
  %sc59 = getelementptr inbounds %struct.snic_req_info, ptr %call51, i32 0, i32 9
  %28 = ptrtoint ptr %sc59 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sc, ptr %sc59, align 8
  br label %if.end60

if.end60:                                         ; preds = %if.end54, %if.end36.if.end60_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm_done.i) #7
  %29 = getelementptr inbounds i8, ptr %tm_done.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 52)
  %31 = ptrtoint ptr %tm_done.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tm_done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.304, ptr noundef nonnull @init_completion.__key) #7
  %32 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tag2, align 4
  %and.i.i = and i32 %33, 63
  %arrayidx.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i
  %call6.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %add.ptr.i.i199 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %flags10.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %34 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags10.i, align 8
  %or.i = or i64 %35, 16384
  store i64 %or.i, ptr %flags10.i, align 8
  %36 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i.i199, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %do.end15.i, label %if.end.i

do.end15.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %38 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.335, i32 noundef %33, i64 noundef %or.i) #10
  br label %do.end66

if.end.i:                                         ; preds = %if.end60
  %state.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state.i, align 8
  store i32 4, ptr %state.i, align 8
  %lr_status.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 3
  %42 = ptrtoint ptr %lr_status.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %lr_status.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %43 = load i32, ptr @snic_log_level, align 4
  %and.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end.i.do.end37.i_crit_edge, label %do.end30.i, !prof !728

if.end.i.do.end37.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

do.end30.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost31.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %44 = ptrtoint ptr %shost31.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %shost31.i, align 16
  %shost_gendev32.i = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev32.i, ptr noundef nonnull @.str.338, i32 noundef %33) #10
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end30.i, %if.end.i.do.end37.i_crit_edge
  %dr_done.i = getelementptr inbounds %struct.snic_req_info, ptr %37, i32 0, i32 16
  %46 = ptrtoint ptr %dr_done.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %tm_done.i, ptr %dr_done.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call6.i) #7
  %tm_tag.i.i = getelementptr inbounds %struct.snic_req_info, ptr %37, i32 0, i32 6
  %47 = ptrtoint ptr %tm_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_tag.i.i, align 8
  %or.i.i = or i32 %48, 536870912
  store i32 %or.i.i, ptr %tm_tag.i.i, align 8
  %call.i.i = call fastcc i32 @snic_issue_tm_req(ptr noundef %hostdata.i, ptr noundef nonnull %37, ptr noundef %sc, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool101.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool101.not.i, label %if.end69, label %do.end105.i

do.end105.i:                                      ; preds = %do.end37.i
  %shost106.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %49 = ptrtoint ptr %shost106.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shost106.i, align 16
  %shost_gendev107.i = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 49
  %51 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %flags10.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev107.i, ptr noundef nonnull @.str.344, i32 noundef %33, i32 noundef %call.i.i, i64 noundef %52) #10
  %call118.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %41, ptr %state.i, align 8
  %54 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i.i199, align 8
  %tobool127.not.i = icmp eq ptr %55, null
  br i1 %tobool127.not.i, label %do.end105.i.do.end66_crit_edge, label %if.then128.i

do.end105.i.do.end66_crit_edge:                   ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.then128.i:                                     ; preds = %do.end105.i
  call void @__sanitizer_cov_trace_pc() #9
  %dr_done129.i = getelementptr inbounds %struct.snic_req_info, ptr %55, i32 0, i32 16
  %56 = ptrtoint ptr %dr_done129.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %dr_done129.i, align 4
  br label %do.end66

do.end66:                                         ; preds = %if.then128.i, %do.end105.i.do.end66_crit_edge, %do.end15.i
  %call118.i.sink = phi i32 [ %call6.i, %do.end15.i ], [ %call118.i, %if.then128.i ], [ %call118.i, %do.end105.i.do.end66_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call118.i.sink) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i) #7
  %shost67 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %57 = ptrtoint ptr %shost67 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shost67, align 16
  %shost_gendev68 = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev68, ptr noundef nonnull @.str.44, i32 noundef %5, i32 noundef 8195) #10
  call fastcc void @snic_unlink_and_release_req(ptr noundef %hostdata.i, ptr noundef %sc, i32 noundef 0)
  br label %do.body71

if.end69:                                         ; preds = %do.end37.i
  %call140.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %59 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %flags10.i, align 8
  %or147.i = or i64 %60, 32768
  store i64 %or147.i, ptr %flags10.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call140.i) #7
  %call148.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tm_done.i, i32 noundef 30000) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i) #7
  %61 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tag2, align 4
  %and.i.i200 = and i32 %62, 63
  %arrayidx.i.i201 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i200
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i201) #7
  %63 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i.i199, align 8
  %tobool.not.i203 = icmp eq ptr %64, null
  br i1 %tobool.not.i203, label %if.then.i, label %if.end24.i

if.then.i:                                        ; preds = %if.end69
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i201, i32 noundef %call3.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %65 = load i32, ptr @snic_log_level, align 4
  %and.i204 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool9.not.i = icmp eq i32 %and.i204, 0
  br i1 %tobool9.not.i, label %if.then.i.do.body71_crit_edge, label %do.end16.i, !prof !728

if.then.i.do.body71_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

do.end16.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i205 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %66 = ptrtoint ptr %shost.i205 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shost.i205, align 16
  %shost_gendev.i206 = getelementptr inbounds %struct.Scsi_Host, ptr %67, i32 0, i32 49
  %68 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tag2, align 4
  %70 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %flags10.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i206, ptr noundef nonnull @.str.346, i32 noundef %69, ptr noundef %sc, i64 noundef %71) #10
  br label %do.body71

if.end24.i:                                       ; preds = %if.end69
  %dr_done.i207 = getelementptr inbounds %struct.snic_req_info, ptr %64, i32 0, i32 16
  %72 = ptrtoint ptr %dr_done.i207 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %dr_done.i207, align 4
  %73 = ptrtoint ptr %lr_status.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %lr_status.i, align 8
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.441)
  switch i32 %74, label %do.end79.i [
    i32 256, label %do.body26.i
    i32 0, label %do.body54.i
  ]

do.body26.i:                                      ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %76 = load i32, ptr @snic_log_level, align 4
  %and27.i = and i32 %76, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.do.end50.i_crit_edge, label %do.end39.i, !prof !728

do.body26.i.do.end50.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50.i

do.end39.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost40.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %77 = ptrtoint ptr %shost40.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %shost40.i, align 16
  %shost_gendev41.i = getelementptr inbounds %struct.Scsi_Host, ptr %78, i32 0, i32 49
  %79 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tag2, align 4
  %81 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %flags10.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev41.i, ptr noundef nonnull @.str.349, i32 noundef %80, i64 noundef %82) #10
  br label %do.end50.i

do.end50.i:                                       ; preds = %do.end39.i, %do.body26.i.do.end50.i_crit_edge
  %83 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %flags10.i, align 8
  %or.i209 = or i64 %84, 65536
  store i64 %or.i209, ptr %flags10.i, align 8
  br label %do.body148.i

do.body54.i:                                      ; preds = %if.end24.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %85 = load i32, ptr @snic_log_level, align 4
  %and55.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.do.end76.i_crit_edge, label %do.end67.i, !prof !728

do.body54.i.do.end76.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end76.i

do.end67.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost68.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %86 = ptrtoint ptr %shost68.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %shost68.i, align 16
  %shost_gendev69.i = getelementptr inbounds %struct.Scsi_Host, ptr %87, i32 0, i32 49
  %88 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tag2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev69.i, ptr noundef nonnull @.str.352, i32 noundef %89) #10
  br label %do.end76.i

do.end76.i:                                       ; preds = %do.end67.i, %do.body54.i.do.end76.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i201, i32 noundef %call3.i) #7
  %90 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device, align 4
  %max_tag_id.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 2, i32 49, i32 10, i32 5, i32 7
  %92 = ptrtoint ptr %max_tag_id.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_tag_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp112.not.i.i = icmp eq i32 %93, 0
  br i1 %cmp112.not.i.i, label %do.end76.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

do.end76.i.for.end.i.i_crit_edge:                 ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %do.end76.i
  %94 = getelementptr inbounds i8, ptr %tm_done.i.i.i, i32 4
  %shost.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %tag.0113.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %95 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tag2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tag.0113.i.i, i32 %96)
  %cmp2.i.i = icmp eq i32 %tag.0113.i.i, %96
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tm_done.i.i.i) #7
  %97 = call ptr @memset(ptr %94, i32 255, i32 52)
  %98 = ptrtoint ptr %tm_done.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %tm_done.i.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %94, ptr noundef nonnull @.str.304, ptr noundef nonnull @init_completion.__key) #7
  %and.i.i.i.i = and i32 %tag.0113.i.i, 63
  %arrayidx.i.i.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i.i.i
  %call4.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i.i.i) #7
  %99 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %shost.i.i.i, align 16
  %shr.i.i.i.i.i = lshr i32 %tag.0113.i.i, 16
  %nr_hw_queues.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %100, i32 0, i32 13, i32 3
  %101 = ptrtoint ptr %nr_hw_queues.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %nr_hw_queues.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %shr.i.i.i.i.i)
  %cmp1.i.i.i.i = icmp ugt i32 %102, %shr.i.i.i.i.i
  br i1 %cmp1.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge

if.end.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %tags.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %100, i32 0, i32 13, i32 11
  %103 = ptrtoint ptr %tags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tags.i.i.i.i, align 4
  %arrayidx.i368.i.i.i = getelementptr ptr, ptr %104, i32 %shr.i.i.i.i.i
  %105 = ptrtoint ptr %arrayidx.i368.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i368.i.i.i, align 4
  %conv6.i.i.i.i = and i32 %tag.0113.i.i, 65535
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %conv6.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %108, %conv6.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %if.end8.i.i.i.i, label %if.then3.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge

if.then3.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %if.then3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.end8.i.i.i.i:                                  ; preds = %if.then3.i.i.i.i
  %rqs.i.i.i.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %106, i32 0, i32 5
  %109 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %110, i32 %conv6.i.i.i.i
  %111 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %112) #7, !srcloc !732
  %113 = ptrtoint ptr %rqs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rqs.i.i.i.i.i, align 4
  %arrayidx2.i.i.i.i.i = getelementptr ptr, ptr %114, i32 %conv6.i.i.i.i
  %115 = ptrtoint ptr %arrayidx2.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx2.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %116, null
  br i1 %tobool.not.i.i.i.i, label %if.end8.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end8.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %state.i.i.i.i.i.i = getelementptr inbounds %struct.request, ptr %116, i32 0, i32 25
  %117 = ptrtoint ptr %state.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %state.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp.i22.not.i.i.i.i = icmp eq i32 %118, 0
  %add.ptr.i.i.i.i.i = getelementptr %struct.request, ptr %116, i32 1
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  %or.cond.i.i.i = select i1 %cmp.i22.not.i.i.i.i, i1 true, i1 %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %lor.lhs.false.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

lor.lhs.false.i.i.i:                              ; preds = %lor.lhs.false.i.i.i.i
  %device.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %device.i.i.i, align 4
  %cmp8.not.i.i.i = icmp eq ptr %120, %91
  br i1 %cmp8.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge

lor.lhs.false.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %add.ptr.i.i50.i.i = getelementptr %struct.request, ptr %116, i32 2, i32 19
  %121 = ptrtoint ptr %add.ptr.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i.i50.i.i, align 8
  %tobool12.not.i.i.i = icmp eq ptr %122, null
  br i1 %tobool12.not.i.i.i, label %if.end.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, label %if.end14.i.i.i

if.end.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.end14.i.i.i:                                   ; preds = %if.end.i.i.i
  %state.i.i.i = getelementptr %struct.request, ptr %116, i32 2, i32 25
  %123 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp16.i.i.i = icmp eq i32 %124, 2
  br i1 %cmp16.i.i.i, label %if.end14.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, label %if.end19.i.i.i

if.end14.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.end19.i.i.i:                                   ; preds = %if.end14.i.i.i
  %flags21.i.i.i = getelementptr %struct.request, ptr %116, i32 2, i32 22
  %125 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %flags21.i.i.i, align 8
  %127 = and i64 %126, 49152
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %127)
  %128 = icmp eq i64 %127, 16384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %129 = load i32, ptr @snic_log_level, align 4
  %and29.i.i.i = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %and29.i.i.i, 0
  br i1 %128, label %do.body28.i.i.i, label %do.body45.i.i.i

do.body28.i.i.i:                                  ; preds = %if.end19.i.i.i
  br i1 %tobool30.not.i.i.i, label %do.body28.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, label %do.end37.i.i.i, !prof !728

do.body28.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge: ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_dr_clean_single_req.exit.thread87.i.i

do.end37.i.i.i:                                   ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %131, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i.i, ptr noundef nonnull @.str.368, ptr noundef nonnull %add.ptr.i.i.i.i.i) #10
  br label %snic_dr_clean_single_req.exit.thread87.i.i

do.body45.i.i.i:                                  ; preds = %if.end19.i.i.i
  br i1 %tobool30.not.i.i.i, label %do.body45.i.i.i.do.end68.i.i.i_crit_edge, label %do.end58.i.i.i, !prof !728

do.body45.i.i.i.do.end68.i.i.i_crit_edge:         ; preds = %do.body45.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68.i.i.i

do.end58.i.i.i:                                   ; preds = %do.body45.i.i.i
  %132 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev60.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %133, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %124)
  %cmp.i373.i.i.i = icmp ugt i32 %124, 6
  br i1 %cmp.i373.i.i.i, label %do.end58.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge, label %if.end.i375.i.i.i

do.end58.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge: ; preds = %do.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit.i.i.i

if.end.i375.i.i.i:                                ; preds = %do.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i374.i.i.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %124
  %134 = ptrtoint ptr %arrayidx.i374.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i374.i.i.i, align 4
  br label %snic_ioreq_state_to_str.exit.i.i.i

snic_ioreq_state_to_str.exit.i.i.i:               ; preds = %if.end.i375.i.i.i, %do.end58.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge
  %retval.0.i376.i.i.i = phi ptr [ %135, %if.end.i375.i.i.i ], [ @.str.5, %do.end58.i.i.i.snic_ioreq_state_to_str.exit.i.i.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev60.i.i.i, ptr noundef nonnull @.str.371, ptr noundef %retval.0.i376.i.i.i) #10
  br label %do.end68.i.i.i

do.end68.i.i.i:                                   ; preds = %snic_ioreq_state_to_str.exit.i.i.i, %do.body45.i.i.i.do.end68.i.i.i_crit_edge
  %136 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %state.i.i.i, align 8
  store i32 2, ptr %state.i.i.i, align 8
  %abts_done.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %122, i32 0, i32 14
  %138 = ptrtoint ptr %abts_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %abts_done.i.i.i, align 4
  %tobool73.not.i.i.i = icmp eq ptr %139, null
  br i1 %tobool73.not.i.i.i, label %do.end68.i.i.i.if.end131.i.i.i_crit_edge, label %do.end77.i.i.i

do.end68.i.i.i.if.end131.i.i.i_crit_edge:         ; preds = %do.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i.i.i

do.end77.i.i.i:                                   ; preds = %do.end68.i.i.i
  %call79.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.369, i32 noundef 1779) #10
  %140 = ptrtoint ptr %abts_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %abts_done.i.i.i, align 4
  %tobool81.not.i.i.i = icmp eq ptr %141, null
  br i1 %tobool81.not.i.i.i, label %do.end77.i.i.i.if.end131.i.i.i_crit_edge, label %land.rhs.i.i.i

do.end77.i.i.i.if.end131.i.i.i_crit_edge:         ; preds = %do.end77.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i.i.i

land.rhs.i.i.i:                                   ; preds = %do.end77.i.i.i
  %.b367.i.i.i = load i1, ptr @snic_dr_clean_single_req.__already_done, align 1
  br i1 %.b367.i.i.i, label %land.rhs.i.i.i.if.end131.i.i.i_crit_edge, label %if.then97.i.i.i, !prof !728

land.rhs.i.i.i.if.end131.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131.i.i.i

if.then97.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_dr_clean_single_req.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1779, i32 noundef 9, ptr noundef null) #7
  br label %if.end131.i.i.i

if.end131.i.i.i:                                  ; preds = %if.then97.i.i.i, %land.rhs.i.i.i.if.end131.i.i.i_crit_edge, %do.end77.i.i.i.if.end131.i.i.i_crit_edge, %do.end68.i.i.i.if.end131.i.i.i_crit_edge
  %142 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %flags21.i.i.i, align 8
  %and134.i.i.i = and i64 %143, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and134.i.i.i)
  %tobool135.not.i.i.i = icmp eq i64 %and134.i.i.i, 0
  br i1 %tobool135.not.i.i.i, label %if.end131.i.i.i.if.end158.i.i.i_crit_edge, label %if.then136.i.i.i

if.end131.i.i.i.if.end158.i.i.i_crit_edge:        ; preds = %if.end131.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.i.i.i

if.then136.i.i.i:                                 ; preds = %if.end131.i.i.i
  %tm_tag.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %122, i32 0, i32 6
  %144 = ptrtoint ptr %tm_tag.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 536870912, ptr %tm_tag.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %145 = load i32, ptr @snic_log_level, align 4
  %and138.i.i.i = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138.i.i.i)
  %tobool139.not.i.i.i = icmp eq i32 %and138.i.i.i, 0
  br i1 %tobool139.not.i.i.i, label %if.then136.i.i.i.if.end158.i.i.i_crit_edge, label %do.end150.i.i.i, !prof !728

if.then136.i.i.i.if.end158.i.i.i_crit_edge:       ; preds = %if.then136.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.i.i.i

do.end150.i.i.i:                                  ; preds = %if.then136.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev152.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %147, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev152.i.i.i, ptr noundef nonnull @.str.377, ptr noundef nonnull %add.ptr.i.i.i.i.i) #10
  br label %if.end158.i.i.i

if.end158.i.i.i:                                  ; preds = %do.end150.i.i.i, %if.then136.i.i.i.if.end158.i.i.i_crit_edge, %if.end131.i.i.i.if.end158.i.i.i_crit_edge
  %abts_status.i.i.i = getelementptr %struct.request, ptr %116, i32 2, i32 26
  %148 = ptrtoint ptr %abts_status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 256, ptr %abts_status.i.i.i, align 4
  %149 = ptrtoint ptr %abts_done.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %tm_done.i.i.i, ptr %abts_done.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i.i.i, i32 noundef %call4.i.i.i) #7
  %150 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %device.i.i.i, align 4
  %parent.i.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %151, i32 0, i32 55, i32 1
  %152 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %parent.i.i.i.i, align 8
  %parent.i.i.i = getelementptr i8, ptr %153, i32 136
  %154 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %parent.i.i.i, align 8
  %release.i.i.i.i = getelementptr inbounds %struct.device, ptr %155, i32 0, i32 35
  %156 = ptrtoint ptr %release.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %release.i.i.i.i, align 4
  %cmp.i382.not.i.i.i = icmp eq ptr %157, @snic_tgt_dev_release
  %add.ptr.i.i242.i = getelementptr i8, ptr %155, i32 -24
  %spec.select.i.i.i = select i1 %cmp.i382.not.i.i.i, ptr %add.ptr.i.i242.i, ptr null
  %state.i.i.i.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select.i.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %state.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp.i385.i.i.i = icmp eq i32 %159, 2
  br i1 %cmp.i385.i.i.i, label %if.end158.i.i.i.if.else.i.i.i_crit_edge, label %land.lhs.true173.i.i.i

if.end158.i.i.i.if.else.i.i.i_crit_edge:          ; preds = %if.end158.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

land.lhs.true173.i.i.i:                           ; preds = %if.end158.i.i.i
  %typ.i.i.i = getelementptr inbounds %struct.snic_tgt, ptr %spec.select.i.i.i, i32 0, i32 9, i32 1
  %160 = ptrtoint ptr %typ.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %typ.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %161)
  %cmp174.i.i.i = icmp eq i32 %161, 2
  br i1 %cmp174.i.i.i, label %land.lhs.true173.i.i.i.if.end177.i.i.i_crit_edge, label %land.lhs.true173.i.i.i.if.else.i.i.i_crit_edge

land.lhs.true173.i.i.i.if.else.i.i.i_crit_edge:   ; preds = %land.lhs.true173.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i.i

land.lhs.true173.i.i.i.if.end177.i.i.i_crit_edge: ; preds = %land.lhs.true173.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true173.i.i.i.if.else.i.i.i_crit_edge, %if.end158.i.i.i.if.else.i.i.i_crit_edge
  br label %if.end177.i.i.i

if.end177.i.i.i:                                  ; preds = %if.else.i.i.i, %land.lhs.true173.i.i.i.if.end177.i.i.i_crit_edge
  %tmf.0.i.i.i = phi i32 [ 1, %if.else.i.i.i ], [ 6, %land.lhs.true173.i.i.i.if.end177.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %162 = load i32, ptr @snic_log_level, align 4
  %and.i386.i.i.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i386.i.i.i)
  %tobool.not.i387.i.i.i = icmp eq i32 %and.i386.i.i.i, 0
  br i1 %tobool.not.i387.i.i.i, label %if.end177.i.i.i.snic_queue_abort_req.exit.i.i.i_crit_edge, label %do.end.i.i.i.i, !prof !728

if.end177.i.i.i.snic_queue_abort_req.exit.i.i.i_crit_edge: ; preds = %if.end177.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_queue_abort_req.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end177.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %164, i32 0, i32 49
  %tag.i.i.i.i = getelementptr %struct.request, ptr %116, i32 0, i32 5
  %165 = ptrtoint ptr %tag.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tag.i.i.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i.i.i, ptr noundef nonnull @.str.305, ptr noundef nonnull %add.ptr.i.i.i.i.i, ptr noundef nonnull %122, i32 noundef %166, i32 noundef %tmf.0.i.i.i) #10
  br label %snic_queue_abort_req.exit.i.i.i

snic_queue_abort_req.exit.i.i.i:                  ; preds = %do.end.i.i.i.i, %if.end177.i.i.i.snic_queue_abort_req.exit.i.i.i_crit_edge
  %tm_tag.i.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %122, i32 0, i32 6
  %167 = ptrtoint ptr %tm_tag.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tm_tag.i.i.i.i, align 8
  %or.i.i.i.i = or i32 %168, 1073741824
  store i32 %or.i.i.i.i, ptr %tm_tag.i.i.i.i, align 8
  %call7.i.i.i.i = call fastcc i32 @snic_issue_tm_req(ptr noundef %hostdata.i, ptr noundef nonnull %122, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %tmf.0.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i.i)
  %tobool179.not.i.i.i = icmp eq i32 %call7.i.i.i.i, 0
  br i1 %tobool179.not.i.i.i, label %do.body218.i.i.i, label %do.end183.i.i.i

do.end183.i.i.i:                                  ; preds = %snic_queue_abort_req.exit.i.i.i
  %tm_tag.i.i.i.i.le = getelementptr inbounds %struct.snic_req_info, ptr %122, i32 0, i32 6
  %169 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev185.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %170, i32 0, i32 49
  %171 = ptrtoint ptr %tm_tag.i.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %tm_tag.i.i.i.i.le, align 8
  %173 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %flags21.i.i.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev185.i.i.i, ptr noundef nonnull @.str.380, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %tag.0113.i.i, i32 noundef %172, i64 noundef %174) #10
  %call197.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i.i.i) #7
  %175 = ptrtoint ptr %add.ptr.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %add.ptr.i.i50.i.i, align 8
  %tobool204.not.i.i.i = icmp eq ptr %176, null
  br i1 %tobool204.not.i.i.i, label %do.end183.i.i.i.if.end207.i.i.i_crit_edge, label %if.then205.i.i.i

do.end183.i.i.i.if.end207.i.i.i_crit_edge:        ; preds = %do.end183.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207.i.i.i

if.then205.i.i.i:                                 ; preds = %do.end183.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %abts_done206.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %176, i32 0, i32 14
  %177 = ptrtoint ptr %abts_done206.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr null, ptr %abts_done206.i.i.i, align 4
  br label %if.end207.i.i.i

if.end207.i.i.i:                                  ; preds = %if.then205.i.i.i, %do.end183.i.i.i.if.end207.i.i.i_crit_edge
  %178 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %179)
  %cmp210.i.i.i = icmp eq i32 %179, 2
  br i1 %cmp210.i.i.i, label %if.then212.i.i.i, label %if.end207.i.i.i.do.end.i.i_crit_edge

if.end207.i.i.i.do.end.i.i_crit_edge:             ; preds = %if.end207.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then212.i.i.i:                                 ; preds = %if.end207.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %137, ptr %state.i.i.i, align 8
  br label %do.end.i.i

do.body218.i.i.i:                                 ; preds = %snic_queue_abort_req.exit.i.i.i
  %call225.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i.i.i) #7
  %181 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %flags21.i.i.i, align 8
  %and232.i.i.i = and i64 %182, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and232.i.i.i)
  %tobool233.not.i.i.i = icmp eq i64 %and232.i.i.i, 0
  br i1 %tobool233.not.i.i.i, label %do.body218.i.i.i.if.end237.i.i.i_crit_edge, label %if.then234.i.i.i

do.body218.i.i.i.if.end237.i.i.i_crit_edge:       ; preds = %do.body218.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.i.i.i

if.then234.i.i.i:                                 ; preds = %do.body218.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i = or i64 %182, 262144
  %183 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_store8_noabort(i32 %183)
  store i64 %or.i.i.i, ptr %flags21.i.i.i, align 8
  br label %if.end237.i.i.i

if.end237.i.i.i:                                  ; preds = %if.then234.i.i.i, %do.body218.i.i.i.if.end237.i.i.i_crit_edge
  %184 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %flags21.i.i.i, align 8
  %or240.i.i.i = or i64 %185, 8192
  store i64 %or240.i.i.i, ptr %flags21.i.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i.i.i, i32 noundef %call225.i.i.i) #7
  %call241.i.i.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %tm_done.i.i.i, i32 noundef 30000) #7
  %call250.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i.i.i) #7
  %186 = ptrtoint ptr %add.ptr.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i.i50.i.i, align 8
  %tobool257.not.i.i.i = icmp eq ptr %187, null
  br i1 %tobool257.not.i.i.i, label %if.then258.i.i.i, label %if.end262.i.i.i

if.then258.i.i.i:                                 ; preds = %if.end237.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %flags21.i.i.i, align 8
  %or261.i.i.i = or i64 %189, 1024
  store i64 %or261.i.i.i, ptr %flags21.i.i.i, align 8
  br label %snic_dr_clean_single_req.exit.thread87.i.i

if.end262.i.i.i:                                  ; preds = %if.end237.i.i.i
  %abts_done263.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %187, i32 0, i32 14
  %190 = ptrtoint ptr %abts_done263.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr null, ptr %abts_done263.i.i.i, align 4
  %191 = ptrtoint ptr %abts_status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %abts_status.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %192)
  %cmp266.i.i.i = icmp eq i32 %192, 256
  br i1 %cmp266.i.i.i, label %do.end271.i.i.i, label %snic_dr_clean_single_req.exit.thread.i.i

do.end271.i.i.i:                                  ; preds = %if.end262.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev273.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %194, i32 0, i32 49
  %tm_tag274.i.i.i = getelementptr inbounds %struct.snic_req_info, ptr %187, i32 0, i32 6
  %195 = ptrtoint ptr %tm_tag274.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tm_tag274.i.i.i, align 8
  %197 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %flags21.i.i.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev273.i.i.i, ptr noundef nonnull @.str.383, ptr noundef nonnull %add.ptr.i.i.i.i.i, i32 noundef %tag.0113.i.i, i32 noundef %196, i64 noundef %198) #10
  %199 = ptrtoint ptr %flags21.i.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %flags21.i.i.i, align 8
  %or279.i.i.i = or i64 %200, 512
  store i64 %or279.i.i.i, ptr %flags21.i.i.i, align 8
  br label %do.end.i.i

snic_dr_clean_single_req.exit.thread.i.i:         ; preds = %if.end262.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 3, ptr %state.i.i.i, align 8
  %202 = ptrtoint ptr %add.ptr.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %add.ptr.i.i50.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i.i.i, i32 noundef %call250.i.i.i) #7
  call fastcc void @snic_release_req_buf(ptr noundef %hostdata.i, ptr noundef nonnull %187, ptr noundef nonnull %add.ptr.i.i.i.i.i) #7
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i.i.i, i32 0, i32 24
  %203 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 458752, ptr %result.i.i.i, align 4
  call void @scsi_done(ptr noundef nonnull %add.ptr.i.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i.i.i) #7
  br label %for.inc.i.i

snic_dr_clean_single_req.exit.thread87.i.i:       ; preds = %if.then258.i.i.i, %do.end37.i.i.i, %do.body28.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %if.end14.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %if.end.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %lor.lhs.false.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %lor.lhs.false.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %if.end8.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %if.then3.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge, %if.end.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge
  %flags.0.i.ph.i.i = phi i32 [ %call4.i.i.i, %lor.lhs.false.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %if.then3.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %if.end.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %if.end8.i.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %if.end.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %do.body28.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %do.end37.i.i.i ], [ %call250.i.i.i, %if.then258.i.i.i ], [ %call4.i.i.i, %if.end14.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ], [ %call4.i.i.i, %lor.lhs.false.i.i.i.snic_dr_clean_single_req.exit.thread87.i.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i.i.i, i32 noundef %flags.0.i.ph.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i.i.i) #7
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %do.end271.i.i.i, %if.then212.i.i.i, %if.end207.i.i.i.do.end.i.i_crit_edge
  %flags.0.i.i.i = phi i32 [ %call250.i.i.i, %do.end271.i.i.i ], [ %call197.i.i.i, %if.then212.i.i.i ], [ %call197.i.i.i, %if.end207.i.i.i.do.end.i.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i.i.i, i32 noundef %flags.0.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tm_done.i.i.i) #7
  %204 = ptrtoint ptr %shost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %shost.i.i.i, align 16
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %205, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.360, i32 noundef %tag.0113.i.i) #10
  br label %clean_err.i.i

for.inc.i.i:                                      ; preds = %snic_dr_clean_single_req.exit.thread87.i.i, %snic_dr_clean_single_req.exit.thread.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %tag.0113.i.i, 1
  %206 = ptrtoint ptr %max_tag_id.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %max_tag_id.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %207
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end76.i.for.end.i.i_crit_edge
  %call7.i.i = call i32 @schedule_timeout(i32 noundef 10) #7
  %tobool.not.i51.i.i = icmp eq ptr %sc, null
  br i1 %tobool.not.i51.i.i, label %for.end.i.i.if.end.i53.i.i_crit_edge, label %if.then.i.i.i

for.end.i.i.if.end.i53.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i53.i.i

if.then.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %device, align 4
  br label %if.end.i53.i.i

if.end.i53.i.i:                                   ; preds = %if.then.i.i.i, %for.end.i.i.if.end.i53.i.i_crit_edge
  %lr_sdev.0.i.i.i = phi ptr [ %209, %if.then.i.i.i ], [ null, %for.end.i.i.if.end.i53.i.i_crit_edge ]
  %210 = ptrtoint ptr %max_tag_id.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %max_tag_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %cmp83.not.i.i.i = icmp eq i32 %211, 0
  br i1 %cmp83.not.i.i.i, label %if.end.i53.i.i.if.end11.i.i_crit_edge, label %if.end.i.lr.ph.i.i.i

if.end.i53.i.i.if.end11.i.i_crit_edge:            ; preds = %if.end.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.end.i.lr.ph.i.i.i:                             ; preds = %if.end.i53.i.i
  %shost.i54.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  br label %if.end.i.i61.i.i

if.end.i.i61.i.i:                                 ; preds = %for.inc.i.i.i.if.end.i.i61.i.i_crit_edge, %if.end.i.lr.ph.i.i.i
  %tag.084.i.i.i = phi i32 [ 0, %if.end.i.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.if.end.i.i61.i.i_crit_edge ]
  %and.i.i55.i.i = and i32 %tag.084.i.i.i, 63
  %arrayidx.i.i56.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i55.i.i
  %call4.i57.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i56.i.i) #7
  %212 = ptrtoint ptr %shost.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %shost.i54.i.i, align 16
  %shr.i.i.i58.i.i = lshr i32 %tag.084.i.i.i, 16
  %nr_hw_queues.i.i59.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %213, i32 0, i32 13, i32 3
  %214 = ptrtoint ptr %nr_hw_queues.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %nr_hw_queues.i.i59.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %shr.i.i.i58.i.i)
  %cmp1.i.i60.i.i = icmp ugt i32 %215, %shr.i.i.i58.i.i
  br i1 %cmp1.i.i60.i.i, label %if.then3.i.i65.i.i, label %if.end.i.i61.i.i.for.inc.i.i.i_crit_edge

if.end.i.i61.i.i.for.inc.i.i.i_crit_edge:         ; preds = %if.end.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.then3.i.i65.i.i:                               ; preds = %if.end.i.i61.i.i
  %tags.i.i62.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %213, i32 0, i32 13, i32 11
  %216 = ptrtoint ptr %tags.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %tags.i.i62.i.i, align 4
  %arrayidx.i72.i.i.i = getelementptr ptr, ptr %217, i32 %shr.i.i.i58.i.i
  %218 = ptrtoint ptr %arrayidx.i72.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i72.i.i.i, align 4
  %conv6.i.i63.i.i = and i32 %tag.084.i.i.i, 65535
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %conv6.i.i63.i.i)
  %cmp.i.i.i64.i.i = icmp ugt i32 %221, %conv6.i.i63.i.i
  br i1 %cmp.i.i.i64.i.i, label %if.end8.i.i70.i.i, label %if.then3.i.i65.i.i.for.inc.i.i.i_crit_edge

if.then3.i.i65.i.i.for.inc.i.i.i_crit_edge:       ; preds = %if.then3.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end8.i.i70.i.i:                                ; preds = %if.then3.i.i65.i.i
  %rqs.i.i.i66.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %219, i32 0, i32 5
  %222 = ptrtoint ptr %rqs.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %rqs.i.i.i66.i.i, align 4
  %arrayidx.i.i.i67.i.i = getelementptr ptr, ptr %223, i32 %conv6.i.i63.i.i
  %224 = ptrtoint ptr %arrayidx.i.i.i67.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i.i.i67.i.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %225) #7, !srcloc !732
  %226 = ptrtoint ptr %rqs.i.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rqs.i.i.i66.i.i, align 4
  %arrayidx2.i.i.i68.i.i = getelementptr ptr, ptr %227, i32 %conv6.i.i63.i.i
  %228 = ptrtoint ptr %arrayidx2.i.i.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx2.i.i.i68.i.i, align 4
  %tobool.not.i.i69.i.i = icmp eq ptr %229, null
  br i1 %tobool.not.i.i69.i.i, label %if.end8.i.i70.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false.i.i74.i.i

if.end8.i.i70.i.i.for.inc.i.i.i_crit_edge:        ; preds = %if.end8.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

lor.lhs.false.i.i74.i.i:                          ; preds = %if.end8.i.i70.i.i
  %state.i.i.i.i71.i.i = getelementptr inbounds %struct.request, ptr %229, i32 0, i32 25
  %230 = ptrtoint ptr %state.i.i.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load volatile i32, ptr %state.i.i.i.i71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp.i22.not.i.i72.i.i = icmp eq i32 %231, 0
  %add.ptr.i.i.i73.i.i = getelementptr %struct.request, ptr %229, i32 1
  %tobool8.not.i.i.i = icmp eq ptr %add.ptr.i.i.i73.i.i, null
  %or.cond82.i.i.i = select i1 %cmp.i22.not.i.i72.i.i, i1 true, i1 %tobool8.not.i.i.i
  br i1 %or.cond82.i.i.i, label %lor.lhs.false.i.i74.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false.i75.i.i

lor.lhs.false.i.i74.i.i.for.inc.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

lor.lhs.false.i75.i.i:                            ; preds = %lor.lhs.false.i.i74.i.i
  br i1 %tobool.not.i51.i.i, label %lor.lhs.false.i75.i.i.if.end17.i.i.i_crit_edge, label %land.lhs.true.i.i.i

lor.lhs.false.i75.i.i.if.end17.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i75.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i75.i.i
  %device10.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i.i73.i.i, i32 0, i32 1
  %232 = ptrtoint ptr %device10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %device10.i.i.i, align 4
  %cmp11.not.i.i.i = icmp ne ptr %233, %lr_sdev.0.i.i.i
  %cmp14.i.i.i = icmp eq ptr %add.ptr.i.i.i73.i.i, %sc
  %or.cond.i76.i.i = select i1 %cmp11.not.i.i.i, i1 true, i1 %cmp14.i.i.i
  br i1 %or.cond.i76.i.i, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end17.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end17.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i.i

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

if.end17.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end17.i.i.i_crit_edge, %lor.lhs.false.i75.i.i.if.end17.i.i.i_crit_edge
  %add.ptr.i.i77.i.i = getelementptr %struct.request, ptr %229, i32 2, i32 19
  %234 = ptrtoint ptr %add.ptr.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %add.ptr.i.i77.i.i, align 8
  %tobool20.not.i.i.i = icmp eq ptr %235, null
  br i1 %tobool20.not.i.i.i, label %if.end17.i.i.i.for.inc.i.i.i_crit_edge, label %do.body23.i.i.i

if.end17.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

do.body23.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %236 = load i32, ptr @snic_log_level, align 4
  %and.i.i.i = and i32 %236, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %do.body23.i.i.i.do.end39.i.i.i_crit_edge, label %do.end31.i.i.i, !prof !728

do.body23.i.i.i.do.end39.i.i.i_crit_edge:         ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39.i.i.i

do.end31.i.i.i:                                   ; preds = %do.body23.i.i.i
  %237 = ptrtoint ptr %shost.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %shost.i54.i.i, align 16
  %shost_gendev.i78.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %238, i32 0, i32 49
  %state.i79.i.i = getelementptr %struct.request, ptr %229, i32 2, i32 25
  %239 = ptrtoint ptr %state.i79.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %state.i79.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %240)
  %cmp.i74.i.i.i = icmp ugt i32 %240, 6
  br i1 %cmp.i74.i.i.i, label %do.end31.i.i.i.snic_ioreq_state_to_str.exit.i80.i.i_crit_edge, label %if.end.i76.i.i.i

do.end31.i.i.i.snic_ioreq_state_to_str.exit.i80.i.i_crit_edge: ; preds = %do.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit.i80.i.i

if.end.i76.i.i.i:                                 ; preds = %do.end31.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i75.i.i.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %240
  %241 = ptrtoint ptr %arrayidx.i75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx.i75.i.i.i, align 4
  br label %snic_ioreq_state_to_str.exit.i80.i.i

snic_ioreq_state_to_str.exit.i80.i.i:             ; preds = %if.end.i76.i.i.i, %do.end31.i.i.i.snic_ioreq_state_to_str.exit.i80.i.i_crit_edge
  %retval.0.i77.i.i.i = phi ptr [ %242, %if.end.i76.i.i.i ], [ @.str.5, %do.end31.i.i.i.snic_ioreq_state_to_str.exit.i80.i.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i78.i.i, ptr noundef nonnull @.str.385, ptr noundef %retval.0.i77.i.i.i) #10
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %snic_ioreq_state_to_str.exit.i80.i.i, %do.body23.i.i.i.do.end39.i.i.i_crit_edge
  %state41.i.i.i = getelementptr %struct.request, ptr %229, i32 2, i32 25
  %243 = ptrtoint ptr %state41.i.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %state41.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %244)
  %cmp42.i.i.i = icmp eq i32 %244, 2
  br i1 %cmp42.i.i.i, label %snic_is_abts_pending.exit.i.i, label %do.end39.i.i.i.for.inc.i.i.i_crit_edge

do.end39.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %do.end39.i.i.i.for.inc.i.i.i_crit_edge, %if.end17.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i74.i.i.for.inc.i.i.i_crit_edge, %if.end8.i.i70.i.i.for.inc.i.i.i_crit_edge, %if.then3.i.i65.i.i.for.inc.i.i.i_crit_edge, %if.end.i.i61.i.i.for.inc.i.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i56.i.i, i32 noundef %call4.i57.i.i) #7
  %inc.i.i.i = add nuw i32 %tag.084.i.i.i, 1
  %245 = ptrtoint ptr %max_tag_id.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %max_tag_id.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %246
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.if.end.i.i61.i.i_crit_edge, label %for.inc.i.i.i.if.end11.i.i_crit_edge

for.inc.i.i.i.if.end11.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

for.inc.i.i.i.if.end.i.i61.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i61.i.i

snic_is_abts_pending.exit.i.i:                    ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i56.i.i, i32 noundef %call4.i57.i.i) #7
  br label %clean_err.i.i

if.end11.i.i:                                     ; preds = %for.inc.i.i.i.if.end11.i.i_crit_edge, %if.end.i53.i.i.if.end11.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %247 = load i32, ptr @snic_log_level, align 4
  %and.i243.i = and i32 %247, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i243.i)
  %tobool13.not.i.i = icmp eq i32 %and.i243.i, 0
  br i1 %tobool13.not.i.i, label %if.end11.i.i.do.body129.i_crit_edge, label %do.end20.i.i, !prof !728

if.end11.i.i.do.body129.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body129.i

do.end20.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost21.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %248 = ptrtoint ptr %shost21.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %shost21.i.i, align 16
  %shost_gendev22.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %249, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev22.i.i, ptr noundef nonnull @.str.363) #10
  br label %do.body129.i

clean_err.i.i:                                    ; preds = %snic_is_abts_pending.exit.i.i, %do.end.i.i
  %shost31.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %250 = ptrtoint ptr %shost31.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %shost31.i.i, align 16
  %shost_gendev32.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %251, i32 0, i32 49
  %init_name.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %91, i32 0, i32 55, i32 3
  %252 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i82.i.i = icmp eq ptr %253, null
  br i1 %tobool.not.i82.i.i, label %if.end.i83.i.i, label %clean_err.i.i.do.body91.i_crit_edge

clean_err.i.i.do.body91.i_crit_edge:              ; preds = %clean_err.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91.i

if.end.i83.i.i:                                   ; preds = %clean_err.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sdev_gendev.i.i = getelementptr inbounds %struct.scsi_device, ptr %91, i32 0, i32 55
  %254 = ptrtoint ptr %sdev_gendev.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %sdev_gendev.i.i, align 4
  br label %do.body91.i

do.end79.i:                                       ; preds = %if.end24.i
  %shost80.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %256 = ptrtoint ptr %shost80.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %shost80.i, align 16
  %shost_gendev81.i = getelementptr inbounds %struct.Scsi_Host, ptr %257, i32 0, i32 49
  %258 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %tag2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %74)
  %cmp.i245.i = icmp ugt i32 %74, 19
  br i1 %cmp.i245.i, label %do.end79.i.snic_io_status_to_str.exit.i_crit_edge, label %if.end.i.i

do.end79.i.snic_io_status_to_str.exit.i_crit_edge: ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit.i

if.end.i.i:                                       ; preds = %do.end79.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i246.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %74
  %260 = ptrtoint ptr %arrayidx.i246.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i246.i, align 4
  br label %snic_io_status_to_str.exit.i

snic_io_status_to_str.exit.i:                     ; preds = %if.end.i.i, %do.end79.i.snic_io_status_to_str.exit.i_crit_edge
  %retval.0.i247.i = phi ptr [ %261, %if.end.i.i ], [ @.str.5, %do.end79.i.snic_io_status_to_str.exit.i_crit_edge ]
  %262 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %flags10.i, align 8
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev81.i, ptr noundef nonnull @.str.355, i32 noundef %259, ptr noundef %retval.0.i247.i, i64 noundef %263) #10
  br label %do.body148.i

do.body91.i:                                      ; preds = %if.end.i83.i.i, %clean_err.i.i.do.body91.i_crit_edge
  %retval.0.i84.i.i = phi ptr [ %255, %if.end.i83.i.i ], [ %253, %clean_err.i.i.do.body91.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev32.i.i, ptr noundef nonnull @.str.366, ptr noundef %retval.0.i84.i.i) #10
  %call98.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i201) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %264 = load i32, ptr @snic_log_level, align 4
  %and104.i = and i32 %264, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %do.body91.i.do.end125.i_crit_edge, label %do.end116.i, !prof !728

do.body91.i.do.end125.i_crit_edge:                ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end125.i

do.end116.i:                                      ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #9
  %265 = ptrtoint ptr %shost31.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %shost31.i.i, align 16
  %shost_gendev118.i = getelementptr inbounds %struct.Scsi_Host, ptr %266, i32 0, i32 49
  %267 = ptrtoint ptr %tag2 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %tag2, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev118.i, ptr noundef nonnull @.str.358, i32 noundef %268) #10
  br label %do.end125.i

do.end125.i:                                      ; preds = %do.end116.i, %do.body91.i.do.end125.i_crit_edge
  %269 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %add.ptr.i.i199, align 8
  br label %do.body148.i

do.body129.i:                                     ; preds = %do.end20.i.i, %if.end11.i.i.do.body129.i_crit_edge
  %call136.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i201) #7
  %271 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %add.ptr.i.i199, align 8
  %tobool143.not.i = icmp eq ptr %272, null
  %..i210 = select i1 %tobool143.not.i, i32 8195, i32 8194
  br label %do.body148.i

do.body148.i:                                     ; preds = %do.body129.i, %do.end125.i, %snic_io_status_to_str.exit.i, %do.end50.i
  %ret.0.i211 = phi i32 [ 8195, %snic_io_status_to_str.exit.i ], [ 8195, %do.end125.i ], [ 8195, %do.end50.i ], [ %..i210, %do.body129.i ]
  %flags.0.i = phi i32 [ %call3.i, %snic_io_status_to_str.exit.i ], [ %call98.i, %do.end125.i ], [ %call3.i, %do.end50.i ], [ %call136.i, %do.body129.i ]
  %rqi.0.i = phi ptr [ %64, %snic_io_status_to_str.exit.i ], [ %270, %do.end125.i ], [ %64, %do.end50.i ], [ %272, %do.body129.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %273 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool149.not.i = icmp eq i32 %273, 0
  br i1 %tobool149.not.i, label %do.body148.i.if.end176.i_crit_edge, label %land.rhs.i

do.body148.i.if.end176.i_crit_edge:               ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

land.rhs.i:                                       ; preds = %do.body148.i
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %arrayidx.i.i201, i32 0, i32 1
  %call.i.i212 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %cmp151.not.i = icmp eq i32 %call.i.i212, 0
  br i1 %cmp151.not.i, label %do.end170.i, label %land.rhs.i.if.end176.i_crit_edge, !prof !734

land.rhs.i.if.end176.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

do.end170.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1996, i32 noundef 9, ptr noundef null) #7
  br label %if.end176.i

if.end176.i:                                      ; preds = %do.end170.i, %land.rhs.i.if.end176.i_crit_edge, %do.body148.i.if.end176.i_crit_edge
  %tobool186.not.i = icmp eq ptr %rqi.0.i, null
  br i1 %tobool186.not.i, label %dr_fini_end.critedge.i, label %if.then187.i

if.then187.i:                                     ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #9
  %274 = ptrtoint ptr %add.ptr.i.i199 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr null, ptr %add.ptr.i.i199, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i201, i32 noundef %flags.0.i) #7
  call fastcc void @snic_release_req_buf(ptr noundef %hostdata.i, ptr noundef nonnull %rqi.0.i, ptr noundef %sc) #7
  br label %do.body71

dr_fini_end.critedge.i:                           ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i201, i32 noundef %flags.0.i) #7
  br label %do.body71

do.body71:                                        ; preds = %dr_fini_end.critedge.i, %if.then187.i, %do.end16.i, %if.then.i.do.body71_crit_edge, %do.end66, %do.end48.do.body71_crit_edge, %if.then31, %do.end20
  %ret.0 = phi i32 [ 8195, %if.then31 ], [ 8195, %do.end66 ], [ 8195, %do.end48.do.body71_crit_edge ], [ 8195, %do.end20 ], [ %ret.0.i211, %if.then187.i ], [ 8195, %do.end16.i ], [ 8195, %if.then.i.do.body71_crit_edge ], [ %ret.0.i211, %dr_fini_end.critedge.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %275 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %275, i32 0, i32 7, i32 5
  %276 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %enable, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool72.not = icmp eq i8 %277, 0
  br i1 %tobool72.not, label %do.body71.do.body125_crit_edge, label %if.then79, !prof !728

do.body71.do.body125_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.then79:                                        ; preds = %do.body71
  %shost80 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %278 = ptrtoint ptr %shost80 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %shost80, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %279, i32 0, i32 17
  %280 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %host_no, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %282 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %282, %6
  %call83 = call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %cmnd85 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %283 = ptrtoint ptr %cmnd85 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %cmnd85, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %284, align 1
  %arrayidx89 = getelementptr i8, ptr %284, i32 7
  %287 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx89, align 1
  %arrayidx93 = getelementptr i8, ptr %284, i32 8
  %289 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %arrayidx93, align 1
  %arrayidx98 = getelementptr i8, ptr %284, i32 2
  %291 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %arrayidx98, align 1
  %arrayidx103 = getelementptr i8, ptr %284, i32 3
  %293 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %arrayidx103, align 1
  %arrayidx108 = getelementptr i8, ptr %284, i32 4
  %295 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %arrayidx108, align 1
  %arrayidx113 = getelementptr i8, ptr %284, i32 5
  %297 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx113, align 1
  %flags117 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %299 = ptrtoint ptr %flags117 to i32
  call void @__asan_load8_noabort(i32 %299)
  %300 = load i64, ptr %flags117, align 8
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %301 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %state, align 8
  %call.i = call ptr @snic_get_trc_buf() #7
  %tobool.not.i215 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i215, label %if.then79.do.body125_crit_edge, label %if.end.i216

if.then79.do.body125_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.end.i216:                                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %shl118 = shl i64 %300, 32
  %conv120 = zext i32 %302 to i64
  %or121 = or i64 %shl118, %conv120
  %conv87 = zext i8 %286 to i64
  %shl = shl nuw i64 %conv87, 56
  %conv90 = zext i8 %288 to i64
  %shl91 = shl nuw nsw i64 %conv90, 40
  %or = or i64 %shl91, %shl
  %conv94 = zext i8 %290 to i64
  %shl95 = shl nuw nsw i64 %conv94, 32
  %or96 = or i64 %or, %shl95
  %conv99 = zext i8 %292 to i64
  %shl100 = shl nuw nsw i64 %conv99, 24
  %or101 = or i64 %or96, %shl100
  %conv104 = zext i8 %294 to i64
  %shl105 = shl nuw nsw i64 %conv104, 16
  %or106 = or i64 %or101, %shl105
  %conv109 = zext i8 %296 to i64
  %shl110 = shl nuw nsw i64 %conv109, 8
  %or111 = or i64 %or106, %shl110
  %conv114 = zext i8 %298 to i64
  %or115 = or i64 %or111, %conv114
  %conv84 = zext i32 %call83 to i64
  %303 = ptrtoint ptr %sc to i32
  %conv82 = zext i32 %303 to i64
  %fn1.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 1
  %304 = ptrtoint ptr %fn1.i to i32
  call void @__asan_storeN_noabort(i32 %304, i32 4)
  store ptr @.str.33, ptr %fn1.i, align 1
  %conv.i = and i32 %281, 65535
  %hno2.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 2
  %305 = ptrtoint ptr %hno2.i to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %conv.i, ptr %hno2.i, align 1
  %tag3.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 3
  %306 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %306, i32 4)
  store i32 %5, ptr %tag3.i, align 1
  %data.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 4
  %307 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %307, i32 8)
  store i64 %conv82, ptr %data.i, align 1
  %arrayidx5.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 1
  %308 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %308, i32 8)
  store i64 %conv84, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 2
  %309 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %309, i32 8)
  store i64 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 3
  %310 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %310, i32 8)
  store i64 %or115, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 4
  %311 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %311, i32 8)
  store i64 %or121, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %312 = load volatile i32, ptr @jiffies, align 128
  %conv12.i = zext i32 %312 to i64
  %313 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %313, i32 8)
  store i64 %conv12.i, ptr %call.i, align 1
  br label %do.body125

do.body125:                                       ; preds = %if.end.i216, %if.then79.do.body125_crit_edge, %do.body71.do.body125_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %314 = load i32, ptr @snic_log_level, align 4
  %and126 = and i32 %314, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %do.body125.do.end147_crit_edge, label %do.end138, !prof !728

do.body125.do.end147_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end147

do.end138:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  %shost139 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 6
  %315 = ptrtoint ptr %shost139 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %shost139, align 16
  %shost_gendev140 = getelementptr inbounds %struct.Scsi_Host, ptr %316, i32 0, i32 49
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %ret.0)
  %cmp141 = icmp eq i32 %ret.0, 8194
  %cond = select i1 %cmp141, ptr @.str.29, ptr @.str.31
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev140, ptr noundef nonnull @.str.47, ptr noundef nonnull %cond) #10
  br label %do.end147

do.end147:                                        ; preds = %do.end138, %do.body125.do.end147_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_unlink_and_release_req(ptr noundef %snic, ptr noundef %sc, i32 noundef %flag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %tag.i = getelementptr i8, ptr %sc, i32 -172
  %1 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tag.i, align 4
  %and.i = and i32 %2, 63
  %arrayidx.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 24, i32 %and.i
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #7
  %add.ptr.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %start_time8 = getelementptr inbounds %struct.snic_req_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %start_time8 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start_time8, align 8
  %conv9 = trunc i64 %6 to i32
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %start_time.0 = phi i32 [ %conv9, %if.then ], [ %0, %entry.if.end_crit_edge ]
  %8 = zext i32 %flag to i64
  %flags14 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %9 = ptrtoint ptr %flags14 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags14, align 8
  %or = or i64 %10, %8
  store i64 %or, ptr %flags14, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call3) #7
  br i1 %tobool.not, label %if.end.do.body18_crit_edge, label %if.then16

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @snic_release_req_buf(ptr noundef %snic, ptr noundef nonnull %4, ptr noundef %sc)
  br label %do.body18

do.body18:                                        ; preds = %if.then16, %if.end.do.body18_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %11 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %11, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %do.body18.do.end67_crit_edge, label %if.then22, !prof !728

do.body18.do.end67_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then22:                                        ; preds = %do.body18
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %host_no, align 4
  %18 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tag.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %start_time.0
  %call26 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %21 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmnd, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %arrayidx31 = getelementptr i8, ptr %22, i32 7
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx31, align 1
  %arrayidx36 = getelementptr i8, ptr %22, i32 8
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36, align 1
  %arrayidx41 = getelementptr i8, ptr %22, i32 2
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx41, align 1
  %arrayidx46 = getelementptr i8, ptr %22, i32 3
  %31 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx46, align 1
  %arrayidx51 = getelementptr i8, ptr %22, i32 4
  %33 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx51, align 1
  %arrayidx56 = getelementptr i8, ptr %22, i32 5
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx56, align 1
  %37 = ptrtoint ptr %flags14 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %flags14, align 8
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 8
  %call.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then22.do.end67_crit_edge, label %if.end.i

if.then22.do.end67_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.end.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %shl61 = shl i64 %38, 32
  %conv63 = zext i32 %40 to i64
  %or64 = or i64 %shl61, %conv63
  %conv29 = zext i8 %24 to i64
  %shl = shl nuw i64 %conv29, 56
  %conv32 = zext i8 %26 to i64
  %shl33 = shl nuw nsw i64 %conv32, 40
  %or34 = or i64 %shl33, %shl
  %conv37 = zext i8 %28 to i64
  %shl38 = shl nuw nsw i64 %conv37, 32
  %or39 = or i64 %or34, %shl38
  %conv42 = zext i8 %30 to i64
  %shl43 = shl nuw nsw i64 %conv42, 24
  %or44 = or i64 %or39, %shl43
  %conv47 = zext i8 %32 to i64
  %shl48 = shl nuw nsw i64 %conv47, 16
  %or49 = or i64 %or44, %shl48
  %conv52 = zext i8 %34 to i64
  %shl53 = shl nuw nsw i64 %conv52, 8
  %or54 = or i64 %or49, %shl53
  %conv57 = zext i8 %36 to i64
  %or58 = or i64 %or54, %conv57
  %41 = ptrtoint ptr %4 to i32
  %conv28 = zext i32 %41 to i64
  %conv27 = zext i32 %call26 to i64
  %42 = ptrtoint ptr %sc to i32
  %conv25 = zext i32 %42 to i64
  %fn1.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %fn1.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store ptr @__func__.snic_unlink_and_release_req, ptr %fn1.i, align 1
  %conv.i = and i32 %17, 65535
  %hno2.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %hno2.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %conv.i, ptr %hno2.i, align 1
  %tag3.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %19, ptr %tag3.i, align 1
  %data.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %conv25, ptr %data.i, align 1
  %arrayidx5.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %conv27, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %conv28, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %or58, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %or64, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %conv12.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %conv12.i, ptr %call.i, align 1
  br label %do.end67

do.end67:                                         ; preds = %if.end.i, %if.then22.do.end67_crit_edge, %do.body18.do.end67_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_req_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_reset(ptr noundef %shost, ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  %wait.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %call1 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  %snic_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 3, i32 0, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #7
  %call7 = tail call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 4
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call4) #7
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.49) #10
  tail call void @msleep(i32 noundef 30000) #7
  br label %reset_end

if.end:                                           ; preds = %entry
  tail call void @snic_set_state(ptr noundef %hostdata.i, i32 noundef 4) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call4) #7
  %ios_inflight = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 49, i32 11
  %call.i.i61 = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_inflight, i32 noundef 4) #7
  %0 = ptrtoint ptr %ios_inflight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %ios_inflight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not62 = icmp eq i32 %1, 0
  br i1 %tobool.not62, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %call17 = tail call i32 @schedule_timeout(i32 noundef 1) #7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ios_inflight, i32 noundef 4) #7
  %2 = ptrtoint ptr %ios_inflight to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %ios_inflight, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait.i) #7
  %4 = getelementptr inbounds i8, ptr %wait.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %6 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wait.i, align 4
  call void @__init_swait_queue_head(ptr noundef %4, ptr noundef nonnull @.str.304, ptr noundef nonnull @init_completion.__key) #7
  %call.i = call ptr @snic_req_init(ptr noundef %hostdata.i, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.end.do.end23_crit_edge, label %if.end.i

while.end.do.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.end.i:                                         ; preds = %while.end
  %tag.i = getelementptr i8, ptr %sc, i32 -172
  %7 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.i = icmp eq i32 %8, -1
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 32)
  %shost.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %10 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.387) #10
  %sc4.i = getelementptr inbounds %struct.snic_req_info, ptr %call.i, i32 0, i32 9
  %12 = ptrtoint ptr %sc4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %sc, ptr %sc4.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.end.i.if.end5.i_crit_edge
  %req6.i = getelementptr inbounds %struct.snic_req_info, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %req6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req6.i, align 8
  %15 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tag.i, align 4
  %and.i.i = and i32 %16, 63
  %arrayidx.i.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i
  %call13.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %add.ptr.i236.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %17 = ptrtoint ptr %add.ptr.i236.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i236.i, align 8
  %cmp20.not.i = icmp eq ptr %18, null
  br i1 %cmp20.not.i, label %if.end5.i.if.end74.i_crit_edge, label %do.end25.i

if.end5.i.if.end74.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

do.end25.i:                                       ; preds = %if.end5.i
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.391, ptr noundef nonnull @.str.388, i32 noundef 2252) #10
  %19 = ptrtoint ptr %add.ptr.i236.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i236.i, align 8
  %cmp30.not.i = icmp eq ptr %20, null
  br i1 %cmp30.not.i, label %do.end25.i.if.end74.i_crit_edge, label %land.rhs.i

do.end25.i.if.end74.i_crit_edge:                  ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

land.rhs.i:                                       ; preds = %do.end25.i
  %.b235.i = load i1, ptr @snic_issue_hba_reset.__already_done, align 1
  br i1 %.b235.i, label %land.rhs.i.if.end74.i_crit_edge, label %if.then40.i, !prof !728

land.rhs.i.if.end74.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.then40.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_issue_hba_reset.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2252, i32 noundef 9, ptr noundef null) #7
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then40.i, %land.rhs.i.if.end74.i_crit_edge, %do.end25.i.if.end74.i_crit_edge, %if.end5.i.if.end74.i_crit_edge
  %state.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state.i, align 8
  %22 = ptrtoint ptr %add.ptr.i236.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %add.ptr.i236.i, align 8
  %flags79.i = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %23 = ptrtoint ptr %flags79.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags79.i, align 8
  %or.i = or i64 %24, 1
  store i64 %or.i, ptr %flags79.i, align 8
  %remove_wait.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 5
  %25 = ptrtoint ptr %remove_wait.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %wait.i, ptr %remove_wait.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call13.i) #7
  %hdr.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1
  %26 = ptrtoint ptr %tag.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tag.i, align 4
  %hid.i = getelementptr inbounds %struct.snic, ptr %hostdata.i, i32 0, i32 29, i32 11
  %28 = ptrtoint ptr %hid.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hid.i, align 1
  %conv82.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %call.i to i32
  %type.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 5, ptr %type.i.i, align 4
  %status1.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %status1.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %status1.i.i, align 1
  %protocol.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 5
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %protocol.i.i, align 2
  %34 = shl nuw i32 %conv82.i, 24
  %35 = ptrtoint ptr %hdr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %hdr.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %27) #7
  %cmnd_id.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %cmnd_id.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cmnd_id.i.i, align 4
  %sg_cnt3.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %sg_cnt3.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %sg_cnt3.i.i, align 4
  %init_ctx.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %init_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %30, ptr %init_ctx.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %flags.i.i, align 1
  %u.i = getelementptr inbounds %struct.snic_host_req, ptr %14, i32 0, i32 2
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %u.i, align 8
  %call84.i = call i32 @snic_queue_wq_desc(ptr noundef %hostdata.i, ptr noundef %14, i16 noundef zeroext 136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %tobool85.not.i = icmp eq i32 %call84.i, 0
  br i1 %tobool85.not.i, label %do.body94.i, label %do.end89.i

do.end89.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost90.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %42 = ptrtoint ptr %shost90.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %shost90.i, align 16
  %shost_gendev91.i = getelementptr inbounds %struct.Scsi_Host, ptr %43, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev91.i, ptr noundef nonnull @.str.393, i32 noundef %call84.i) #10
  br label %do.body148.i

do.body94.i:                                      ; preds = %if.end74.i
  %call101.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %44 = ptrtoint ptr %flags79.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %flags79.i, align 8
  %or108.i = or i64 %45, 134217728
  store i64 %or108.i, ptr %flags79.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call101.i) #7
  %hba_resets.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 10, i32 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %hba_resets.i, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %hba_resets.i) #7
  %shost112.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %46 = ptrtoint ptr %shost112.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shost112.i, align 16
  %shost_gendev113.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev113.i, ptr noundef nonnull @.str.396) #10
  %48 = ptrtoint ptr %remove_wait.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %remove_wait.i, align 8
  %call115.i = call i32 @wait_for_completion_timeout(ptr noundef %49, i32 noundef 30000) #7
  %call116.i = call i32 @snic_get_state(ptr noundef %hostdata.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call116.i)
  %cmp117.i = icmp eq i32 %call116.i, 4
  br i1 %cmp117.i, label %do.end122.i, label %do.body127.i

do.end122.i:                                      ; preds = %do.body94.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %shost112.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost112.i, align 16
  %shost_gendev124.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev124.i, ptr noundef nonnull @.str.399) #10
  br label %do.body148.i

do.body127.i:                                     ; preds = %do.body94.i
  %call134.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %52 = ptrtoint ptr %remove_wait.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %remove_wait.i, align 8
  %53 = ptrtoint ptr %add.ptr.i236.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i236.i, align 8
  store ptr null, ptr %add.ptr.i236.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call134.i) #7
  %tobool144.not.i = icmp eq ptr %54, null
  br i1 %tobool144.not.i, label %do.body127.i.snic_issue_hba_reset.exit.thread_crit_edge, label %if.then145.i

do.body127.i.snic_issue_hba_reset.exit.thread_crit_edge: ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_issue_hba_reset.exit.thread

if.then145.i:                                     ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @snic_req_free(ptr noundef %hostdata.i, ptr noundef nonnull %54) #7
  br label %snic_issue_hba_reset.exit.thread

do.body148.i:                                     ; preds = %do.end122.i, %do.end89.i
  %ret.0.i = phi i32 [ %call84.i, %do.end89.i ], [ -110, %do.end122.i ]
  %call155.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #7
  %55 = ptrtoint ptr %remove_wait.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %remove_wait.i, align 8
  %56 = ptrtoint ptr %add.ptr.i236.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i236.i, align 8
  store ptr null, ptr %add.ptr.i236.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call155.i) #7
  %tobool165.not.i = icmp eq ptr %57, null
  br i1 %tobool165.not.i, label %do.body148.i.do.end23_crit_edge, label %if.then166.i

do.body148.i.do.end23_crit_edge:                  ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

if.then166.i:                                     ; preds = %do.body148.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @snic_req_free(ptr noundef %hostdata.i, ptr noundef nonnull %57) #7
  br label %do.end23

snic_issue_hba_reset.exit.thread:                 ; preds = %if.then145.i, %do.body127.i.snic_issue_hba_reset.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i) #7
  br label %reset_end

do.end23:                                         ; preds = %if.then166.i, %do.body148.i.do.end23_crit_edge, %while.end.do.end23_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %if.then166.i ], [ %ret.0.i, %do.body148.i.do.end23_crit_edge ], [ -12, %while.end.do.end23_crit_edge ]
  %shost171.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 1, i32 13, i32 6
  %58 = ptrtoint ptr %shost171.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %shost171.i, align 16
  %shost_gendev172.i = getelementptr inbounds %struct.Scsi_Host, ptr %59, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev172.i, ptr noundef nonnull @.str.402, i32 noundef %ret.1.i) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i) #7
  %shost_gendev24 = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev24, ptr noundef nonnull @.str.52, i32 noundef %ret.1.i) #10
  %call34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #7
  call void @snic_set_state(ptr noundef %hostdata.i, i32 noundef %call1) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call34) #7
  %hba_reset_fail = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 2, i32 50, i32 10, i32 5, i32 2
  %call.i.i58 = call zeroext i1 @__kasan_check_write(ptr noundef %hba_reset_fail, i32 noundef 8) #7
  call void @generic_atomic64_add(i64 noundef 1, ptr noundef %hba_reset_fail) #7
  br label %reset_end

reset_end:                                        ; preds = %do.end23, %snic_issue_hba_reset.exit.thread, %if.then
  %ret.0 = phi i32 [ 8194, %if.then ], [ 8195, %do.end23 ], [ 8194, %snic_issue_hba_reset.exit.thread ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_set_state(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_host_reset(ptr noundef %sc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %5 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !728

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %6 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmnd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %sc, i32 -192
  %tag = getelementptr i8, ptr %sc, i32 -172
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag, align 4
  %flags = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.54, ptr noundef %sc, i32 noundef %conv, ptr noundef %add.ptr.i.i, i32 noundef %11, i64 noundef %13) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  %call11 = tail call i32 @snic_reset(ptr noundef %3, ptr noundef %sc)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %14 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %14, i32 0, i32 7, i32 5
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool13.not = icmp eq i8 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end66_crit_edge, label %if.then20, !prof !728

do.end10.do.end66_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.then20:                                        ; preds = %do.end10
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 17
  %17 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %host_no, align 4
  %tag23 = getelementptr i8, ptr %sc, i32 -172
  %19 = ptrtoint ptr %tag23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tag23, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %21, %4
  %call25 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #7
  %cmnd27 = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 16
  %22 = ptrtoint ptr %cmnd27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmnd27, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %arrayidx31 = getelementptr i8, ptr %23, i32 7
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx31, align 1
  %arrayidx35 = getelementptr i8, ptr %23, i32 8
  %28 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx35, align 1
  %arrayidx40 = getelementptr i8, ptr %23, i32 2
  %30 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx40, align 1
  %arrayidx45 = getelementptr i8, ptr %23, i32 3
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx45, align 1
  %arrayidx50 = getelementptr i8, ptr %23, i32 4
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx50, align 1
  %arrayidx55 = getelementptr i8, ptr %23, i32 5
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx55, align 1
  %flags59 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %38 = ptrtoint ptr %flags59 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %flags59, align 8
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 8
  %call.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then20.do.end66_crit_edge, label %if.end.i

if.then20.do.end66_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %shl60 = shl i64 %39, 32
  %conv62 = zext i32 %41 to i64
  %or63 = or i64 %shl60, %conv62
  %conv29 = zext i8 %25 to i64
  %shl = shl nuw i64 %conv29, 56
  %conv32 = zext i8 %27 to i64
  %shl33 = shl nuw nsw i64 %conv32, 40
  %or = or i64 %shl33, %shl
  %conv36 = zext i8 %29 to i64
  %shl37 = shl nuw nsw i64 %conv36, 32
  %or38 = or i64 %or, %shl37
  %conv41 = zext i8 %31 to i64
  %shl42 = shl nuw nsw i64 %conv41, 24
  %or43 = or i64 %or38, %shl42
  %conv46 = zext i8 %33 to i64
  %shl47 = shl nuw nsw i64 %conv46, 16
  %or48 = or i64 %or43, %shl47
  %conv51 = zext i8 %35 to i64
  %shl52 = shl nuw nsw i64 %conv51, 8
  %or53 = or i64 %or48, %shl52
  %conv56 = zext i8 %37 to i64
  %or57 = or i64 %or53, %conv56
  %conv26 = zext i32 %call25 to i64
  %42 = ptrtoint ptr %sc to i32
  %conv24 = zext i32 %42 to i64
  %fn1.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %fn1.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store ptr @.str.55, ptr %fn1.i, align 1
  %conv.i = and i32 %18, 65535
  %hno2.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %hno2.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %conv.i, ptr %hno2.i, align 1
  %tag3.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 3
  %45 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %20, ptr %tag3.i, align 1
  %data.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %conv24, ptr %data.i, align 1
  %arrayidx5.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %conv26, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 2
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 3
  %49 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 8)
  store i64 %or57, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 4
  %50 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %or63, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %conv12.i = zext i32 %51 to i64
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %conv12.i, ptr %call.i, align 1
  br label %do.end66

do.end66:                                         ; preds = %if.end.i, %if.then20.do.end66_crit_edge, %do.end10.do.end66_crit_edge
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_shutdown_scsi_cleanup(ptr noundef %snic) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %0 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.56) #10
  tail call fastcc void @snic_scsi_cleanup(ptr noundef %snic, i32 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_scsi_cleanup(ptr noundef %snic, i32 noundef %ex_tag) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %0 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end, !prof !728

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %1 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.404) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %max_tag_id = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 27
  %3 = ptrtoint ptr %max_tag_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_tag_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp221.not = icmp eq i32 %4, 0
  br i1 %cmp221.not, label %do.end8.for.end_crit_edge, label %for.body.lr.ph

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end8
  %shost21 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %s_stats = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36
  %io_cmpl_skip.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 5
  %compl.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %st_time.0.off0226 = phi i32 [ 0, %for.body.lr.ph ], [ %st_time.2.off0, %for.inc.for.body_crit_edge ]
  %tag.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %tag.0222, i32 %ex_tag)
  %cmp9 = icmp eq i32 %tag.0222, %ex_tag
  br i1 %cmp9, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %and.i = and i32 %tag.0222, 63
  %arrayidx.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 24, i32 %and.i
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #7
  %5 = ptrtoint ptr %shost21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost21, align 16
  %shr.i.i = lshr i32 %tag.0222, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 13, i32 3
  %7 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %8, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.then24_crit_edge

if.end.i.if.then24_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 13, i32 11
  %9 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tags.i, align 4
  %arrayidx.i202 = getelementptr ptr, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i202, align 4
  %conv6.i = and i32 %tag.0222, 65535
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %14, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.if.then24_crit_edge

if.then3.i.if.then24_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %16, i32 %conv6.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %18) #7, !srcloc !732
  %19 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %20, i32 %conv6.i
  %21 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end8.i.if.then24_crit_edge, label %lor.lhs.false.i

if.end8.i.if.then24_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %22, i32 0, i32 25
  %23 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i22.not.i = icmp eq i32 %24, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %22, i32 1
  %tobool23.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool23.not
  br i1 %or.cond, label %lor.lhs.false.i.if.then24_crit_edge, label %if.end25

lor.lhs.false.i.if.then24_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.i.if.then24_crit_edge, %if.end8.i.if.then24_crit_edge, %if.then3.i.if.then24_crit_edge, %if.end.i.if.then24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call16) #7
  br label %for.inc

if.end25:                                         ; preds = %lor.lhs.false.i
  %state1.i = getelementptr %struct.request, ptr %22, i32 2, i32 25
  %25 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state1.i, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.442)
  switch i32 %26, label %if.end35 [
    i32 4, label %if.end25.if.then34_crit_edge
    i32 2, label %if.end25.if.then34_crit_edge227
  ]

if.end25.if.then34_crit_edge227:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.end25.if.then34_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %if.end25.if.then34_crit_edge, %if.end25.if.then34_crit_edge227
  tail call fastcc void @snic_cmpl_pending_tmreq(ptr noundef %snic, ptr noundef nonnull %add.ptr.i.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call16) #7
  br label %for.inc

if.end35:                                         ; preds = %if.end25
  %add.ptr.i = getelementptr %struct.request, ptr %22, i32 2, i32 19
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %tobool38.not = icmp eq ptr %29, null
  br i1 %tobool38.not, label %if.then39, label %do.body41

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call16) #7
  br label %cleanup

do.body41:                                        ; preds = %if.end35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %30 = load i32, ptr @snic_log_level, align 4
  %and42 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %do.body41.do.end63_crit_edge, label %do.end54, !prof !728

do.body41.do.end63_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end63

do.end54:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %shost21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %shost21, align 16
  %shost_gendev56 = getelementptr inbounds %struct.Scsi_Host, ptr %32, i32 0, i32 49
  %flags58 = getelementptr %struct.request, ptr %22, i32 2, i32 22
  %33 = ptrtoint ptr %flags58 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %flags58, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev56, ptr noundef nonnull @.str.407, ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull %29, i32 noundef %tag.0222, i64 noundef %34) #10
  br label %do.end63

do.end63:                                         ; preds = %do.end54, %do.body41.do.end63_crit_edge
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %add.ptr.i, align 8
  %flags67 = getelementptr %struct.request, ptr %22, i32 2, i32 22
  %36 = ptrtoint ptr %flags67 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags67, align 8
  %or = or i64 %37, 67108864
  store i64 %or, ptr %flags67, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call16) #7
  %start_time = getelementptr inbounds %struct.snic_req_info, ptr %29, i32 0, i32 2
  %38 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %start_time, align 8
  %40 = ptrtoint ptr %shost21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost21, align 16
  %shost_gendev72 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 49
  %42 = ptrtoint ptr %flags67 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %flags67, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev72, ptr noundef nonnull @.str.410, ptr noundef nonnull %29, i64 noundef %43) #10
  tail call fastcc void @snic_release_req_buf(ptr noundef %snic, ptr noundef nonnull %29, ptr noundef nonnull %add.ptr.i.i)
  %extract.t = trunc i64 %39 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then39
  %st_time.1.off0 = phi i32 [ %extract.t, %do.end63 ], [ %st_time.0.off0226, %if.then39 ]
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i, i32 0, i32 24
  %44 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 917504, ptr %result, align 4
  %45 = ptrtoint ptr %shost21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost21, align 16
  %shost_gendev79 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  %tag81 = getelementptr inbounds %struct.request, ptr %22, i32 0, i32 5
  %47 = ptrtoint ptr %tag81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tag81, align 4
  %flags83 = getelementptr %struct.request, ptr %22, i32 2, i32 22
  %49 = ptrtoint ptr %flags83 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %flags83, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %conv85 = sub i32 %51, %st_time.1.off0
  %call86 = tail call i32 @jiffies_to_msecs(i32 noundef %conv85) #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev79, ptr noundef nonnull @.str.413, ptr noundef nonnull %add.ptr.i.i, i32 noundef %48, i64 noundef %50, ptr noundef %29, i32 noundef %call86) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %s_stats, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %s_stats) #7
  %call.i.i8.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %io_cmpl_skip.i, i32 noundef 8) #7
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %io_cmpl_skip.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i)
  %tobool.not.i210 = icmp eq i64 %call.i.i, 0
  br i1 %tobool.not.i210, label %if.else.i, label %if.then.i, !prof !728

if.then.i:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_cmpl_skip.i, i32 noundef 8) #7
  tail call void @generic_atomic64_sub(i64 noundef 1, ptr noundef %io_cmpl_skip.i) #7
  br label %snic_stats_update_io_cmpl.exit

if.else.i:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %compl.i, i32 noundef 8) #7
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %compl.i) #7
  br label %snic_stats_update_io_cmpl.exit

snic_stats_update_io_cmpl.exit:                   ; preds = %if.else.i, %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %52 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %52, i32 0, i32 7, i32 5
  %53 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enable, align 4, !range !729
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  br i1 %tobool88.not, label %snic_stats_update_io_cmpl.exit.do.end142_crit_edge, label %if.then95, !prof !728

snic_stats_update_io_cmpl.exit.do.end142_crit_edge: ; preds = %snic_stats_update_io_cmpl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end142

if.then95:                                        ; preds = %snic_stats_update_io_cmpl.exit
  %55 = ptrtoint ptr %shost21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %shost21, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %56, i32 0, i32 17
  %57 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %host_no, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %conv101 = sub i32 %59, %st_time.1.off0
  %call102 = tail call i32 @jiffies_to_msecs(i32 noundef %conv101) #7
  %cmnd = getelementptr %struct.request, ptr %22, i32 2, i32 1
  %60 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cmnd, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %arrayidx106 = getelementptr i8, ptr %61, i32 7
  %64 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx106, align 1
  %arrayidx111 = getelementptr i8, ptr %61, i32 8
  %66 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx111, align 1
  %arrayidx116 = getelementptr i8, ptr %61, i32 2
  %68 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx116, align 1
  %arrayidx121 = getelementptr i8, ptr %61, i32 3
  %70 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx121, align 1
  %arrayidx126 = getelementptr i8, ptr %61, i32 4
  %72 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx126, align 1
  %arrayidx131 = getelementptr i8, ptr %61, i32 5
  %74 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx131, align 1
  %76 = ptrtoint ptr %flags83 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %flags83, align 8
  %78 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %state1.i, align 8
  %call.i = tail call ptr @snic_get_trc_buf() #7
  %tobool.not.i214 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i214, label %if.then95.do.end142_crit_edge, label %if.end.i215

if.then95.do.end142_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end142

if.end.i215:                                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #9
  %shl136 = shl i64 %77, 32
  %conv138 = zext i32 %79 to i64
  %or139 = or i64 %shl136, %conv138
  %conv104 = zext i8 %63 to i64
  %shl = shl nuw i64 %conv104, 56
  %conv107 = zext i8 %65 to i64
  %shl108 = shl nuw nsw i64 %conv107, 40
  %or109 = or i64 %shl108, %shl
  %conv112 = zext i8 %67 to i64
  %shl113 = shl nuw nsw i64 %conv112, 32
  %or114 = or i64 %or109, %shl113
  %conv117 = zext i8 %69 to i64
  %shl118 = shl nuw nsw i64 %conv117, 24
  %or119 = or i64 %or114, %shl118
  %conv122 = zext i8 %71 to i64
  %shl123 = shl nuw nsw i64 %conv122, 16
  %or124 = or i64 %or119, %shl123
  %conv127 = zext i8 %73 to i64
  %shl128 = shl nuw nsw i64 %conv127, 8
  %or129 = or i64 %or124, %shl128
  %conv132 = zext i8 %75 to i64
  %or133 = or i64 %or129, %conv132
  %conv103 = zext i32 %call102 to i64
  %80 = ptrtoint ptr %add.ptr.i.i to i32
  %conv98 = zext i32 %80 to i64
  %fn1.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %fn1.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store ptr @.str.405, ptr %fn1.i, align 1
  %conv.i = and i32 %58, 65535
  %hno2.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 2
  %82 = ptrtoint ptr %hno2.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %conv.i, ptr %hno2.i, align 1
  %tag3.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 3
  %83 = ptrtoint ptr %tag3.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %tag.0222, ptr %tag3.i, align 1
  %data.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i, i32 0, i32 4
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %conv98, ptr %data.i, align 1
  %arrayidx5.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %conv103, ptr %arrayidx5.i, align 1
  %arrayidx7.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 2
  %86 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 0, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 3
  %87 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %87, i32 8)
  store i64 %or133, ptr %arrayidx9.i, align 1
  %arrayidx11.i = getelementptr %struct.snic_trc_data, ptr %call.i, i32 0, i32 4, i32 4
  %88 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %or139, ptr %arrayidx11.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %89 = load volatile i32, ptr @jiffies, align 128
  %conv12.i = zext i32 %89 to i64
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %conv12.i, ptr %call.i, align 1
  br label %do.end142

do.end142:                                        ; preds = %if.end.i215, %if.then95.do.end142_crit_edge, %snic_stats_update_io_cmpl.exit.do.end142_crit_edge
  tail call void @scsi_done(ptr noundef nonnull %add.ptr.i.i) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end142, %if.then34, %if.then24, %for.body.for.inc_crit_edge
  %st_time.2.off0 = phi i32 [ %st_time.0.off0226, %for.body.for.inc_crit_edge ], [ %st_time.0.off0226, %if.then34 ], [ %st_time.1.off0, %do.end142 ], [ %st_time.0.off0226, %if.then24 ]
  %inc = add nuw i32 %tag.0222, 1
  %91 = ptrtoint ptr %max_tag_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %max_tag_id, align 4
  %cmp = icmp ult i32 %inc, %92
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end8.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_tgt_scsi_abort_io(ptr noundef readonly %tgt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tgt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.snic_tgt, ptr %tgt, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %dev.addr.0.i = phi ptr [ %1, %if.end ], [ %3, %while.body.i.while.cond.i_crit_edge ]
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
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %4 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %dev_to_shost.exit.do.end12_crit_edge, label %do.end, !prof !728

dev_to_shost.exit.do.end12_crit_edge:             ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #9
  %shost = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 6
  %5 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.58) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %dev_to_shost.exit.do.end12_crit_edge
  %typ = getelementptr inbounds %struct.snic_tgt, ptr %tgt, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %typ to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %typ, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %. = select i1 %cmp, i32 1, i32 6
  %max_tag_id = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 2, i32 49, i32 10, i32 5, i32 7
  %9 = ptrtoint ptr %max_tag_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_tag_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15131.not = icmp eq i32 %10, 0
  br i1 %cmp15131.not, label %do.end12.do.body60_crit_edge, label %if.end.i.lr.ph

do.end12.do.body60_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body60

if.end.i.lr.ph:                                   ; preds = %do.end12
  %shost26 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.if.end.i_crit_edge, %if.end.i.lr.ph
  %abt_cnt.0135 = phi i32 [ 0, %if.end.i.lr.ph ], [ %abt_cnt.1, %for.inc.if.end.i_crit_edge ]
  %tag.0132 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc59, %for.inc.if.end.i_crit_edge ]
  %and.i = and i32 %tag.0132, 63
  %arrayidx.i = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i) #7
  %11 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost26, align 16
  %shr.i.i = lshr i32 %tag.0132, 16
  %nr_hw_queues.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 13, i32 3
  %13 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_hw_queues.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %shr.i.i)
  %cmp1.i = icmp ugt i32 %14, %shr.i.i
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.then29_crit_edge

if.end.i.if.then29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then3.i:                                       ; preds = %if.end.i
  %tags.i = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 13, i32 11
  %15 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tags.i, align 4
  %arrayidx.i113 = getelementptr ptr, ptr %16, i32 %shr.i.i
  %17 = ptrtoint ptr %arrayidx.i113 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i113, align 4
  %conv6.i = and i32 %tag.0132, 65535
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv6.i)
  %cmp.i.i = icmp ugt i32 %20, %conv6.i
  br i1 %cmp.i.i, label %if.end8.i, label %if.then3.i.if.then29_crit_edge

if.then3.i.if.then29_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.end8.i:                                        ; preds = %if.then3.i
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %22, i32 %conv6.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %24) #7, !srcloc !732
  %25 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %26, i32 %conv6.i
  %27 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i114 = icmp eq ptr %28, null
  br i1 %tobool.not.i114, label %if.end8.i.if.then29_crit_edge, label %lor.lhs.false.i

if.end8.i.if.then29_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %state.i.i.i = getelementptr inbounds %struct.request, ptr %28, i32 0, i32 25
  %29 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i22.not.i = icmp eq i32 %30, 0
  %add.ptr.i.i = getelementptr %struct.request, ptr %28, i32 1
  %tobool28.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %cmp.i22.not.i, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %lor.lhs.false.i.if.then29_crit_edge, label %if.end30

lor.lhs.false.i.if.then29_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.i.if.then29_crit_edge, %if.end8.i.if.then29_crit_edge, %if.then3.i.if.then29_crit_edge, %if.end.i.if.then29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call21) #7
  br label %for.inc

if.end30:                                         ; preds = %lor.lhs.false.i
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %add.ptr.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device, align 4
  %parent.i116 = getelementptr inbounds %struct.scsi_device, ptr %32, i32 0, i32 55, i32 1
  %33 = ptrtoint ptr %parent.i116 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i116, align 8
  %parent33 = getelementptr i8, ptr %34, i32 136
  %35 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent33, align 8
  %release.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 35
  %37 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %release.i, align 4
  %cmp.i118.not = icmp eq ptr %38, @snic_tgt_dev_release
  %add.ptr = getelementptr i8, ptr %36, i32 -24
  %spec.select129 = select i1 %cmp.i118.not, ptr %add.ptr, ptr null
  %cmp41.not = icmp eq ptr %spec.select129, %tgt
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i, i32 noundef %call21) #7
  br i1 %cmp41.not, label %if.end44, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end44:                                         ; preds = %if.end30
  %tag.i.i = getelementptr %struct.request, ptr %28, i32 0, i32 5
  %39 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tag.i.i, align 4
  %and.i.i = and i32 %40, 63
  %arrayidx.i.i121 = getelementptr %struct.snic, ptr %hostdata.i, i32 0, i32 24, i32 %and.i.i
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i121) #7
  %add.ptr.i.i122 = getelementptr %struct.request, ptr %28, i32 2, i32 19
  %41 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i122, align 8
  %tobool.not.i123 = icmp eq ptr %42, null
  br i1 %tobool.not.i123, label %if.end44.do.body242.i_crit_edge, label %if.end.i124

if.end44.do.body242.i_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242.i

if.end.i124:                                      ; preds = %if.end44
  %state.i = getelementptr %struct.request, ptr %28, i32 2, i32 25
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp9.i = icmp eq i32 %44, 2
  br i1 %cmp9.i, label %if.end.i124.do.body242.i_crit_edge, label %if.end12.i

if.end.i124.do.body242.i_crit_edge:               ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242.i

if.end12.i:                                       ; preds = %if.end.i124
  %flags14.i = getelementptr %struct.request, ptr %28, i32 2, i32 22
  %45 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %flags14.i, align 8
  %47 = and i64 %46, 49152
  call void @__sanitizer_cov_trace_const_cmp8(i64 16384, i64 %47)
  %48 = icmp eq i64 %47, 16384
  br i1 %48, label %do.body21.i, label %if.end36.i

do.body21.i:                                      ; preds = %if.end12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %49 = load i32, ptr @snic_log_level, align 4
  %and22.i = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %do.body21.i.do.body242.i_crit_edge, label %do.end30.i, !prof !728

do.body21.i.do.body242.i_crit_edge:               ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242.i

do.end30.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost26, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.417, ptr noundef nonnull %add.ptr.i.i) #10
  br label %do.body242.i

if.end36.i:                                       ; preds = %if.end12.i
  %and39.i = and i64 %46, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39.i)
  %tobool40.not.i = icmp eq i64 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body42.i, label %if.end68.i

do.body42.i:                                      ; preds = %if.end36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %52 = load i32, ptr @snic_log_level, align 4
  %and43.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %do.body42.i.do.body242.i_crit_edge, label %do.end55.i, !prof !728

do.body42.i.do.body242.i_crit_edge:               ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242.i

do.end55.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %shost26, align 16
  %shost_gendev57.i = getelementptr inbounds %struct.Scsi_Host, ptr %54, i32 0, i32 49
  %55 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tag.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev57.i, ptr noundef nonnull @.str.420, ptr noundef nonnull %add.ptr.i.i, i32 noundef %56, i64 noundef %46, i32 noundef %44) #10
  br label %do.body242.i

if.end68.i:                                       ; preds = %if.end36.i
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %state.i, align 8
  %abts_status.i = getelementptr %struct.request, ptr %28, i32 2, i32 26
  %58 = ptrtoint ptr %abts_status.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 256, ptr %abts_status.i, align 4
  %or.i = or i64 %46, 4096
  %59 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %or.i, ptr %flags14.i, align 8
  %and78.i = and i64 %46, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and78.i)
  %tobool79.not.i = icmp eq i64 %and78.i, 0
  br i1 %tobool79.not.i, label %if.end68.i.do.body103.i_crit_edge, label %if.then80.i

if.end68.i.do.body103.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103.i

if.then80.i:                                      ; preds = %if.end68.i
  %tm_tag.i = getelementptr inbounds %struct.snic_req_info, ptr %42, i32 0, i32 6
  %60 = ptrtoint ptr %tm_tag.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 536870912, ptr %tm_tag.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %61 = load i32, ptr @snic_log_level, align 4
  %and82.i = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %tobool83.not.i = icmp eq i32 %and82.i, 0
  br i1 %tobool83.not.i, label %if.then80.i.do.body103.i_crit_edge, label %do.end94.i, !prof !728

if.then80.i.do.body103.i_crit_edge:               ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body103.i

do.end94.i:                                       ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %shost26, align 16
  %shost_gendev96.i = getelementptr inbounds %struct.Scsi_Host, ptr %63, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev96.i, ptr noundef nonnull @.str.423, ptr noundef nonnull %add.ptr.i.i) #10
  br label %do.body103.i

do.body103.i:                                     ; preds = %do.end94.i, %if.then80.i.do.body103.i_crit_edge, %if.end68.i.do.body103.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %64 = load i32, ptr @snic_log_level, align 4
  %and104.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp eq i32 %and104.i, 0
  br i1 %tobool105.not.i, label %do.body103.i.do.end125.i_crit_edge, label %do.end116.i, !prof !728

do.body103.i.do.end125.i_crit_edge:               ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end125.i

do.end116.i:                                      ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %shost26, align 16
  %shost_gendev118.i = getelementptr inbounds %struct.Scsi_Host, ptr %66, i32 0, i32 49
  %67 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tag.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev118.i, ptr noundef nonnull @.str.426, i32 noundef %68) #10
  br label %do.end125.i

do.end125.i:                                      ; preds = %do.end116.i, %do.body103.i.do.end125.i_crit_edge
  %abts_done.i = getelementptr inbounds %struct.snic_req_info, ptr %42, i32 0, i32 14
  %69 = ptrtoint ptr %abts_done.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %abts_done.i, align 4
  %tobool126.not.i = icmp eq ptr %70, null
  br i1 %tobool126.not.i, label %do.end125.i.if.end184.i_crit_edge, label %do.end130.i

do.end125.i.if.end184.i_crit_edge:                ; preds = %do.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184.i

do.end130.i:                                      ; preds = %do.end125.i
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.418, i32 noundef 2571) #10
  %71 = ptrtoint ptr %abts_done.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %abts_done.i, align 4
  %tobool134.not.i = icmp eq ptr %72, null
  br i1 %tobool134.not.i, label %do.end130.i.if.end184.i_crit_edge, label %land.rhs.i

do.end130.i.if.end184.i_crit_edge:                ; preds = %do.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184.i

land.rhs.i:                                       ; preds = %do.end130.i
  %.b328.i = load i1, ptr @snic_internal_abort_io.__already_done, align 1
  br i1 %.b328.i, label %land.rhs.i.if.end184.i_crit_edge, label %if.then150.i, !prof !728

land.rhs.i.if.end184.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184.i

if.then150.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_internal_abort_io.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2571, i32 noundef 9, ptr noundef null) #7
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then150.i, %land.rhs.i.if.end184.i_crit_edge, %do.end130.i.if.end184.i_crit_edge, %do.end125.i.if.end184.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i121, i32 noundef %call3.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %73 = load i32, ptr @snic_log_level, align 4
  %and.i341.i = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i341.i)
  %tobool.not.i.i = icmp eq i32 %and.i341.i, 0
  br i1 %tobool.not.i.i, label %if.end184.i.snic_queue_abort_req.exit.i_crit_edge, label %do.end.i.i, !prof !728

if.end184.i.snic_queue_abort_req.exit.i_crit_edge: ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_queue_abort_req.exit.i

do.end.i.i:                                       ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shost26, align 16
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %75, i32 0, i32 49
  %76 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tag.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev.i.i, ptr noundef nonnull @.str.305, ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull %42, i32 noundef %77, i32 noundef %.) #10
  br label %snic_queue_abort_req.exit.i

snic_queue_abort_req.exit.i:                      ; preds = %do.end.i.i, %if.end184.i.snic_queue_abort_req.exit.i_crit_edge
  %tm_tag.i.i = getelementptr inbounds %struct.snic_req_info, ptr %42, i32 0, i32 6
  %78 = ptrtoint ptr %tm_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tm_tag.i.i, align 8
  %or.i.i = or i32 %79, 1073741824
  store i32 %or.i.i, ptr %tm_tag.i.i, align 8
  %call7.i.i = tail call fastcc i32 @snic_issue_tm_req(ptr noundef %hostdata.i, ptr noundef nonnull %42, ptr noundef nonnull %add.ptr.i.i, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool186.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool186.not.i, label %do.body218.i, label %do.end190.i

do.end190.i:                                      ; preds = %snic_queue_abort_req.exit.i
  %80 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %shost26, align 16
  %shost_gendev192.i = getelementptr inbounds %struct.Scsi_Host, ptr %81, i32 0, i32 49
  %82 = ptrtoint ptr %tag.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tag.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev192.i, ptr noundef nonnull @.str.431, i32 noundef %83, i32 noundef %call7.i.i) #10
  %call203.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i121) #7
  %84 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp210.i = icmp eq i32 %85, 2
  br i1 %cmp210.i, label %if.then212.i, label %do.end190.i.do.body242.i_crit_edge

do.end190.i.do.body242.i_crit_edge:               ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body242.i

if.then212.i:                                     ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %44, ptr %state.i, align 8
  br label %do.body242.i

do.body218.i:                                     ; preds = %snic_queue_abort_req.exit.i
  %call225.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i121) #7
  %87 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %flags14.i, align 8
  %and232.i = and i64 %88, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and232.i)
  %tobool233.not.i = icmp eq i64 %and232.i, 0
  br i1 %tobool233.not.i, label %if.else.i, label %if.then234.i

if.then234.i:                                     ; preds = %do.body218.i
  call void @__sanitizer_cov_trace_pc() #9
  %or237.i = or i64 %88, 262144
  %89 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %or237.i, ptr %flags14.i, align 8
  br label %do.body242.i

if.else.i:                                        ; preds = %do.body218.i
  call void @__sanitizer_cov_trace_pc() #9
  %or240.i = or i64 %88, 8192
  %90 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %or240.i, ptr %flags14.i, align 8
  br label %do.body242.i

do.body242.i:                                     ; preds = %if.else.i, %if.then234.i, %if.then212.i, %do.end190.i.do.body242.i_crit_edge, %do.end55.i, %do.body42.i.do.body242.i_crit_edge, %do.end30.i, %do.body21.i.do.body242.i_crit_edge, %if.end.i124.do.body242.i_crit_edge, %if.end44.do.body242.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end.i124.do.body242.i_crit_edge ], [ %call7.i.i, %if.then212.i ], [ %call7.i.i, %do.end190.i.do.body242.i_crit_edge ], [ 0, %do.end55.i ], [ 0, %do.body42.i.do.body242.i_crit_edge ], [ 0, %do.end30.i ], [ 0, %do.body21.i.do.body242.i_crit_edge ], [ 0, %if.end44.do.body242.i_crit_edge ], [ 8194, %if.else.i ], [ 8194, %if.then234.i ]
  %flags.0.i = phi i32 [ %call3.i, %if.end.i124.do.body242.i_crit_edge ], [ %call203.i, %if.then212.i ], [ %call203.i, %do.end190.i.do.body242.i_crit_edge ], [ %call3.i, %do.end55.i ], [ %call3.i, %do.body42.i.do.body242.i_crit_edge ], [ %call3.i, %do.end30.i ], [ %call3.i, %do.body21.i.do.body242.i_crit_edge ], [ %call3.i, %if.end44.do.body242.i_crit_edge ], [ %call225.i, %if.else.i ], [ %call225.i, %if.then234.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %91 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool244.not.i = icmp eq i32 %91, 0
  br i1 %tobool244.not.i, label %do.body242.i.snic_internal_abort_io.exit_crit_edge, label %land.rhs245.i

do.body242.i.snic_internal_abort_io.exit_crit_edge: ; preds = %do.body242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_internal_abort_io.exit

land.rhs245.i:                                    ; preds = %do.body242.i
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %arrayidx.i.i121, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp247.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp247.not.i, label %do.end267.i, label %land.rhs245.i.snic_internal_abort_io.exit_crit_edge, !prof !734

land.rhs245.i.snic_internal_abort_io.exit_crit_edge: ; preds = %land.rhs245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_internal_abort_io.exit

do.end267.i:                                      ; preds = %land.rhs245.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2597, i32 noundef 9, ptr noundef null) #7
  br label %snic_internal_abort_io.exit

snic_internal_abort_io.exit:                      ; preds = %do.end267.i, %land.rhs245.i.snic_internal_abort_io.exit_crit_edge, %do.body242.i.snic_internal_abort_io.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i121, i32 noundef %flags.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp46 = icmp slt i32 %ret.0.i, 0
  br i1 %cmp46, label %do.end51, label %if.end54

do.end51:                                         ; preds = %snic_internal_abort_io.exit
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %shost26 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %shost26, align 16
  %shost_gendev53 = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev53, ptr noundef nonnull @.str.61, i32 noundef %tag.0132, i32 noundef %ret.0.i) #10
  br label %for.inc

if.end54:                                         ; preds = %snic_internal_abort_io.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8194, i32 %ret.0.i)
  %cmp55 = icmp eq i32 %ret.0.i, 8194
  %inc = zext i1 %cmp55 to i32
  %spec.select = add i32 %abt_cnt.0135, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %do.end51, %if.end30.for.inc_crit_edge, %if.then29
  %abt_cnt.1 = phi i32 [ %abt_cnt.0135, %do.end51 ], [ %abt_cnt.0135, %if.then29 ], [ %spec.select, %if.end54 ], [ %abt_cnt.0135, %if.end30.for.inc_crit_edge ]
  %inc59 = add nuw i32 %tag.0132, 1
  %94 = ptrtoint ptr %max_tag_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_tag_id, align 4
  %cmp15 = icmp ult i32 %inc59, %95
  br i1 %cmp15, label %for.inc.if.end.i_crit_edge, label %for.inc.do.body60_crit_edge

for.inc.do.body60_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body60

for.inc.if.end.i_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body60:                                        ; preds = %for.inc.do.body60_crit_edge, %do.end12.do.body60_crit_edge
  %abt_cnt.0.lcssa = phi i32 [ 0, %do.end12.do.body60_crit_edge ], [ %abt_cnt.1, %for.inc.do.body60_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %96 = load i32, ptr @snic_log_level, align 4
  %and61 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %do.end73, !prof !728

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end73:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %shost74 = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 1, i32 13, i32 6
  %97 = ptrtoint ptr %shost74 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %shost74, align 16
  %shost_gendev75 = getelementptr inbounds %struct.Scsi_Host, ptr %98, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev75, ptr noundef nonnull @.str.64, i32 noundef %abt_cnt.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.body60.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %do.end73 ], [ 0, %do.body60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_tgt_dev_release(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_dma_map(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_dma_unmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_release_req_buf(ptr noundef %snic, ptr noundef %rqi, ptr noundef %sc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 1
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 8
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.443)
  switch i32 %3, label %lor.lhs.false5 [
    i32 6, label %entry.do.body99_crit_edge
    i32 3, label %entry.do.body99_crit_edge192
  ]

entry.do.body99_crit_edge192:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

entry.do.body99_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

lor.lhs.false5:                                   ; preds = %entry
  %flags = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %7 = and i64 %6, 100933632
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %8 = icmp ne i64 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp25 = icmp eq i32 %3, 5
  %or.cond187 = select i1 %8, i1 true, i1 %cmp25
  br i1 %or.cond187, label %lor.lhs.false5.do.body99_crit_edge, label %do.end

lor.lhs.false5.do.body99_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

do.end:                                           ; preds = %lor.lhs.false5
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i32 noundef 140) #10
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.444)
  switch i32 %10, label %lor.lhs.false34 [
    i32 6, label %do.end.do.body99_crit_edge
    i32 3, label %do.end.do.body99_crit_edge193
  ]

do.end.do.body99_crit_edge193:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

do.end.do.body99_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

lor.lhs.false34:                                  ; preds = %do.end
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %flags, align 8
  %14 = and i64 %13, 100933632
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %15 = icmp eq i64 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp56 = icmp ne i32 %10, 5
  %or.cond191 = select i1 %15, i1 %cmp56, i1 false
  br i1 %or.cond191, label %land.rhs, label %lor.lhs.false34.do.body99_crit_edge

lor.lhs.false34.do.body99_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

land.rhs:                                         ; preds = %lor.lhs.false34
  %.b158 = load i1, ptr @snic_release_req_buf.__already_done, align 1
  br i1 %.b158, label %land.rhs.do.body99_crit_edge, label %if.then65, !prof !728

land.rhs.do.body99_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

if.then65:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_release_req_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 140, i32 noundef 9, ptr noundef null) #7
  br label %do.body99

do.body99:                                        ; preds = %if.then65, %land.rhs.do.body99_crit_edge, %lor.lhs.false34.do.body99_crit_edge, %do.end.do.body99_crit_edge, %do.end.do.body99_crit_edge193, %lor.lhs.false5.do.body99_crit_edge, %entry.do.body99_crit_edge, %entry.do.body99_crit_edge192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %16 = load i32, ptr @snic_log_level, align 4
  %and100 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.do.end124_crit_edge, label %do.end112, !prof !728

do.body99.do.end124_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end124

do.end112:                                        ; preds = %do.body99
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %17 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %18, i32 0, i32 49
  %tag = getelementptr i8, ptr %sc, i32 -172
  %19 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tag, align 4
  %21 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req1, align 8
  %abort_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 13
  %23 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %abort_req, align 8
  %dr_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 15
  %25 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dr_req, align 8
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %cmp.i = icmp ugt i32 %28, 6
  br i1 %cmp.i, label %do.end112.snic_ioreq_state_to_str.exit_crit_edge, label %if.end.i

do.end112.snic_ioreq_state_to_str.exit_crit_edge: ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_ioreq_state_to_str.exit

if.end.i:                                         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [7 x ptr], ptr @snic_req_state_str, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  br label %snic_ioreq_state_to_str.exit

snic_ioreq_state_to_str.exit:                     ; preds = %if.end.i, %do.end112.snic_ioreq_state_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ @.str.5, %do.end112.snic_ioreq_state_to_str.exit_crit_edge ]
  %flags119 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %31 = ptrtoint ptr %flags119 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %flags119, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.84, ptr noundef %sc, i32 noundef %20, ptr noundef %rqi, ptr noundef %22, ptr noundef %24, ptr noundef %26, ptr noundef %retval.0.i, i64 noundef %32) #10
  br label %do.end124

do.end124:                                        ; preds = %snic_ioreq_state_to_str.exit, %do.body99.do.end124_crit_edge
  %sense_addr = getelementptr inbounds %struct.snic_host_req, ptr %1, i32 0, i32 2, i32 0, i32 11
  %33 = ptrtoint ptr %sense_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sense_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool125.not = icmp eq i64 %34, 0
  br i1 %tobool125.not, label %do.end124.if.end129_crit_edge, label %if.then126

do.end124.if.end129_crit_edge:                    ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then126:                                       ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %37 = tail call i64 @llvm.bswap.i64(i64 %34)
  %conv = trunc i64 %37 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef 96, i32 noundef 2, i32 noundef 0) #7
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %do.end124.if.end129_crit_edge
  tail call void @scsi_dma_unmap(ptr noundef %sc) #7
  tail call void @snic_req_free(ptr noundef %snic, ptr noundef %rqi) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @int_to_scsilun(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_queue_wq_desc(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_req_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_priv(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_print_desc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_io_exch_ver_cmpl_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_report_tgt_cmpl_handler(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_print_command(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_calc_io_process_time(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snic_issue_tm_req(ptr noundef %snic, ptr noundef %rqi, ptr noundef %sc, i32 noundef %tmf) unnamed_addr #1 align 64 {
entry:
  %lun.i = alloca %struct.scsi_lun, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tag1 = getelementptr i8, ptr %sc, i32 -172
  %0 = ptrtoint ptr %tag1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tag1, align 4
  %call2 = tail call i32 @snic_get_state(ptr noundef %snic) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2)
  %cmp = icmp eq i32 %call2, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ios_inflight = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 28
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ios_inflight, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ios_inflight, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_inflight, ptr %ios_inflight, i32 1, ptr elementtype(i32) %ios_inflight) #7, !srcloc !727
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %3 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.end12_crit_edge, label %do.end, !prof !728

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.307, i32 noundef %tmf, ptr noundef %rqi, i32 noundef %1) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end.do.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %tmf)
  %cmp13 = icmp eq i32 %tmf, 5
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call ptr @snic_dr_req_init(ptr noundef %snic, ptr noundef %rqi) #7
  br label %if.end17

if.else:                                          ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call ptr @snic_abort_req_init(ptr noundef %snic, ptr noundef %rqi) #7
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %tmreq.0 = phi ptr [ %call15, %if.then14 ], [ %call16, %if.else ]
  %req_id.0 = phi i32 [ -1, %if.then14 ], [ %1, %if.else ]
  %tobool18.not = icmp eq ptr %tmreq.0, null
  br i1 %tobool18.not, label %if.end17.do.end26_crit_edge, label %if.end20

if.end17.do.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

if.end20:                                         ; preds = %if.end17
  %init_ctx.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %init_ctx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %init_ctx.i, align 8
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lun.i) #7
  %9 = ptrtoint ptr %lun.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %lun.i, align 8
  %10 = ptrtoint ptr %tag1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tag1, align 4
  %tm_tag1.i = getelementptr inbounds %struct.snic_req_info, ptr %8, i32 0, i32 6
  %12 = ptrtoint ptr %tm_tag1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_tag1.i, align 8
  %or.i = or i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end20.if.end45.i_crit_edge

if.end20.if.end45.i_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

do.end.i:                                         ; preds = %if.end20
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.315, i32 noundef 1315) #10
  %.b175.i = load i1, ptr @snic_queue_itmf_req.__already_done, align 1
  br i1 %.b175.i, label %do.end.i.if.end45thread-pre-split.i_crit_edge, label %if.then12.i, !prof !728

do.end.i.if.end45thread-pre-split.i_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45thread-pre-split.i

if.then12.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_queue_itmf_req.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1315, i32 noundef 9, ptr noundef null) #7
  br label %if.end45thread-pre-split.i

if.end45thread-pre-split.i:                       ; preds = %if.then12.i, %do.end.i.if.end45thread-pre-split.i_crit_edge
  %14 = ptrtoint ptr %tm_tag1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %tm_tag1.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45thread-pre-split.i, %if.end20.if.end45.i_crit_edge
  %15 = phi i32 [ %.pr.i, %if.end45thread-pre-split.i ], [ %13, %if.end20.if.end45.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool47.not.i = icmp eq i32 %15, 0
  br i1 %tobool47.not.i, label %do.end51.i, label %if.end45.i.if.end111.i_crit_edge

if.end45.i.if.end111.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

do.end51.i:                                       ; preds = %if.end45.i
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.315, i32 noundef 1316) #10
  %16 = ptrtoint ptr %tm_tag1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_tag1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool56.not.i = icmp eq i32 %17, 0
  br i1 %tobool56.not.i, label %land.rhs65.i, label %do.end51.i.if.end111.i_crit_edge

do.end51.i.if.end111.i_crit_edge:                 ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

land.rhs65.i:                                     ; preds = %do.end51.i
  %.b174176.i = load i1, ptr @snic_queue_itmf_req.__already_done.320, align 1
  br i1 %.b174176.i, label %land.rhs65.i.if.end111.i_crit_edge, label %if.then76.i, !prof !728

land.rhs65.i.if.end111.i_crit_edge:               ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end111.i

if.then76.i:                                      ; preds = %land.rhs65.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @snic_queue_itmf_req.__already_done.320, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1316, i32 noundef 9, ptr noundef null) #7
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then76.i, %land.rhs65.i.if.end111.i_crit_edge, %do.end51.i.if.end111.i_crit_edge, %if.end45.i.if.end111.i_crit_edge
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %sc, i32 0, i32 1
  %18 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device.i, align 4
  %lun112.i = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %lun112.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %lun112.i, align 8
  call void @int_to_scsilun(i64 noundef %21, ptr noundef nonnull %lun.i) #7
  %hid.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 11
  %22 = ptrtoint ptr %hid.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hid.i, align 1
  %conv.i = zext i8 %23 to i32
  %tgt_id.i = getelementptr inbounds %struct.snic_req_info, ptr %8, i32 0, i32 5
  %24 = ptrtoint ptr %tgt_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tgt_id.i, align 4
  %conv113.i = zext i32 %25 to i64
  %conv114.i = trunc i32 %tmf to i8
  %hdr.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1
  %type.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %type.i.i.i, align 4
  %status1.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %status1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %status1.i.i.i, align 1
  %protocol.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %protocol.i.i.i, align 2
  %29 = shl nuw i32 %conv.i, 24
  %30 = ptrtoint ptr %hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hdr.i.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %cmnd_id.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %cmnd_id.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cmnd_id.i.i.i, align 4
  %sg_cnt3.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %sg_cnt3.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %sg_cnt3.i.i.i, align 4
  %34 = ptrtoint ptr %init_ctx.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %7, ptr %init_ctx.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %flags.i.i.i, align 1
  %u.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 2
  %36 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv114.i, ptr %u.i.i, align 8
  %flags3.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags3.i.i, align 2
  %38 = call i32 @llvm.bswap.i32(i32 %req_id.0) #7
  %req_id5.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 2, i32 0, i32 2
  %39 = ptrtoint ptr %req_id5.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %req_id5.i.i, align 4
  %40 = call i64 @llvm.bswap.i64(i64 %conv113.i) #7
  %tgt_id7.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %tgt_id7.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %tgt_id7.i.i, align 8
  %lun_id.i.i = getelementptr inbounds %struct.snic_host_req, ptr %tmreq.0, i32 0, i32 2, i32 0, i32 4
  %42 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %lun.i, align 8
  %44 = ptrtoint ptr %lun_id.i.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %lun_id.i.i, align 8
  %call115.i = call i32 @snic_queue_wq_desc(ptr noundef %snic, ptr noundef nonnull %tmreq.0, i16 noundef zeroext 136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %do.body123.i, label %tmreq_err

do.body123.i:                                     ; preds = %if.end111.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %45 = load i32, ptr @snic_log_level, align 4
  %and.i = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool124.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool124.not.i, label %do.body123.i.do.body30_crit_edge, label %do.end135.i, !prof !728

do.body123.i.do.body30_crit_edge:                 ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30

do.end135.i:                                      ; preds = %do.body123.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost136.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %46 = ptrtoint ptr %shost136.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %shost136.i, align 16
  %shost_gendev137.i = getelementptr inbounds %struct.Scsi_Host, ptr %47, i32 0, i32 49
  %48 = ptrtoint ptr %tag1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tag1, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev137.i, ptr noundef nonnull @.str.325, i32 noundef %tmf, ptr noundef %sc, ptr noundef %8, i32 noundef %req_id.0, i32 noundef %49) #10
  br label %do.body30

tmreq_err:                                        ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #9
  %shost.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %50 = ptrtoint ptr %shost.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %shost.i, align 16
  %shost_gendev.i = getelementptr inbounds %struct.Scsi_Host, ptr %51, i32 0, i32 49
  %52 = ptrtoint ptr %tag1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tag1, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev.i, ptr noundef nonnull @.str.322, i32 noundef %tmf, ptr noundef %sc, ptr noundef %8, i32 noundef %req_id.0, i32 noundef %53, i32 noundef %call115.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun.i) #7
  br label %do.end26

do.end26:                                         ; preds = %tmreq_err, %if.end17.do.end26_crit_edge
  %ret.086 = phi i32 [ %call115.i, %tmreq_err ], [ -12, %if.end17.do.end26_crit_edge ]
  %shost27 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %54 = ptrtoint ptr %shost27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %shost27, align 16
  %shost_gendev28 = getelementptr inbounds %struct.Scsi_Host, ptr %55, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev28, ptr noundef nonnull @.str.310, i32 noundef %tmf, ptr noundef %sc, ptr noundef %rqi, i32 noundef %req_id.0, i32 noundef %1, i32 noundef %ret.086) #10
  br label %if.end51

do.body30:                                        ; preds = %do.end135.i, %do.body123.i.do.body30_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lun.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %56 = load i32, ptr @snic_log_level, align 4
  %and31 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.if.end51_crit_edge, label %do.end43, !prof !728

do.body30.if.end51_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end43:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %shost44 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %57 = ptrtoint ptr %shost44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %shost44, align 16
  %shost_gendev45 = getelementptr inbounds %struct.Scsi_Host, ptr %58, i32 0, i32 49
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev45, ptr noundef nonnull @.str.313, i32 noundef %tmf, ptr noundef %sc, ptr noundef %rqi, i32 noundef %req_id.0, i32 noundef %1) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end43, %do.body30.if.end51_crit_edge, %do.end26
  %ret.087 = phi i32 [ 0, %do.body30.if.end51_crit_edge ], [ 0, %do.end43 ], [ %ret.086, %do.end26 ]
  %call.i.i83 = call zeroext i1 @__kasan_check_write(ptr noundef %ios_inflight, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %ios_inflight, i32 1, i32 3, i32 1) #7
  %59 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ios_inflight, ptr %ios_inflight, i32 1, ptr elementtype(i32) %ios_inflight) #7, !srcloc !730
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.087, %if.end51 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_dr_req_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_abort_req_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_get_trc_buf() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_cmpl_pending_tmreq(ptr nocapture noundef readonly %snic, ptr noundef %sc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %0 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !728

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %entry
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %1 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 49
  %state = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %4)
  %cmp.i = icmp ugt i32 %4, 19
  br i1 %cmp.i, label %do.end.snic_io_status_to_str.exit_crit_edge, label %if.end.i

do.end.snic_io_status_to_str.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snic_io_status_to_str.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [20 x ptr], ptr @snic_io_status_str, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  br label %snic_io_status_to_str.exit

snic_io_status_to_str.exit:                       ; preds = %if.end.i, %do.end.snic_io_status_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ @.str.5, %do.end.snic_io_status_to_str.exit_crit_edge ]
  %flags = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %flags, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.16, ptr noundef %shost_gendev, ptr noundef nonnull @.str.415, ptr noundef %sc, ptr noundef %retval.0.i, i64 noundef %8) #10
  br label %do.end10

do.end10:                                         ; preds = %snic_io_status_to_str.exit, %entry.do.end10_crit_edge
  %add.ptr.i36 = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1
  %abts_status = getelementptr %struct.scsi_cmnd, ptr %sc, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %abts_status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %abts_status, align 4
  %10 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i36, align 8
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %do.end10.cleanup_crit_edge, label %if.end16

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end10
  %dr_done = getelementptr inbounds %struct.snic_req_info, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %dr_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dr_done, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %if.else, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end16
  %abts_done = getelementptr inbounds %struct.snic_req_info, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %abts_done to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %abts_done, align 4
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.end16.cleanup.sink.split_crit_edge ], [ %15, %if.else.cleanup.sink.split_crit_edge ]
  tail call void @complete(ptr noundef nonnull %.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %do.end10.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 357)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 357)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !310, !311, !312, !314, !316, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !386, !388, !389, !390, !392, !393, !394, !396, !397, !398, !400, !402, !403, !404, !406, !407, !408, !409, !411, !412, !413, !415, !416, !417, !418, !420, !421, !422, !423, !425, !426, !427, !428, !430, !431, !432, !433, !435, !436, !437, !439, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !490, !492, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !512, !513, !514, !515, !517, !518, !519, !520, !522, !523, !524, !526, !527, !528, !530, !531, !532, !533, !534, !536, !537, !538, !539, !541, !542, !543, !545, !546, !547, !549, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !564, !565, !566, !567, !569, !570, !571, !573, !574, !575, !576, !578, !579, !580, !582, !583, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !597, !599, !600, !601, !603, !604, !605, !606, !608, !609, !610, !612, !613, !614, !616, !617, !618, !619, !621, !622, !623, !625, !626, !627, !628, !630, !631, !632, !634, !635, !636, !638, !639, !640, !642, !643, !644, !645, !647, !648, !649, !650, !652, !653, !654, !655, !657, !658, !659, !661, !662, !663, !665, !666, !667, !669, !670, !671, !673, !674, !675, !676, !678, !679, !680, !682, !683, !684, !686, !687, !688, !690, !691, !692, !693, !695, !696, !697, !698, !700, !701, !702, !704, !705, !706, !708, !709, !710, !712, !713, !714, !716, !717}
!llvm.module.flags = !{!718, !719, !720, !721, !722, !723, !724, !725}
!llvm.ident = !{!726}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 39, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 40, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 41, i32 18}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 42, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 43, i32 19}
!10 = !{ptr @snic_state_str, !11, !"snic_state_str", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 38, i32 13}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 86, i32 10}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 342, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @snic_queuecommand._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @snic_queuecommand._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 351, i32 3}
!24 = !{ptr @snic_queuecommand._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @snic_queuecommand._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 358, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @snic_queuecommand._entry.14, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @snic_queuecommand._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 363, i32 3}
!33 = !{ptr @snic_queuecommand._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @snic_queuecommand._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1635, i32 2}
!37 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @snic_abort_cmd._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @snic_abort_cmd._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1639, i32 3}
!42 = !{ptr @snic_abort_cmd._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @snic_abort_cmd._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1659, i32 2}
!46 = !{ptr @snic_abort_cmd._entry.26, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @snic_abort_cmd._entry_ptr.28, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2151, i32 2}
!53 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @snic_device_reset._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @snic_device_reset._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2157, i32 3}
!58 = !{ptr @snic_device_reset._entry.34, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @snic_device_reset._entry_ptr.36, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2165, i32 3}
!62 = !{ptr @snic_device_reset._entry.37, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @snic_device_reset._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2172, i32 3}
!66 = !{ptr @snic_device_reset._entry.40, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @snic_device_reset._entry_ptr.42, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.44, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2191, i32 3}
!70 = !{ptr @snic_device_reset._entry.43, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @snic_device_reset._entry_ptr.45, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.47, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2207, i32 2}
!74 = !{ptr @snic_device_reset._entry.46, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @snic_device_reset._entry_ptr.48, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.49, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2335, i32 3}
!78 = !{ptr @.str.50, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @snic_reset._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @snic_reset._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2353, i32 3}
!83 = !{ptr @snic_reset._entry.51, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @snic_reset._entry_ptr.53, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.54, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2385, i32 2}
!87 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @snic_host_reset._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @snic_host_reset._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2512, i32 2}
!92 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @snic_shutdown_scsi_cleanup._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @snic_shutdown_scsi_cleanup._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2620, i32 2}
!97 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @snic_tgt_scsi_abort_io._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @snic_tgt_scsi_abort_io._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.61, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2648, i32 4}
!102 = !{ptr @snic_tgt_scsi_abort_io._entry.60, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @snic_tgt_scsi_abort_io._entry_ptr.62, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.64, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2659, i32 2}
!106 = !{ptr @snic_tgt_scsi_abort_io._entry.63, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @snic_tgt_scsi_abort_io._entry_ptr.65, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @__func__.snic_issue_scsi_req, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 256, i32 3}
!110 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 259, i32 3}
!112 = !{ptr @snic_issue_scsi_req._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @snic_issue_scsi_req._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 286, i32 3}
!116 = !{ptr @snic_issue_scsi_req._entry.67, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @snic_issue_scsi_req._entry_ptr.69, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.71, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 313, i32 3}
!120 = !{ptr @snic_issue_scsi_req._entry.70, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @snic_issue_scsi_req._entry_ptr.72, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.73, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 193, i32 3}
!124 = !{ptr @.str.74, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @snic_queue_icmnd_req._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @snic_queue_icmnd_req._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 227, i32 3}
!129 = !{ptr @snic_queue_icmnd_req._entry.75, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @snic_queue_icmnd_req._entry_ptr.77, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!133 = !{ptr @.str.78, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.79, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 134, i32 2}
!137 = !{ptr @.str.81, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @snic_release_req_buf._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @snic_release_req_buf._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.82, !136, !"<string literal>", i1 false, i1 false}
!141 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!142 = !{ptr @.str.84, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 142, i32 2}
!144 = !{ptr @snic_release_req_buf._entry.83, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @snic_release_req_buf._entry_ptr.85, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.86, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 47, i32 28}
!148 = !{ptr @.str.87, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 48, i32 25}
!150 = !{ptr @.str.88, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 49, i32 30}
!152 = !{ptr @.str.89, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 50, i32 31}
!154 = !{ptr @.str.90, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 51, i32 28}
!156 = !{ptr @.str.91, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 52, i32 29}
!158 = !{ptr @.str.92, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 53, i32 26}
!160 = !{ptr @snic_req_state_str, !161, !"snic_req_state_str", i1 false, i1 false}
!161 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 46, i32 27}
!162 = !{ptr @__func__.snic_io_cmpl_handler, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1204, i32 18}
!164 = !{ptr @snic_io_cmpl_handler._entry, !165, !"_entry", i1 false, i1 false}
!165 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1211, i32 2}
!166 = !{ptr @snic_io_cmpl_handler._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!168 = distinct !{null, !165, !"__already_done", i1 false, i1 false}
!169 = !{ptr @.str.95, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1217, i32 3}
!171 = !{ptr @snic_io_cmpl_handler._entry.94, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @snic_io_cmpl_handler._entry_ptr.96, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.98, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1222, i32 3}
!175 = !{ptr @snic_io_cmpl_handler._entry.97, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @snic_io_cmpl_handler._entry_ptr.99, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @snic_io_cmpl_handler._entry.100, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1257, i32 3}
!179 = !{ptr @snic_io_cmpl_handler._entry_ptr.101, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.102, !178, !"<string literal>", i1 false, i1 false}
!181 = distinct !{null, !178, !"__already_done", i1 false, i1 false}
!182 = !{ptr @.str.105, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1258, i32 3}
!184 = !{ptr @snic_io_cmpl_handler._entry.104, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @snic_io_cmpl_handler._entry_ptr.106, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 562, i32 2}
!188 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @snic_icmnd_cmpl_handler._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.110, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 567, i32 3}
!193 = !{ptr @snic_icmnd_cmpl_handler._entry.109, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.111, !192, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 574, i32 2}
!197 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 578, i32 3}
!199 = !{ptr @snic_icmnd_cmpl_handler._entry.112, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.114, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 596, i32 2}
!203 = !{ptr @snic_icmnd_cmpl_handler._entry.115, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.117, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @snic_icmnd_cmpl_handler._entry.118, !206, !"_entry", i1 false, i1 false}
!206 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 607, i32 2}
!207 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.119, !206, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.120, !206, !"<string literal>", i1 false, i1 false}
!209 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!210 = distinct !{null, !211, !"__already_done", i1 false, i1 false}
!211 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 608, i32 2}
!212 = !{ptr @.str.124, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 614, i32 3}
!214 = !{ptr @snic_icmnd_cmpl_handler._entry.123, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.125, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.127, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 641, i32 3}
!218 = !{ptr @snic_icmnd_cmpl_handler._entry.126, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.128, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.130, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 657, i32 3}
!222 = !{ptr @snic_icmnd_cmpl_handler._entry.129, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @snic_icmnd_cmpl_handler._entry_ptr.131, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.132, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 58, i32 27}
!226 = !{ptr @.str.133, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 59, i32 28}
!228 = !{ptr @.str.134, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 60, i32 27}
!230 = !{ptr @.str.135, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 61, i32 29}
!232 = !{ptr @.str.136, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 62, i32 28}
!234 = !{ptr @.str.137, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 63, i32 29}
!236 = !{ptr @.str.138, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 64, i32 24}
!238 = !{ptr @.str.139, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 65, i32 24}
!240 = !{ptr @.str.140, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 66, i32 28}
!242 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 67, i32 34}
!244 = !{ptr @.str.142, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 68, i32 23}
!246 = !{ptr @.str.143, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 69, i32 28}
!248 = !{ptr @.str.144, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 70, i32 26}
!250 = !{ptr @.str.145, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 71, i32 35}
!252 = !{ptr @.str.146, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 72, i32 28}
!254 = !{ptr @.str.147, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 73, i32 28}
!256 = !{ptr @.str.148, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 74, i32 27}
!258 = !{ptr @.str.149, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 75, i32 25}
!260 = !{ptr @.str.150, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 76, i32 26}
!262 = !{ptr @.str.151, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 77, i32 28}
!264 = !{ptr @snic_io_status_str, !265, !"snic_io_status_str", i1 false, i1 false}
!265 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 57, i32 27}
!266 = !{ptr @.str.152, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 388, i32 3}
!268 = !{ptr @snic_proc_tmreq_pending_state._entry, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @snic_proc_tmreq_pending_state._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!270 = distinct !{null, !267, !"__already_done", i1 false, i1 false}
!271 = !{ptr @snic_proc_tmreq_pending_state._entry.153, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 400, i32 3}
!273 = !{ptr @snic_proc_tmreq_pending_state._entry_ptr.154, !272, !"_entry_ptr", i1 false, i1 false}
!274 = distinct !{null, !272, !"__already_done", i1 false, i1 false}
!275 = !{ptr @.str.156, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 530, i32 3}
!277 = !{ptr @.str.157, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @snic_process_icmnd_cmpl_status._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @snic_process_icmnd_cmpl_status._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.158, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 468, i32 3}
!282 = !{ptr @.str.159, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @snic_process_io_failed_state._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @snic_process_io_failed_state._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.161, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 474, i32 2}
!287 = !{ptr @snic_process_io_failed_state._entry.160, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @snic_process_io_failed_state._entry_ptr.162, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.163, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 929, i32 2}
!291 = !{ptr @.str.164, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @snic_itmf_cmpl_handler._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @snic_itmf_cmpl_handler._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.166, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 934, i32 2}
!296 = !{ptr @snic_itmf_cmpl_handler._entry.165, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @snic_itmf_cmpl_handler._entry_ptr.167, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.169, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 947, i32 3}
!300 = !{ptr @snic_itmf_cmpl_handler._entry.168, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @snic_itmf_cmpl_handler._entry_ptr.170, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @snic_itmf_cmpl_handler._entry.171, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 950, i32 3}
!304 = !{ptr @snic_itmf_cmpl_handler._entry_ptr.172, !303, !"_entry_ptr", i1 false, i1 false}
!305 = distinct !{null, !303, !"__already_done", i1 false, i1 false}
!306 = distinct !{null, !307, !"__already_done", i1 false, i1 false}
!307 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 956, i32 2}
!308 = !{ptr @.str.175, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 961, i32 3}
!310 = !{ptr @snic_itmf_cmpl_handler._entry.174, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @snic_itmf_cmpl_handler._entry_ptr.176, !309, !"_entry_ptr", i1 false, i1 false}
!312 = distinct !{null, !313, !"__already_done", i1 false, i1 false}
!313 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 793, i32 2}
!314 = !{ptr @.str.177, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 799, i32 3}
!316 = !{ptr @.str.178, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @snic_process_itmf_cmpl._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @snic_process_itmf_cmpl._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.180, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 829, i32 3}
!321 = !{ptr @snic_process_itmf_cmpl._entry.179, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @snic_process_itmf_cmpl._entry_ptr.181, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.183, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 849, i32 3}
!325 = !{ptr @snic_process_itmf_cmpl._entry.182, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @snic_process_itmf_cmpl._entry_ptr.184, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.186, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 881, i32 3}
!329 = !{ptr @snic_process_itmf_cmpl._entry.185, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @snic_process_itmf_cmpl._entry_ptr.187, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.189, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 895, i32 3}
!333 = !{ptr @snic_process_itmf_cmpl._entry.188, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @snic_process_itmf_cmpl._entry_ptr.190, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.192, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 898, i32 3}
!337 = !{ptr @snic_process_itmf_cmpl._entry.191, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @snic_process_itmf_cmpl._entry_ptr.193, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @snic_process_itmf_cmpl._entry.194, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 904, i32 3}
!341 = !{ptr @snic_process_itmf_cmpl._entry_ptr.195, !340, !"_entry_ptr", i1 false, i1 false}
!342 = distinct !{null, !340, !"__already_done", i1 false, i1 false}
!343 = !{ptr @.str.197, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 751, i32 2}
!345 = !{ptr @.str.198, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @snic_update_abort_stats._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @snic_update_abort_stats._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.199, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 696, i32 2}
!350 = !{ptr @.str.200, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @snic_proc_dr_cmpl_locked._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @snic_proc_dr_cmpl_locked._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.202, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 706, i32 3}
!355 = !{ptr @snic_proc_dr_cmpl_locked._entry.201, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @snic_proc_dr_cmpl_locked._entry_ptr.203, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.205, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 721, i32 3}
!359 = !{ptr @snic_proc_dr_cmpl_locked._entry.204, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @snic_proc_dr_cmpl_locked._entry_ptr.206, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.208, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 733, i32 2}
!363 = !{ptr @snic_proc_dr_cmpl_locked._entry.207, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @snic_proc_dr_cmpl_locked._entry_ptr.209, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.210, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1013, i32 2}
!367 = !{ptr @.str.211, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @snic_hba_reset_cmpl_handler._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.213, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1017, i32 2}
!372 = !{ptr @snic_hba_reset_cmpl_handler._entry.212, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.214, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.216, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1024, i32 3}
!376 = !{ptr @snic_hba_reset_cmpl_handler._entry.215, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.217, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.219, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1033, i32 3}
!380 = !{ptr @snic_hba_reset_cmpl_handler._entry.218, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.220, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @snic_hba_reset_cmpl_handler._entry.221, !383, !"_entry", i1 false, i1 false}
!383 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1036, i32 3}
!384 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.222, !383, !"_entry_ptr", i1 false, i1 false}
!385 = distinct !{null, !383, !"__already_done", i1 false, i1 false}
!386 = !{ptr @.str.224, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1045, i32 3}
!388 = !{ptr @snic_hba_reset_cmpl_handler._entry.223, !387, !"_entry", i1 false, i1 false}
!389 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.225, !387, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.227, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1053, i32 2}
!392 = !{ptr @snic_hba_reset_cmpl_handler._entry.226, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.228, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.230, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1062, i32 3}
!396 = !{ptr @snic_hba_reset_cmpl_handler._entry.229, !395, !"_entry", i1 false, i1 false}
!397 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.231, !395, !"_entry_ptr", i1 false, i1 false}
!398 = distinct !{null, !399, !"__already_done", i1 false, i1 false}
!399 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1070, i32 2}
!400 = !{ptr @.str.234, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1076, i32 3}
!402 = !{ptr @snic_hba_reset_cmpl_handler._entry.233, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.235, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @snic_hba_reset_cmpl_handler._entry.236, !405, !"_entry", i1 false, i1 false}
!405 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1091, i32 2}
!406 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.237, !405, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.238, !405, !"<string literal>", i1 false, i1 false}
!408 = distinct !{null, !405, !"__already_done", i1 false, i1 false}
!409 = !{ptr @.str.241, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1112, i32 2}
!411 = !{ptr @snic_hba_reset_cmpl_handler._entry.240, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @snic_hba_reset_cmpl_handler._entry_ptr.242, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.243, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 979, i32 2}
!415 = !{ptr @.str.244, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @snic_hba_reset_scsi_cleanup._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @snic_hba_reset_scsi_cleanup._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.245, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1121, i32 2}
!420 = !{ptr @.str.246, !419, !"<string literal>", i1 false, i1 false}
!421 = !{ptr @snic_msg_ack_handler._entry, !419, !"_entry", i1 false, i1 false}
!422 = !{ptr @snic_msg_ack_handler._entry_ptr, !419, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.248, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1123, i32 2}
!425 = !{ptr @snic_msg_ack_handler._entry.247, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @snic_msg_ack_handler._entry_ptr.249, !424, !"_entry_ptr", i1 false, i1 false}
!427 = distinct !{null, !424, !"__already_done", i1 false, i1 false}
!428 = !{ptr @.str.250, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1136, i32 2}
!430 = !{ptr @.str.251, !429, !"<string literal>", i1 false, i1 false}
!431 = !{ptr @snic_aen_handler._entry, !429, !"_entry", i1 false, i1 false}
!432 = !{ptr @snic_aen_handler._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @.str.253, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1144, i32 3}
!435 = !{ptr @snic_aen_handler._entry.252, !434, !"_entry", i1 false, i1 false}
!436 = !{ptr @snic_aen_handler._entry_ptr.254, !434, !"_entry_ptr", i1 false, i1 false}
!437 = !{ptr @.str.256, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1148, i32 3}
!439 = !{ptr @snic_aen_handler._entry.255, !438, !"_entry", i1 false, i1 false}
!440 = !{ptr @snic_aen_handler._entry_ptr.257, !438, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.259, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1152, i32 3}
!443 = !{ptr @snic_aen_handler._entry.258, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @snic_aen_handler._entry_ptr.260, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.262, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1156, i32 3}
!447 = !{ptr @snic_aen_handler._entry.261, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @snic_aen_handler._entry_ptr.263, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.265, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1160, i32 3}
!451 = !{ptr @snic_aen_handler._entry.264, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @snic_aen_handler._entry_ptr.266, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.268, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1164, i32 3}
!455 = !{ptr @snic_aen_handler._entry.267, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @snic_aen_handler._entry_ptr.269, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.271, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1168, i32 3}
!459 = !{ptr @snic_aen_handler._entry.270, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @snic_aen_handler._entry_ptr.272, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.274, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1172, i32 3}
!463 = !{ptr @snic_aen_handler._entry.273, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @snic_aen_handler._entry_ptr.275, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.277, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1176, i32 3}
!467 = !{ptr @snic_aen_handler._entry.276, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @snic_aen_handler._entry_ptr.278, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.280, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1180, i32 3}
!471 = !{ptr @snic_aen_handler._entry.279, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @snic_aen_handler._entry_ptr.281, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.283, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1184, i32 3}
!475 = !{ptr @snic_aen_handler._entry.282, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @snic_aen_handler._entry_ptr.284, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @snic_aen_handler._entry.285, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1185, i32 3}
!479 = !{ptr @snic_aen_handler._entry_ptr.286, !478, !"_entry_ptr", i1 false, i1 false}
!480 = distinct !{null, !478, !"__already_done", i1 false, i1 false}
!481 = !{ptr @snic_aen_handler._entry.287, !482, !"_entry", i1 false, i1 false}
!482 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1189, i32 2}
!483 = !{ptr @snic_aen_handler._entry_ptr.288, !482, !"_entry_ptr", i1 false, i1 false}
!484 = distinct !{null, !482, !"__already_done", i1 false, i1 false}
!485 = !{ptr @.str.290, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1540, i32 3}
!487 = !{ptr @.str.291, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @snic_send_abort_and_wait._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @snic_send_abort_and_wait._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @snic_send_abort_and_wait._entry.292, !491, !"_entry", i1 false, i1 false}
!491 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1556, i32 2}
!492 = !{ptr @snic_send_abort_and_wait._entry_ptr.293, !491, !"_entry_ptr", i1 false, i1 false}
!493 = distinct !{null, !491, !"<string literal>", i1 false, i1 false}
!494 = distinct !{null, !491, !"__already_done", i1 false, i1 false}
!495 = !{ptr @.str.296, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1570, i32 2}
!497 = !{ptr @snic_send_abort_and_wait._entry.295, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @snic_send_abort_and_wait._entry_ptr.297, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.299, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1578, i32 3}
!501 = !{ptr @snic_send_abort_and_wait._entry.298, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @snic_send_abort_and_wait._entry_ptr.300, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.302, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1604, i32 2}
!505 = !{ptr @snic_send_abort_and_wait._entry.301, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @snic_send_abort_and_wait._entry_ptr.303, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @init_completion.__key, !508, !"__key", i1 false, i1 false}
!508 = !{!"../include/linux/completion.h", i32 87, i32 2}
!509 = !{ptr @.str.304, !508, !"<string literal>", i1 false, i1 false}
!510 = !{ptr @.str.305, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1413, i32 2}
!512 = !{ptr @.str.306, !511, !"<string literal>", i1 false, i1 false}
!513 = !{ptr @snic_queue_abort_req._entry, !511, !"_entry", i1 false, i1 false}
!514 = !{ptr @snic_queue_abort_req._entry_ptr, !511, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.307, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1367, i32 2}
!517 = !{ptr @.str.308, !516, !"<string literal>", i1 false, i1 false}
!518 = !{ptr @snic_issue_tm_req._entry, !516, !"_entry", i1 false, i1 false}
!519 = !{ptr @snic_issue_tm_req._entry_ptr, !516, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.310, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1390, i32 3}
!522 = !{ptr @snic_issue_tm_req._entry.309, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @snic_issue_tm_req._entry_ptr.311, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.313, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1394, i32 3}
!526 = !{ptr @snic_issue_tm_req._entry.312, !525, !"_entry", i1 false, i1 false}
!527 = !{ptr @snic_issue_tm_req._entry_ptr.314, !525, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.315, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1315, i32 2}
!530 = !{ptr @snic_queue_itmf_req._entry, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @snic_queue_itmf_req._entry_ptr, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @.str.316, !529, !"<string literal>", i1 false, i1 false}
!533 = distinct !{null, !529, !"__already_done", i1 false, i1 false}
!534 = !{ptr @snic_queue_itmf_req._entry.317, !535, !"_entry", i1 false, i1 false}
!535 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1316, i32 2}
!536 = !{ptr @snic_queue_itmf_req._entry_ptr.318, !535, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.319, !535, !"<string literal>", i1 false, i1 false}
!538 = distinct !{null, !535, !"__already_done", i1 false, i1 false}
!539 = !{ptr @.str.322, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1341, i32 3}
!541 = !{ptr @snic_queue_itmf_req._entry.321, !540, !"_entry", i1 false, i1 false}
!542 = !{ptr @snic_queue_itmf_req._entry_ptr.323, !540, !"_entry_ptr", i1 false, i1 false}
!543 = !{ptr @.str.325, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1345, i32 3}
!545 = !{ptr @snic_queue_itmf_req._entry.324, !544, !"_entry", i1 false, i1 false}
!546 = !{ptr @snic_queue_itmf_req._entry_ptr.326, !544, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.327, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1440, i32 3}
!549 = !{ptr @.str.328, !548, !"<string literal>", i1 false, i1 false}
!550 = !{ptr @snic_abort_finish._entry, !548, !"_entry", i1 false, i1 false}
!551 = !{ptr @snic_abort_finish._entry_ptr, !548, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.330, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1458, i32 3}
!554 = !{ptr @snic_abort_finish._entry.329, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @snic_abort_finish._entry_ptr.331, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.333, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1486, i32 2}
!558 = !{ptr @snic_abort_finish._entry.332, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @snic_abort_finish._entry_ptr.334, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @__func__.snic_unlink_and_release_req, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2130, i32 2}
!562 = !{ptr @.str.335, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2034, i32 3}
!564 = !{ptr @.str.336, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @snic_send_dr_and_wait._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @snic_send_dr_and_wait._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.338, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2049, i32 2}
!569 = !{ptr @snic_send_dr_and_wait._entry.337, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @snic_send_dr_and_wait._entry_ptr.339, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @snic_send_dr_and_wait._entry.340, !572, !"_entry", i1 false, i1 false}
!572 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2052, i32 2}
!573 = !{ptr @snic_send_dr_and_wait._entry_ptr.341, !572, !"_entry_ptr", i1 false, i1 false}
!574 = distinct !{null, !572, !"<string literal>", i1 false, i1 false}
!575 = distinct !{null, !572, !"__already_done", i1 false, i1 false}
!576 = !{ptr @.str.344, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2064, i32 3}
!578 = !{ptr @snic_send_dr_and_wait._entry.343, !577, !"_entry", i1 false, i1 false}
!579 = !{ptr @snic_send_dr_and_wait._entry_ptr.345, !577, !"_entry_ptr", i1 false, i1 false}
!580 = !{ptr @.str.346, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1927, i32 3}
!582 = !{ptr @.str.347, !581, !"<string literal>", i1 false, i1 false}
!583 = !{ptr @snic_dr_finish._entry, !581, !"_entry", i1 false, i1 false}
!584 = !{ptr @snic_dr_finish._entry_ptr, !581, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.349, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1942, i32 3}
!587 = !{ptr @snic_dr_finish._entry.348, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @snic_dr_finish._entry_ptr.350, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.352, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1952, i32 3}
!591 = !{ptr @snic_dr_finish._entry.351, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @snic_dr_finish._entry_ptr.353, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.355, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1959, i32 3}
!595 = !{ptr @snic_dr_finish._entry.354, !594, !"_entry", i1 false, i1 false}
!596 = !{ptr @snic_dr_finish._entry_ptr.356, !594, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @.str.358, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1979, i32 3}
!599 = !{ptr @snic_dr_finish._entry.357, !598, !"_entry", i1 false, i1 false}
!600 = !{ptr @snic_dr_finish._entry_ptr.359, !598, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @.str.360, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1880, i32 4}
!603 = !{ptr @.str.361, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @snic_dr_clean_pending_req._entry, !602, !"_entry", i1 false, i1 false}
!605 = !{ptr @snic_dr_clean_pending_req._entry_ptr, !602, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.363, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1896, i32 2}
!608 = !{ptr @snic_dr_clean_pending_req._entry.362, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @snic_dr_clean_pending_req._entry_ptr.364, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.366, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1902, i32 2}
!612 = !{ptr @snic_dr_clean_pending_req._entry.365, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @snic_dr_clean_pending_req._entry_ptr.367, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.368, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1756, i32 3}
!616 = !{ptr @.str.369, !615, !"<string literal>", i1 false, i1 false}
!617 = !{ptr @snic_dr_clean_single_req._entry, !615, !"_entry", i1 false, i1 false}
!618 = !{ptr @snic_dr_clean_single_req._entry_ptr, !615, !"_entry_ptr", i1 false, i1 false}
!619 = !{ptr @.str.371, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1763, i32 2}
!621 = !{ptr @snic_dr_clean_single_req._entry.370, !620, !"_entry", i1 false, i1 false}
!622 = !{ptr @snic_dr_clean_single_req._entry_ptr.372, !620, !"_entry_ptr", i1 false, i1 false}
!623 = !{ptr @snic_dr_clean_single_req._entry.373, !624, !"_entry", i1 false, i1 false}
!624 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1779, i32 2}
!625 = !{ptr @snic_dr_clean_single_req._entry_ptr.374, !624, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.375, !624, !"<string literal>", i1 false, i1 false}
!627 = distinct !{null, !624, !"__already_done", i1 false, i1 false}
!628 = !{ptr @.str.377, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1784, i32 3}
!630 = !{ptr @snic_dr_clean_single_req._entry.376, !629, !"_entry", i1 false, i1 false}
!631 = !{ptr @snic_dr_clean_single_req._entry_ptr.378, !629, !"_entry_ptr", i1 false, i1 false}
!632 = !{ptr @.str.380, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1801, i32 3}
!634 = !{ptr @snic_dr_clean_single_req._entry.379, !633, !"_entry", i1 false, i1 false}
!635 = !{ptr @snic_dr_clean_single_req._entry_ptr.381, !633, !"_entry_ptr", i1 false, i1 false}
!636 = !{ptr @.str.383, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1838, i32 3}
!638 = !{ptr @snic_dr_clean_single_req._entry.382, !637, !"_entry", i1 false, i1 false}
!639 = !{ptr @snic_dr_clean_single_req._entry_ptr.384, !637, !"_entry_ptr", i1 false, i1 false}
!640 = !{ptr @.str.385, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 1706, i32 3}
!642 = !{ptr @.str.386, !641, !"<string literal>", i1 false, i1 false}
!643 = !{ptr @snic_is_abts_pending._entry, !641, !"_entry", i1 false, i1 false}
!644 = !{ptr @snic_is_abts_pending._entry_ptr, !641, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.387, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2244, i32 3}
!647 = !{ptr @.str.388, !646, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @snic_issue_hba_reset._entry, !646, !"_entry", i1 false, i1 false}
!649 = !{ptr @snic_issue_hba_reset._entry_ptr, !646, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @snic_issue_hba_reset._entry.389, !651, !"_entry", i1 false, i1 false}
!651 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2252, i32 2}
!652 = !{ptr @snic_issue_hba_reset._entry_ptr.390, !651, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @.str.391, !651, !"<string literal>", i1 false, i1 false}
!654 = distinct !{null, !651, !"__already_done", i1 false, i1 false}
!655 = !{ptr @.str.393, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2267, i32 3}
!657 = !{ptr @snic_issue_hba_reset._entry.392, !656, !"_entry", i1 false, i1 false}
!658 = !{ptr @snic_issue_hba_reset._entry_ptr.394, !656, !"_entry_ptr", i1 false, i1 false}
!659 = !{ptr @.str.396, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2278, i32 2}
!661 = !{ptr @snic_issue_hba_reset._entry.395, !660, !"_entry", i1 false, i1 false}
!662 = !{ptr @snic_issue_hba_reset._entry_ptr.397, !660, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @.str.399, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2284, i32 3}
!665 = !{ptr @snic_issue_hba_reset._entry.398, !664, !"_entry", i1 false, i1 false}
!666 = !{ptr @snic_issue_hba_reset._entry_ptr.400, !664, !"_entry_ptr", i1 false, i1 false}
!667 = !{ptr @.str.402, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2314, i32 2}
!669 = !{ptr @snic_issue_hba_reset._entry.401, !668, !"_entry", i1 false, i1 false}
!670 = !{ptr @snic_issue_hba_reset._entry_ptr.403, !668, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.404, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2441, i32 2}
!673 = !{ptr @.str.405, !672, !"<string literal>", i1 false, i1 false}
!674 = !{ptr @snic_scsi_cleanup._entry, !672, !"_entry", i1 false, i1 false}
!675 = !{ptr @snic_scsi_cleanup._entry_ptr, !672, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.407, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2475, i32 3}
!678 = !{ptr @snic_scsi_cleanup._entry.406, !677, !"_entry", i1 false, i1 false}
!679 = !{ptr @snic_scsi_cleanup._entry_ptr.408, !677, !"_entry_ptr", i1 false, i1 false}
!680 = !{ptr @.str.410, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2484, i32 3}
!682 = !{ptr @snic_scsi_cleanup._entry.409, !681, !"_entry", i1 false, i1 false}
!683 = !{ptr @snic_scsi_cleanup._entry_ptr.411, !681, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.413, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2492, i32 3}
!686 = !{ptr @snic_scsi_cleanup._entry.412, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @snic_scsi_cleanup._entry_ptr.414, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.415, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2407, i32 2}
!690 = !{ptr @.str.416, !689, !"<string literal>", i1 false, i1 false}
!691 = !{ptr @snic_cmpl_pending_tmreq._entry, !689, !"_entry", i1 false, i1 false}
!692 = !{ptr @snic_cmpl_pending_tmreq._entry_ptr, !689, !"_entry_ptr", i1 false, i1 false}
!693 = !{ptr @.str.417, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2542, i32 3}
!695 = !{ptr @.str.418, !694, !"<string literal>", i1 false, i1 false}
!696 = !{ptr @snic_internal_abort_io._entry, !694, !"_entry", i1 false, i1 false}
!697 = !{ptr @snic_internal_abort_io._entry_ptr, !694, !"_entry_ptr", i1 false, i1 false}
!698 = !{ptr @.str.420, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2551, i32 3}
!700 = !{ptr @snic_internal_abort_io._entry.419, !699, !"_entry", i1 false, i1 false}
!701 = !{ptr @snic_internal_abort_io._entry_ptr.421, !699, !"_entry_ptr", i1 false, i1 false}
!702 = !{ptr @.str.423, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2566, i32 3}
!704 = !{ptr @snic_internal_abort_io._entry.422, !703, !"_entry", i1 false, i1 false}
!705 = !{ptr @snic_internal_abort_io._entry_ptr.424, !703, !"_entry_ptr", i1 false, i1 false}
!706 = !{ptr @.str.426, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2569, i32 2}
!708 = !{ptr @snic_internal_abort_io._entry.425, !707, !"_entry", i1 false, i1 false}
!709 = !{ptr @snic_internal_abort_io._entry_ptr.427, !707, !"_entry_ptr", i1 false, i1 false}
!710 = !{ptr @snic_internal_abort_io._entry.428, !711, !"_entry", i1 false, i1 false}
!711 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2571, i32 2}
!712 = !{ptr @snic_internal_abort_io._entry_ptr.429, !711, !"_entry_ptr", i1 false, i1 false}
!713 = distinct !{null, !711, !"__already_done", i1 false, i1 false}
!714 = !{ptr @.str.431, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/scsi/snic/snic_scsi.c", i32 2576, i32 3}
!716 = !{ptr @snic_internal_abort_io._entry.430, !715, !"_entry", i1 false, i1 false}
!717 = !{ptr @snic_internal_abort_io._entry_ptr.432, !715, !"_entry_ptr", i1 false, i1 false}
!718 = !{i32 1, !"wchar_size", i32 2}
!719 = !{i32 1, !"min_enum_size", i32 4}
!720 = !{i32 8, !"branch-target-enforcement", i32 0}
!721 = !{i32 8, !"sign-return-address", i32 0}
!722 = !{i32 8, !"sign-return-address-all", i32 0}
!723 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!724 = !{i32 7, !"uwtable", i32 1}
!725 = !{i32 7, !"frame-pointer", i32 2}
!726 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!727 = !{i64 2148589786, i64 2148589812, i64 2148589841, i64 2148589875, i64 2148589906, i64 2148589929}
!728 = !{!"branch_weights", i32 2000, i32 1}
!729 = !{i8 0, i8 2}
!730 = !{i64 2148592251, i64 2148592277, i64 2148592306, i64 2148592340, i64 2148592371, i64 2148592394}
!731 = !{i64 2156736684}
!732 = !{i64 1089054}
!733 = !{!"branch_weights", i32 1, i32 22000, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!734 = !{!"branch_weights", i32 1, i32 2000}
