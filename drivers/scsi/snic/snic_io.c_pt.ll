; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_io.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.cq_desc = type { i16, i16, [11 x i8], i8 }
%struct.vnic_wq_buf = type { ptr, i32, ptr, i32, i32, i32, ptr }
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
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }
%struct.snic_trc_data = type <{ i64, ptr, i32, i32, [5 x i64] }>
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.123, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.123 = type { ptr }
%struct.snic_host_req = type { [2 x i64], %struct.snic_io_hdr, %union.anon.128, i32 }
%struct.snic_io_hdr = type { i32, i32, i32, i8, i8, i8, i8, i16, i16 }
%union.anon.128 = type { %struct.snic_icmnd, [8 x i8] }
%struct.snic_icmnd = type { i16, i16, i32, i64, i64, i8, i8, i16, i32, [32 x i8], i64, i64 }
%struct.snic_req_info = type { %struct.list_head, ptr, i64, i16, i16, i32, i32, i8, [3 x i8], ptr, ptr, i32, i64, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.9, %union.anon.59, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.59 = type { %struct.atomic_t }
%struct.wq_enet_desc = type { i64, i16, i16, i16, i16 }
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@snic_free_wq_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_free_wq_buf\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/scsi/snic/snic_io.c\00", [36 x i8] zeroinitializer }, align 32
@snic_free_wq_buf._entry_ptr = internal global ptr @snic_free_wq_buf._entry, section ".printk_index", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rqi->list.next == NULL\00", [41 x i8] zeroinitializer }, align 32
@snic_free_wq_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_free_wq_buf._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snic_free_wq_buf .. freed.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_free_wq_buf._entry_ptr.8 = internal global ptr @snic_free_wq_buf._entry.4, section ".printk_index", align 4
@__func__.snic_queue_wq_desc = private unnamed_addr constant [19 x i8] c"snic_queue_wq_desc\00", align 1
@snic_queue_wq_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.snic_queue_wq_desc, ptr @.str.2, i32 178, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"qdesc: PCI DMA Mapping Fail.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snic_queue_wq_desc._entry_ptr = internal global ptr @snic_queue_wq_desc._entry, section ".printk_index", align 4
@snic_queue_wq_desc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.snic_queue_wq_desc, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016snic:host = %d, WQ is Full\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_queue_wq_desc._entry_ptr.13 = internal global ptr @snic_queue_wq_desc._entry.11, section ".printk_index", align 4
@snic_req_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 247, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Failed to allocate memory from snic req pool id = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_req_init\00", [18 x i8] zeroinitializer }, align 32
@snic_req_init._entry_ptr = internal global ptr @snic_req_init._entry, section ".printk_index", align 4
@snic_req_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_req_init._entry_ptr.17 = internal global ptr @snic_req_init._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sg_cnt > SNIC_MAX_SG_DESC_CNT\00", [34 x i8] zeroinitializer }, align 32
@snic_req_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_log_level = external dso_local local_unnamed_addr global i32, align 4
@snic_req_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 277, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Req_alloc:rqi = %p allocatd.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_req_init._entry_ptr.21 = internal global ptr @snic_req_init._entry.19, section ".printk_index", align 4
@snic_abort_req_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snic_abort_req_init\00", [44 x i8] zeroinitializer }, align 32
@snic_abort_req_init._entry_ptr = internal global ptr @snic_abort_req_init._entry, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"!rqi\00", [27 x i8] zeroinitializer }, align 32
@snic_abort_req_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_abort_req_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 299, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"abts:Failed to alloc tm req.\0A\00", [34 x i8] zeroinitializer }, align 32
@snic_abort_req_init._entry_ptr.26 = internal global ptr @snic_abort_req_init._entry.24, section ".printk_index", align 4
@snic_abort_req_init.__already_done.27 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_dr_req_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snic_dr_req_init\00", [47 x i8] zeroinitializer }, align 32
@snic_dr_req_init._entry_ptr = internal global ptr @snic_dr_req_init._entry, section ".printk_index", align 4
@snic_dr_req_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_dr_req_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 325, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dr:Failed to alloc tm req.\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_dr_req_init._entry_ptr.31 = internal global ptr @snic_dr_req_init._entry.29, section ".printk_index", align 4
@snic_dr_req_init.__already_done.32 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_dr_req_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_dr_req_init._entry_ptr.34 = internal global ptr @snic_dr_req_init._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rqi->dr_req != NULL\00", [44 x i8] zeroinitializer }, align 32
@snic_dr_req_init.__already_done.36 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_req_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_req_free\00", [18 x i8] zeroinitializer }, align 32
@snic_req_free._entry_ptr = internal global ptr @snic_req_free._entry, section ".printk_index", align 4
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rqi->req == rqi->abort_req\00", [37 x i8] zeroinitializer }, align 32
@snic_req_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_req_free._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_req_free._entry_ptr.40 = internal global ptr @snic_req_free._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rqi->req == rqi->dr_req\00", [40 x i8] zeroinitializer }, align 32
@snic_req_free.__already_done.42 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_req_free._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.37, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_req_free._entry_ptr.44 = internal global ptr @snic_req_free._entry.43, section ".printk_index", align 4
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rqi->sge_va != 0\00", [47 x i8] zeroinitializer }, align 32
@snic_req_free.__already_done.46 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_req_free._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.2, i32 350, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Req_free:rqi %p:ioreq %p:abt %p:dr %p\0A\00", [57 x i8] zeroinitializer }, align 32
@snic_req_free._entry_ptr.49 = internal global ptr @snic_req_free._entry.47, section ".printk_index", align 4
@snic_pci_unmap_rsp_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.50, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snic_pci_unmap_rsp_buf\00", [41 x i8] zeroinitializer }, align 32
@snic_pci_unmap_rsp_buf._entry_ptr = internal global ptr @snic_pci_unmap_rsp_buf._entry, section ".printk_index", align 4
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sgd[0].addr == 0\00", [47 x i8] zeroinitializer }, align 32
@snic_pci_unmap_rsp_buf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_hex_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016snic:%s Dumping Data of Len = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_hex_dump\00", [18 x i8] zeroinitializer }, align 32
@snic_hex_dump._entry_ptr = internal global ptr @snic_hex_dump._entry, section ".printk_index", align 4
@snic_hex_dump.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"snic\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hexdump\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_handler_cont._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.57, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snic_wq_cmpl_handler_cont\00", [38 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_handler_cont._entry_ptr = internal global ptr @snic_wq_cmpl_handler_cont._entry, section ".printk_index", align 4
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"q_num != 0\00", [21 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_handler_cont.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_wq_cmpl_frame_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.59, ptr @.str.2, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snic_wq_cmpl_frame_send\00", [40 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_frame_send._entry_ptr = internal global ptr @snic_wq_cmpl_frame_send._entry, section ".printk_index", align 4
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"buf->os_buf == NULL\00", [44 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_frame_send.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_wq_cmpl_frame_send._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 46, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Ack received for snic_host_req %p.\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_wq_cmpl_frame_send._entry_ptr.63 = internal global ptr @snic_wq_cmpl_frame_send._entry.61, section ".printk_index", align 4
@snic_glob = external dso_local local_unnamed_addr global ptr, align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@snic_wqdesc_avail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 151, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"desc_avail: Multi Queue case.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_wqdesc_avail\00", [46 x i8] zeroinitializer }, align 32
@snic_wqdesc_avail._entry_ptr = internal global ptr @snic_wqdesc_avail._entry, section ".printk_index", align 4
@snic_wqdesc_avail._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.67, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_wqdesc_avail._entry_ptr.69 = internal global ptr @snic_wqdesc_avail._entry.68, section ".printk_index", align 4
@snic_dump_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.71, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snic_dump_desc\00", [17 x i8] zeroinitializer }, align 32
@snic_dump_desc._entry_ptr = internal global ptr @snic_dump_desc._entry, section ".printk_index", align 4
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rqi == NULL || rqi->req == NULL\00", [32 x i8] zeroinitializer }, align 32
@snic_dump_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"report-tgt : \00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SNIC_REQ_REPORT_TGTS :\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"icmnd : \00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNIC_REQ_ICMND : 0x%x :\00", [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"itmf : \00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SNIC_REQ_ITMF :\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hba reset :\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SNIC_REQ_HBA_RESET :\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"exch ver : \00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SNIC_REQ_EXCH_VER :\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tgt info : \00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"report tgt cmpl : \00", [45 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SNIC_RSP_REPORT_TGTS_CMPL :\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"icmnd_cmpl : \00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SNIC_RSP_ICMND_CMPL : 0x%x :\00", [35 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"itmf_cmpl : \00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SNIC_RSP_ITMF_CMPL :\00", [43 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hba_reset_cmpl : \00", [46 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SNIC_RSP_HBA_RESET_CMPL :\00", [38 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exch_ver_cmpl : \00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SNIC_RSP_EXCH_VER_CMPL :\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msg ack : \00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SNIC_MSG_ACK :\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"async notify : \00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SNIC_MSG_ASYNC_EVNOTIFY :\00", [38 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unknown : \00", [21 x i8] zeroinitializer }, align 32
@snic_dump_desc._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.71, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snic_dump_desc._entry_ptr.100 = internal global ptr @snic_dump_desc._entry.99, section ".printk_index", align 4
@.str.101 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@snic_dump_desc.__already_done.102 = internal unnamed_addr global i1 false, section ".data.once", align 1
@snic_dump_desc._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.71, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016snic:%s:%s >>cmndid=%x:sg_cnt = %x:status = %x:ctx = %lx.\0A\00", [35 x i8] zeroinitializer }, align 32
@snic_dump_desc._entry_ptr.105 = internal global ptr @snic_dump_desc._entry.103, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 18, i64 19, i64 20, i64 21, i64 22, i64 128, i64 129]
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 115, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 125, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 178, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 194, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 245, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 268, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 277, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 290, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 299, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 321, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 325, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 331, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 344, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 345, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 346, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 348, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 387, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 451, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 452, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 66, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 41, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 44, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 326, i32 6 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 151, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 152, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 470, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 473, i32 13 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 474, i32 30 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 478, i32 13 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 479, i32 30 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 484, i32 13 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 485, i32 30 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 489, i32 13 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 490, i32 30 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 494, i32 13 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 495, i32 30 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 499, i32 13 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 503, i32 13 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 504, i32 30 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 508, i32 13 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 509, i32 30 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 514, i32 13 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 515, i32 30 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 519, i32 13 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 520, i32 30 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 524, i32 13 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 525, i32 30 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 529, i32 13 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 530, i32 30 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 534, i32 13 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 535, i32 30 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 539, i32 13 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 540, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [31 x i8] c"../drivers/scsi/snic/snic_io.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 544, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @snic_abort_req_init._entry, ptr @snic_abort_req_init._entry.24, ptr @snic_abort_req_init._entry_ptr, ptr @snic_abort_req_init._entry_ptr.26, ptr @snic_dr_req_init._entry, ptr @snic_dr_req_init._entry.29, ptr @snic_dr_req_init._entry.33, ptr @snic_dr_req_init._entry_ptr, ptr @snic_dr_req_init._entry_ptr.31, ptr @snic_dr_req_init._entry_ptr.34, ptr @snic_dump_desc._entry, ptr @snic_dump_desc._entry.103, ptr @snic_dump_desc._entry.99, ptr @snic_dump_desc._entry_ptr, ptr @snic_dump_desc._entry_ptr.100, ptr @snic_dump_desc._entry_ptr.105, ptr @snic_free_wq_buf._entry, ptr @snic_free_wq_buf._entry.4, ptr @snic_free_wq_buf._entry_ptr, ptr @snic_free_wq_buf._entry_ptr.8, ptr @snic_hex_dump._entry, ptr @snic_hex_dump._entry_ptr, ptr @snic_pci_unmap_rsp_buf._entry, ptr @snic_pci_unmap_rsp_buf._entry_ptr, ptr @snic_queue_wq_desc._entry, ptr @snic_queue_wq_desc._entry.11, ptr @snic_queue_wq_desc._entry_ptr, ptr @snic_queue_wq_desc._entry_ptr.13, ptr @snic_req_free._entry, ptr @snic_req_free._entry.39, ptr @snic_req_free._entry.43, ptr @snic_req_free._entry.47, ptr @snic_req_free._entry_ptr, ptr @snic_req_free._entry_ptr.40, ptr @snic_req_free._entry_ptr.44, ptr @snic_req_free._entry_ptr.49, ptr @snic_req_init._entry, ptr @snic_req_init._entry.16, ptr @snic_req_init._entry.19, ptr @snic_req_init._entry_ptr, ptr @snic_req_init._entry_ptr.17, ptr @snic_req_init._entry_ptr.21, ptr @snic_wq_cmpl_frame_send._entry, ptr @snic_wq_cmpl_frame_send._entry.61, ptr @snic_wq_cmpl_frame_send._entry_ptr, ptr @snic_wq_cmpl_frame_send._entry_ptr.63, ptr @snic_wq_cmpl_handler_cont._entry, ptr @snic_wq_cmpl_handler_cont._entry_ptr, ptr @snic_wqdesc_avail._entry, ptr @snic_wqdesc_avail._entry.68, ptr @snic_wqdesc_avail._entry_ptr, ptr @snic_wqdesc_avail._entry_ptr.69, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.41, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.101, ptr @.str.104], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_free_wq_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_free_wq_buf._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_wq_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_queue_wq_desc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_req_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_abort_req_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_req_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_req_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dr_req_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_free._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_free._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_req_free._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_pci_unmap_rsp_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_hex_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_wq_cmpl_handler_cont._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_wq_cmpl_frame_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_wq_cmpl_frame_send._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_wqdesc_avail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_wqdesc_avail._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dump_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dump_desc._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_dump_desc._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_wq_cmpl_handler(ptr nocapture noundef %snic, i32 noundef %work_to_do) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %last_ack_time = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 4, i32 1
  %1 = ptrtoint ptr %last_ack_time to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %last_ack_time, align 8
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %2 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %umax.i = tail call i32 @llvm.umax.i32(i32 %work_to_do, i32 1) #6
  br label %for.body

for.body:                                         ; preds = %svnic_cq_service.exit.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %svnic_cq_service.exit.for.body_crit_edge ]
  %work_done.08 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %svnic_cq_service.exit.for.body_crit_edge ]
  %ring.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 3
  %4 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring.i, align 4
  %desc_size.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 3, i32 7
  %6 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %desc_size.i, align 4
  %to_clean.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 4
  %8 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %to_clean.i, align 4
  %mul.i = mul i32 %9, %7
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %type_color1.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i, i32 0, i32 3
  %10 = ptrtoint ptr %type_color1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type_color1.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  %q_number6.i.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr.i, i32 0, i32 1
  %12 = ptrtoint ptr %q_number6.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %q_number6.i.i, align 2
  %14 = and i16 %13, -253
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #6
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %18 = and i16 %17, -241
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #6
  %last_color.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 5
  %vdev.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 1
  %desc_count.i = getelementptr %struct.snic, ptr %snic, i32 0, i32 41, i32 %i.09, i32 3, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end13.i.while.cond.i_crit_edge, %for.body
  %q_number.0.i = phi i16 [ %15, %for.body ], [ %82, %if.end13.i.while.cond.i_crit_edge ]
  %completed_index.0.i = phi i16 [ %19, %for.body ], [ %86, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.in.i = phi i8 [ %11, %for.body ], [ %78, %if.end13.i.while.cond.i_crit_edge ]
  %work_done.0.i = phi i32 [ 0, %for.body ], [ %inc21.i, %if.end13.i.while.cond.i_crit_edge ]
  %color.0.i = lshr i8 %color.0.in.i, 7
  %conv.i = zext i8 %color.0.i to i32
  %20 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_color.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %21, %conv.i
  br i1 %cmp.not.i, label %while.cond.i.svnic_cq_service.exit_crit_edge, label %while.body.i

while.cond.i.svnic_cq_service.exit_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %svnic_cq_service.exit

while.body.i:                                     ; preds = %while.cond.i
  %22 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vdev.i, align 4
  %call.i.i = tail call ptr @svnic_dev_priv(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %q_number.0.i)
  %cmp.not.i.i = icmp eq i16 %q_number.0.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.do.body48.i.i_crit_edge, label %do.end.i.i

while.body.i.do.body48.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48.i.i

do.end.i.i:                                       ; preds = %while.body.i
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef 66) #9
  %.b71.i.i = load i1, ptr @snic_wq_cmpl_handler_cont.__already_done, align 1
  br i1 %.b71.i.i, label %do.end.i.i.do.body48.i.i_crit_edge, label %if.then13.i.i, !prof !210

do.end.i.i.do.body48.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body48.i.i

if.then13.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_wq_cmpl_handler_cont.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 66, i32 noundef 9, ptr noundef null) #6
  br label %do.body48.i.i

do.body48.i.i:                                    ; preds = %if.then13.i.i, %do.end.i.i.do.body48.i.i_crit_edge, %while.body.i.do.body48.i.i_crit_edge
  %conv.i.i = zext i16 %q_number.0.i to i32
  %arrayidx.i.i = getelementptr %struct.snic, ptr %call.i.i, i32 0, i32 44, i32 %conv.i.i
  %call53.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arrayidx.i.i) #6
  %to_clean.i.i.i = getelementptr %struct.snic, ptr %call.i.i, i32 0, i32 43, i32 %conv.i.i, i32 6
  %24 = ptrtoint ptr %to_clean.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %to_clean.i.i.i, align 4
  %vdev.i.i.i.i = getelementptr %struct.snic, ptr %call.i.i, i32 0, i32 43, i32 %conv.i.i, i32 1
  %desc_avail.i.i.i = getelementptr %struct.snic, ptr %call.i.i, i32 0, i32 43, i32 %conv.i.i, i32 3, i32 9
  %conv.i.i.i = zext i16 %completed_index.0.i to i32
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %snic_wq_cmpl_frame_send.exit.i.i.i.while.cond.i.i.i_crit_edge, %do.body48.i.i
  %buf.0.i.i.i = phi ptr [ %25, %do.body48.i.i ], [ %59, %snic_wq_cmpl_frame_send.exit.i.i.i.while.cond.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %vdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vdev.i.i.i.i, align 4
  %call.i.i.i.i = tail call ptr @svnic_dev_priv(ptr noundef %27) #6
  %os_buf.i.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %os_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %os_buf.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %29, null
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %while.cond.i.i.i.if.end43.i.i.i.i_crit_edge

while.cond.i.i.i.if.end43.i.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %while.cond.i.i.i
  %call1.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, i32 noundef 41) #9
  %30 = ptrtoint ptr %os_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %os_buf.i.i.i.i, align 4
  %cmp3.i.i.i.i = icmp eq ptr %31, null
  br i1 %cmp3.i.i.i.i, label %land.rhs.i.i.i.i, label %do.end.i.i.i.i.if.end43.i.i.i.i_crit_edge

do.end.i.i.i.i.if.end43.i.i.i.i_crit_edge:        ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %do.end.i.i.i.i
  %.b74.i.i.i.i = load i1, ptr @snic_wq_cmpl_frame_send.__already_done, align 1
  br i1 %.b74.i.i.i.i, label %land.rhs.i.i.i.i.if.end43.i.i.i.i_crit_edge, label %if.then10.i.i.i.i, !prof !210

land.rhs.i.i.i.i.if.end43.i.i.i.i_crit_edge:      ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_wq_cmpl_frame_send.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 41, i32 noundef 9, ptr noundef null) #6
  br label %if.end43.i.i.i.i

if.end43.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i, %land.rhs.i.i.i.i.if.end43.i.i.i.i_crit_edge, %do.end.i.i.i.i.if.end43.i.i.i.i_crit_edge, %while.cond.i.i.i.if.end43.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %32 = load i32, ptr @snic_log_level, align 4
  %and.i.i.i.i = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool44.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool44.not.i.i.i.i, label %if.end43.i.i.i.i.do.body51.i.i.i.i_crit_edge, label %do.end48.i.i.i.i

if.end43.i.i.i.i.do.body51.i.i.i.i_crit_edge:     ; preds = %if.end43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51.i.i.i.i

do.end48.i.i.i.i:                                 ; preds = %if.end43.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %shost.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %shost.i.i.i.i, align 16
  %shost_gendev.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 49
  %35 = ptrtoint ptr %os_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %os_buf.i.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %shost_gendev.i.i.i.i, ptr noundef nonnull @.str.62, ptr noundef %36) #9
  br label %do.body51.i.i.i.i

do.body51.i.i.i.i:                                ; preds = %do.end48.i.i.i.i, %if.end43.i.i.i.i.do.body51.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %37 = load ptr, ptr @snic_glob, align 4
  %enable.i.i.i.i = getelementptr inbounds %struct.snic_global, ptr %37, i32 0, i32 7, i32 5
  %38 = ptrtoint ptr %enable.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable.i.i.i.i, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool52.not.i.i.i.i = icmp eq i8 %39, 0
  br i1 %tobool52.not.i.i.i.i, label %do.body51.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge, label %if.then59.i.i.i.i, !prof !210

do.body51.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge: ; preds = %do.body51.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_wq_cmpl_frame_send.exit.i.i.i

if.then59.i.i.i.i:                                ; preds = %do.body51.i.i.i.i
  %shost60.i.i.i.i = getelementptr inbounds %struct.snic, ptr %call.i.i.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %shost60.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shost60.i.i.i.i, align 16
  %host_no.i.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 17
  %42 = ptrtoint ptr %host_no.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %host_no.i.i.i.i, align 4
  %44 = ptrtoint ptr %os_buf.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %os_buf.i.i.i.i, align 4
  %call.i1.i.i.i = tail call ptr @snic_get_trc_buf() #6
  %tobool.not.i.i.i.i = icmp eq ptr %call.i1.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then59.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.then59.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge: ; preds = %if.then59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_wq_cmpl_frame_send.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %45 to i32
  %sub.i.i.i.i = add i32 %46, -80
  %conv62.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  %fn1.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %fn1.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store ptr @.str.59, ptr %fn1.i.i.i.i, align 1
  %conv.i2.i.i.i = and i32 %43, 65535
  %hno2.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 2
  %48 = ptrtoint ptr %hno2.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %conv.i2.i.i.i, ptr %hno2.i.i.i.i, align 1
  %tag3.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %tag3.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %tag3.i.i.i.i, align 1
  %data.i.i.i.i = getelementptr inbounds %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 0, ptr %data.i.i.i.i, align 1
  %arrayidx5.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %conv62.i.i.i.i, ptr %arrayidx5.i.i.i.i, align 1
  %arrayidx7.i.i.i.i = getelementptr %struct.snic_trc_data, ptr %call.i1.i.i.i, i32 0, i32 4, i32 2
  %52 = call ptr @memset(ptr %arrayidx7.i.i.i.i, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %conv12.i.i.i.i = zext i32 %53 to i64
  %54 = ptrtoint ptr %call.i1.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %conv12.i.i.i.i, ptr %call.i1.i.i.i, align 1
  br label %snic_wq_cmpl_frame_send.exit.i.i.i

snic_wq_cmpl_frame_send.exit.i.i.i:               ; preds = %if.end.i.i.i.i, %if.then59.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge, %do.body51.i.i.i.i.snic_wq_cmpl_frame_send.exit.i.i.i_crit_edge
  %55 = ptrtoint ptr %os_buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %os_buf.i.i.i.i, align 4
  %56 = ptrtoint ptr %desc_avail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc_avail.i.i.i, align 4
  %inc.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i, ptr %desc_avail.i.i.i, align 4
  %58 = ptrtoint ptr %buf.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf.0.i.i.i, align 4
  %60 = ptrtoint ptr %to_clean.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %to_clean.i.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf.0.i.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %index.i.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %62, %conv.i.i.i
  br i1 %cmp.i.i.i, label %if.end.i, label %snic_wq_cmpl_frame_send.exit.i.i.i.while.cond.i.i.i_crit_edge

snic_wq_cmpl_frame_send.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %snic_wq_cmpl_frame_send.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

if.end.i:                                         ; preds = %snic_wq_cmpl_frame_send.exit.i.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arrayidx.i.i, i32 noundef %call53.i.i) #6
  %63 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %to_clean.i, align 4
  %inc.i = add i32 %64, 1
  store i32 %inc.i, ptr %to_clean.i, align 4
  %65 = ptrtoint ptr %desc_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %66)
  %cmp6.i = icmp eq i32 %inc.i, %66
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end13.i_crit_edge

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %to_clean.i, align 4
  %68 = ptrtoint ptr %last_color.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_color.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool11.not.i = icmp eq i32 %69, 0
  %cond.i = zext i1 %tobool11.not.i to i32
  %70 = ptrtoint ptr %last_color.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.i, ptr %last_color.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then8.i, %if.end.i.if.end13.i_crit_edge
  %71 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ring.i, align 4
  %73 = ptrtoint ptr %desc_size.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %desc_size.i, align 4
  %75 = ptrtoint ptr %to_clean.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %to_clean.i, align 4
  %mul19.i = mul i32 %76, %74
  %add.ptr20.i = getelementptr i8, ptr %72, i32 %mul19.i
  %type_color1.i1.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 3
  %77 = ptrtoint ptr %type_color1.i1.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %type_color1.i1.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  %q_number6.i2.i = getelementptr inbounds %struct.cq_desc, ptr %add.ptr20.i, i32 0, i32 1
  %79 = ptrtoint ptr %q_number6.i2.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %q_number6.i2.i, align 2
  %81 = and i16 %80, -253
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #6
  %83 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr20.i, align 2
  %85 = and i16 %84, -241
  %86 = tail call i16 @llvm.bswap.i16(i16 %85) #6
  %inc21.i = add nuw i32 %work_done.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc21.i, %umax.i
  br i1 %exitcond.not.i, label %if.end13.i.svnic_cq_service.exit_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

if.end13.i.svnic_cq_service.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %svnic_cq_service.exit

svnic_cq_service.exit:                            ; preds = %if.end13.i.svnic_cq_service.exit_crit_edge, %while.cond.i.svnic_cq_service.exit_crit_edge
  %work_done.1.i = phi i32 [ %umax.i, %if.end13.i.svnic_cq_service.exit_crit_edge ], [ %work_done.0.i, %while.cond.i.svnic_cq_service.exit_crit_edge ]
  %add = add i32 %work_done.1.i, %work_done.08
  %inc = add nuw i32 %i.09, 1
  %87 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wq_count, align 16
  %cmp = icmp ult i32 %inc, %88
  br i1 %cmp, label %svnic_cq_service.exit.for.body_crit_edge, label %svnic_cq_service.exit.for.end_crit_edge

svnic_cq_service.exit.for.end_crit_edge:          ; preds = %svnic_cq_service.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

svnic_cq_service.exit.for.body_crit_edge:         ; preds = %svnic_cq_service.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %svnic_cq_service.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %work_done.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %svnic_cq_service.exit.for.end_crit_edge ]
  ret i32 %work_done.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_free_wq_buf(ptr nocapture noundef readonly %wq, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %os_buf = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %os_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %os_buf, align 4
  %vdev = getelementptr inbounds %struct.vnic_wq, ptr %wq, i32 0, i32 1
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %call = tail call ptr @svnic_dev_priv(ptr noundef %3) #6
  %pdev = getelementptr inbounds %struct.snic, ptr %call, i32 0, i32 20
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %dma_addr = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.vnic_wq_buf, ptr %buf, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 0) #6
  %init_ctx = getelementptr inbounds %struct.snic_host_req, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %init_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_ctx, align 8
  %12 = inttoptr i32 %11 to ptr
  %spl_cmd_lock = getelementptr inbounds %struct.snic, ptr %call, i32 0, i32 25
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spl_cmd_lock) #6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %12, align 4
  %cmp.i.not = icmp eq ptr %14, %12
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call3) #6
  br label %end

if.end:                                           ; preds = %entry
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %do.end14, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

do.end14:                                         ; preds = %if.end
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 115) #9
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %cmp19 = icmp eq ptr %16, null
  br i1 %cmp19, label %land.rhs, label %do.end14.if.end63_crit_edge

do.end14.if.end63_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

land.rhs:                                         ; preds = %do.end14
  %.b93 = load i1, ptr @snic_free_wq_buf.__already_done, align 1
  br i1 %.b93, label %land.rhs.if.end63_crit_edge, label %if.then29, !prof !210

land.rhs.if.end63_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then29:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_free_wq_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 115, i32 noundef 9, ptr noundef null) #6
  br label %if.end63

if.end63:                                         ; preds = %if.then29, %land.rhs.if.end63_crit_edge, %do.end14.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end63.list_del_init.exit_crit_edge

if.end63.list_del_init.exit_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end63.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %12, ptr %12, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %12, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call3) #6
  %sge_va = getelementptr inbounds %struct.snic_req_info, ptr %12, i32 0, i32 11
  %25 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sge_va, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool66.not = icmp eq i32 %26, 0
  br i1 %tobool66.not, label %list_del_init.exit.if.end70_crit_edge, label %if.then67

list_del_init.exit.if.end70_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %list_del_init.exit
  %req.i = getelementptr inbounds %struct.snic_req_info, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %req.i, align 8
  %add.ptr.i = getelementptr %struct.snic_host_req, ptr %28, i32 1
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %cmp.i94 = icmp eq i64 %30, 0
  br i1 %cmp.i94, label %do.end.i, label %if.then67.snic_pci_unmap_rsp_buf.exit_crit_edge

if.then67.snic_pci_unmap_rsp_buf.exit_crit_edge:  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

do.end.i:                                         ; preds = %if.then67
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 387) #9
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %cmp3.i = icmp eq i64 %32, 0
  br i1 %cmp3.i, label %land.rhs.i, label %do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge

do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

land.rhs.i:                                       ; preds = %do.end.i
  %.b52.i = load i1, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge, label %if.then10.i, !prof !210

land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 387, i32 noundef 9, ptr noundef null) #6
  br label %snic_pci_unmap_rsp_buf.exit

snic_pci_unmap_rsp_buf.exit:                      ; preds = %if.then10.i, %land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge, %do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge, %if.then67.snic_pci_unmap_rsp_buf.exit_crit_edge
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i, align 8
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #6
  %conv.i95 = trunc i64 %37 to i32
  %len.i = getelementptr %struct.snic_host_req, ptr %28, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv.i95, i32 noundef %40, i32 noundef 2, i32 noundef 0) #6
  %41 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sge_va, align 8
  %43 = inttoptr i32 %42 to ptr
  tail call void @kfree(ptr noundef %43) #6
  %44 = ptrtoint ptr %sge_va to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sge_va, align 8
  br label %if.end70

if.end70:                                         ; preds = %snic_pci_unmap_rsp_buf.exit, %list_del_init.exit.if.end70_crit_edge
  tail call void @snic_req_free(ptr noundef %call, ptr noundef %12)
  %shost = getelementptr inbounds %struct.snic, ptr %call, i32 0, i32 8
  %45 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %shost_gendev, ptr noundef nonnull @.str.5) #9
  br label %end

end:                                              ; preds = %if.end70, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svnic_dev_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_pci_unmap_rsp_buf(ptr nocapture noundef readonly %snic, ptr nocapture noundef readonly %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %add.ptr = getelementptr %struct.snic_host_req, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %do.end, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 387) #9
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %land.rhs, label %do.end.if.end43_crit_edge

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

land.rhs:                                         ; preds = %do.end
  %.b52 = load i1, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end43_crit_edge, label %if.then10, !prof !210

land.rhs.if.end43_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 387, i32 noundef 9, ptr noundef null) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then10, %land.rhs.if.end43_crit_edge, %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %conv = trunc i64 %10 to i32
  %len = getelementptr %struct.snic_host_req, ptr %1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %13, i32 noundef 2, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_req_free(ptr nocapture noundef readonly %snic, ptr noundef %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 1
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %abort_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 13
  %2 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %abort_req, align 8
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %do.end, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 344) #9
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %6 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %abort_req, align 8
  %cmp3 = icmp eq ptr %5, %7
  br i1 %cmp3, label %land.rhs, label %do.end.if.end42_crit_edge

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

land.rhs:                                         ; preds = %do.end
  %.b276 = load i1, ptr @snic_req_free.__already_done, align 1
  br i1 %.b276, label %land.rhs.if.end42_crit_edge, label %if.then10, !prof !210

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_req_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 344, i32 noundef 9, ptr noundef null) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then10, %land.rhs.if.end42_crit_edge, %do.end.if.end42_crit_edge, %entry.if.end42_crit_edge
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %req, align 8
  %dr_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 15
  %10 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dr_req, align 8
  %cmp44 = icmp eq ptr %9, %11
  br i1 %cmp44, label %do.end48, label %if.end42.if.end107_crit_edge

if.end42.if.end107_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

do.end48:                                         ; preds = %if.end42
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef 345) #9
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 8
  %14 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dr_req, align 8
  %cmp54 = icmp eq ptr %13, %15
  br i1 %cmp54, label %land.rhs61, label %do.end48.if.end107_crit_edge

do.end48.if.end107_crit_edge:                     ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

land.rhs61:                                       ; preds = %do.end48
  %.b272275 = load i1, ptr @snic_req_free.__already_done.42, align 1
  br i1 %.b272275, label %land.rhs61.if.end107_crit_edge, label %if.then72, !prof !210

land.rhs61.if.end107_crit_edge:                   ; preds = %land.rhs61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then72:                                        ; preds = %land.rhs61
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_req_free.__already_done.42, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 345, i32 noundef 9, ptr noundef null) #6
  br label %if.end107

if.end107:                                        ; preds = %if.then72, %land.rhs61.if.end107_crit_edge, %do.end48.if.end107_crit_edge, %if.end42.if.end107_crit_edge
  %sge_va = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 11
  %16 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sge_va, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp108.not = icmp eq i32 %17, 0
  br i1 %cmp108.not, label %if.end107.do.body171_crit_edge, label %do.end112

if.end107.do.body171_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body171

do.end112:                                        ; preds = %if.end107
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef 346) #9
  %18 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sge_va, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp117.not = icmp eq i32 %19, 0
  br i1 %cmp117.not, label %do.end112.do.body171_crit_edge, label %land.rhs124

do.end112.do.body171_crit_edge:                   ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body171

land.rhs124:                                      ; preds = %do.end112
  %.b273274 = load i1, ptr @snic_req_free.__already_done.46, align 1
  br i1 %.b273274, label %land.rhs124.do.body171_crit_edge, label %if.then135, !prof !210

land.rhs124.do.body171_crit_edge:                 ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body171

if.then135:                                       ; preds = %land.rhs124
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_req_free.__already_done.46, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 346, i32 noundef 9, ptr noundef null) #6
  br label %do.body171

do.body171:                                       ; preds = %if.then135, %land.rhs124.do.body171_crit_edge, %do.end112.do.body171_crit_edge, %if.end107.do.body171_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %20 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool172.not = icmp eq i32 %and, 0
  br i1 %tobool172.not, label %do.body171.do.end191_crit_edge, label %do.end183, !prof !210

do.body171.do.end191_crit_edge:                   ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end191

do.end183:                                        ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %21 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 49
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %req, align 8
  %25 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %abort_req, align 8
  %27 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dr_req, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %shost_gendev, ptr noundef nonnull @.str.48, ptr noundef %rqi, ptr noundef %24, ptr noundef %26, ptr noundef %28) #9
  br label %do.end191

do.end191:                                        ; preds = %do.end183, %do.body171.do.end191_crit_edge
  %29 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %abort_req, align 8
  %tobool193.not = icmp eq ptr %30, null
  br i1 %tobool193.not, label %do.end191.if.end202_crit_edge, label %if.then194

do.end191.if.end202_crit_edge:                    ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end202

if.then194:                                       ; preds = %do.end191
  %req_pa = getelementptr inbounds %struct.snic_host_req, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %req_pa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %req_pa, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool196.not = icmp eq i32 %32, 0
  br i1 %tobool196.not, label %if.then194.if.end200_crit_edge, label %if.then197

if.then194.if.end200_crit_edge:                   ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end200

if.then197:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %32, i32 noundef 136, i32 noundef 1, i32 noundef 0) #6
  br label %if.end200

if.end200:                                        ; preds = %if.then197, %if.then194.if.end200_crit_edge
  %35 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %abort_req, align 8
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 2
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 8
  tail call void @mempool_free(ptr noundef %36, ptr noundef %38) #6
  br label %if.end202

if.end202:                                        ; preds = %if.end200, %do.end191.if.end202_crit_edge
  %39 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dr_req, align 8
  %tobool204.not = icmp eq ptr %40, null
  br i1 %tobool204.not, label %if.end202.if.end218_crit_edge, label %if.then205

if.end202.if.end218_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end218

if.then205:                                       ; preds = %if.end202
  %req_pa207 = getelementptr inbounds %struct.snic_host_req, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %req_pa207 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %req_pa207, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool208.not = icmp eq i32 %42, 0
  br i1 %tobool208.not, label %if.then205.if.end214_crit_edge, label %if.then209

if.then205.if.end214_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

if.then209:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #8
  %pdev210 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %43 = ptrtoint ptr %pdev210 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev210, align 8
  %dev211 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev211, i32 noundef %42, i32 noundef 136, i32 noundef 1, i32 noundef 0) #6
  br label %if.end214

if.end214:                                        ; preds = %if.then209, %if.then205.if.end214_crit_edge
  %45 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dr_req, align 8
  %arrayidx217 = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 2
  %47 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx217, align 8
  tail call void @mempool_free(ptr noundef %46, ptr noundef %48) #6
  br label %if.end218

if.end218:                                        ; preds = %if.end214, %if.end202.if.end218_crit_edge
  %49 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req, align 8
  %req_pa220 = getelementptr inbounds %struct.snic_host_req, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %req_pa220 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %req_pa220, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool221.not = icmp eq i32 %52, 0
  br i1 %tobool221.not, label %if.end218.if.end227_crit_edge, label %if.then222

if.end218.if.end227_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

if.then222:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #8
  %pdev223 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %53 = ptrtoint ptr %pdev223 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev223, align 8
  %dev224 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %req_len = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 4
  %55 = ptrtoint ptr %req_len to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %req_len, align 2
  %conv = zext i16 %56 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev224, i32 noundef %52, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #6
  br label %if.end227

if.end227:                                        ; preds = %if.then222, %if.end218.if.end227_crit_edge
  %rq_pool_type = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 3
  %57 = ptrtoint ptr %rq_pool_type to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rq_pool_type, align 8
  %idxprom = zext i16 %58 to i32
  %arrayidx229 = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 %idxprom
  %59 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx229, align 4
  tail call void @mempool_free(ptr noundef %rqi, ptr noundef %60) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_queue_wq_desc(ptr noundef %snic, ptr noundef %os_buf, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fw = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 3
  %conv = zext i16 %len to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %0 = load i32, ptr @snic_log_level, align 4
  %and.i = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.snic_print_desc.exit_crit_edge, label %if.then.i

entry.snic_print_desc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_print_desc.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snic_dump_desc(ptr noundef nonnull @__func__.snic_queue_wq_desc, ptr noundef %os_buf, i32 noundef %conv) #6
  br label %snic_print_desc.exit

snic_print_desc.exit:                             ; preds = %if.then.i, %entry.snic_print_desc.exit_crit_edge
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i88 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %os_buf) #6
  br i1 %call.i88, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %snic_print_desc.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i89, !prof !210

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i89:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i89.dev_name.exit.i_crit_edge

if.then.i89.dev_name.exit.i_crit_edge:            ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i89.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.then.i89.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %snic_print_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %os_buf, i32 noundef %conv) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %os_buf to i32
  %sub.i = add i32 %8, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %7, i32 %shr.i
  %and.i90 = and i32 %8, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i90, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 8
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev3, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %11 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %req_pa = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 3
  %13 = ptrtoint ptr %req_pa to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i, ptr %req_pa, align 8
  %wq_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 44
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wq_lock) #6
  %type = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type, align 4
  %wq_enet_desc_count.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 29, i32 1
  %16 = ptrtoint ptr %wq_enet_desc_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wq_enet_desc_count.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %fw, i32 noundef 8) #6
  %call.i.i91 = tail call i64 @generic_atomic64_read(ptr noundef %fw) #6
  %18 = trunc i64 %call.i.i91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp50.i = icmp ne i8 %15, 5
  %sub52.i = sext i1 %cmp50.i to i32
  %conv49.i = add i32 %17, %sub52.i
  %cond.i = sub i32 %conv49.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond.i)
  %cmp17 = icmp slt i32 %cond.i, 1
  br i1 %cmp17, label %if.then19, label %if.end33

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev21, i32 noundef %retval.0.i, i32 noundef %conv, i32 noundef 1, i32 noundef 0) #6
  %21 = ptrtoint ptr %req_pa to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %req_pa, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call10) #6
  %wq_alloc_fail = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 4, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wq_alloc_fail, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %wq_alloc_fail) #6
  %shost31 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %22 = ptrtoint ptr %shost31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost31, align 16
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %host_no, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %25) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %to_use.i.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 43, i32 0, i32 5
  %26 = ptrtoint ptr %to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %to_use.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i.i, align 4
  %conv.i = zext i32 %retval.0.i to i64
  %30 = tail call i64 @llvm.bswap.i64(i64 %conv.i) #6
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %29, align 8
  %32 = and i16 %len, 16383
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #6
  %length3.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %length3.i.i, align 8
  %mss_loopback.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %29, i32 0, i32 2
  %35 = ptrtoint ptr %mss_loopback.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %mss_loopback.i.i, align 2
  %header_length_flags.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %29, i32 0, i32 3
  %36 = ptrtoint ptr %header_length_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 48, ptr %header_length_flags.i.i, align 4
  %vlan_tag33.i.i = getelementptr inbounds %struct.wq_enet_desc, ptr %29, i32 0, i32 4
  %37 = ptrtoint ptr %vlan_tag33.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %vlan_tag33.i.i, align 2
  %38 = ptrtoint ptr %to_use.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %to_use.i.i, align 4
  %sop1.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %sop1.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %sop1.i.i, align 4
  %os_buf2.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %39, i32 0, i32 2
  %41 = ptrtoint ptr %os_buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %os_buf, ptr %os_buf2.i.i, align 4
  %dma_addr3.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %dma_addr3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i, ptr %dma_addr3.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %39, i32 0, i32 3
  %43 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv, ptr %len4.i.i, align 4
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %index.i.i = getelementptr inbounds %struct.vnic_wq_buf, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i, align 4
  %ctrl.i.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 43, i32 0, i32 2
  %48 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ctrl.i.i, align 4
  %posted_index.i.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %49, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index.i.i, i32 %50) #6, !srcloc !214
  %51 = ptrtoint ptr %to_use.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %to_use.i.i, align 4
  %desc_avail.i.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 43, i32 0, i32 3, i32 9
  %52 = ptrtoint ptr %desc_avail.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_avail.i.i, align 4
  %dec.i.i = add i32 %53, -1
  store i32 %dec.i.i, ptr %desc_avail.i.i, align 4
  %call.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fw, i32 noundef 8) #6
  %call.i2.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %fw) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wq_lock, i32 noundef %call10) #6
  %54 = shl i64 %call.i2.i, 32
  %conv40 = ashr exact i64 %54, 32
  %max_actv_reqs = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 3, i32 1
  %call.i.i86 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_actv_reqs, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %max_actv_reqs) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %conv40, i64 %call.i)
  %cmp42 = icmp sgt i64 %conv40, %call.i
  br i1 %cmp42, label %if.then44, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i87 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_actv_reqs, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %max_actv_reqs, i64 noundef %conv40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end33.cleanup_crit_edge, %if.then19, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %if.then19 ], [ 0, %if.then44 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_print_desc(ptr noundef %fn, ptr noundef %os_buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %0 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @snic_dump_desc(ptr noundef %fn, ptr noundef %os_buf, i32 noundef %len)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_handle_untagged_req(ptr noundef %snic, ptr noundef %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rqi to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rqi, ptr %rqi, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rqi, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rqi, ptr %prev.i, align 4
  %spl_cmd_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 25
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spl_cmd_lock) #6
  %spl_cmd_list = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 26
  %prev.i10 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 26, i32 1
  %2 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i10, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rqi, ptr noundef %3, ptr noundef %spl_cmd_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rqi, ptr %prev.i10, align 4
  %5 = ptrtoint ptr %rqi to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spl_cmd_list, ptr %rqi, align 4
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rqi, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snic_req_init(ptr noundef %snic, i32 noundef %sg_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_cnt)
  %cmp = icmp sgt i32 %sg_cnt, 0
  %idxprom = zext i1 %cmp to i32
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %alloc_fail = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %alloc_fail, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %alloc_fail) #6
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.14, i32 noundef %idxprom) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %call, i32 0, i32 80)
  %conv2 = zext i1 %cmp to i16
  %rq_pool_type = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 3
  %5 = ptrtoint ptr %rq_pool_type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2, ptr %rq_pool_type, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %conv3 = zext i32 %6 to i64
  %start_time = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv3, ptr %start_time, align 8
  %add.ptr = getelementptr %struct.snic_req_info, ptr %call, i32 1
  %req = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 1
  %req_len = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %req_len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 136, ptr %req_len, align 2
  %snic4 = getelementptr inbounds %struct.snic_req_info, ptr %call, i32 0, i32 10
  %9 = ptrtoint ptr %snic4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %snic, ptr %snic4, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %req, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_cnt)
  %cmp7 = icmp eq i32 %sg_cnt, 0
  br i1 %cmp7, label %if.end.end_crit_edge, label %if.end10

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end10:                                         ; preds = %if.end
  %sg_cnt.tr = trunc i32 %sg_cnt to i16
  %11 = shl i16 %sg_cnt.tr, 4
  %conv13 = add i16 %11, 136
  %12 = ptrtoint ptr %req_len to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv13, ptr %req_len, align 2
  %conv14 = sext i32 %sg_cnt to i64
  %max_sgl = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 0, i32 2
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_sgl, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %max_sgl) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %conv14)
  %cmp18 = icmp slt i64 %call.i, %conv14
  br i1 %cmp18, label %if.then20, label %if.end10.if.end25_crit_edge

if.end10.if.end25_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_sgl, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %max_sgl, i64 noundef %conv14) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end10.if.end25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sg_cnt)
  %cmp26 = icmp sgt i32 %sg_cnt, 60
  br i1 %cmp26, label %do.end31, label %if.end25.if.end77_crit_edge

if.end25.if.end77_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

do.end31:                                         ; preds = %if.end25
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.15, i32 noundef 268) #9
  %.b141 = load i1, ptr @snic_req_init.__already_done, align 1
  br i1 %.b141, label %do.end31.if.end77_crit_edge, label %if.then43, !prof !210

do.end31.if.end77_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then43:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_req_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %if.end77

if.end77:                                         ; preds = %if.then43, %do.end31.if.end77_crit_edge, %if.end25.if.end77_crit_edge
  %sub = add i32 %sg_cnt, -1
  %arrayidx80 = getelementptr %struct.snic, ptr %snic, i32 0, i32 36, i32 0, i32 6, i32 %sub
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx80, i32 noundef 8) #6
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %arrayidx80) #6
  br label %end

end:                                              ; preds = %if.end77, %if.end.end_crit_edge
  %13 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req, align 8
  %15 = ptrtoint ptr %req_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %req_len, align 2
  %conv83 = zext i16 %16 to i32
  %17 = call ptr @memset(ptr %14, i32 0, i32 %conv83)
  %18 = ptrtoint ptr %call to i32
  %19 = load ptr, ptr %req, align 8
  %init_ctx = getelementptr inbounds %struct.snic_host_req, ptr %19, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %init_ctx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %init_ctx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %21 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool86.not = icmp eq i32 %and, 0
  br i1 %tobool86.not, label %end.cleanup_crit_edge, label %do.end97, !prof !210

end.cleanup_crit_edge:                            ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end97:                                         ; preds = %end
  call void @__sanitizer_cov_trace_pc() #8
  %shost98 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %22 = ptrtoint ptr %shost98 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %shost98, align 16
  %shost_gendev99 = getelementptr inbounds %struct.Scsi_Host, ptr %23, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.6, ptr noundef %shost_gendev99, ptr noundef nonnull @.str.20, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %end.cleanup_crit_edge, %if.then
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snic_abort_req_init(ptr nocapture noundef readonly %snic, ptr noundef %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rqi, null
  br i1 %tobool.not, label %do.end, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 290) #9
  %.b119 = load i1, ptr @snic_abort_req_init.__already_done, align 1
  br i1 %.b119, label %do.end.if.end43_crit_edge, label %if.then10, !prof !210

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_abort_req_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 290, i32 noundef 9, ptr noundef null) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then10, %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %abort_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 13
  %0 = ptrtoint ptr %abort_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abort_req, align 8
  %tobool44.not = icmp eq ptr %1, null
  br i1 %tobool44.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %call48 = tail call noalias ptr @mempool_alloc(ptr noundef %3, i32 noundef 2592) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.end53, label %if.end102

do.end53:                                         ; preds = %if.end47
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %4 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.25) #9
  %.b118120 = load i1, ptr @snic_abort_req_init.__already_done.27, align 1
  br i1 %.b118120, label %do.end53.cleanup_crit_edge, label %if.then67, !prof !210

do.end53.cleanup_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then67:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_abort_req_init.__already_done.27, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 300, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end102:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %abort_req to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call48, ptr %abort_req, align 8
  %7 = call ptr @memset(ptr %call48, i32 0, i32 136)
  %8 = ptrtoint ptr %rqi to i32
  %init_ctx = getelementptr inbounds %struct.snic_host_req, ptr %call48, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %init_ctx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %init_ctx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then67, %do.end53.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %retval.0 = phi ptr [ %call48, %if.end102 ], [ %1, %if.end43.cleanup_crit_edge ], [ null, %if.then67 ], [ null, %do.end53.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snic_dr_req_init(ptr nocapture noundef readonly %snic, ptr noundef %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rqi, null
  br i1 %tobool.not, label %do.end, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, i32 noundef 321) #9
  %.b180 = load i1, ptr @snic_dr_req_init.__already_done, align 1
  br i1 %.b180, label %do.end.if.end43_crit_edge, label %if.then10, !prof !210

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_dr_req_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 321, i32 noundef 9, ptr noundef null) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then10, %do.end.if.end43_crit_edge, %entry.if.end43_crit_edge
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 22, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %call44 = tail call noalias ptr @mempool_alloc(ptr noundef %1, i32 noundef 2592) #6
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %do.end49, label %if.end98

do.end49:                                         ; preds = %if.end43
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %2 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.10, ptr noundef %shost_gendev, ptr noundef nonnull @.str.30) #9
  %.b178181 = load i1, ptr @snic_dr_req_init.__already_done.32, align 1
  br i1 %.b178181, label %do.end49.cleanup_crit_edge, label %if.then63, !prof !210

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then63:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_dr_req_init.__already_done.32, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 326, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end98:                                         ; preds = %if.end43
  %dr_req = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 15
  %4 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dr_req, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.end98.if.end160_crit_edge, label %do.end102

if.end98.if.end160_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

do.end102:                                        ; preds = %if.end98
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, i32 noundef 331) #9
  %6 = ptrtoint ptr %dr_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dr_req, align 8
  %cmp107.not = icmp eq ptr %7, null
  br i1 %cmp107.not, label %do.end102.if.end160_crit_edge, label %land.rhs114

do.end102.if.end160_crit_edge:                    ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

land.rhs114:                                      ; preds = %do.end102
  %.b179182 = load i1, ptr @snic_dr_req_init.__already_done.36, align 1
  br i1 %.b179182, label %land.rhs114.if.end160_crit_edge, label %if.then125, !prof !210

land.rhs114.if.end160_crit_edge:                  ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160

if.then125:                                       ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_dr_req_init.__already_done.36, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 331, i32 noundef 9, ptr noundef null) #6
  br label %if.end160

if.end160:                                        ; preds = %if.then125, %land.rhs114.if.end160_crit_edge, %do.end102.if.end160_crit_edge, %if.end98.if.end160_crit_edge
  %8 = ptrtoint ptr %dr_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call44, ptr %dr_req, align 8
  %9 = call ptr @memset(ptr %call44, i32 0, i32 136)
  %10 = ptrtoint ptr %rqi to i32
  %init_ctx = getelementptr inbounds %struct.snic_host_req, ptr %call44, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %init_ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %init_ctx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end160, %if.then63, %do.end49.cleanup_crit_edge
  ret ptr %call44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_free_all_untagged_reqs(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spl_cmd_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 25
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spl_cmd_lock) #6
  %spl_cmd_list = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 26
  %0 = ptrtoint ptr %spl_cmd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spl_cmd_list, align 4
  %cmp.i.not30 = icmp eq ptr %1, %spl_cmd_list
  br i1 %cmp.i.not30, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev.i = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %cur.031 = phi ptr [ %1, %for.body.lr.ph ], [ %nxt.033, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %cur.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %nxt.033 = load ptr, ptr %cur.031, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.031) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.031, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cur.031 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur.031, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %cur.031 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %cur.031, ptr %cur.031, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cur.031, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cur.031, ptr %prev.i3.i, align 4
  %sge_va = getelementptr inbounds %struct.snic_req_info, ptr %cur.031, i32 0, i32 11
  %11 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sge_va, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  br i1 %tobool9.not, label %list_del_init.exit.if.end_crit_edge, label %if.then

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_del_init.exit
  %req.i = getelementptr inbounds %struct.snic_req_info, ptr %cur.031, i32 0, i32 1
  %13 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req.i, align 8
  %add.ptr.i = getelementptr %struct.snic_host_req, ptr %14, i32 1
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp.i27 = icmp eq i64 %16, 0
  br i1 %cmp.i27, label %do.end.i, label %if.then.snic_pci_unmap_rsp_buf.exit_crit_edge

if.then.snic_pci_unmap_rsp_buf.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

do.end.i:                                         ; preds = %if.then
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 387) #9
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %cmp3.i = icmp eq i64 %18, 0
  br i1 %cmp3.i, label %land.rhs.i, label %do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge

do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

land.rhs.i:                                       ; preds = %do.end.i
  %.b52.i = load i1, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge, label %if.then10.i, !prof !210

land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snic_pci_unmap_rsp_buf.exit

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_pci_unmap_rsp_buf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 387, i32 noundef 9, ptr noundef null) #6
  br label %snic_pci_unmap_rsp_buf.exit

snic_pci_unmap_rsp_buf.exit:                      ; preds = %if.then10.i, %land.rhs.i.snic_pci_unmap_rsp_buf.exit_crit_edge, %do.end.i.snic_pci_unmap_rsp_buf.exit_crit_edge, %if.then.snic_pci_unmap_rsp_buf.exit_crit_edge
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #6
  %conv.i28 = trunc i64 %23 to i32
  %len.i = getelementptr %struct.snic_host_req, ptr %14, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv.i28, i32 noundef %26, i32 noundef 2, i32 noundef 0) #6
  %27 = ptrtoint ptr %sge_va to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sge_va, align 8
  %29 = inttoptr i32 %28 to ptr
  tail call void @kfree(ptr noundef %29) #6
  %30 = ptrtoint ptr %sge_va to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sge_va, align 8
  br label %if.end

if.end:                                           ; preds = %snic_pci_unmap_rsp_buf.exit, %list_del_init.exit.if.end_crit_edge
  tail call void @snic_req_free(ptr noundef %snic, ptr noundef %cur.031)
  %cmp.i.not = icmp eq ptr %nxt.033, %spl_cmd_list
  br i1 %cmp.i.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_release_untagged_req(ptr noundef %snic, ptr noundef %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %snic_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %snic_lock) #6
  %in_remove = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 5
  %0 = ptrtoint ptr %in_remove to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_remove, align 4, !range !211
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %snic_lock, i32 noundef %call2) #6
  br i1 %tobool.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end:                                           ; preds = %entry
  %spl_cmd_lock = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 25
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spl_cmd_lock) #6
  %2 = ptrtoint ptr %rqi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rqi, align 4
  %cmp.i.not = icmp eq ptr %3, %rqi
  br i1 %cmp.i.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call15) #6
  br label %end

if.end24:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rqi) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.list_del_init.exit_crit_edge

if.end24.list_del_init.exit_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %rqi, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %rqi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rqi, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end24.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %rqi to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %rqi, ptr %rqi, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %rqi, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rqi, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spl_cmd_lock, i32 noundef %call15) #6
  tail call void @snic_req_free(ptr noundef %snic, ptr noundef %rqi)
  br label %end

end:                                              ; preds = %list_del_init.exit, %if.then22, %entry.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_hex_dump(ptr noundef %pfx, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %pfx, i32 noundef %len) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snic_hex_dump.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snic_hex_dump, %if.then)) #6
          to label %do.end6 [label %if.then], !srcloc !215

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef %pfx, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #6
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snic_dump_desc(ptr noundef %fn, ptr noundef %os_buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %line = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line) #6
  %0 = call ptr @memset(ptr %line, i32 0, i32 128)
  %type = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %2)
  %cmp = icmp ugt i8 %2, 17
  %init_ctx = getelementptr inbounds %struct.snic_io_hdr, ptr %os_buf, i32 0, i32 2
  %init_ctx4 = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 2
  %rqi.0.in.in = select i1 %cmp, ptr %init_ctx, ptr %init_ctx4
  %3 = ptrtoint ptr %rqi.0.in.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %rqi.0.in = load i32, ptr %rqi.0.in.in, align 4
  %rqi.0 = inttoptr i32 %rqi.0.in to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rqi.0.in)
  %cmp5 = icmp eq i32 %rqi.0.in, 0
  br i1 %cmp5, label %lor.end.critedge, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %req7 = getelementptr inbounds %struct.snic_req_info, ptr %rqi.0, i32 0, i32 1
  %4 = ptrtoint ptr %req7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req7, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %lor.rhs.critedge, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

lor.rhs.critedge:                                 ; preds = %lor.lhs.false
  %call.c192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef 470) #9
  %6 = ptrtoint ptr %req7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req7, align 8
  %cmp14 = icmp eq ptr %7, null
  br i1 %cmp14, label %lor.rhs.critedge.land.rhs_crit_edge, label %lor.rhs.critedge.if.end57_crit_edge

lor.rhs.critedge.if.end57_crit_edge:              ; preds = %lor.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

lor.rhs.critedge.land.rhs_crit_edge:              ; preds = %lor.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

lor.end.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef 470) #9
  br label %land.rhs

land.rhs:                                         ; preds = %lor.end.critedge, %lor.rhs.critedge.land.rhs_crit_edge
  %.b191 = load i1, ptr @snic_dump_desc.__already_done, align 1
  br i1 %.b191, label %land.rhs.if.end57_crit_edge, label %if.then23, !prof !210

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then23:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_dump_desc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 470, i32 noundef 9, ptr noundef null) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then23, %land.rhs.if.end57_crit_edge, %lor.rhs.critedge.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %sw.default [
    i8 2, label %sw.bb
    i8 3, label %sw.bb62
    i8 4, label %sw.bb66
    i8 5, label %sw.bb69
    i8 6, label %sw.bb72
    i8 7, label %if.end57.do.end158_crit_edge
    i8 18, label %sw.bb76
    i8 19, label %sw.bb79
    i8 20, label %sw.bb87
    i8 21, label %sw.bb90
    i8 22, label %sw.bb93
    i8 -128, label %sw.bb96
    i8 -127, label %sw.bb99
  ]

if.end57.do.end158_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

sw.bb:                                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %line, ptr @.str.74, i32 23)
  br label %do.end158

sw.bb62:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %cdb = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 2, i32 0, i32 9
  %12 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cdb, align 8
  %conv64 = zext i8 %13 to i32
  %call65 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %line, i32 noundef 128, ptr noundef nonnull @.str.76, i32 noundef %conv64)
  br label %do.end158

sw.bb66:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %14 = call ptr @memcpy(ptr %line, ptr @.str.78, i32 16)
  br label %do.end158

sw.bb69:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memcpy(ptr %line, ptr @.str.80, i32 21)
  br label %do.end158

sw.bb72:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %16 = call ptr @memcpy(ptr %line, ptr @.str.82, i32 20)
  br label %do.end158

sw.bb76:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %17 = call ptr @memcpy(ptr %line, ptr @.str.85, i32 28)
  br label %do.end158

sw.bb79:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %req81 = getelementptr inbounds %struct.snic_req_info, ptr %rqi.0, i32 0, i32 1
  %18 = ptrtoint ptr %req81 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %req81, align 8
  %cdb83 = getelementptr inbounds %struct.snic_host_req, ptr %19, i32 0, i32 2, i32 0, i32 9
  %20 = ptrtoint ptr %cdb83 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cdb83, align 8
  %conv85 = zext i8 %21 to i32
  %call86 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %line, i32 noundef 128, ptr noundef nonnull @.str.87, i32 noundef %conv85)
  br label %do.end158

sw.bb87:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %22 = call ptr @memcpy(ptr %line, ptr @.str.89, i32 21)
  br label %do.end158

sw.bb90:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memcpy(ptr %line, ptr @.str.91, i32 26)
  br label %do.end158

sw.bb93:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %24 = call ptr @memcpy(ptr %line, ptr @.str.93, i32 25)
  br label %do.end158

sw.bb96:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %25 = call ptr @memcpy(ptr %line, ptr @.str.95, i32 15)
  br label %do.end158

sw.bb99:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %26 = call ptr @memcpy(ptr %line, ptr @.str.97, i32 26)
  br label %do.end158

sw.default:                                       ; preds = %if.end57
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.71, i32 noundef 540) #9
  %.b189190 = load i1, ptr @snic_dump_desc.__already_done.102, align 1
  br i1 %.b189190, label %sw.default.do.end158_crit_edge, label %if.then121, !prof !210

sw.default.do.end158_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end158

if.then121:                                       ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @snic_dump_desc.__already_done.102, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 540, i32 noundef 9, ptr noundef null) #6
  br label %do.end158

do.end158:                                        ; preds = %if.then121, %sw.default.do.end158_crit_edge, %sw.bb99, %sw.bb96, %sw.bb93, %sw.bb90, %sw.bb87, %sw.bb79, %sw.bb76, %sw.bb72, %sw.bb69, %sw.bb66, %sw.bb62, %sw.bb, %if.end57.do.end158_crit_edge
  %cmd_str.0 = phi ptr [ @.str.96, %sw.bb99 ], [ @.str.94, %sw.bb96 ], [ @.str.92, %sw.bb93 ], [ @.str.90, %sw.bb90 ], [ @.str.88, %sw.bb87 ], [ @.str.86, %sw.bb79 ], [ @.str.84, %sw.bb76 ], [ @.str.81, %sw.bb72 ], [ @.str.79, %sw.bb69 ], [ @.str.77, %sw.bb66 ], [ @.str.75, %sw.bb62 ], [ @.str.73, %sw.bb ], [ @.str.83, %if.end57.do.end158_crit_edge ], [ @.str.98, %if.then121 ], [ @.str.98, %sw.default.do.end158_crit_edge ]
  %cmnd_id = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %cmnd_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmnd_id, align 4
  %sg_cnt = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 7
  %29 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sg_cnt, align 8
  %conv163 = zext i16 %30 to i32
  %status = getelementptr inbounds %struct.snic_host_req, ptr %os_buf, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 1
  %conv165 = zext i8 %32 to i32
  %33 = ptrtoint ptr %init_ctx4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %init_ctx4, align 8
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %fn, ptr noundef nonnull %line, i32 noundef %28, i32 noundef %conv163, i32 noundef %conv165, i32 noundef %34) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %35 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool169.not = icmp eq i32 %and, 0
  br i1 %tobool169.not, label %do.end158.if.end171_crit_edge, label %if.then170

do.end158.if.end171_crit_edge:                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

if.then170:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull %cmd_str.0, i32 noundef %len) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snic_hex_dump.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snic_dump_desc, %if.then.i)) #6
          to label %if.end171 [label %if.then.i], !srcloc !215

if.then.i:                                        ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #8
  call void @print_hex_dump(ptr noundef nonnull @.str.56, ptr noundef nonnull %cmd_str.0, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %os_buf, i32 noundef %len, i1 noundef zeroext true) #6
  br label %if.end171

if.end171:                                        ; preds = %if.then.i, %if.then170, %do.end158.if.end171_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_calc_io_process_time(ptr noundef %snic, ptr nocapture noundef readonly %rqi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %start_time = getelementptr inbounds %struct.snic_req_info, ptr %rqi, i32 0, i32 2
  %1 = ptrtoint ptr %start_time to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %start_time, align 8
  %sub = sub i64 %conv, %2
  %max_time = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 36, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_time, i32 noundef 8) #6
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %max_time) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %call.i)
  %cmp = icmp ugt i64 %sub, %call.i
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %max_time, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %max_time, i64 noundef %sub) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snic_get_trc_buf() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !194, !195, !196, !198, !199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_io.c", i32 115, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snic_free_wq_buf._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snic_free_wq_buf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/snic/snic_io.c", i32 125, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snic_free_wq_buf._entry.4, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @snic_free_wq_buf._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__func__.snic_queue_wq_desc, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/snic/snic_io.c", i32 173, i32 18}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/snic_io.c", i32 178, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snic_queue_wq_desc._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @snic_queue_wq_desc._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/snic/snic_io.c", i32 194, i32 3}
!23 = !{ptr @snic_queue_wq_desc._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @snic_queue_wq_desc._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/scsi/snic/snic_io.c", i32 245, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @snic_req_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @snic_req_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @snic_req_init._entry.16, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/scsi/snic/snic_io.c", i32 268, i32 2}
!32 = !{ptr @snic_req_init._entry_ptr.17, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/snic/snic_io.c", i32 277, i32 2}
!37 = !{ptr @snic_req_init._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @snic_req_init._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/snic/snic_io.c", i32 290, i32 2}
!41 = !{ptr @snic_abort_req_init._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @snic_abort_req_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/scsi/snic/snic_io.c", i32 299, i32 3}
!47 = !{ptr @snic_abort_req_init._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @snic_abort_req_init._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/scsi/snic/snic_io.c", i32 300, i32 3}
!51 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/snic/snic_io.c", i32 321, i32 2}
!53 = !{ptr @snic_dr_req_init._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @snic_dr_req_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/snic/snic_io.c", i32 325, i32 3}
!58 = !{ptr @snic_dr_req_init._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @snic_dr_req_init._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../drivers/scsi/snic/snic_io.c", i32 326, i32 3}
!62 = !{ptr @snic_dr_req_init._entry.33, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/scsi/snic/snic_io.c", i32 331, i32 2}
!64 = !{ptr @snic_dr_req_init._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/scsi/snic/snic_io.c", i32 344, i32 2}
!69 = !{ptr @snic_req_free._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @snic_req_free._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!73 = !{ptr @snic_req_free._entry.39, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/scsi/snic/snic_io.c", i32 345, i32 2}
!75 = !{ptr @snic_req_free._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!77 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!78 = !{ptr @snic_req_free._entry.43, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/scsi/snic/snic_io.c", i32 346, i32 2}
!80 = !{ptr @snic_req_free._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!83 = !{ptr @.str.48, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/snic/snic_io.c", i32 348, i32 2}
!85 = !{ptr @snic_req_free._entry.47, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @snic_req_free._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/snic/snic_io.c", i32 387, i32 2}
!89 = !{ptr @snic_pci_unmap_rsp_buf._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @snic_pci_unmap_rsp_buf._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!92 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/snic/snic_io.c", i32 451, i32 2}
!95 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @snic_hex_dump._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @snic_hex_dump._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/scsi/snic/snic_io.c", i32 452, i32 2}
!100 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @snic_hex_dump.__UNIQUE_ID_ddebug375, !99, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!102 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/snic/snic_io.c", i32 66, i32 2}
!105 = !{ptr @snic_wq_cmpl_handler_cont._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @snic_wq_cmpl_handler_cont._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !104, !"__already_done", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/snic/snic_io.c", i32 41, i32 2}
!111 = !{ptr @snic_wq_cmpl_frame_send._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @snic_wq_cmpl_frame_send._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/snic/snic_io.c", i32 44, i32 3}
!117 = !{ptr @snic_wq_cmpl_frame_send._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @snic_wq_cmpl_frame_send._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!121 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.66, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/snic/snic_io.c", i32 151, i32 3}
!125 = !{ptr @.str.67, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @snic_wqdesc_avail._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @snic_wqdesc_avail._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @snic_wqdesc_avail._entry.68, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../drivers/scsi/snic/snic_io.c", i32 152, i32 3}
!130 = !{ptr @snic_wqdesc_avail._entry_ptr.69, !129, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/snic/snic_io.c", i32 470, i32 2}
!135 = !{ptr @snic_dump_desc._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @snic_dump_desc._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !134, !"__already_done", i1 false, i1 false}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/scsi/snic/snic_io.c", i32 473, i32 13}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/snic/snic_io.c", i32 474, i32 30}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/scsi/snic/snic_io.c", i32 478, i32 13}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/snic/snic_io.c", i32 479, i32 30}
!147 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/snic/snic_io.c", i32 484, i32 13}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/scsi/snic/snic_io.c", i32 485, i32 30}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/scsi/snic/snic_io.c", i32 489, i32 13}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/snic/snic_io.c", i32 490, i32 30}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/scsi/snic/snic_io.c", i32 494, i32 13}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/scsi/snic/snic_io.c", i32 495, i32 30}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/scsi/snic/snic_io.c", i32 499, i32 13}
!161 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/scsi/snic/snic_io.c", i32 503, i32 13}
!163 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/snic/snic_io.c", i32 504, i32 30}
!165 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/scsi/snic/snic_io.c", i32 508, i32 13}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/scsi/snic/snic_io.c", i32 509, i32 30}
!169 = !{ptr @.str.88, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/scsi/snic/snic_io.c", i32 514, i32 13}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/snic/snic_io.c", i32 515, i32 30}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/snic/snic_io.c", i32 519, i32 13}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/snic/snic_io.c", i32 520, i32 30}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/snic/snic_io.c", i32 524, i32 13}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/scsi/snic/snic_io.c", i32 525, i32 30}
!181 = !{ptr @.str.94, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/scsi/snic/snic_io.c", i32 529, i32 13}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/snic/snic_io.c", i32 530, i32 30}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/snic/snic_io.c", i32 534, i32 13}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/snic/snic_io.c", i32 535, i32 30}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/snic/snic_io.c", i32 539, i32 13}
!191 = !{ptr @snic_dump_desc._entry.99, !192, !"_entry", i1 false, i1 false}
!192 = !{!"../drivers/scsi/snic/snic_io.c", i32 540, i32 3}
!193 = !{ptr @snic_dump_desc._entry_ptr.100, !192, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.101, !192, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !192, !"__already_done", i1 false, i1 false}
!196 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/snic/snic_io.c", i32 544, i32 2}
!198 = !{ptr @snic_dump_desc._entry.103, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @snic_dump_desc._entry_ptr.105, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{i64 2156727376}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i8 0, i8 2}
!212 = !{i64 2156728938}
!213 = !{i64 2152534181}
!214 = !{i64 4992059}
!215 = !{i64 2148497462, i64 2148497467, i64 2148497480, i64 2148497524, i64 2148497558, i64 2148497579}
