; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_cq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.mthca_cq = type { %struct.ib_cq, %struct.spinlock, i32, i32, i32, %struct.mthca_cq_buf, ptr, i32, i32, ptr, i32, ptr, i32, %struct.wait_queue_head, %struct.mutex }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.139, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.139 = type { %struct.work_struct }
%struct.mthca_cq_buf = type { %union.mthca_buf, %struct.mthca_mr, i32 }
%union.mthca_buf = type { %struct.mthca_buf_list }
%struct.mthca_buf_list = type { ptr, i32 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mthca_cqe = type { i32, i32, i32, i8, i8, i16, i32, i32, i32, i8, i8, i8, i8 }
%struct.mthca_cq_resize = type { %struct.mthca_cq_buf, i32, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.mthca_qp = type { %struct.ib_qp, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.mthca_mr, %struct.mthca_wq, %struct.mthca_wq, i32, i32, i32, ptr, %union.mthca_buf, %struct.wait_queue_head, %struct.mutex, ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.mthca_wq = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, i32, i32, i32, ptr }
%struct.mthca_srq = type { %struct.ib_srq, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i32, ptr, ptr, i32, ptr, %union.mthca_buf, %struct.mthca_mr, %struct.wait_queue_head, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%struct.mthca_err_cqe = type { i32, [3 x i32], i8, i8, i16, i32, i32, i8, [2 x i8], i8 }
%struct.mthca_mailbox = type { i32, ptr }
%struct.mthca_cq_context = type <{ i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>
%struct.mthca_ucontext = type { %struct.ib_ucontext, %struct.mthca_uar, ptr, i32 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@mthca_cq_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 224, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Completion event for bogus CQ %08x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_cq_completion\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/mthca/mthca_cq.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_cq_completion._entry_ptr = internal global ptr @mthca_cq_completion._entry, section ".printk_index", align 4
@mthca_cq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Async event for bogus CQ %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_cq_event\00", [17 x i8] zeroinitializer }, align 32
@mthca_cq_event._entry_ptr = internal global ptr @mthca_cq_event._entry, section ".printk_index", align 4
@mthca_init_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cq->lock\00", [22 x i8] zeroinitializer }, align 32
@mthca_init_cq.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cq->wait\00", [22 x i8] zeroinitializer }, align 32
@mthca_init_cq.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cq->mutex\00", [21 x i8] zeroinitializer }, align 32
@mthca_init_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SW2HW_CQ failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_init_cq\00", [18 x i8] zeroinitializer }, align 32
@mthca_init_cq._entry_ptr = internal global ptr @mthca_init_cq._entry, section ".printk_index", align 4
@mthca_free_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 908, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No memory for mailbox to free CQ.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mthca_free_cq\00", [18 x i8] zeroinitializer }, align 32
@mthca_free_cq._entry_ptr = internal global ptr @mthca_free_cq._entry, section ".printk_index", align 4
@mthca_free_cq._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HW2SW_CQ failed (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mthca_free_cq._entry_ptr.18 = internal global ptr @mthca_free_cq._entry.16, section ".printk_index", align 4
@mthca_init_cq_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->cq_table.lock\00", [44 x i8] zeroinitializer }, align 32
@mthca_poll_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 525, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CQ entry for unknown QP %06x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_poll_one\00", [17 x i8] zeroinitializer }, align 32
@mthca_poll_one._entry_ptr = internal global ptr @mthca_poll_one._entry, section ".printk_index", align 4
@mthca_debug_level = external dso_local local_unnamed_addr global i32, align 4
@handle_error_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 384, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"local QP operation err (QPN %06x, WQE @ %08x, CQN %06x, index %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_error_cqe\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@handle_error_cqe._entry_ptr = internal global ptr @handle_error_cqe._entry, section ".printk_index", align 4
@dump_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 197, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dump_cqe\00", [23 x i8] zeroinitializer }, align 32
@dump_cqe._entry_ptr = internal global ptr @dump_cqe._entry, section ".printk_index", align 4
@switch.table.mthca_poll_cq = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 21, i32 14, i32 15, i32 16, i32 17, i32 18], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 8, i64 9, i64 10, i64 11, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 9, i64 11]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 224, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 248, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 819, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 821, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 822, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 846, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 908, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 914, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 957, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 524, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 381, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [42 x i8] c"../drivers/infiniband/hw/mthca/mthca_cq.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 194, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [27 x i8] c"switch.table.mthca_poll_cq\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @dump_cqe._entry, ptr @dump_cqe._entry_ptr, ptr @handle_error_cqe._entry, ptr @handle_error_cqe._entry_ptr, ptr @mthca_cq_completion._entry, ptr @mthca_cq_completion._entry_ptr, ptr @mthca_cq_event._entry, ptr @mthca_cq_event._entry_ptr, ptr @mthca_free_cq._entry, ptr @mthca_free_cq._entry.16, ptr @mthca_free_cq._entry_ptr, ptr @mthca_free_cq._entry_ptr.18, ptr @mthca_init_cq._entry, ptr @mthca_init_cq._entry_ptr, ptr @mthca_poll_one._entry, ptr @mthca_poll_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mthca_init_cq.__key, ptr @.str.7, ptr @mthca_init_cq.__key.8, ptr @.str.9, ptr @mthca_init_cq.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @mthca_init_cq_table.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.mthca_poll_cq], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cq_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_cq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_cq.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_cq.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_cq._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_cq_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_poll_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_error_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mthca_poll_cq to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cq_completion(ptr noundef %dev, i32 noundef %cqn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cq1 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %0 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %cqn
  %call = tail call ptr @mthca_array_get(ptr noundef %cq1, i32 noundef %and) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str, i32 noundef %cqn) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arm_sn = getelementptr inbounds %struct.mthca_cq, ptr %call, i32 0, i32 12
  %4 = ptrtoint ptr %arm_sn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arm_sn, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arm_sn, align 8
  %comp_handler = getelementptr inbounds %struct.ib_cq, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %comp_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %comp_handler, align 8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq_context, align 8
  tail call void %7(ptr noundef nonnull %call, ptr noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_array_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cq_event(ptr noundef %dev, i32 noundef %cqn, i32 noundef %event_type) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #6
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %cq2 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %0 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %1, -1
  %and = and i32 %sub, %cqn
  %call = tail call ptr @mthca_array_get(ptr noundef %cq2, i32 noundef %and) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end.critedge, label %if.then

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %refcount = getelementptr inbounds %struct.mthca_cq, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcount, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %refcount, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %6 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %event, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %event_type, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %3, align 4
  %event_handler = getelementptr inbounds %struct.ib_cq, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_handler, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.then.if.end16_crit_edge, label %if.then12

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.5, i32 noundef %cqn) #9
  br label %cleanup

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cq_context = getelementptr inbounds %struct.ib_cq, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %cq_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cq_context, align 8
  call void %10(ptr noundef nonnull %event, ptr noundef %14) #6
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then.if.end16_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #6
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcount, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %if.then21, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %wait = getelementptr inbounds %struct.mthca_cq, ptr %call, i32 0, i32 13
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end.critedge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cq_clean(ptr noundef %dev, ptr noundef %cq, i32 noundef %qpn, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %cons_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 4
  %0 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cons_index, align 4
  %cqe1 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %2 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqe1, align 4
  %buf.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %is_direct.i.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %is_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_direct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf.i, align 8
  %add = add i32 %3, %1
  br label %for.cond

for.cond:                                         ; preds = %get_cqe.exit.for.cond_crit_edge, %entry
  %prod_index.0 = phi i32 [ %1, %entry ], [ %inc, %get_cqe.exit.for.cond_crit_edge ]
  %and = and i32 %3, %prod_index.0
  %mul4.i.i = shl i32 %and, 5
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul4.i.i
  br label %get_cqe.exit

if.else.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i = lshr i32 %mul4.i.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %7, i32 %div12.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %mul4.i.i, 4064
  %add.ptr7.i.i = getelementptr i8, ptr %9, i32 %rem.i.i
  br label %get_cqe.exit

get_cqe.exit:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr7.i.i, %if.else.i.i ]
  %owner.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %owner.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp slt i8 %11, 0
  %tobool.not124 = icmp eq ptr %retval.0.i.i, null
  %tobool.not = select i1 %tobool.not.i, i1 true, i1 %tobool.not124
  call void @__sanitizer_cov_trace_cmp4(i32 %prod_index.0, i32 %add)
  %cmp = icmp eq i32 %prod_index.0, %add
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  %inc = add i32 %prod_index.0, 1
  br i1 %or.cond, label %while.cond.preheader, label %get_cqe.exit.for.cond_crit_edge

get_cqe.exit.for.cond_crit_edge:                  ; preds = %get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

while.cond.preheader:                             ; preds = %get_cqe.exit
  %dec125 = add i32 %prod_index.0, -1
  %12 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cons_index, align 4
  %sub126 = sub i32 %dec125, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub126)
  %cmp7127 = icmp sgt i32 %sub126, -1
  br i1 %cmp7127, label %while.body.lr.ph, label %while.cond.preheader.if.end45_crit_edge

while.cond.preheader.if.end45_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %tobool14.not = icmp eq ptr %srq, null
  br label %while.body

while.body:                                       ; preds = %if.end28.while.body_crit_edge, %while.body.lr.ph
  %dec129 = phi i32 [ %dec125, %while.body.lr.ph ], [ %dec, %if.end28.while.body_crit_edge ]
  %nfreed.0128 = phi i32 [ 0, %while.body.lr.ph ], [ %nfreed.1, %if.end28.while.body_crit_edge ]
  %14 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cqe1, align 4
  %and10 = and i32 %15, %dec129
  %16 = ptrtoint ptr %is_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_direct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i82 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 8
  %mul4.i.i83 = shl i32 %and10, 5
  br i1 %tobool.not.i.i82, label %if.else.i.i90, label %if.then.i.i85

if.then.i.i85:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i84 = getelementptr i8, ptr %19, i32 %mul4.i.i83
  br label %get_cqe.exit92

if.else.i.i90:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i86 = lshr i32 %mul4.i.i83, 12
  %arrayidx.i.i87 = getelementptr %struct.mthca_buf_list, ptr %19, i32 %div12.i.i86
  %20 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i87, align 4
  %rem.i.i88 = and i32 %mul4.i.i83, 4064
  %add.ptr7.i.i89 = getelementptr i8, ptr %21, i32 %rem.i.i88
  br label %get_cqe.exit92

get_cqe.exit92:                                   ; preds = %if.else.i.i90, %if.then.i.i85
  %retval.0.i.i91 = phi ptr [ %add.ptr.i.i84, %if.then.i.i85 ], [ %add.ptr7.i.i89, %if.else.i.i90 ]
  %22 = ptrtoint ptr %retval.0.i.i91 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i.i91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %qpn)
  %cmp12 = icmp eq i32 %23, %qpn
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %get_cqe.exit92
  br i1 %tobool14.not, label %if.then13.if.end18_crit_edge, label %land.lhs.true

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then13
  %opcode.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i91, i32 0, i32 9
  %24 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %opcode.i, align 4
  %conv.i = zext i8 %25 to i32
  %and.i = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 254
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %and4.i = and i32 %conv.i, 1
  %26 = xor i32 %and4.i, 1
  br label %is_recv_cqe.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %is_send.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i91, i32 0, i32 10
  %27 = ptrtoint ptr %is_send.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_send.i, align 1
  %29 = xor i8 %28, -1
  %30 = lshr i8 %29, 7
  %.not.i = zext i8 %30 to i32
  br label %is_recv_cqe.exit

is_recv_cqe.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %26, %if.then.i ], [ %.not.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool16.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool16.not, label %is_recv_cqe.exit.if.end18_crit_edge, label %if.then17

is_recv_cqe.exit.if.end18_crit_edge:              ; preds = %is_recv_cqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %is_recv_cqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  %wqe = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i91, i32 0, i32 8
  %31 = ptrtoint ptr %wqe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wqe, align 4
  tail call void @mthca_free_srq_wqe(ptr noundef nonnull %srq, i32 noundef %32) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %is_recv_cqe.exit.if.end18_crit_edge, %if.then13.if.end18_crit_edge
  %inc19 = add i32 %nfreed.0128, 1
  br label %if.end28

if.else:                                          ; preds = %get_cqe.exit92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.0128)
  %tobool20.not = icmp eq i32 %nfreed.0128, 0
  br i1 %tobool20.not, label %if.else.if.end28_crit_edge, label %if.then21

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then21:                                        ; preds = %if.else
  %add22 = add i32 %dec129, %nfreed.0128
  %and25 = and i32 %15, %add22
  %mul4.i.i96 = shl i32 %and25, 5
  br i1 %tobool.not.i.i82, label %if.else.i.i103, label %if.then.i.i98

if.then.i.i98:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i97 = getelementptr i8, ptr %19, i32 %mul4.i.i96
  br label %get_cqe.exit105

if.else.i.i103:                                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i99 = lshr i32 %mul4.i.i96, 12
  %arrayidx.i.i100 = getelementptr %struct.mthca_buf_list, ptr %19, i32 %div12.i.i99
  %33 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i100, align 4
  %rem.i.i101 = and i32 %mul4.i.i96, 4064
  %add.ptr7.i.i102 = getelementptr i8, ptr %34, i32 %rem.i.i101
  br label %get_cqe.exit105

get_cqe.exit105:                                  ; preds = %if.else.i.i103, %if.then.i.i98
  %retval.0.i.i104 = phi ptr [ %add.ptr.i.i97, %if.then.i.i98 ], [ %add.ptr7.i.i102, %if.else.i.i103 ]
  %35 = call ptr @memcpy(ptr %retval.0.i.i104, ptr %retval.0.i.i91, i32 32)
  br label %if.end28

if.end28:                                         ; preds = %get_cqe.exit105, %if.else.if.end28_crit_edge, %if.end18
  %nfreed.1 = phi i32 [ %inc19, %if.end18 ], [ %nfreed.0128, %get_cqe.exit105 ], [ 0, %if.else.if.end28_crit_edge ]
  %dec = add i32 %dec129, -1
  %36 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cons_index, align 4
  %sub = sub i32 %dec, %37
  %cmp7 = icmp sgt i32 %sub, -1
  br i1 %cmp7, label %if.end28.while.body_crit_edge, label %while.end

if.end28.while.body_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.1)
  %tobool29.not = icmp eq i32 %nfreed.1, 0
  br i1 %tobool29.not, label %while.end.if.end45_crit_edge, label %for.cond31.preheader

while.end.if.end45_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

for.cond31.preheader:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nfreed.1)
  %cmp32130 = icmp sgt i32 %nfreed.1, 0
  br i1 %cmp32130, label %for.cond31.preheader.for.body33_crit_edge, label %for.cond31.preheader.do.body_crit_edge

for.cond31.preheader.do.body_crit_edge:           ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond31.preheader.for.body33_crit_edge:        ; preds = %for.cond31.preheader
  br label %for.body33

for.body33:                                       ; preds = %get_cqe.exit118.for.body33_crit_edge, %for.cond31.preheader.for.body33_crit_edge
  %i.0131 = phi i32 [ %inc41, %get_cqe.exit118.for.body33_crit_edge ], [ 0, %for.cond31.preheader.for.body33_crit_edge ]
  %38 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cons_index, align 4
  %add35 = add i32 %39, %i.0131
  %40 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cqe1, align 4
  %and38 = and i32 %add35, %41
  %42 = ptrtoint ptr %is_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %is_direct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i108 = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i, align 8
  %mul4.i.i109 = shl i32 %and38, 5
  br i1 %tobool.not.i.i108, label %if.else.i.i116, label %if.then.i.i111

if.then.i.i111:                                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i110 = getelementptr i8, ptr %45, i32 %mul4.i.i109
  br label %get_cqe.exit118

if.else.i.i116:                                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i112 = lshr i32 %mul4.i.i109, 12
  %arrayidx.i.i113 = getelementptr %struct.mthca_buf_list, ptr %45, i32 %div12.i.i112
  %46 = ptrtoint ptr %arrayidx.i.i113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i113, align 4
  %rem.i.i114 = and i32 %mul4.i.i109, 4064
  %add.ptr7.i.i115 = getelementptr i8, ptr %47, i32 %rem.i.i114
  br label %get_cqe.exit118

get_cqe.exit118:                                  ; preds = %if.else.i.i116, %if.then.i.i111
  %retval.0.i.i117 = phi ptr [ %add.ptr.i.i110, %if.then.i.i111 ], [ %add.ptr7.i.i115, %if.else.i.i116 ]
  %owner.i119 = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i117, i32 0, i32 12
  %48 = ptrtoint ptr %owner.i119 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %owner.i119, align 1
  %inc41 = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc41, %nfreed.1
  br i1 %exitcond.not, label %get_cqe.exit118.do.body_crit_edge, label %get_cqe.exit118.for.body33_crit_edge

get_cqe.exit118.for.body33_crit_edge:             ; preds = %get_cqe.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33

get_cqe.exit118.do.body_crit_edge:                ; preds = %get_cqe.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %get_cqe.exit118.do.body_crit_edge, %for.cond31.preheader.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cons_index, align 4
  %add44 = add i32 %50, %nfreed.1
  store i32 %add44, ptr %cons_index, align 4
  %mthca_flags.i.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %51 = ptrtoint ptr %mthca_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mthca_flags.i.i, align 8
  %and.i.i = and i32 %52, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i120 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i120, label %if.else.i123, label %if.then.i121

if.then.i121:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %set_ci_db.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 9
  %53 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_ci_db.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add44, ptr %54, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  br label %if.end45

if.else.i123:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %cqn.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 3
  %56 = ptrtoint ptr %cqn.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cqn.i, align 8
  %or.i = or i32 %57, 16777216
  %sub.i = add i32 %nfreed.1, -1
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 14
  %58 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 32
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 11
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !66
  %add.ptr.i.i122 = getelementptr i8, ptr %59, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122, i32 %sub.i) #6, !srcloc !66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #6
  br label %if.end45

if.end45:                                         ; preds = %if.else.i123, %if.then.i121, %while.end.if.end45_crit_edge, %while.cond.preheader.if.end45_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_srq_wqe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cq_resize_copy_cqes(ptr nocapture noundef %cq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 8
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %4 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe, align 4
  %resize_buf = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 6
  %6 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resize_buf, align 8
  %cqe3 = getelementptr inbounds %struct.mthca_cq_resize, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %cqe3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cqe3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp = icmp slt i32 %5, %9
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  %cons_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 4
  %10 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cons_index, align 4
  %and = and i32 %11, %5
  store i32 %and, ptr %cons_index, align 4
  %buf.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %is_direct.i.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %is_direct.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_direct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf.i, align 8
  %mul4.i.i = shl i32 %5, 5
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %mul4.i.i
  br label %get_cqe.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i = lshr i32 %mul4.i.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %15, i32 %div12.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %mul4.i.i, 4064
  %add.ptr7.i.i = getelementptr i8, ptr %17, i32 %rem.i.i
  br label %get_cqe.exit

get_cqe.exit:                                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr7.i.i, %if.else.i.i ]
  %owner.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %owner.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp slt i8 %19, 0
  %tobool10.not81 = icmp eq ptr %retval.0.i.i, null
  %tobool10.not = select i1 %tobool.not.i, i1 true, i1 %tobool10.not81
  br i1 %tobool10.not, label %get_cqe.exit.if.end15_crit_edge, label %if.then11

get_cqe.exit.if.end15_crit_edge:                  ; preds = %get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %get_cqe.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.neg = xor i32 %5, -1
  %sub = add i32 %and, %add.neg
  %20 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %cons_index, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %get_cqe.exit.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %entry.if.end15_crit_edge
  %cons_index16 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 4
  %21 = ptrtoint ptr %cons_index16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cons_index16, align 4
  %cqe18 = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %buf.i50 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %is_direct.i.i51 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %resize_buf23 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %get_cqe.exit79, %if.end15
  %i.0 = phi i32 [ %22, %if.end15 ], [ %inc, %get_cqe.exit79 ]
  %23 = ptrtoint ptr %cqe18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cqe18, align 4
  %and19 = and i32 %24, %i.0
  %25 = ptrtoint ptr %is_direct.i.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_direct.i.i51, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i52 = icmp eq i32 %26, 0
  %27 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i50, align 8
  %mul4.i.i53 = shl i32 %and19, 5
  br i1 %tobool.not.i.i52, label %if.else.i.i60, label %if.then.i.i55

if.then.i.i55:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i54 = getelementptr i8, ptr %28, i32 %mul4.i.i53
  br label %get_cqe.exit62

if.else.i.i60:                                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i56 = lshr i32 %mul4.i.i53, 12
  %arrayidx.i.i57 = getelementptr %struct.mthca_buf_list, ptr %28, i32 %div12.i.i56
  %29 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i57, align 4
  %rem.i.i58 = and i32 %mul4.i.i53, 4064
  %add.ptr7.i.i59 = getelementptr i8, ptr %30, i32 %rem.i.i58
  br label %get_cqe.exit62

get_cqe.exit62:                                   ; preds = %if.else.i.i60, %if.then.i.i55
  %retval.0.i.i61 = phi ptr [ %add.ptr.i.i54, %if.then.i.i55 ], [ %add.ptr7.i.i59, %if.else.i.i60 ]
  %owner.i63 = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i61, i32 0, i32 12
  %31 = ptrtoint ptr %owner.i63 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %owner.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i64 = icmp slt i8 %32, 0
  %tobool22.not80 = icmp eq ptr %retval.0.i.i61, null
  %tobool22.not = select i1 %tobool.not.i64, i1 true, i1 %tobool22.not80
  br i1 %tobool22.not, label %for.end, label %for.body

for.body:                                         ; preds = %get_cqe.exit62
  %33 = ptrtoint ptr %resize_buf23 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resize_buf23, align 8
  %cqe25 = getelementptr inbounds %struct.mthca_cq_resize, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %cqe25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cqe25, align 8
  %and26 = and i32 %36, %i.0
  %is_direct.i = getelementptr inbounds %struct.mthca_cq_buf, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %is_direct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i66 = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %34, align 8
  %mul4.i = shl i32 %and26, 5
  br i1 %tobool.not.i66, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %40, i32 %mul4.i
  br label %get_cqe_from_buf.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i = lshr i32 %mul4.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %40, i32 %div12.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %rem.i = and i32 %mul4.i, 4064
  %add.ptr7.i = getelementptr i8, ptr %42, i32 %rem.i
  br label %get_cqe_from_buf.exit

get_cqe_from_buf.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr7.i, %if.else.i ]
  br i1 %tobool.not.i.i52, label %if.else.i.i77, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i71 = getelementptr i8, ptr %28, i32 %mul4.i.i53
  br label %get_cqe.exit79

if.else.i.i77:                                    ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i73 = lshr i32 %mul4.i.i53, 12
  %arrayidx.i.i74 = getelementptr %struct.mthca_buf_list, ptr %28, i32 %div12.i.i73
  %43 = ptrtoint ptr %arrayidx.i.i74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i74, align 4
  %rem.i.i75 = and i32 %mul4.i.i53, 4064
  %add.ptr7.i.i76 = getelementptr i8, ptr %44, i32 %rem.i.i75
  br label %get_cqe.exit79

get_cqe.exit79:                                   ; preds = %if.else.i.i77, %if.then.i.i72
  %retval.0.i.i78 = phi ptr [ %add.ptr.i.i71, %if.then.i.i72 ], [ %add.ptr7.i.i76, %if.else.i.i77 ]
  %45 = call ptr @memcpy(ptr %retval.0.i, ptr %retval.0.i.i78, i32 32)
  %inc = add i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %get_cqe.exit62
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_cq_buf(ptr noundef %dev, ptr noundef %buf, i32 noundef %nent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nent, 5
  %is_direct = getelementptr inbounds %struct.mthca_cq_buf, ptr %buf, i32 0, i32 2
  %driver_pd = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 31
  %mr = getelementptr inbounds %struct.mthca_cq_buf, ptr %buf, i32 0, i32 1
  %call = tail call i32 @mthca_buf_alloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 16384, ptr noundef %buf, ptr noundef %is_direct, ptr noundef %driver_pd, i32 noundef 1, ptr noundef %mr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent)
  %cmp11 = icmp sgt i32 %nent, 0
  br i1 %cmp11, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %get_cqe_from_buf.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %get_cqe_from_buf.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %0 = ptrtoint ptr %is_direct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_direct, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 8
  %mul4.i = shl i32 %i.012, 5
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %mul4.i
  br label %get_cqe_from_buf.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i = lshr i32 %mul4.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %3, i32 %div12.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %rem.i = and i32 %mul4.i, 4064
  %add.ptr7.i = getelementptr i8, ptr %5, i32 %rem.i
  br label %get_cqe_from_buf.exit

get_cqe_from_buf.exit:                            ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr7.i, %if.else.i ]
  %owner.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i, i32 0, i32 12
  %6 = ptrtoint ptr %owner.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %owner.i, align 1
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %nent
  br i1 %exitcond.not, label %get_cqe_from_buf.exit.cleanup_crit_edge, label %get_cqe_from_buf.exit.for.body_crit_edge

get_cqe_from_buf.exit.for.body_crit_edge:         ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

get_cqe_from_buf.exit.cleanup_crit_edge:          ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %get_cqe_from_buf.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %get_cqe_from_buf.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_buf_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_cq_buf(ptr noundef %dev, ptr noundef %buf, i32 noundef %cqe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %cqe, 5
  %mul = add i32 %add, 32
  %is_direct = getelementptr inbounds %struct.mthca_cq_buf, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %is_direct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_direct, align 8
  %mr = getelementptr inbounds %struct.mthca_cq_buf, ptr %buf, i32 0, i32 1
  tail call void @mthca_buf_free(ptr noundef %dev, i32 noundef %mul, ptr noundef %buf, i32 noundef %1, ptr noundef %mr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_buf_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %dbd.i.i = alloca i32, align 4
  %new_wqe.i.i = alloca i32, align 4
  %tbuf = alloca %struct.mthca_cq_buf, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %lock = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %resize_buf = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 6
  %cons_index.i.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 4
  %cqe.i.i = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %buf.i.i.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 5
  %is_direct.i.i.i.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 5, i32 2
  %qp.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 25, i32 5
  %num_qps.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 18, i32 8
  %pdev.i.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %cqn.i.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 3
  %mthca_flags.i.i.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %set_ci_db.i = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 9
  %kar.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %doorbell_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  br label %repoll

repoll:                                           ; preds = %if.then39, %entry
  %qp.0 = phi ptr [ null, %entry ], [ %qp.5, %if.then39 ]
  %freed.0 = phi i32 [ 0, %entry ], [ %freed.3, %if.then39 ]
  %err.0 = phi i32 [ 0, %entry ], [ -11, %if.then39 ]
  %npolled.0 = phi i32 [ 0, %entry ], [ %npolled.1130, %if.then39 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %npolled.0, i32 %num_entries)
  %cmp8133 = icmp slt i32 %npolled.0, %num_entries
  br i1 %cmp8133, label %repoll.while.body_crit_edge, label %repoll.while.end_crit_edge

repoll.while.end_crit_edge:                       ; preds = %repoll
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

repoll.while.body_crit_edge:                      ; preds = %repoll
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %repoll.while.body_crit_edge
  %npolled.1141 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ %npolled.0, %repoll.while.body_crit_edge ]
  %freed.1135 = phi i32 [ %freed.2116, %if.end.while.body_crit_edge ], [ %freed.0, %repoll.while.body_crit_edge ]
  %qp.1134 = phi ptr [ %qp.2, %if.end.while.body_crit_edge ], [ %qp.0, %repoll.while.body_crit_edge ]
  %add.ptr = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141
  %2 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index.i.i, align 4
  %4 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqe.i.i, align 4
  %and.i.i = and i32 %5, %3
  %6 = ptrtoint ptr %is_direct.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_direct.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf.i.i.i, align 8
  %mul4.i.i.i.i = shl i32 %and.i.i, 5
  br i1 %tobool.not.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %mul4.i.i.i.i
  br label %next_cqe_sw.exit.i

if.else.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i.i.i = lshr i32 %mul4.i.i.i.i, 12
  %arrayidx.i.i.i.i = getelementptr %struct.mthca_buf_list, ptr %9, i32 %div12.i.i.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %rem.i.i.i.i = and i32 %mul4.i.i.i.i, 4064
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %11, i32 %rem.i.i.i.i
  br label %next_cqe_sw.exit.i

next_cqe_sw.exit.i:                               ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %add.ptr7.i.i.i.i, %if.else.i.i.i.i ]
  %owner.i.i.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 12
  %12 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %owner.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp slt i8 %13, 0
  %tobool.not295.i = icmp eq ptr %retval.0.i.i.i.i, null
  %tobool.not.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool.not295.i
  br i1 %tobool.not.i, label %next_cqe_sw.exit.i.while.end_crit_edge, label %if.end.i

next_cqe_sw.exit.i.while.end_crit_edge:           ; preds = %next_cqe_sw.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.i:                                         ; preds = %next_cqe_sw.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %opcode.i = getelementptr %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %opcode.i, align 4
  %conv.i = zext i8 %15 to i32
  %and.i = and i32 %conv.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 254
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %and6.i = and i32 %conv.i, 1
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %is_send7.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %is_send7.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_send7.i, align 1
  %18 = and i8 %17, -128
  %and9.i = zext i8 %18 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %and6.i, %cond.true.i ], [ %and9.i, %cond.false.i ]
  %tobool10.not.i = icmp eq ptr %qp.1134, null
  br i1 %tobool10.not.i, label %cond.end.i.if.then13.i_crit_edge, label %lor.lhs.false.i

cond.end.i.if.then13.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %cond.end.i
  %19 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i.i.i.i, align 4
  %qpn.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.1134, i32 0, i32 2
  %21 = ptrtoint ptr %qpn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp11.not.i = icmp eq i32 %20, %22
  br i1 %cmp11.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %lor.lhs.false.i.if.then13.i_crit_edge

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %cond.end.i.if.then13.i_crit_edge
  %23 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %retval.0.i.i.i.i, align 4
  %25 = ptrtoint ptr %num_qps.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_qps.i, align 8
  %sub.i = add i32 %26, -1
  %and15.i = and i32 %sub.i, %24
  %call16.i = call ptr @mthca_array_get(ptr noundef %qp.i, i32 noundef %and15.i) #6
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %mthca_poll_one.exit, label %if.then13.i.if.end23.i_crit_edge

if.then13.i.if.end23.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then13.i.if.end23.i_crit_edge, %lor.lhs.false.i.if.end23.i_crit_edge
  %qp.2 = phi ptr [ %call16.i, %if.then13.i.if.end23.i_crit_edge ], [ %qp.1134, %lor.lhs.false.i.if.end23.i_crit_edge ]
  %qp24.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 5
  %27 = ptrtoint ptr %qp24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %qp.2, ptr %qp24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool25.not.i = icmp eq i32 %cond.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %sq.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 12
  %wqe.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 8
  %28 = ptrtoint ptr %wqe.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wqe.i, align 4
  %send_wqe_offset.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 14
  %30 = ptrtoint ptr %send_wqe_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %send_wqe_offset.i, align 4
  %sub27.i = sub i32 %29, %31
  %wqe_shift.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 12, i32 8
  %32 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wqe_shift.i, align 4
  %shr.i = lshr i32 %sub27.i, %33
  %wrid.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 16
  %34 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wrid.i, align 4
  %max.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max.i, align 4
  %add.i = add i32 %37, %shr.i
  %arrayidx.i = getelementptr i64, ptr %35, i32 %add.i
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end23.i
  %srq.i = getelementptr inbounds %struct.ib_qp, ptr %qp.2, i32 0, i32 8
  %38 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %srq.i, align 8
  %tobool29.not.i = icmp eq ptr %39, null
  br i1 %tobool29.not.i, label %if.else41.i, label %if.end76.thread.i

if.else41.i:                                      ; preds = %if.else.i
  %rq43.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 11
  %wqe44.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %wqe44.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wqe44.i, align 4
  %wqe_shift45.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 11, i32 8
  %42 = ptrtoint ptr %wqe_shift45.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wqe_shift45.i, align 4
  %shr46.i = ashr i32 %41, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr46.i)
  %cmp47.i = icmp slt i32 %shr46.i, 0
  br i1 %cmp47.i, label %if.then51.i, label %if.else41.i.if.end54.i_crit_edge, !prof !68

if.else41.i.if.end54.i_crit_edge:                 ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.else41.i
  call void @__sanitizer_cov_trace_pc() #8
  %max52.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %max52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max52.i, align 4
  %sub53.i = add i32 %45, -1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.else41.i.if.end54.i_crit_edge
  %wqe_index.0.i = phi i32 [ %sub53.i, %if.then51.i ], [ %shr46.i, %if.else41.i.if.end54.i_crit_edge ]
  %wrid55.i = getelementptr inbounds %struct.mthca_qp, ptr %qp.2, i32 0, i32 16
  %46 = ptrtoint ptr %wrid55.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrid55.i, align 4
  %arrayidx56.i = getelementptr i64, ptr %47, i32 %wqe_index.0.i
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end54.i, %if.then26.i
  %storemerge.in.i = phi ptr [ %arrayidx.i, %if.then26.i ], [ %arrayidx56.i, %if.end54.i ]
  %wqe_index.1.i = phi i32 [ %shr.i, %if.then26.i ], [ %wqe_index.0.i, %if.end54.i ]
  %wq.0.i = phi ptr [ %sq.i, %if.then26.i ], [ %rq43.i, %if.end54.i ]
  %48 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %storemerge.i = load i64, ptr %storemerge.in.i, align 8
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %storemerge.i, ptr %add.ptr, align 8
  %tobool59.not.i = icmp eq ptr %wq.0.i, null
  br i1 %tobool59.not.i, label %if.end58.i.if.end76.i_crit_edge, label %if.then60.i

if.end58.i.if.end76.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then60.i:                                      ; preds = %if.end58.i
  %last_comp.i = getelementptr inbounds %struct.mthca_wq, ptr %wq.0.i, i32 0, i32 3
  %50 = ptrtoint ptr %last_comp.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %last_comp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %wqe_index.1.i, i32 %51)
  %cmp61.i = icmp ugt i32 %wqe_index.1.i, %51
  br i1 %cmp61.i, label %if.then63.i, label %if.else67.i

if.then63.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub65.i = sub i32 %wqe_index.1.i, %51
  %tail.i = getelementptr inbounds %struct.mthca_wq, ptr %wq.0.i, i32 0, i32 5
  %52 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tail.i, align 4
  %add66.i = add i32 %sub65.i, %53
  store i32 %add66.i, ptr %tail.i, align 4
  br label %if.end74.i

if.else67.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #8
  %max68.i = getelementptr inbounds %struct.mthca_wq, ptr %wq.0.i, i32 0, i32 1
  %54 = ptrtoint ptr %max68.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max68.i, align 4
  %tail72.i = getelementptr inbounds %struct.mthca_wq, ptr %wq.0.i, i32 0, i32 5
  %56 = ptrtoint ptr %tail72.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tail72.i, align 4
  %add69.i = sub i32 %wqe_index.1.i, %51
  %sub71.i = add i32 %add69.i, %55
  %add73.i = add i32 %sub71.i, %57
  store i32 %add73.i, ptr %tail72.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else67.i, %if.then63.i
  %58 = ptrtoint ptr %last_comp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %wqe_index.1.i, ptr %last_comp.i, align 4
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.end74.i, %if.end58.i.if.end76.i_crit_edge
  br i1 %cmp.i, label %if.end76.i.if.then78.i_crit_edge, label %if.end79.i

if.end76.i.if.then78.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78.i

if.end76.thread.i:                                ; preds = %if.else.i
  %wqe36.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 8
  %59 = ptrtoint ptr %wqe36.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wqe36.i, align 4
  %wqe_shift37.i = getelementptr inbounds %struct.mthca_srq, ptr %39, i32 0, i32 6
  %61 = ptrtoint ptr %wqe_shift37.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wqe_shift37.i, align 8
  %shr38.i = lshr i32 %60, %62
  %wrid39.i = getelementptr inbounds %struct.mthca_srq, ptr %39, i32 0, i32 14
  %63 = ptrtoint ptr %wrid39.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wrid39.i, align 8
  %arrayidx40.i = getelementptr i64, ptr %64, i32 %shr38.i
  %65 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx40.i, align 8
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %add.ptr, align 8
  call void @mthca_free_srq_wqe(ptr noundef nonnull %39, i32 noundef %60) #6
  br i1 %cmp.i, label %if.end76.thread.i.if.then78.i_crit_edge, label %if.end76.thread.i.if.else103.i_crit_edge

if.end76.thread.i.if.else103.i_crit_edge:         ; preds = %if.end76.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else103.i

if.end76.thread.i.if.then78.i_crit_edge:          ; preds = %if.end76.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78.i

if.then78.i:                                      ; preds = %if.end76.thread.i.if.then78.i_crit_edge, %if.end76.i.if.then78.i_crit_edge
  %wqe_index.1284286.i = phi i32 [ %shr38.i, %if.end76.thread.i.if.then78.i_crit_edge ], [ %wqe_index.1.i, %if.end76.i.if.then78.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dbd.i.i) #6
  %68 = ptrtoint ptr %dbd.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %dbd.i.i, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_wqe.i.i) #6
  %69 = ptrtoint ptr %new_wqe.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %new_wqe.i.i, align 4, !annotation !69
  %syndrome.i.i = getelementptr %struct.mthca_err_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %syndrome.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp.i.i = icmp eq i8 %71, 2
  br i1 %cmp.i.i, label %do.body.i.i, label %if.then78.i.if.end8.i.i_crit_edge

if.then78.i.if.end8.i.i_crit_edge:                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

do.body.i.i:                                      ; preds = %if.then78.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %72 = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end8thread-pre-split.i.i_crit_edge, label %do.end7.i.i

do.body.i.i.if.end8thread-pre-split.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8thread-pre-split.i.i

do.end7.i.i:                                      ; preds = %do.body.i.i
  %73 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev.i.i, align 8
  %dev5.i.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %75 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %retval.0.i.i.i.i, align 4
  %wqe.i.i = getelementptr %struct.mthca_err_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %wqe.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %wqe.i.i, align 4
  %79 = ptrtoint ptr %cqn.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cqn.i.i, align 8
  %81 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cons_index.i.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %dev5.i.i, ptr noundef nonnull @.str.22, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mthca_debug_level to i32))
  %.pr.i.i = load i32, ptr @mthca_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool.not.i.i279.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool.not.i.i279.i, label %do.end7.i.i.if.end8thread-pre-split.i.i_crit_edge, label %do.end.i.i.i

do.end7.i.i.if.end8thread-pre-split.i.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8thread-pre-split.i.i

do.end.i.i.i:                                     ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i.i, align 8
  %dev2.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %84, i32 0, i32 44
  %85 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %retval.0.i.i.i.i, align 4
  %arrayidx3.i.i.i = getelementptr i32, ptr %retval.0.i.i.i.i, i32 1
  %87 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx3.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr i32, ptr %retval.0.i.i.i.i, i32 2
  %89 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i32, ptr %retval.0.i.i.i.i, i32 3
  %91 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx5.i.i.i, align 4
  %93 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %syndrome.i.i, align 4
  %arrayidx7.i.i.i = getelementptr i32, ptr %retval.0.i.i.i.i, i32 5
  %95 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx7.i.i.i, align 4
  %97 = ptrtoint ptr %wqe.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wqe.i.i, align 4
  %99 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %opcode.i, align 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.24, ptr noundef %dev2.i.i.i, ptr noundef nonnull @.str.25, i32 noundef %86, i32 noundef %88, i32 noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %98, i32 noundef %100) #9
  br label %if.end8thread-pre-split.i.i

if.end8thread-pre-split.i.i:                      ; preds = %do.end.i.i.i, %do.end7.i.i.if.end8thread-pre-split.i.i_crit_edge, %do.body.i.i.if.end8thread-pre-split.i.i_crit_edge
  %101 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %.pr94.i.i = load i8, ptr %syndrome.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end8thread-pre-split.i.i, %if.then78.i.if.end8.i.i_crit_edge
  %102 = phi i8 [ %.pr94.i.i, %if.end8thread-pre-split.i.i ], [ %71, %if.then78.i.if.end8.i.i_crit_edge ]
  %switch.tableidx = add i8 %102, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %switch.tableidx)
  %103 = icmp ult i8 %switch.tableidx, 36
  br i1 %103, label %switch.lookup, label %if.end8.i.i.sw.epilog.i.i_crit_edge

if.end8.i.i.sw.epilog.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

switch.lookup:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %104 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [36 x i32], ptr @switch.table.mthca_poll_cq, i32 0, i32 %104
  %105 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %105)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %switch.lookup, %if.end8.i.i.sw.epilog.i.i_crit_edge
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 21, %if.end8.i.i.sw.epilog.i.i_crit_edge ]
  %status45.i.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 1
  %106 = ptrtoint ptr %status45.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %.sink.i.i, ptr %status45.i.i, align 8
  %vendor_err.i.i = getelementptr inbounds %struct.mthca_err_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %vendor_err.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vendor_err.i.i, align 1
  %conv46.i.i = zext i8 %108 to i32
  %vendor_err47.i.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 3
  %109 = ptrtoint ptr %vendor_err47.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %conv46.i.i, ptr %vendor_err47.i.i, align 8
  %110 = ptrtoint ptr %mthca_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mthca_flags.i.i.i, align 8
  %and.i.i.i = and i32 %111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool48.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end50.i.i, label %sw.epilog.i.i.out.thread292.i_crit_edge

sw.epilog.i.i.out.thread292.i_crit_edge:          ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread292.i

if.end50.i.i:                                     ; preds = %sw.epilog.i.i
  call void @mthca_free_err_wqe(ptr noundef %1, ptr noundef nonnull %qp.2, i32 noundef %cond.i, i32 noundef %wqe_index.1284286.i, ptr noundef nonnull %dbd.i.i, ptr noundef nonnull %new_wqe.i.i) #6
  %112 = ptrtoint ptr %new_wqe.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %new_wqe.i.i, align 4
  %and.i280.i = and i32 %113, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i280.i)
  %tobool51.not.i.i = icmp eq i32 %and.i280.i, 0
  br i1 %tobool51.not.i.i, label %if.end50.i.i.out.thread292.i_crit_edge, label %lor.lhs.false.i.i

if.end50.i.i.out.thread292.i_crit_edge:           ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread292.i

lor.lhs.false.i.i:                                ; preds = %if.end50.i.i
  %db_cnt.i.i = getelementptr inbounds %struct.mthca_err_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %db_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %db_cnt.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %115)
  %tobool52.not.i.i = icmp eq i16 %115, 0
  br i1 %tobool52.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.mthca_poll_one.exit.thread_crit_edge

lor.lhs.false.i.i.mthca_poll_one.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_poll_one.exit.thread

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %116 = ptrtoint ptr %dbd.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dbd.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool53.not.i.i = icmp eq i32 %117, 0
  br i1 %tobool53.not.i.i, label %land.lhs.true.i.i.mthca_poll_one.exit.thread_crit_edge, label %land.lhs.true.i.i.out.thread292.i_crit_edge

land.lhs.true.i.i.out.thread292.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread292.i

land.lhs.true.i.i.mthca_poll_one.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mthca_poll_one.exit.thread

if.end79.i:                                       ; preds = %if.end76.i
  br i1 %tobool25.not.i, label %if.end79.i.if.else103.i_crit_edge, label %if.then81.i

if.end79.i.if.else103.i_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else103.i

if.then81.i:                                      ; preds = %if.end79.i
  %wc_flags.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 9
  %118 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 0, ptr %wc_flags.i, align 8
  %119 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %opcode.i, align 4
  %121 = zext i8 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i8 %120, label %sw.default.i [
    i8 8, label %sw.bb.i
    i8 9, label %sw.bb85.i
    i8 10, label %sw.bb88.i
    i8 11, label %sw.bb90.i
    i8 16, label %sw.bb94.i
    i8 17, label %sw.bb96.i
    i8 18, label %sw.bb99.i
  ]

sw.bb.i:                                          ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode84.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %122 = ptrtoint ptr %opcode84.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %opcode84.i, align 4
  br label %if.end155.i

sw.bb85.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode86.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %123 = ptrtoint ptr %opcode86.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %opcode86.i, align 4
  %124 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %wc_flags.i, align 8
  br label %if.end155.i

sw.bb88.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode89.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %125 = ptrtoint ptr %opcode89.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %opcode89.i, align 4
  br label %if.end155.i

sw.bb90.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode91.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %126 = ptrtoint ptr %opcode91.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %opcode91.i, align 4
  %127 = ptrtoint ptr %wc_flags.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 2, ptr %wc_flags.i, align 8
  br label %if.end155.i

sw.bb94.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode95.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %128 = ptrtoint ptr %opcode95.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 2, ptr %opcode95.i, align 4
  %byte_cnt.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 7
  %129 = ptrtoint ptr %byte_cnt.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %byte_cnt.i, align 4
  %byte_len.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 4
  %131 = ptrtoint ptr %byte_len.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %byte_len.i, align 4
  br label %if.end155.i

sw.bb96.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode97.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %132 = ptrtoint ptr %opcode97.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %opcode97.i, align 4
  %byte_len98.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 4
  %133 = ptrtoint ptr %byte_len98.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 8, ptr %byte_len98.i, align 4
  br label %if.end155.i

sw.bb99.i:                                        ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode100.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %134 = ptrtoint ptr %opcode100.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 4, ptr %opcode100.i, align 4
  %byte_len101.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 4
  %135 = ptrtoint ptr %byte_len101.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 8, ptr %byte_len101.i, align 4
  br label %if.end155.i

sw.default.i:                                     ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #8
  %opcode102.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %136 = ptrtoint ptr %opcode102.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 255, ptr %opcode102.i, align 4
  br label %if.end155.i

if.else103.i:                                     ; preds = %if.end79.i.if.else103.i_crit_edge, %if.end76.thread.i.if.else103.i_crit_edge
  %byte_cnt104.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 7
  %137 = ptrtoint ptr %byte_cnt104.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %byte_cnt104.i, align 4
  %byte_len105.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 4
  %139 = ptrtoint ptr %byte_len105.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %byte_len105.i, align 4
  %140 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %opcode.i, align 4
  %142 = and i8 %141, 31
  %and108.i = zext i8 %142 to i32
  %143 = zext i32 %and108.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and108.i, label %sw.default117.i [
    i32 3, label %if.else103.i.sw.bb109.i_crit_edge
    i32 5, label %if.else103.i.sw.bb109.i_crit_edge175
    i32 9, label %if.else103.i.sw.bb112.i_crit_edge
    i32 11, label %if.else103.i.sw.bb112.i_crit_edge176
  ]

if.else103.i.sw.bb112.i_crit_edge176:             ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb112.i

if.else103.i.sw.bb112.i_crit_edge:                ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb112.i

if.else103.i.sw.bb109.i_crit_edge175:             ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109.i

if.else103.i.sw.bb109.i_crit_edge:                ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109.i

sw.bb109.i:                                       ; preds = %if.else103.i.sw.bb109.i_crit_edge, %if.else103.i.sw.bb109.i_crit_edge175
  %wc_flags110.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 9
  %144 = ptrtoint ptr %wc_flags110.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %wc_flags110.i, align 8
  %imm_etype_pkey_eec.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %145 = ptrtoint ptr %imm_etype_pkey_eec.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %imm_etype_pkey_eec.i, align 4
  %ex.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 6
  %147 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %ex.i, align 4
  br label %sw.epilog120.i

sw.bb112.i:                                       ; preds = %if.else103.i.sw.bb112.i_crit_edge, %if.else103.i.sw.bb112.i_crit_edge176
  %wc_flags113.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 9
  %148 = ptrtoint ptr %wc_flags113.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2, ptr %wc_flags113.i, align 8
  %imm_etype_pkey_eec114.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %149 = ptrtoint ptr %imm_etype_pkey_eec114.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %imm_etype_pkey_eec114.i, align 4
  %ex115.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 6
  %151 = ptrtoint ptr %ex115.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %ex115.i, align 4
  br label %sw.epilog120.i

sw.default117.i:                                  ; preds = %if.else103.i
  call void @__sanitizer_cov_trace_pc() #8
  %wc_flags118.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 9
  %152 = ptrtoint ptr %wc_flags118.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %wc_flags118.i, align 8
  br label %sw.epilog120.i

sw.epilog120.i:                                   ; preds = %sw.default117.i, %sw.bb112.i, %sw.bb109.i
  %.sink.i = phi i32 [ 128, %sw.default117.i ], [ 129, %sw.bb112.i ], [ 128, %sw.bb109.i ]
  %opcode119.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 2
  %153 = ptrtoint ptr %opcode119.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %.sink.i, ptr %opcode119.i, align 4
  %rlid.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 5
  %154 = ptrtoint ptr %rlid.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %rlid.i, align 2
  %conv121.i = zext i16 %155 to i32
  %slid.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 8
  %156 = ptrtoint ptr %slid.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %conv121.i, ptr %slid.i, align 4
  %sl_ipok.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 3
  %157 = ptrtoint ptr %sl_ipok.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %sl_ipok.i, align 4
  %159 = lshr i8 %158, 4
  %sl.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 11
  %160 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %sl.i, align 2
  %rqpn.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 2
  %161 = ptrtoint ptr %rqpn.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %rqpn.i, align 4
  %and125.i = and i32 %162, 16777215
  %src_qp.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 7
  %163 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %and125.i, ptr %src_qp.i, align 8
  %g_mlpath.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 4
  %164 = ptrtoint ptr %g_mlpath.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %g_mlpath.i, align 1
  %166 = and i8 %165, 127
  %dlid_path_bits.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 12
  %167 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %dlid_path_bits.i, align 1
  %imm_etype_pkey_eec129.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %168 = ptrtoint ptr %imm_etype_pkey_eec129.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %imm_etype_pkey_eec129.i, align 4
  %shr130.i = lshr i32 %169, 16
  %conv131.i = trunc i32 %shr130.i to i16
  %pkey_index.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 10
  %170 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv131.i, ptr %pkey_index.i, align 4
  %171 = load i8, ptr %g_mlpath.i, align 1
  %.lobit.i = lshr i8 %171, 7
  %172 = zext i8 %.lobit.i to i32
  %wc_flags137.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 9
  %173 = ptrtoint ptr %wc_flags137.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %wc_flags137.i, align 8
  %or138.i = or i32 %174, %172
  store i32 %or138.i, ptr %wc_flags137.i, align 8
  %175 = load i8, ptr %sl_ipok.i, align 4
  %176 = and i8 %175, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool148.not.i = icmp eq i8 %176, 0
  br i1 %tobool148.not.i, label %sw.epilog120.i.land.end.i_crit_edge, label %land.rhs.i

sw.epilog120.i.land.end.i_crit_edge:              ; preds = %sw.epilog120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.rhs.i:                                       ; preds = %sw.epilog120.i
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %rqpn.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %rqpn.i, align 4
  %shr140.i = lshr i32 %178, 24
  %my_ee.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %my_ee.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %my_ee.i, align 4
  %shr141.i = lshr i32 %180, 16
  %and142.i = and i32 %shr141.i, 65280
  %or143.i = or i32 %and142.i, %shr140.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or143.i)
  %cmp150.i = icmp eq i32 %or143.i, 65535
  %phi.sel.i = select i1 %cmp150.i, i32 8, i32 0
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %sw.epilog120.i.land.end.i_crit_edge
  %181 = phi i32 [ 0, %sw.epilog120.i.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  %or154.i = or i32 %181, %or138.i
  %182 = ptrtoint ptr %wc_flags137.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %or154.i, ptr %wc_flags137.i, align 8
  br label %if.end155.i

if.end155.i:                                      ; preds = %land.end.i, %sw.default.i, %sw.bb99.i, %sw.bb96.i, %sw.bb94.i, %sw.bb90.i, %sw.bb88.i, %sw.bb85.i, %sw.bb.i
  %status.i = getelementptr %struct.ib_wc, ptr %entry1, i32 %npolled.1141, i32 1
  %183 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %status.i, align 8
  br label %mthca_poll_one.exit.thread122

out.thread292.i:                                  ; preds = %land.lhs.true.i.i.out.thread292.i_crit_edge, %if.end50.i.i.out.thread292.i_crit_edge, %sw.epilog.i.i.out.thread292.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_wqe.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbd.i.i) #6
  br label %mthca_poll_one.exit.thread122

mthca_poll_one.exit.thread:                       ; preds = %land.lhs.true.i.i.mthca_poll_one.exit.thread_crit_edge, %lor.lhs.false.i.i.mthca_poll_one.exit.thread_crit_edge
  %184 = ptrtoint ptr %dbd.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %dbd.i.i, align 4
  %186 = trunc i32 %185 to i16
  %add.i.i.i = sub i16 %115, %186
  %187 = ptrtoint ptr %db_cnt.i.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %add.i.i.i, ptr %db_cnt.i.i, align 2
  %wqe58.i.i = getelementptr inbounds %struct.mthca_err_cqe, ptr %retval.0.i.i.i.i, i32 0, i32 6
  %188 = ptrtoint ptr %wqe58.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %113, ptr %wqe58.i.i, align 4
  %189 = ptrtoint ptr %syndrome.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 5, ptr %syndrome.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_wqe.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dbd.i.i) #6
  br label %if.end

mthca_poll_one.exit.thread122:                    ; preds = %out.thread292.i, %if.end155.i
  %190 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -128, ptr %owner.i.i.i, align 1
  %inc.i125 = add i32 %freed.1135, 1
  %191 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cons_index.i.i, align 4
  %inc164.i126 = add i32 %192, 1
  store i32 %inc164.i126, ptr %cons_index.i.i, align 4
  br label %if.end

mthca_poll_one.exit:                              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %193 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdev.i.i, align 8
  %dev19.i = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  %195 = ptrtoint ptr %retval.0.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %retval.0.i.i.i.i, align 4
  %and21.i = and i32 %196, 16777215
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19.i, ptr noundef nonnull @.str.20, i32 noundef %and21.i) #9
  %197 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -128, ptr %owner.i.i.i, align 1
  %inc.i = add i32 %freed.1135, 1
  %198 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %cons_index.i.i, align 4
  %inc164.i = add i32 %199, 1
  store i32 %inc164.i, ptr %cons_index.i.i, align 4
  br label %while.end

if.end:                                           ; preds = %mthca_poll_one.exit.thread122, %mthca_poll_one.exit.thread
  %freed.2116 = phi i32 [ %freed.1135, %mthca_poll_one.exit.thread ], [ %inc.i125, %mthca_poll_one.exit.thread122 ]
  %inc = add i32 %npolled.1141, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %mthca_poll_one.exit, %next_cqe_sw.exit.i.while.end_crit_edge, %repoll.while.end_crit_edge
  %npolled.1130 = phi i32 [ %npolled.1141, %mthca_poll_one.exit ], [ %npolled.0, %repoll.while.end_crit_edge ], [ %num_entries, %if.end.while.end_crit_edge ], [ %npolled.1141, %next_cqe_sw.exit.i.while.end_crit_edge ]
  %qp.5 = phi ptr [ null, %mthca_poll_one.exit ], [ %qp.0, %repoll.while.end_crit_edge ], [ %qp.2, %if.end.while.end_crit_edge ], [ %qp.1134, %next_cqe_sw.exit.i.while.end_crit_edge ]
  %freed.3 = phi i32 [ %inc.i, %mthca_poll_one.exit ], [ %freed.0, %repoll.while.end_crit_edge ], [ %freed.2116, %if.end.while.end_crit_edge ], [ %freed.1135, %next_cqe_sw.exit.i.while.end_crit_edge ]
  %err.2 = phi i32 [ -22, %mthca_poll_one.exit ], [ %err.0, %repoll.while.end_crit_edge ], [ 0, %if.end.while.end_crit_edge ], [ -11, %next_cqe_sw.exit.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freed.3)
  %tobool11.not = icmp eq i32 %freed.3, 0
  br i1 %tobool11.not, label %while.end.if.end16_crit_edge, label %do.body13

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.body13:                                        ; preds = %while.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @arm_heavy_mb() #6
  %200 = ptrtoint ptr %mthca_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mthca_flags.i.i.i, align 8
  %and.i.i93 = and i32 %201, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i93)
  %tobool.not.i94 = icmp eq i32 %and.i.i93, 0
  br i1 %tobool.not.i94, label %if.else.i96, label %if.then.i

if.then.i:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %202 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cons_index.i.i, align 4
  %204 = ptrtoint ptr %set_ci_db.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %set_ci_db.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %203, ptr %205, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  call void @arm_heavy_mb() #6
  br label %if.end16

if.else.i96:                                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %cqn.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cqn.i.i, align 8
  %or.i = or i32 %208, 16777216
  %sub.i95 = add i32 %freed.3, -1
  %209 = ptrtoint ptr %kar.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %kar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %210, i32 32
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or.i) #6, !srcloc !66
  %add.ptr.i.i = getelementptr i8, ptr %210, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %sub.i95) #6, !srcloc !66
  call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock.i, i32 noundef %call2.i.i) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else.i96, %if.then.i, %while.end.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.2)
  %cmp17 = icmp eq i32 %err.2, -11
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.end57_crit_edge

if.end16.if.end57_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end16
  %211 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %resize_buf, align 8
  %tobool19.not = icmp eq ptr %212, null
  br i1 %tobool19.not, label %land.lhs.true.if.end57_crit_edge, label %land.rhs

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.rhs:                                         ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct.mthca_cq_resize, ptr %212, i32 0, i32 2
  %213 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %214)
  %cmp21 = icmp eq i32 %214, 1
  br i1 %cmp21, label %if.then25, label %land.rhs.if.end57_crit_edge, !prof !68

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then25:                                        ; preds = %land.rhs
  %215 = ptrtoint ptr %mthca_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %mthca_flags.i.i.i, align 8
  %and.i98 = and i32 %216, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool27.not = icmp eq i32 %and.i98, 0
  br i1 %tobool27.not, label %if.then28, label %if.then25.if.end30_crit_edge

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %217 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %cqe.i.i, align 4
  %219 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %cons_index.i.i, align 4
  %and = and i32 %220, %218
  store i32 %and, ptr %cons_index.i.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then25.if.end30_crit_edge
  %221 = ptrtoint ptr %cons_index.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cons_index.i.i, align 4
  %cqe34 = getelementptr inbounds %struct.mthca_cq_resize, ptr %212, i32 0, i32 1
  %223 = ptrtoint ptr %cqe34 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %cqe34, align 8
  %and35 = and i32 %224, %222
  %is_direct.i = getelementptr inbounds %struct.mthca_cq_buf, ptr %212, i32 0, i32 2
  %225 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %is_direct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool.not.i99 = icmp eq i32 %226, 0
  %227 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %212, align 8
  %mul4.i = shl i32 %and35, 5
  br i1 %tobool.not.i99, label %if.else.i103, label %if.then.i101

if.then.i101:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i100 = getelementptr i8, ptr %228, i32 %mul4.i
  br label %get_cqe_from_buf.exit

if.else.i103:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i = lshr i32 %mul4.i, 12
  %arrayidx.i102 = getelementptr %struct.mthca_buf_list, ptr %228, i32 %div12.i
  %229 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i102, align 4
  %rem.i = and i32 %mul4.i, 4064
  %add.ptr7.i = getelementptr i8, ptr %230, i32 %rem.i
  br label %get_cqe_from_buf.exit

get_cqe_from_buf.exit:                            ; preds = %if.else.i103, %if.then.i101
  %retval.0.i104 = phi ptr [ %add.ptr.i100, %if.then.i101 ], [ %add.ptr7.i, %if.else.i103 ]
  %owner.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i104, i32 0, i32 12
  %231 = ptrtoint ptr %owner.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %owner.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool.not.i105 = icmp slt i8 %232, 0
  %tobool38.not128 = icmp eq ptr %retval.0.i104, null
  %tobool38.not = select i1 %tobool.not.i105, i1 true, i1 %tobool38.not128
  br i1 %tobool38.not, label %get_cqe_from_buf.exit.if.end57_crit_edge, label %if.then39

get_cqe_from_buf.exit.if.end57_crit_edge:         ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then39:                                        ; preds = %get_cqe_from_buf.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %tbuf)
  %233 = call ptr @memcpy(ptr %tbuf, ptr %buf.i.i.i, i32 168)
  %234 = ptrtoint ptr %cqe.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %cqe.i.i, align 4
  %236 = call ptr @memcpy(ptr %buf.i.i.i, ptr %212, i32 168)
  %237 = ptrtoint ptr %cqe34 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %cqe34, align 8
  store i32 %238, ptr %cqe.i.i, align 4
  %239 = call ptr @memcpy(ptr %212, ptr %tbuf, i32 168)
  %240 = ptrtoint ptr %resize_buf to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %resize_buf, align 8
  %cqe53 = getelementptr inbounds %struct.mthca_cq_resize, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %cqe53 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %235, ptr %cqe53, align 8
  %243 = load ptr, ptr %resize_buf, align 8
  %state55 = getelementptr inbounds %struct.mthca_cq_resize, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %state55 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 2, ptr %state55, align 4
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %tbuf)
  br label %repoll

if.end57:                                         ; preds = %get_cqe_from_buf.exit.if.end57_crit_edge, %land.rhs.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.end16.if.end57_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %cmp59 = icmp eq i32 %err.2, 0
  %brmerge = or i1 %cmp59, %cmp17
  %cond = select i1 %brmerge, i32 %npolled.1130, i32 %err.2
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_tavor_arm_cq(ptr nocapture noundef readonly %cq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %cond = select i1 %cmp, i32 50331648, i32 33554432
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 3
  %0 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqn, align 8
  %or = or i32 %1, %cond
  %2 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq, align 8
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kar, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 32
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %3, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #6, !srcloc !66
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock, i32 noundef %call2.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_arbel_arm_cq(ptr nocapture noundef readonly %ibcq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arm_sn = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 12
  %0 = ptrtoint ptr %arm_sn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arm_sn, align 8
  %and = and i32 %1, 3
  %cons_index = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 4
  %2 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_index, align 4
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 3
  %4 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cqn, align 8
  %shl = shl i32 %5, 8
  %shl1 = shl nuw nsw i32 %and, 3
  %or = or i32 %shl, %shl1
  %and3 = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and3)
  %cmp = icmp eq i32 %and3, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %or2 = or i32 %or, %cond
  %or4 = or i32 %or2, 64
  %arm_db = getelementptr inbounds %struct.mthca_cq, ptr %ibcq, i32 0, i32 11
  %6 = ptrtoint ptr %arm_db to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arm_db, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %arrayidx3.i = getelementptr i32, ptr %7, i32 1
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or4, ptr %arrayidx3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %shl6 = shl nuw nsw i32 %and, 28
  %cond9 = select i1 %cmp, i32 16777216, i32 33554432
  %or10 = or i32 %shl6, %cond9
  %10 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cqn, align 8
  %or12 = or i32 %11, %or10
  %12 = ptrtoint ptr %cons_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cons_index, align 4
  %14 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ibcq, align 8
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %15, i32 0, i32 14
  %16 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kar, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 32
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %15, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or12) #6, !srcloc !66
  %add.ptr.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !66
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock, i32 noundef %call2.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_cq(ptr noundef %dev, i32 noundef %nent, ptr noundef readonly %ctx, i32 noundef %pdn, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %nent, -1
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %0 = ptrtoint ptr %cqe to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sub, ptr %cqe, align 4
  %tobool.not = icmp eq ptr %ctx, null
  %lnot.ext = zext i1 %tobool.not to i32
  %is_kernel = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 7
  %1 = ptrtoint ptr %is_kernel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %lnot.ext, ptr %is_kernel, align 4
  %cq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23
  %call = tail call i32 @mthca_alloc(ptr noundef %cq_table) #6
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 3
  %2 = ptrtoint ptr %cqn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %cqn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %3 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end.if.end27_crit_edge, label %if.then4

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then4:                                         ; preds = %if.end
  %table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 3
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %table, align 8
  %call7 = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %6, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then4.err_out_crit_edge

if.then4.err_out_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out

if.end10:                                         ; preds = %if.then4
  %7 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %if.end10.if.end27_crit_edge, label %if.then13

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then13:                                        ; preds = %if.end10
  %arm_sn = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 12
  %9 = ptrtoint ptr %arm_sn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arm_sn, align 8
  %10 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cqn, align 8
  %set_ci_db = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 9
  %call15 = tail call i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef 1, i32 noundef %11, ptr noundef %set_ci_db) #6
  %set_ci_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 8
  %12 = ptrtoint ptr %set_ci_db_index to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call15, ptr %set_ci_db_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.then13.err_out_icm_crit_edge, label %if.end19

if.then13.err_out_icm_crit_edge:                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_icm

if.end19:                                         ; preds = %if.then13
  %13 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cqn, align 8
  %arm_db = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 11
  %call21 = tail call i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef 2, i32 noundef %14, ptr noundef %arm_db) #6
  %arm_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 10
  %15 = ptrtoint ptr %arm_db_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call21, ptr %arm_db_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp23 = icmp slt i32 %call21, 0
  br i1 %cmp23, label %if.end19.err_out_ci_crit_edge, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end19.err_out_ci_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_ci

if.end27:                                         ; preds = %if.end19.if.end27_crit_edge, %if.end10.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %call28 = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #6
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call28 to i32
  br label %err_out_arm

if.end32:                                         ; preds = %if.end27
  %buf = getelementptr inbounds %struct.mthca_mailbox, ptr %call28, i32 0, i32 1
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %19 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  br i1 %tobool34.not, label %if.end32.do.body_crit_edge, label %if.then35

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then35:                                        ; preds = %if.end32
  %buf36 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %mul.i = shl i32 %nent, 5
  %is_direct.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %driver_pd.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 31
  %mr.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 1
  %call.i = tail call i32 @mthca_buf_alloc(ptr noundef %dev, i32 noundef %mul.i, i32 noundef 16384, ptr noundef %buf36, ptr noundef %is_direct.i, ptr noundef %driver_pd.i, i32 noundef 1, ptr noundef %mr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then35.err_out_mailbox_crit_edge

if.then35.err_out_mailbox_crit_edge:              ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_mailbox

for.cond.preheader.i:                             ; preds = %if.then35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent)
  %cmp11.i = icmp sgt i32 %nent, 0
  br i1 %cmp11.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.body_crit_edge

for.cond.preheader.i.do.body_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %get_cqe_from_buf.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %get_cqe_from_buf.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %is_direct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %buf36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf36, align 8
  %mul4.i.i = shl i32 %i.012.i, 5
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %mul4.i.i
  br label %get_cqe_from_buf.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %div12.i.i = lshr i32 %mul4.i.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %24, i32 %div12.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %mul4.i.i, 4064
  %add.ptr7.i.i = getelementptr i8, ptr %26, i32 %rem.i.i
  br label %get_cqe_from_buf.exit.i

get_cqe_from_buf.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr7.i.i, %if.else.i.i ]
  %owner.i.i = getelementptr inbounds %struct.mthca_cqe, ptr %retval.0.i.i, i32 0, i32 12
  %27 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %owner.i.i, align 1
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nent
  br i1 %exitcond.not.i, label %get_cqe_from_buf.exit.i.do.body_crit_edge, label %get_cqe_from_buf.exit.i.for.body.i_crit_edge

get_cqe_from_buf.exit.i.for.body.i_crit_edge:     ; preds = %get_cqe_from_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

get_cqe_from_buf.exit.i.do.body_crit_edge:        ; preds = %get_cqe_from_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %get_cqe_from_buf.exit.i.do.body_crit_edge, %for.cond.preheader.i.do.body_crit_edge, %if.end32.do.body_crit_edge
  %lock = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mthca_init_cq.__key, i16 noundef signext 3) #6
  %refcount = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 2
  %28 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %refcount, align 4
  %wait = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.9, ptr noundef nonnull @mthca_init_cq.__key.8) #6
  %mutex = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @mthca_init_cq.__key.10) #6
  %29 = getelementptr inbounds i8, ptr %18, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 60)
  %31 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 262144, ptr %18, align 1
  %32 = tail call i32 @llvm.cttz.i32(i32 %nent, i1 true), !range !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nent)
  %iszero = icmp eq i32 %nent, 0
  %.op = shl nuw nsw i32 %32, 24
  %shl = select i1 %iszero, i32 -16777216, i32 %.op
  %logsize_usrpage = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 2
  %33 = ptrtoint ptr %logsize_usrpage to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %shl, ptr %logsize_usrpage, align 1
  %index53 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %index = getelementptr inbounds %struct.mthca_ucontext, ptr %ctx, i32 0, i32 1, i32 1
  %.pn.in = select i1 %tobool.not, ptr %index53, ptr %index
  %34 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn = load i32, ptr %.pn.in, align 4
  %storemerge = or i32 %.pn, %shl
  store i32 %storemerge, ptr %logsize_usrpage, align 1
  %eqn = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 1, i32 1
  %35 = ptrtoint ptr %eqn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eqn, align 4
  %error_eqn = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 3
  %37 = ptrtoint ptr %error_eqn to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %error_eqn, align 1
  %eqn60 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 1
  %38 = ptrtoint ptr %eqn60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eqn60, align 4
  %comp_eqn = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 4
  %40 = ptrtoint ptr %comp_eqn to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %comp_eqn, align 1
  %pd = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 5
  %41 = ptrtoint ptr %pd to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %pdn, ptr %pd, align 1
  %buf61 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %lkey = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lkey, align 8
  %lkey62 = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 6
  %44 = ptrtoint ptr %lkey62 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %lkey62, align 1
  %45 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cqn, align 8
  %cqn64 = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 11
  %47 = ptrtoint ptr %cqn64 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %46, ptr %cqn64, align 1
  %48 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mthca_flags.i, align 8
  %and.i215 = and i32 %49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %tobool66.not = icmp eq i32 %and.i215, 0
  br i1 %tobool66.not, label %do.body.if.end70_crit_edge, label %if.then67

do.body.if.end70_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %set_ci_db_index68 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 8
  %50 = ptrtoint ptr %set_ci_db_index68 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %set_ci_db_index68, align 8
  %ci_db = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 12
  %52 = ptrtoint ptr %ci_db to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %ci_db, align 1
  %arm_db_index69 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 10
  %53 = ptrtoint ptr %arm_db_index69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arm_db_index69, align 8
  %state_db = getelementptr inbounds %struct.mthca_cq_context, ptr %18, i32 0, i32 13
  %55 = ptrtoint ptr %state_db to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %state_db, align 1
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %do.body.if.end70_crit_edge
  %56 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cqn, align 8
  %call72 = tail call i32 @mthca_SW2HW_CQ(ptr noundef %dev, ptr noundef %call28, i32 noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev, align 8
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev78, ptr noundef nonnull @.str.12, i32 noundef %call72) #9
  br label %err_out_free_mr

if.end79:                                         ; preds = %if.end70
  %lock81 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock81) #6
  %cq83 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %60 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cqn, align 8
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %62 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_cqs, align 4
  %sub85 = add i32 %63, -1
  %and = and i32 %sub85, %61
  %call86 = tail call i32 @mthca_array_set(ptr noundef %cq83, i32 noundef %and, ptr noundef %cq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock81) #6
  br i1 %tobool87.not, label %if.end91, label %if.end79.err_out_free_mr_crit_edge

if.end79.err_out_free_mr_crit_edge:               ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_free_mr

if.end91:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %cons_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 4
  %64 = ptrtoint ptr %cons_index to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cons_index, align 4
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call28) #6
  br label %cleanup

err_out_free_mr:                                  ; preds = %if.end79.err_out_free_mr_crit_edge, %do.end77
  %err.0 = phi i32 [ %call72, %do.end77 ], [ %call86, %if.end79.err_out_free_mr_crit_edge ]
  %65 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool95.not = icmp eq i32 %66, 0
  br i1 %tobool95.not, label %err_out_free_mr.err_out_mailbox_crit_edge, label %if.then96

err_out_free_mr.err_out_mailbox_crit_edge:        ; preds = %err_out_free_mr
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_mailbox

if.then96:                                        ; preds = %err_out_free_mr
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cqe, align 4
  %add.i = shl i32 %68, 5
  %mul.i216 = add i32 %add.i, 32
  %is_direct.i217 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %69 = ptrtoint ptr %is_direct.i217 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %is_direct.i217, align 8
  %mr.i218 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 1
  tail call void @mthca_buf_free(ptr noundef %dev, i32 noundef %mul.i216, ptr noundef %buf61, i32 noundef %70, ptr noundef %mr.i218) #6
  br label %err_out_mailbox

err_out_mailbox:                                  ; preds = %if.then96, %err_out_free_mr.err_out_mailbox_crit_edge, %if.then35.err_out_mailbox_crit_edge
  %err.1 = phi i32 [ %err.0, %if.then96 ], [ %err.0, %err_out_free_mr.err_out_mailbox_crit_edge ], [ %call.i, %if.then35.err_out_mailbox_crit_edge ]
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call28) #6
  br label %err_out_arm

err_out_arm:                                      ; preds = %err_out_mailbox, %if.then30
  %err.2 = phi i32 [ %16, %if.then30 ], [ %err.1, %err_out_mailbox ]
  %71 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool102.not = icmp eq i32 %72, 0
  br i1 %tobool102.not, label %err_out_arm.err_out_icm_crit_edge, label %land.lhs.true

err_out_arm.err_out_icm_crit_edge:                ; preds = %err_out_arm
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_icm

land.lhs.true:                                    ; preds = %err_out_arm
  %73 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mthca_flags.i, align 8
  %and.i220 = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool104.not = icmp eq i32 %and.i220, 0
  br i1 %tobool104.not, label %land.lhs.true.err_out_ci_crit_edge, label %if.then105

land.lhs.true.err_out_ci_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_ci

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arm_db_index106 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 10
  %75 = ptrtoint ptr %arm_db_index106 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arm_db_index106, align 8
  tail call void @mthca_free_db(ptr noundef %dev, i32 noundef 2, i32 noundef %76) #6
  br label %err_out_ci

err_out_ci:                                       ; preds = %if.then105, %land.lhs.true.err_out_ci_crit_edge, %if.end19.err_out_ci_crit_edge
  %err.3.ph = phi i32 [ %err.2, %land.lhs.true.err_out_ci_crit_edge ], [ %err.2, %if.then105 ], [ -12, %if.end19.err_out_ci_crit_edge ]
  %77 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool109.not = icmp eq i32 %.pr, 0
  br i1 %tobool109.not, label %err_out_ci.err_out_icm_crit_edge, label %land.lhs.true110

err_out_ci.err_out_icm_crit_edge:                 ; preds = %err_out_ci
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_icm

land.lhs.true110:                                 ; preds = %err_out_ci
  %78 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mthca_flags.i, align 8
  %and.i222 = and i32 %79, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i222)
  %tobool112.not = icmp eq i32 %and.i222, 0
  br i1 %tobool112.not, label %land.lhs.true110.err_out_icm_crit_edge, label %if.then113

land.lhs.true110.err_out_icm_crit_edge:           ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_out_icm

if.then113:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #8
  %set_ci_db_index114 = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 8
  %80 = ptrtoint ptr %set_ci_db_index114 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %set_ci_db_index114, align 8
  tail call void @mthca_free_db(ptr noundef %dev, i32 noundef 1, i32 noundef %81) #6
  br label %err_out_icm

err_out_icm:                                      ; preds = %if.then113, %land.lhs.true110.err_out_icm_crit_edge, %err_out_ci.err_out_icm_crit_edge, %err_out_arm.err_out_icm_crit_edge, %if.then13.err_out_icm_crit_edge
  %err.4 = phi i32 [ -12, %if.then13.err_out_icm_crit_edge ], [ %err.3.ph, %if.then113 ], [ %err.3.ph, %land.lhs.true110.err_out_icm_crit_edge ], [ %err.3.ph, %err_out_ci.err_out_icm_crit_edge ], [ %err.2, %err_out_arm.err_out_icm_crit_edge ]
  %table117 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 3
  %82 = ptrtoint ptr %table117 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %table117, align 8
  %84 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cqn, align 8
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %83, i32 noundef %85) #6
  br label %err_out

err_out:                                          ; preds = %err_out_icm, %if.then4.err_out_crit_edge
  %err.5 = phi i32 [ %call7, %if.then4.err_out_crit_edge ], [ %err.4, %err_out_icm ]
  %86 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cqn, align 8
  tail call void @mthca_free(ptr noundef %cq_table, i32 noundef %87) #6
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end91, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %err_out ], [ 0, %if.end91 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_table_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_db(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_alloc_mailbox(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SW2HW_CQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_db(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_table_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_cq(ptr noundef %dev, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.14) #9
  br label %cleanup51

if.end:                                           ; preds = %entry
  %cqn = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 3
  %2 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqn, align 8
  %call3 = tail call i32 @mthca_HW2SW_CQ(ptr noundef %dev, ptr noundef %call, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pdev8 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev8, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.17, i32 noundef %call3) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %cq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %cq12 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %6 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqn, align 8
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %8 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cqs, align 4
  %sub = add i32 %9, -1
  %and = and i32 %sub, %7
  tail call void @mthca_array_clear(ptr noundef %cq12, i32 noundef %and) #6
  %refcount = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 2
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %refcount, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mthca_flags, align 8
  %and16 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %msi_x_vector = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 22, i32 4, i32 2, i32 4
  %14 = ptrtoint ptr %msi_x_vector to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %msi_x_vector, align 8
  %conv = zext i16 %15 to i32
  br label %do.body22

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %pdev19 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %16 = ptrtoint ptr %pdev19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev19, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.else, %if.then18
  %.sink = phi i32 [ %19, %if.else ], [ %conv, %if.then18 ]
  tail call void @synchronize_irq(i32 noundef %.sink) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 938) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refcount, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool29.not = icmp eq i32 %21, 0
  br i1 %tobool29.not, label %do.body22.do.end39_crit_edge, label %if.end31

do.body22.do.end39_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end31:                                         ; preds = %do.body22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %22 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 13
  %call3295 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %23 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %refcount, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool34.not96 = icmp eq i32 %24, 0
  br i1 %tobool34.not96, label %if.end31.for.end_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  br label %cleanup

if.end31.for.end_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  call void @schedule() #6
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %refcount, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  %tobool34.not = icmp eq i32 %26, 0
  br i1 %tobool34.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end31.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %do.end39

do.end39:                                         ; preds = %for.end, %do.body22.do.end39_crit_edge
  %is_kernel = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 7
  %27 = ptrtoint ptr %is_kernel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_kernel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool40.not = icmp eq i32 %28, 0
  br i1 %tobool40.not, label %do.end39.if.end46_crit_edge, label %if.then41

do.end39.if.end46_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then41:                                        ; preds = %do.end39
  %buf = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5
  %cqe = getelementptr inbounds %struct.ib_cq, ptr %cq, i32 0, i32 5
  %29 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cqe, align 4
  %add.i = shl i32 %30, 5
  %mul.i = add i32 %add.i, 32
  %is_direct.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is_direct.i, align 8
  %mr.i = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 5, i32 1
  call void @mthca_buf_free(ptr noundef %dev, i32 noundef %mul.i, ptr noundef %buf, i32 noundef %32, ptr noundef %mr.i) #6
  %33 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mthca_flags, align 8
  %and.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not = icmp eq i32 %and.i, 0
  br i1 %tobool43.not, label %if.then41.if.end46_crit_edge, label %if.then44

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %arm_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 10
  %35 = ptrtoint ptr %arm_db_index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arm_db_index, align 8
  call void @mthca_free_db(ptr noundef %dev, i32 noundef 2, i32 noundef %36) #6
  %set_ci_db_index = getelementptr inbounds %struct.mthca_cq, ptr %cq, i32 0, i32 8
  %37 = ptrtoint ptr %set_ci_db_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %set_ci_db_index, align 8
  call void @mthca_free_db(ptr noundef %dev, i32 noundef 1, i32 noundef %38) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then41.if.end46_crit_edge, %do.end39.if.end46_crit_edge
  %table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 3
  %39 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %table, align 8
  %41 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cqn, align 8
  call void @mthca_table_put(ptr noundef %dev, ptr noundef %40, i32 noundef %42) #6
  %43 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cqn, align 8
  call void @mthca_free(ptr noundef %cq_table, i32 noundef %44) #6
  call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call) #6
  br label %cleanup51

cleanup51:                                        ; preds = %if.end46, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_HW2SW_CQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_cq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @mthca_init_cq_table.__key, i16 noundef signext 3) #6
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %0 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cqs, align 4
  %reserved_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 21
  %2 = ptrtoint ptr %reserved_cqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_cqs, align 4
  %call3 = tail call i32 @mthca_alloc_init(ptr noundef %cq_table, i32 noundef %1, i32 noundef 16777215, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %4 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cqs, align 4
  %call7 = tail call i32 @mthca_array_init(ptr noundef %cq, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mthca_alloc_cleanup(ptr noundef %cq_table) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ %call7, %if.then9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_cq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23
  %cq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 23, i32 2
  %num_cqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 19
  %0 = ptrtoint ptr %num_cqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_cqs, align 4
  tail call void @mthca_array_cleanup(ptr noundef %cq, i32 noundef %1) #6
  tail call void @mthca_alloc_cleanup(ptr noundef %cq_table) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_err_wqe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !50, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 224, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_cq_completion._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_cq_completion._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 248, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mthca_cq_event._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mthca_cq_event._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mthca_init_cq.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 819, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mthca_init_cq.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 821, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mthca_init_cq.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 822, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 846, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mthca_init_cq._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mthca_init_cq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 908, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mthca_free_cq._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mthca_free_cq._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 914, i32 3}
!34 = !{ptr @mthca_free_cq._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mthca_free_cq._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mthca_init_cq_table.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 957, i32 2}
!38 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 524, i32 4}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mthca_poll_one._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mthca_poll_one._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 381, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @handle_error_cqe._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @handle_error_cqe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mthca/mthca_cq.c", i32 194, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dump_cqe._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dump_cqe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2158163315}
!65 = !{i64 2158157231}
!66 = !{i64 4244280}
!67 = !{i64 2158165929}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"auto-init"}
!70 = !{i64 2158171105}
!71 = !{i64 2158131294}
!72 = !{i64 2158171644}
!73 = !{i32 0, i32 33}
