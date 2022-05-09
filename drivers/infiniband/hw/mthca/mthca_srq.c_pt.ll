; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_srq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_srq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.186, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.189, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.173 = type { %struct.ib_core_device }
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
%union.anon.186 = type { %struct.anon.188 }
%struct.anon.188 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.189 = type { %struct.anon.191 }
%struct.anon.191 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.192 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.192 = type { ptr, ptr, %struct.mthca_buddy }
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
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.mthca_srq = type { %struct.ib_srq, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i16, i32, ptr, ptr, i32, ptr, %union.mthca_buf, %struct.mthca_mr, %struct.wait_queue_head, %struct.mutex }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.130, %struct.rdma_restrack_entry }
%struct.anon.130 = type { ptr, %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, i32 }
%union.mthca_buf = type { %struct.mthca_buf_list }
%struct.mthca_buf_list = type { ptr, i32 }
%struct.mthca_data_seg = type { i32, i32, i64 }
%struct.mthca_mailbox = type { i32, ptr }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.168 }
%union.anon.168 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.169, i16, i16, i8 }
%union.anon.169 = type { i64 }
%struct.mthca_tavor_srq_context = type { i64, i32, i32, i32, i16, i16, [2 x i32] }
%struct.mthca_ucontext = type { %struct.ib_ucontext, %struct.mthca_uar, ptr, i32 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.185, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.185 = type { ptr }
%struct.mthca_arbel_srq_context = type { i32, i32, i32, i32, i64, i32, i16, i16, i16, i16, [3 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.mthca_next_seg = type { i32, i32, i32, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.ib_sge = type { i64, i32, i32 }

@mthca_alloc_srq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->lock\00", [21 x i8] zeroinitializer }, align 32
@mthca_alloc_srq.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&srq->wait\00", [21 x i8] zeroinitializer }, align 32
@mthca_alloc_srq.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&srq->mutex\00", [20 x i8] zeroinitializer }, align 32
@mthca_alloc_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 279, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SW2HW_SRQ failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_alloc_srq\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/hw/mthca/mthca_srq.c\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_alloc_srq._entry_ptr = internal global ptr @mthca_alloc_srq._entry, section ".printk_index", align 4
@mthca_alloc_srq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 305, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HW2SW_SRQ failed (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@mthca_alloc_srq._entry_ptr.12 = internal global ptr @mthca_alloc_srq._entry.10, section ".printk_index", align 4
@mthca_free_srq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 345, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No memory for mailbox to free SRQ.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mthca_free_srq\00", [17 x i8] zeroinitializer }, align 32
@mthca_free_srq._entry_ptr = internal global ptr @mthca_free_srq._entry, section ".printk_index", align 4
@mthca_free_srq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.7, i32 351, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mthca_free_srq._entry_ptr.16 = internal global ptr @mthca_free_srq._entry.15, section ".printk_index", align 4
@mthca_srq_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 443, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Async event for bogus SRQ %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mthca_srq_event\00", [16 x i8] zeroinitializer }, align 32
@mthca_srq_event._entry_ptr = internal global ptr @mthca_srq_event._entry, section ".printk_index", align 4
@mthca_tavor_post_srq_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.7, i32 508, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SRQ %06x full\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mthca_tavor_post_srq_recv\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mthca_tavor_post_srq_recv._entry_ptr = internal global ptr @mthca_tavor_post_srq_recv._entry, section ".printk_index", align 4
@mthca_arbel_post_srq_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.22, ptr @.str.7, i32 598, ptr @.str.21, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mthca_arbel_post_srq_recv\00", [38 x i8] zeroinitializer }, align 32
@mthca_arbel_post_srq_recv._entry_ptr = internal global ptr @mthca_arbel_post_srq_recv._entry, section ".printk_index", align 4
@mthca_init_srq_table.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->srq_table.lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 266, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 268, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 269, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 279, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 305, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 345, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 351, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 443, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 508, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 598, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [43 x i8] c"../drivers/infiniband/hw/mthca/mthca_srq.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 674, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @mthca_alloc_srq._entry, ptr @mthca_alloc_srq._entry.10, ptr @mthca_alloc_srq._entry_ptr, ptr @mthca_alloc_srq._entry_ptr.12, ptr @mthca_arbel_post_srq_recv._entry, ptr @mthca_arbel_post_srq_recv._entry_ptr, ptr @mthca_free_srq._entry, ptr @mthca_free_srq._entry.15, ptr @mthca_free_srq._entry_ptr, ptr @mthca_free_srq._entry_ptr.16, ptr @mthca_srq_event._entry, ptr @mthca_srq_event._entry_ptr, ptr @mthca_tavor_post_srq_recv._entry, ptr @mthca_tavor_post_srq_recv._entry_ptr, ptr @mthca_alloc_srq.__key, ptr @.str, ptr @mthca_alloc_srq.__key.1, ptr @.str.2, ptr @mthca_alloc_srq.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mthca_init_srq_table.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_srq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_srq.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_srq.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_alloc_srq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_srq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_free_srq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_srq_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_tavor_post_srq_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_arbel_post_srq_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_init_srq_table.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_alloc_srq(ptr noundef %dev, ptr noundef %pd, ptr nocapture noundef %attr, ptr noundef %srq, ptr noundef %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %max_srq_wqes = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 14
  %2 = ptrtoint ptr %max_srq_wqes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_srq_wqes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %max_sge = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_sge, align 4
  %max_srq_sge = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 15
  %6 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_srq_sge, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp2 = icmp ugt i32 %5, %7
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %max = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 4
  %8 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %max, align 8
  %9 = ptrtoint ptr %max_sge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_sge, align 4
  %max_gs = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 5
  %11 = ptrtoint ptr %max_gs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_gs, align 4
  %counter = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 9
  %12 = ptrtoint ptr %counter to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %counter, align 4
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %13 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %add42 = add i32 %1, 1
  br i1 %tobool.not, label %if.end.if.end44_crit_edge, label %cond.false34

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

cond.false34:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9 = icmp eq i32 %1, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #9, !range !56
  %sub.i.i.i = sub nuw nsw i32 32, %15
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %cmp9, i32 1, i32 %sub.i.i.op.i
  br label %if.end44

if.end44:                                         ; preds = %cond.false34, %if.end.if.end44_crit_edge
  %storemerge = phi i32 [ %shl.i, %cond.false34 ], [ %add42, %if.end.if.end44_crit_edge ]
  %16 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge, ptr %max, align 8
  %mul = shl i32 %10, 4
  %sub58 = or i32 %mul, 15
  %17 = tail call i32 @llvm.ctlz.i32(i32 %sub58, i1 true) #9, !range !56
  %sub.i.i.i342.pn = sub nuw nsw i32 32, %17
  %cond95 = shl nuw i32 1, %sub.i.i.i342.pn
  %18 = tail call i32 @llvm.umax.i32(i32 %cond95, i32 64)
  %19 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mthca_flags.i, align 8
  %and.i345 = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i345)
  %tobool103.not = icmp eq i32 %and.i345, 0
  br i1 %tobool103.not, label %land.lhs.true, label %if.end44.cond.end121_crit_edge

if.end44.cond.end121_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end121

land.lhs.true:                                    ; preds = %if.end44
  %max_desc_sz = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 10
  %21 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_desc_sz, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp105 = icmp sgt i32 %18, %22
  br i1 %cmp105, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cond.end121_crit_edge

land.lhs.true.cond.end121_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end121

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end121:                                      ; preds = %land.lhs.true.cond.end121_crit_edge, %if.end44.cond.end121_crit_edge
  %23 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 true) #9, !range !56
  %sub.i.op.i346 = xor i32 %23, 31
  %wqe_shift = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 6
  %24 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i.op.i346, ptr %wqe_shift, align 8
  %srq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24
  %call123 = tail call i32 @mthca_alloc(ptr noundef %srq_table) #9
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 3
  %25 = ptrtoint ptr %srqn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call123, ptr %srqn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call123)
  %cmp125 = icmp eq i32 %call123, -1
  br i1 %cmp125, label %cond.end121.cleanup_crit_edge, label %if.end128

cond.end121.cleanup_crit_edge:                    ; preds = %cond.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end128:                                        ; preds = %cond.end121
  %26 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mthca_flags.i, align 8
  %and.i348 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i348)
  %tobool130.not = icmp eq i32 %and.i348, 0
  br i1 %tobool130.not, label %if.end128.if.end148_crit_edge, label %if.then131

if.end128.if.end148_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then131:                                       ; preds = %if.end128
  %table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 3
  %28 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %table, align 4
  %call134 = tail call i32 @mthca_table_get(ptr noundef %dev, ptr noundef %29, i32 noundef %call123) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.then131.err_out_crit_edge

if.then131.err_out_crit_edge:                     ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end137:                                        ; preds = %if.then131
  %tobool138.not = icmp eq ptr %udata, null
  br i1 %tobool138.not, label %if.then139, label %if.end137.if.end148_crit_edge

if.end137.if.end148_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then139:                                       ; preds = %if.end137
  %30 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %srqn, align 4
  %db = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 11
  %call141 = tail call i32 @mthca_alloc_db(ptr noundef %dev, i32 noundef 5, i32 noundef %31, ptr noundef %db) #9
  %db_index = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 10
  %32 = ptrtoint ptr %db_index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call141, ptr %db_index, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp143 = icmp slt i32 %call141, 0
  br i1 %cmp143, label %if.then139.err_out_icm_crit_edge, label %if.end148.thread

if.then139.err_out_icm_crit_edge:                 ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_icm

if.end148:                                        ; preds = %if.end137.if.end148_crit_edge, %if.end128.if.end148_crit_edge
  %call149 = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #9
  %cmp.i = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end148.if.then151_crit_edge, label %if.end153

if.end148.if.then151_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.end148.thread:                                 ; preds = %if.then139
  %call149362 = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #9
  %cmp.i363 = icmp ugt ptr %call149362, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i363, label %if.end148.thread.if.then151_crit_edge, label %if.end148.thread.if.end.i_crit_edge

if.end148.thread.if.end.i_crit_edge:              ; preds = %if.end148.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end148.thread.if.then151_crit_edge:            ; preds = %if.end148.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then151

if.then151:                                       ; preds = %if.end148.thread.if.then151_crit_edge, %if.end148.if.then151_crit_edge
  %call149365 = phi ptr [ %call149362, %if.end148.thread.if.then151_crit_edge ], [ %call149, %if.end148.if.then151_crit_edge ]
  %33 = ptrtoint ptr %call149365 to i32
  br label %err_out_db

if.end153:                                        ; preds = %if.end148
  %tobool.not.i = icmp eq ptr %udata, null
  br i1 %tobool.not.i, label %if.end153.if.end.i_crit_edge, label %if.end153.do.body_crit_edge

if.end153.do.body_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end153.if.end.i_crit_edge:                     ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.end153.if.end.i_crit_edge, %if.end148.thread.if.end.i_crit_edge
  %call149364369 = phi ptr [ %call149, %if.end153.if.end.i_crit_edge ], [ %call149362, %if.end148.thread.if.end.i_crit_edge ]
  %34 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max, align 8
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %35, i32 8) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !57

kmalloc_array.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %wrid83.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 14
  %38 = ptrtoint ptr %wrid83.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %wrid83.i, align 8
  br label %err_out_mailbox

if.end7.i.i:                                      ; preds = %if.end.i
  %39 = extractvalue { i32, i1 } %36, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3264) #12
  %wrid.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 14
  %40 = ptrtoint ptr %wrid.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i.i, ptr %wrid.i, align 8
  %tobool2.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.err_out_mailbox_crit_edge, label %if.end4.i

if.end7.i.i.err_out_mailbox_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_mailbox

if.end4.i:                                        ; preds = %if.end7.i.i
  %41 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max, align 8
  %43 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %wqe_shift, align 8
  %shl.i349 = shl i32 %42, %44
  %queue.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 15
  %is_direct.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 13
  %mr.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 16
  %call6.i = tail call i32 @mthca_buf_alloc(ptr noundef %dev, i32 noundef %shl.i349, i32 noundef 16384, ptr noundef %queue.i, ptr noundef %is_direct.i, ptr noundef %pd, i32 noundef 1, ptr noundef %mr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.cond.preheader.i, label %if.then8.i

for.cond.preheader.i:                             ; preds = %if.end4.i
  %45 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp94.i = icmp sgt i32 %46, 0
  br i1 %cmp94.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end30.i_crit_edge

for.cond.preheader.i.for.end30.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wrid.i, align 8
  tail call void @kfree(ptr noundef %48) #9
  br label %err_out_mailbox

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %49 = phi i32 [ %69, %for.end.i.for.body.i_crit_edge ], [ %46, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.095.i = phi i32 [ %inc.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %50 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i350 = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %queue.i, align 4
  %54 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wqe_shift, align 8
  %shl3.i.i = shl i32 %i.095.i, %55
  br i1 %tobool.not.i.i350, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %shl3.i.i
  br label %get_wqe.exit.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i.i = ashr i32 %shl3.i.i, 12
  %arrayidx.i.i = getelementptr %struct.mthca_buf_list, ptr %53, i32 %shr.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %shl3.i.i, 4095
  %add.ptr7.i.i = getelementptr i8, ptr %57, i32 %and.i.i
  br label %get_wqe.exit.i

get_wqe.exit.i:                                   ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i65.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %add.ptr7.i.i, %if.else.i.i ]
  %sub.i351 = add nsw i32 %49, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.095.i, i32 %sub.i351)
  %cmp14.i = icmp slt i32 %i.095.i, %sub.i351
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %get_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %i.095.i, 1
  %add.ptr.i66.i = getelementptr i8, ptr %retval.0.i65.i, i32 12
  %58 = ptrtoint ptr %add.ptr.i66.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i, ptr %add.ptr.i66.i, align 4
  %59 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %wqe_shift, align 8
  %shl19.i = shl i32 %add.i, %60
  %or.i = or i32 %shl19.i, 1
  br label %if.end22.i

if.else.i:                                        ; preds = %get_wqe.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i67.i = getelementptr i8, ptr %retval.0.i65.i, i32 12
  %61 = ptrtoint ptr %add.ptr.i67.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %add.ptr.i67.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i, %if.then15.i
  %storemerge.i = phi i32 [ 0, %if.else.i ], [ %or.i, %if.then15.i ]
  %62 = ptrtoint ptr %retval.0.i65.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge.i, ptr %retval.0.i65.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i65.i, i32 16
  %63 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %wqe_shift, align 8
  %shl2590.i = shl nuw i32 1, %64
  %add.ptr2691.i = getelementptr i8, ptr %retval.0.i65.i, i32 %shl2590.i
  %cmp2792.i = icmp ult ptr %add.ptr.i, %add.ptr2691.i
  br i1 %cmp2792.i, label %if.end22.i.for.body28.i_crit_edge, label %if.end22.i.for.end.i_crit_edge

if.end22.i.for.end.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.end22.i.for.body28.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %if.end22.i.for.body28.i_crit_edge
  %scatter.093.i = phi ptr [ %incdec.ptr.i, %for.body28.i.for.body28.i_crit_edge ], [ %add.ptr.i, %if.end22.i.for.body28.i_crit_edge ]
  %lkey.i = getelementptr inbounds %struct.mthca_data_seg, ptr %scatter.093.i, i32 0, i32 1
  %65 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 256, ptr %lkey.i, align 4
  %incdec.ptr.i = getelementptr %struct.mthca_data_seg, ptr %scatter.093.i, i32 1
  %66 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %wqe_shift, align 8
  %shl25.i = shl nuw i32 1, %67
  %add.ptr26.i = getelementptr i8, ptr %retval.0.i65.i, i32 %shl25.i
  %cmp27.i = icmp ult ptr %incdec.ptr.i, %add.ptr26.i
  br i1 %cmp27.i, label %for.body28.i.for.body28.i_crit_edge, label %for.body28.i.for.end.i_crit_edge

for.body28.i.for.end.i_crit_edge:                 ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28.i

for.end.i:                                        ; preds = %for.body28.i.for.end.i_crit_edge, %if.end22.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.095.i, 1
  %68 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max, align 8
  %cmp.i352 = icmp slt i32 %inc.i, %69
  br i1 %cmp.i352, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end30.i_crit_edge

for.end.i.for.end30.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end30.i:                                      ; preds = %for.end.i.for.end30.i_crit_edge, %for.cond.preheader.i.for.end30.i_crit_edge
  %.lcssa.i = phi i32 [ %46, %for.cond.preheader.i.for.end30.i_crit_edge ], [ %69, %for.end.i.for.end30.i_crit_edge ]
  %sub32.i = add i32 %.lcssa.i, -1
  %70 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i69.i = icmp eq i32 %71, 0
  %72 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue.i, align 4
  %74 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wqe_shift, align 8
  %shl3.i72.i = shl i32 %sub32.i, %75
  br i1 %tobool.not.i69.i, label %if.else.i79.i, label %if.then.i74.i

if.then.i74.i:                                    ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i73.i = getelementptr i8, ptr %73, i32 %shl3.i72.i
  br label %get_wqe.exit81.i

if.else.i79.i:                                    ; preds = %for.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i75.i = ashr i32 %shl3.i72.i, 12
  %arrayidx.i76.i = getelementptr %struct.mthca_buf_list, ptr %73, i32 %shr.i75.i
  %76 = ptrtoint ptr %arrayidx.i76.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i76.i, align 4
  %and.i77.i = and i32 %shl3.i72.i, 4095
  %add.ptr7.i78.i = getelementptr i8, ptr %77, i32 %and.i77.i
  br label %get_wqe.exit81.i

get_wqe.exit81.i:                                 ; preds = %if.else.i79.i, %if.then.i74.i
  %retval.0.i80.i = phi ptr [ %add.ptr.i73.i, %if.then.i74.i ], [ %add.ptr7.i78.i, %if.else.i79.i ]
  %last.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 12
  %78 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i80.i, ptr %last.i, align 8
  br label %do.body

do.body:                                          ; preds = %get_wqe.exit81.i, %if.end153.do.body_crit_edge
  %tobool.not.i370 = phi i1 [ true, %get_wqe.exit81.i ], [ false, %if.end153.do.body_crit_edge ]
  %call149364368 = phi ptr [ %call149364369, %get_wqe.exit81.i ], [ %call149, %if.end153.do.body_crit_edge ]
  %lock = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mthca_alloc_srq.__key, i16 noundef signext 3) #9
  %refcount = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 2
  %79 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %refcount, align 8
  %wait = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @mthca_alloc_srq.__key.1) #9
  %mutex = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @mthca_alloc_srq.__key.3) #9
  %80 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mthca_flags.i, align 8
  %and.i354 = and i32 %81, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i354)
  %tobool166.not = icmp eq i32 %and.i354, 0
  %buf169 = getelementptr inbounds %struct.mthca_mailbox, ptr %call149364368, i32 0, i32 1
  %82 = ptrtoint ptr %buf169 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %buf169, align 4
  br i1 %tobool166.not, label %if.else168, label %if.then167

if.then167:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mthca_arbel_init_srq_context(ptr noundef %dev, ptr noundef %pd, ptr noundef %srq, ptr noundef %83, ptr noundef %udata)
  br label %if.end170

if.else168:                                       ; preds = %do.body
  br i1 %tobool.not.i370, label %if.else168.mthca_tavor_init_srq_context.exit_crit_edge, label %cond.true.i

if.else168.mthca_tavor_init_srq_context.exit_crit_edge: ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  br label %mthca_tavor_init_srq_context.exit

cond.true.i:                                      ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #11
  %context1.i = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %84 = ptrtoint ptr %context1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %context1.i, align 4
  br label %mthca_tavor_init_srq_context.exit

mthca_tavor_init_srq_context.exit:                ; preds = %cond.true.i, %if.else168.mthca_tavor_init_srq_context.exit_crit_edge
  %cond.i = phi ptr [ %85, %cond.true.i ], [ null, %if.else168.mthca_tavor_init_srq_context.exit_crit_edge ]
  %86 = call ptr @memset(ptr %83, i32 0, i32 32)
  %87 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wqe_shift, align 8
  %sub.i357 = add i32 %88, -4
  %shl.i358 = shl nuw i32 1, %sub.i357
  %conv.i = sext i32 %shl.i358 to i64
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv.i, ptr %83, align 8
  %pd_num.i = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %90 = ptrtoint ptr %pd_num.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pd_num.i, align 8
  %state_pd.i = getelementptr inbounds %struct.mthca_tavor_srq_context, ptr %83, i32 0, i32 1
  %92 = ptrtoint ptr %state_pd.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %state_pd.i, align 8
  %lkey.i359 = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 16, i32 0, i32 2
  %93 = ptrtoint ptr %lkey.i359 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %lkey.i359, align 8
  %lkey2.i = getelementptr inbounds %struct.mthca_tavor_srq_context, ptr %83, i32 0, i32 2
  %95 = ptrtoint ptr %lkey2.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %lkey2.i, align 4
  %index5.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %index.i = getelementptr inbounds %struct.mthca_ucontext, ptr %cond.i, i32 0, i32 1, i32 1
  %.sink.in.i = select i1 %tobool.not.i370, ptr %index5.i, ptr %index.i
  %96 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.sink.i = load i32, ptr %.sink.in.i, align 4
  %97 = getelementptr inbounds %struct.mthca_tavor_srq_context, ptr %83, i32 0, i32 3
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %.sink.i, ptr %97, align 8
  br label %if.end170

if.end170:                                        ; preds = %mthca_tavor_init_srq_context.exit, %if.then167
  %99 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %srqn, align 4
  %call172 = tail call i32 @mthca_SW2HW_SRQ(ptr noundef %dev, ptr noundef %call149364368, i32 noundef %100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end179, label %do.end177

do.end177:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %101 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev, align 8
  %dev178 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev178, ptr noundef nonnull @.str.5, i32 noundef %call172) #13
  br label %err_out_free_buf

if.end179:                                        ; preds = %if.end170
  %lock181 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock181) #9
  %srq183 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 2
  %103 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %srqn, align 4
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %105 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_srqs, align 4
  %sub186 = add i32 %106, -1
  %and = and i32 %sub186, %104
  %call187 = tail call i32 @mthca_array_set(ptr noundef %srq183, i32 noundef %and, ptr noundef %srq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock181) #9
  br i1 %tobool188.not, label %if.end192, label %if.then189

if.then189:                                       ; preds = %if.end179
  %107 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %srqn, align 4
  %call203 = tail call i32 @mthca_HW2SW_SRQ(ptr noundef %dev, ptr noundef %call149364368, i32 noundef %108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.then189.err_out_free_buf_crit_edge, label %do.end208

if.then189.err_out_free_buf_crit_edge:            ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_free_buf

if.end192:                                        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call149364368) #9
  %first_free = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 7
  %109 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %first_free, align 4
  %110 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max, align 8
  %sub196 = add i32 %111, -1
  %last_free = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 8
  %112 = ptrtoint ptr %last_free to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub196, ptr %last_free, align 8
  %113 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub196, ptr %attr, align 4
  %114 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %max_gs, align 4
  %116 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %max_sge, align 4
  br label %cleanup

do.end208:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  %pdev209 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %117 = ptrtoint ptr %pdev209 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdev209, align 8
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %118, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev210, ptr noundef nonnull @.str.11, i32 noundef %call203) #13
  br label %err_out_free_buf

err_out_free_buf:                                 ; preds = %do.end208, %if.then189.err_out_free_buf_crit_edge, %do.end177
  %err.0 = phi i32 [ %call172, %do.end177 ], [ %call203, %do.end208 ], [ 0, %if.then189.err_out_free_buf_crit_edge ]
  br i1 %tobool.not.i370, label %if.then213, label %err_out_free_buf.err_out_mailbox_crit_edge

err_out_free_buf.err_out_mailbox_crit_edge:       ; preds = %err_out_free_buf
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_mailbox

if.then213:                                       ; preds = %err_out_free_buf
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mthca_free_srq_buf(ptr noundef %dev, ptr noundef %srq)
  br label %err_out_mailbox

err_out_mailbox:                                  ; preds = %if.then213, %err_out_free_buf.err_out_mailbox_crit_edge, %if.then8.i, %if.end7.i.i.err_out_mailbox_crit_edge, %kmalloc_array.exit.thread.i
  %call149364368377 = phi ptr [ %call149364368, %err_out_free_buf.err_out_mailbox_crit_edge ], [ %call149364368, %if.then213 ], [ %call149364369, %if.then8.i ], [ %call149364369, %if.end7.i.i.err_out_mailbox_crit_edge ], [ %call149364369, %kmalloc_array.exit.thread.i ]
  %err.1 = phi i32 [ %err.0, %err_out_free_buf.err_out_mailbox_crit_edge ], [ %err.0, %if.then213 ], [ %call6.i, %if.then8.i ], [ -12, %if.end7.i.i.err_out_mailbox_crit_edge ], [ -12, %kmalloc_array.exit.thread.i ]
  tail call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call149364368377) #9
  br label %err_out_db

err_out_db:                                       ; preds = %err_out_mailbox, %if.then151
  %err.2 = phi i32 [ %33, %if.then151 ], [ %err.1, %err_out_mailbox ]
  %tobool215.not = icmp eq ptr %udata, null
  br i1 %tobool215.not, label %land.lhs.true216, label %err_out_db.err_out_icm_crit_edge

err_out_db.err_out_icm_crit_edge:                 ; preds = %err_out_db
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_icm

land.lhs.true216:                                 ; preds = %err_out_db
  %119 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mthca_flags.i, align 8
  %and.i361 = and i32 %120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i361)
  %tobool218.not = icmp eq i32 %and.i361, 0
  br i1 %tobool218.not, label %land.lhs.true216.err_out_icm_crit_edge, label %if.then219

land.lhs.true216.err_out_icm_crit_edge:           ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out_icm

if.then219:                                       ; preds = %land.lhs.true216
  call void @__sanitizer_cov_trace_pc() #11
  %db_index220 = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 10
  %121 = ptrtoint ptr %db_index220 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %db_index220, align 8
  tail call void @mthca_free_db(ptr noundef %dev, i32 noundef 5, i32 noundef %122) #9
  br label %err_out_icm

err_out_icm:                                      ; preds = %if.then219, %land.lhs.true216.err_out_icm_crit_edge, %err_out_db.err_out_icm_crit_edge, %if.then139.err_out_icm_crit_edge
  %err.3 = phi i32 [ %err.2, %err_out_db.err_out_icm_crit_edge ], [ %err.2, %if.then219 ], [ %err.2, %land.lhs.true216.err_out_icm_crit_edge ], [ -12, %if.then139.err_out_icm_crit_edge ]
  %table223 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 3
  %123 = ptrtoint ptr %table223 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %table223, align 4
  %125 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %srqn, align 4
  tail call void @mthca_table_put(ptr noundef %dev, ptr noundef %124, i32 noundef %126) #9
  br label %err_out

err_out:                                          ; preds = %err_out_icm, %if.then131.err_out_crit_edge
  %err.4 = phi i32 [ %call134, %if.then131.err_out_crit_edge ], [ %err.3, %err_out_icm ]
  %127 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %srqn, align 4
  tail call void @mthca_free(ptr noundef %srq_table, i32 noundef %128) #9
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end192, %cond.end121.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %err_out ], [ 0, %if.end192 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -12, %cond.end121.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mthca_arbel_init_srq_context(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %pd, ptr nocapture noundef readonly %srq, ptr nocapture noundef writeonly %context, ptr noundef readonly %udata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %context1 = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %2 = call ptr @memset(ptr %context, i32 0, i32 48)
  %max2 = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 4
  %3 = ptrtoint ptr %max2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %4, i1 true) #9, !range !56
  %sub.i.op.i = shl nuw nsw i32 %5, 24
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 520093696
  %shl = select i1 %tobool.not.i.i, i32 -16777216, i32 %sub.i.op.i.op
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 3
  %6 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srqn, align 4
  %or = or i32 %shl, %7
  %8 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %context, align 8
  %lkey = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 16, i32 0, i32 2
  %9 = ptrtoint ptr %lkey to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lkey, align 8
  %lkey12 = getelementptr inbounds %struct.mthca_arbel_srq_context, ptr %context, i32 0, i32 1
  %11 = ptrtoint ptr %lkey12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %lkey12, align 4
  %db_index = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 10
  %12 = ptrtoint ptr %db_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %db_index, align 8
  %db_index13 = getelementptr inbounds %struct.mthca_arbel_srq_context, ptr %context, i32 0, i32 2
  %14 = ptrtoint ptr %db_index13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %db_index13, align 8
  %wqe_shift = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 6
  %15 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wqe_shift, align 8
  %sub14 = shl i32 %16, 29
  %shl15 = xor i32 %sub14, -2147483648
  %logstride_usrpage = getelementptr inbounds %struct.mthca_arbel_srq_context, ptr %context, i32 0, i32 3
  %17 = ptrtoint ptr %logstride_usrpage to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl15, ptr %logstride_usrpage, align 4
  %index19 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 29, i32 1
  %index = getelementptr inbounds %struct.mthca_ucontext, ptr %cond, i32 0, i32 1, i32 1
  %.pn.in = select i1 %tobool.not, ptr %index19, ptr %index
  %18 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load i32, ptr %.pn.in, align 4
  %storemerge = or i32 %shl15, %.pn
  store i32 %storemerge, ptr %logstride_usrpage, align 4
  %pd_num = getelementptr inbounds %struct.mthca_pd, ptr %pd, i32 0, i32 1
  %19 = ptrtoint ptr %pd_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pd_num, align 8
  %or22 = or i32 %20, 16777216
  %eq_pd = getelementptr inbounds %struct.mthca_arbel_srq_context, ptr %context, i32 0, i32 5
  %21 = ptrtoint ptr %eq_pd to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or22, ptr %eq_pd, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_SW2HW_SRQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_HW2SW_SRQ(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_free_srq_buf(ptr noundef %dev, ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 4
  %0 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max, align 8
  %wqe_shift = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 6
  %2 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wqe_shift, align 8
  %shl = shl i32 %1, %3
  %queue = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 15
  %is_direct = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 13
  %4 = ptrtoint ptr %is_direct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_direct, align 4
  %mr = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 16
  tail call void @mthca_buf_free(ptr noundef %dev, i32 noundef %shl, ptr noundef %queue, i32 noundef %5, ptr noundef %mr) #9
  %wrid = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 14
  %6 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wrid, align 8
  tail call void @kfree(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free_db(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_table_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_srq(ptr noundef %dev, ptr noundef %srq) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mthca_alloc_mailbox(ptr noundef %dev, i32 noundef 3264) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.13) #13
  br label %cleanup46

if.end:                                           ; preds = %entry
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 3
  %2 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srqn, align 4
  %call3 = tail call i32 @mthca_HW2SW_SRQ(ptr noundef %dev, ptr noundef %call, i32 noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pdev8 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev8, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.11, i32 noundef %call3) #13
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  %srq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %srq12 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 2
  %6 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srqn, align 4
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %8 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %9, -1
  %and = and i32 %sub, %7
  tail call void @mthca_array_clear(ptr noundef %srq12, i32 noundef %and) #9
  %refcount = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 2
  %10 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcount, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %refcount, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 359) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcount, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool24.not = icmp eq i32 %13, 0
  br i1 %tobool24.not, label %if.end10.do.end34_crit_edge, label %if.end26

if.end10.do.end34_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end34

if.end26:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %14 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 17
  %call2784 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %15 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %refcount, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not85 = icmp eq i32 %16, 0
  br i1 %tobool29.not85, label %if.end26.for.end_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  br label %cleanup

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end26.cleanup_crit_edge
  call void @schedule() #9
  %call27 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  call void @_raw_spin_lock_irq(ptr noundef %lock) #9
  %17 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refcount, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #9
  %tobool29.not = icmp eq i32 %18, 0
  br i1 %tobool29.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end26.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.end34

do.end34:                                         ; preds = %for.end, %if.end10.do.end34_crit_edge
  %uobject = getelementptr inbounds %struct.ib_srq, ptr %srq, i32 0, i32 2
  %19 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uobject, align 8
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %if.then36, label %do.end34.if.end41_crit_edge

do.end34.if.end41_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then36:                                        ; preds = %do.end34
  %max.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 4
  %21 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max.i, align 8
  %wqe_shift.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 6
  %23 = ptrtoint ptr %wqe_shift.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wqe_shift.i, align 8
  %shl.i = shl i32 %22, %24
  %queue.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 15
  %is_direct.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 13
  %25 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %is_direct.i, align 4
  %mr.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 16
  call void @mthca_buf_free(ptr noundef %dev, i32 noundef %shl.i, ptr noundef %queue.i, i32 noundef %26, ptr noundef %mr.i) #9
  %wrid.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 14
  %27 = ptrtoint ptr %wrid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wrid.i, align 8
  call void @kfree(ptr noundef %28) #9
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %29 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool38.not = icmp eq i32 %and.i, 0
  br i1 %tobool38.not, label %if.then36.if.end41_crit_edge, label %if.then39

if.then36.if.end41_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then39:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %db_index = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 10
  %31 = ptrtoint ptr %db_index to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %db_index, align 8
  call void @mthca_free_db(ptr noundef %dev, i32 noundef 5, i32 noundef %32) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then36.if.end41_crit_edge, %do.end34.if.end41_crit_edge
  %table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 3
  %33 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %table, align 4
  %35 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %srqn, align 4
  call void @mthca_table_put(ptr noundef %dev, ptr noundef %34, i32 noundef %36) #9
  %37 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %srqn, align 4
  call void @mthca_free(ptr noundef %srq_table, i32 noundef %38) #9
  call void @mthca_free_mailbox(ptr noundef %dev, ptr noundef %call) #9
  br label %cleanup46

cleanup46:                                        ; preds = %if.end41, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_clear(ptr noundef, i32 noundef) local_unnamed_addr #2

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
define dso_local i32 @mthca_modify_srq(ptr noundef %ibsrq, ptr nocapture noundef readonly %attr, i32 noundef %attr_mask, ptr nocapture noundef readnone %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %and = and i32 %attr_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

if.end:                                           ; preds = %entry
  %and2 = and i32 %attr_mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.cleanup14_crit_edge, label %if.then4

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

if.then4:                                         ; preds = %if.end
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mthca_flags.i, align 8
  %max7 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 4
  %4 = ptrtoint ptr %max7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max7, align 8
  %and.i = shl i32 %3, 25
  %sext = ashr i32 %and.i, 31
  %cond = add i32 %5, %sext
  %srq_limit = getelementptr inbounds %struct.ib_srq_attr, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srq_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond)
  %cmp = icmp ugt i32 %7, %cond
  br i1 %cmp, label %if.then4.cleanup14_crit_edge, label %cleanup

if.then4.cleanup14_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %8 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %srqn, align 4
  %10 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srq_limit, align 4
  %call11 = tail call i32 @mthca_ARM_SRQ(ptr noundef %1, i32 noundef %9, i32 noundef %11) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup, %if.then4.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup14_crit_edge ], [ %call11, %cleanup ], [ 0, %if.end.cleanup14_crit_edge ], [ -22, %if.then4.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_ARM_SRQ(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_query_srq(ptr nocapture noundef readonly %ibsrq, ptr nocapture noundef writeonly %srq_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %call2 = tail call ptr @mthca_alloc_mailbox(ptr noundef %1, i32 noundef 3264) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %3 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %srqn, align 4
  %call5 = tail call i32 @mthca_QUERY_SRQ(ptr noundef %1, i32 noundef %4, ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  %buf11 = getelementptr inbounds %struct.mthca_mailbox, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %buf11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf11, align 4
  %limit_watermark12 = getelementptr inbounds %struct.mthca_tavor_srq_context, ptr %8, i32 0, i32 4
  %limit_watermark = getelementptr inbounds %struct.mthca_arbel_srq_context, ptr %8, i32 0, i32 6
  %conv.sink.in.in = select i1 %tobool9.not, ptr %limit_watermark12, ptr %limit_watermark
  %9 = ptrtoint ptr %conv.sink.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %conv.sink.in = load i16, ptr %conv.sink.in.in, align 4
  %conv.sink = zext i16 %conv.sink.in to i32
  %10 = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.sink, ptr %10, align 4
  %max = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 4
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 8
  %sub = add i32 %13, -1
  %14 = ptrtoint ptr %srq_attr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %srq_attr, align 4
  %max_gs = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 5
  %15 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_gs, align 4
  %max_sge = getelementptr inbounds %struct.ib_srq_attr, ptr %srq_attr, i32 0, i32 1
  %17 = ptrtoint ptr %max_sge to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_sge, align 4
  br label %out

out:                                              ; preds = %if.end7, %if.end.out_crit_edge
  tail call void @mthca_free_mailbox(ptr noundef %1, ptr noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call5, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_QUERY_SRQ(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_srq_event(ptr noundef %dev, i32 noundef %srqn, i32 noundef %event_type) local_unnamed_addr #0 align 64 {
entry:
  %event = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event) #9
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %event, align 4, !annotation !58
  %1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !58
  %3 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !58
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %srq2 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 2
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %5 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %6, -1
  %and = and i32 %sub, %srqn
  %call = tail call ptr @mthca_array_get(ptr noundef %srq2, i32 noundef %and) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end.critedge, label %if.then

if.then:                                          ; preds = %entry
  %refcount = getelementptr inbounds %struct.mthca_srq, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refcount, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %refcount, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %event_handler = getelementptr inbounds %struct.ib_srq, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %event_handler, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.then.out_crit_edge, label %if.end11

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7, ptr noundef nonnull @.str.17, i32 noundef %srqn) #13
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev, ptr %event, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %event_type, ptr %3, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %1, align 4
  %srq_context = getelementptr inbounds %struct.ib_srq, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %srq_context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %srq_context, align 8
  call void %10(ptr noundef nonnull %event, ptr noundef %17) #9
  br label %out

out:                                              ; preds = %if.end11, %if.then.out_crit_edge
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %18 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount, align 8
  %dec = add i32 %19, -1
  store i32 %dec, ptr %refcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %if.then21, label %out.if.end22_crit_edge

out.if.end22_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %wait = getelementptr inbounds %struct.mthca_srq, ptr %call, i32 0, i32 17
  call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %out.if.end22_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end.critedge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mthca_array_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_srq_wqe(ptr noundef %srq, i32 noundef %wqe_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wqe_shift = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 6
  %0 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wqe_shift, align 8
  %shr = lshr i32 %wqe_addr, %1
  %lock = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %last_free1 = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 8
  %2 = ptrtoint ptr %last_free1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_free1, align 8
  %is_direct.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 13
  %4 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %queue1.i = getelementptr inbounds %struct.mthca_srq, ptr %srq, i32 0, i32 15
  %6 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue1.i, align 4
  %8 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wqe_shift, align 8
  %shl3.i = shl i32 %3, %9
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl3.i
  br label %get_wqe.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = ashr i32 %shl3.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %7, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %shl3.i, 4095
  %add.ptr7.i = getelementptr i8, ptr %11, i32 %and.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr7.i, %if.else.i ]
  %add.ptr.i19 = getelementptr i8, ptr %retval.0.i, i32 12
  %12 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %add.ptr.i19, align 4
  %13 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wqe_shift, align 8
  %shl = shl i32 %shr, %14
  %or = or i32 %shl, 1
  %15 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %retval.0.i, align 4
  %16 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i21 = icmp eq i32 %17, 0
  %18 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue1.i, align 4
  %20 = ptrtoint ptr %wqe_shift to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wqe_shift, align 8
  %shl3.i24 = shl i32 %shr, %21
  br i1 %tobool.not.i21, label %if.else.i31, label %if.then.i26

if.then.i26:                                      ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i25 = getelementptr i8, ptr %19, i32 %shl3.i24
  br label %get_wqe.exit33

if.else.i31:                                      ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i27 = ashr i32 %shl3.i24, 12
  %arrayidx.i28 = getelementptr %struct.mthca_buf_list, ptr %19, i32 %shr.i27
  %22 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i28, align 4
  %and.i29 = and i32 %shl3.i24, 4095
  %add.ptr7.i30 = getelementptr i8, ptr %23, i32 %and.i29
  br label %get_wqe.exit33

get_wqe.exit33:                                   ; preds = %if.else.i31, %if.then.i26
  %retval.0.i32 = phi ptr [ %add.ptr.i25, %if.then.i26 ], [ %add.ptr7.i30, %if.else.i31 ]
  %add.ptr.i34 = getelementptr i8, ptr %retval.0.i32, i32 12
  %24 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %add.ptr.i34, align 4
  %25 = ptrtoint ptr %last_free1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr, ptr %last_free1, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_tavor_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %lock = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %first_free = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 7
  %tobool.not148 = icmp eq ptr %wr, null
  br i1 %tobool.not148, label %entry.if.end82_crit_edge, label %for.body.lr.ph

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_free, align 4
  %is_direct.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 13
  %queue1.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 15
  %wqe_shift2.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 6
  %last = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 12
  %max_gs = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 5
  %wrid = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 14
  %srqn57 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %kar = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %doorbell_lock = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc62.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0151 = phi ptr [ %wr, %for.body.lr.ph ], [ %67, %for.inc62.for.body_crit_edge ]
  %nreq.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %nreq.1, %for.inc62.for.body_crit_edge ]
  %first_ind.0149 = phi i32 [ %3, %for.body.lr.ph ], [ %first_ind.1, %for.inc62.for.body_crit_edge ]
  %4 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_free, align 4
  %6 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue1.i, align 4
  %10 = ptrtoint ptr %wqe_shift2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wqe_shift2.i, align 8
  %shl3.i = shl i32 %5, %11
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl3.i
  br label %get_wqe.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = ashr i32 %shl3.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %9, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %shl3.i, 4095
  %add.ptr7.i = getelementptr i8, ptr %13, i32 %and.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr7.i, %if.else.i ]
  %add.ptr.i131 = getelementptr i8, ptr %retval.0.i, i32 12
  %14 = ptrtoint ptr %add.ptr.i131 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp10 = icmp slt i32 %15, 0
  br i1 %cmp10, label %do.end16, label %if.end, !prof !57

do.end16:                                         ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %srqn57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srqn57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.19, i32 noundef %19) #13
  %20 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %wr.addr.0151, ptr %bad_wr, align 4
  br label %for.end63

if.end:                                           ; preds = %get_wqe.exit
  %21 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %last, align 8
  store ptr %retval.0.i, ptr %last, align 8
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ee_nds, align 4
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0151, i32 0, i32 3
  %24 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_sge, align 4
  %26 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp19 = icmp sgt i32 %25, %27
  br i1 %cmp19, label %if.then27, label %for.cond30.preheader, !prof !57

for.cond30.preheader:                             ; preds = %if.end
  %wqe.0141 = getelementptr i8, ptr %retval.0.i, i32 16
  %28 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp32142 = icmp sgt i32 %29, 0
  br i1 %cmp32142, label %for.body34.lr.ph, label %for.cond30.preheader.for.end_crit_edge

for.cond30.preheader.for.end_crit_edge:           ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body34.lr.ph:                                 ; preds = %for.cond30.preheader
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0151, i32 0, i32 2
  br label %for.body34

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %wr.addr.0151, ptr %bad_wr, align 4
  %31 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %last, align 8
  br label %for.end63

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.body34.lr.ph
  %wqe.0145 = phi ptr [ %wqe.0141, %for.body34.lr.ph ], [ %wqe.0, %for.body34.for.body34_crit_edge ]
  %call8.pn144 = phi ptr [ %retval.0.i, %for.body34.lr.ph ], [ %wqe.0145, %for.body34.for.body34_crit_edge ]
  %i.0143 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc, %for.body34.for.body34_crit_edge ]
  %32 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg_list, align 8
  %add.ptr35 = getelementptr %struct.ib_sge, ptr %33, i32 %i.0143
  %length.i = getelementptr %struct.ib_sge, ptr %33, i32 %i.0143, i32 1
  %34 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %length.i, align 8
  %36 = ptrtoint ptr %wqe.0145 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %wqe.0145, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %33, i32 %i.0143, i32 2
  %37 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr i8, ptr %call8.pn144, i32 20
  %39 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %lkey1.i, align 4
  %40 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr35, align 8
  %addr2.i = getelementptr i8, ptr %call8.pn144, i32 24
  %42 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %addr2.i, align 8
  %inc = add nuw nsw i32 %i.0143, 1
  %wqe.0 = getelementptr i8, ptr %wqe.0145, i32 16
  %43 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_sge, align 4
  %cmp32 = icmp slt i32 %inc, %44
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.for.end_crit_edge

for.body34.for.end_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.end:                                          ; preds = %for.body34.for.end_crit_edge, %for.cond30.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond30.preheader.for.end_crit_edge ], [ %inc, %for.body34.for.end_crit_edge ]
  %call8.pn.lcssa = phi ptr [ %retval.0.i, %for.cond30.preheader.for.end_crit_edge ], [ %wqe.0145, %for.body34.for.end_crit_edge ]
  %wqe.0.lcssa = phi ptr [ %wqe.0141, %for.cond30.preheader.for.end_crit_edge ], [ %wqe.0, %for.body34.for.end_crit_edge ]
  %45 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %46)
  %cmp38 = icmp slt i32 %i.0.lcssa, %46
  br i1 %cmp38, label %if.then40, label %for.end.if.end41_crit_edge

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %wqe.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wqe.0.lcssa, align 8
  %lkey.i130 = getelementptr i8, ptr %call8.pn.lcssa, i32 20
  %48 = ptrtoint ptr %lkey.i130 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 256, ptr %lkey.i130, align 4
  %addr.i = getelementptr i8, ptr %call8.pn.lcssa, i32 24
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %addr.i, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.end.if.end41_crit_edge
  %ee_nds42 = getelementptr inbounds %struct.mthca_next_seg, ptr %22, i32 0, i32 1
  %50 = ptrtoint ptr %ee_nds42 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %ee_nds42, align 4
  %51 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0151, i32 0, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %51, align 8
  %54 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wrid, align 8
  %arrayidx = getelementptr i64, ptr %55, i32 %5
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %53, ptr %arrayidx, align 8
  %57 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %15, ptr %first_free, align 4
  %inc44 = add i32 %nreq.0150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc44)
  %cmp45 = icmp eq i32 %inc44, 256
  br i1 %cmp45, label %if.then53, label %if.end41.for.inc62_crit_edge, !prof !57

if.end41.for.inc62_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

if.then53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %wqe_shift2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wqe_shift2.i, align 8
  %shl = shl i32 %first_ind.0149, %59
  %60 = ptrtoint ptr %srqn57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %srqn57, align 4
  %shl58 = shl i32 %61, 8
  %62 = ptrtoint ptr %kar to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %kar, align 4
  %add.ptr59 = getelementptr i8, ptr %63, i32 24
  tail call fastcc void @mthca_write64(i32 noundef %shl, i32 noundef %shl58, ptr noundef %add.ptr59, ptr noundef %doorbell_lock)
  %64 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %first_free, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %if.then53, %if.end41.for.inc62_crit_edge
  %first_ind.1 = phi i32 [ %65, %if.then53 ], [ %first_ind.0149, %if.end41.for.inc62_crit_edge ]
  %nreq.1 = phi i32 [ 0, %if.then53 ], [ %inc44, %if.end41.for.inc62_crit_edge ]
  %66 = ptrtoint ptr %wr.addr.0151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wr.addr.0151, align 8
  %tobool.not = icmp eq ptr %67, null
  br i1 %tobool.not, label %for.inc62.for.end63_crit_edge, label %for.inc62.for.body_crit_edge

for.inc62.for.body_crit_edge:                     ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc62.for.end63_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end63

for.end63:                                        ; preds = %for.inc62.for.end63_crit_edge, %if.then27, %do.end16
  %first_ind.0140 = phi i32 [ %first_ind.0149, %do.end16 ], [ %first_ind.0149, %if.then27 ], [ %first_ind.1, %for.inc62.for.end63_crit_edge ]
  %nreq.0137 = phi i32 [ %nreq.0150, %do.end16 ], [ %nreq.0150, %if.then27 ], [ %nreq.1, %for.inc62.for.end63_crit_edge ]
  %err.0 = phi i32 [ -12, %do.end16 ], [ -22, %if.then27 ], [ 0, %for.inc62.for.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.0137)
  %tobool64.not = icmp eq i32 %nreq.0137, 0
  br i1 %tobool64.not, label %for.end63.if.end82_crit_edge, label %do.body72, !prof !57

for.end63.if.end82_crit_edge:                     ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82

do.body72:                                        ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @arm_heavy_mb() #9
  %wqe_shift75 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 6
  %68 = ptrtoint ptr %wqe_shift75 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %wqe_shift75, align 8
  %shl76 = shl i32 %first_ind.0140, %69
  %srqn77 = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %70 = ptrtoint ptr %srqn77 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %srqn77, align 4
  %shl78 = shl i32 %71, 8
  %or = or i32 %shl78, %nreq.0137
  %kar79 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 14
  %72 = ptrtoint ptr %kar79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %kar79, align 4
  %add.ptr80 = getelementptr i8, ptr %73, i32 24
  %doorbell_lock81 = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock81) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %shl76) #9, !srcloc !61
  %add.ptr.i132 = getelementptr i8, ptr %73, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %or) #9, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock81, i32 noundef %call2.i) #9
  br label %if.end82

if.end82:                                         ; preds = %do.body72, %for.end63.if.end82_crit_edge, %entry.if.end82_crit_edge
  %err.0167 = phi i32 [ %err.0, %do.body72 ], [ %err.0, %for.end63.if.end82_crit_edge ], [ 0, %entry.if.end82_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 %err.0167
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mthca_write64(i32 noundef %hi, i32 noundef %lo, ptr noundef %dest, ptr noundef %doorbell_lock) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %doorbell_lock) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dest, i32 %hi) #9, !srcloc !61
  %add.ptr = getelementptr i8, ptr %dest, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %lo) #9, !srcloc !61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %doorbell_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_arbel_post_srq_recv(ptr noundef %ibsrq, ptr noundef %wr, ptr nocapture noundef writeonly %bad_wr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibsrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibsrq, align 4
  %lock = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %tobool.not106 = icmp eq ptr %wr, null
  br i1 %tobool.not106, label %entry.if.end58_crit_edge, label %for.body.lr.ph

entry.if.end58_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

for.body.lr.ph:                                   ; preds = %entry
  %first_free = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 7
  %is_direct.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 13
  %queue1.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 15
  %wqe_shift2.i = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 6
  %max_gs = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 5
  %wrid = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %wr.addr.0108 = phi ptr [ %wr, %for.body.lr.ph ], [ %51, %if.end38.for.body_crit_edge ]
  %nreq.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %if.end38.for.body_crit_edge ]
  %2 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %first_free, align 4
  %4 = ptrtoint ptr %is_direct.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_direct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue1.i, align 4
  %8 = ptrtoint ptr %wqe_shift2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wqe_shift2.i, align 8
  %shl3.i = shl i32 %3, %9
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl3.i
  br label %get_wqe.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i = ashr i32 %shl3.i, 12
  %arrayidx.i = getelementptr %struct.mthca_buf_list, ptr %7, i32 %shr.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %and.i = and i32 %shl3.i, 4095
  %add.ptr7.i = getelementptr i8, ptr %11, i32 %and.i
  br label %get_wqe.exit

get_wqe.exit:                                     ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr7.i, %if.else.i ]
  %add.ptr.i93 = getelementptr i8, ptr %retval.0.i, i32 12
  %12 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp9 = icmp slt i32 %13, 0
  br i1 %cmp9, label %do.end15, label %if.end, !prof !57

do.end15:                                         ; preds = %get_wqe.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %srqn = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 3
  %16 = ptrtoint ptr %srqn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srqn, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.19, i32 noundef %17) #13
  br label %for.end42.sink.split

if.end:                                           ; preds = %get_wqe.exit
  %ee_nds = getelementptr inbounds %struct.mthca_next_seg, ptr %retval.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %ee_nds to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ee_nds, align 4
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0108, i32 0, i32 3
  %19 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_sge, align 4
  %21 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp17 = icmp sgt i32 %20, %22
  br i1 %cmp17, label %if.end.for.end42.sink.split_crit_edge, label %for.cond27.preheader, !prof !57

if.end.for.end42.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42.sink.split

for.cond27.preheader:                             ; preds = %if.end
  %wqe.099 = getelementptr i8, ptr %retval.0.i, i32 16
  %23 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp29100 = icmp sgt i32 %24, 0
  br i1 %cmp29100, label %for.body31.lr.ph, label %for.cond27.preheader.for.end_crit_edge

for.cond27.preheader.for.end_crit_edge:           ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body31.lr.ph:                                 ; preds = %for.cond27.preheader
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0108, i32 0, i32 2
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %wqe.0103 = phi ptr [ %wqe.099, %for.body31.lr.ph ], [ %wqe.0, %for.body31.for.body31_crit_edge ]
  %call7.pn102 = phi ptr [ %retval.0.i, %for.body31.lr.ph ], [ %wqe.0103, %for.body31.for.body31_crit_edge ]
  %i.0101 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.body31.for.body31_crit_edge ]
  %25 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sg_list, align 8
  %add.ptr32 = getelementptr %struct.ib_sge, ptr %26, i32 %i.0101
  %length.i = getelementptr %struct.ib_sge, ptr %26, i32 %i.0101, i32 1
  %27 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length.i, align 8
  %29 = ptrtoint ptr %wqe.0103 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %wqe.0103, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %26, i32 %i.0101, i32 2
  %30 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %lkey.i, align 4
  %lkey1.i = getelementptr i8, ptr %call7.pn102, i32 20
  %32 = ptrtoint ptr %lkey1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %lkey1.i, align 4
  %33 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr32, align 8
  %addr2.i = getelementptr i8, ptr %call7.pn102, i32 24
  %35 = ptrtoint ptr %addr2.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %addr2.i, align 8
  %inc = add nuw nsw i32 %i.0101, 1
  %wqe.0 = getelementptr i8, ptr %wqe.0103, i32 16
  %36 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_sge, align 4
  %cmp29 = icmp slt i32 %inc, %37
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.end_crit_edge

for.body31.for.end_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31

for.end:                                          ; preds = %for.body31.for.end_crit_edge, %for.cond27.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond27.preheader.for.end_crit_edge ], [ %inc, %for.body31.for.end_crit_edge ]
  %call7.pn.lcssa = phi ptr [ %retval.0.i, %for.cond27.preheader.for.end_crit_edge ], [ %wqe.0103, %for.body31.for.end_crit_edge ]
  %wqe.0.lcssa = phi ptr [ %wqe.099, %for.cond27.preheader.for.end_crit_edge ], [ %wqe.0, %for.body31.for.end_crit_edge ]
  %38 = ptrtoint ptr %max_gs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_gs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %39)
  %cmp35 = icmp slt i32 %i.0.lcssa, %39
  br i1 %cmp35, label %if.then37, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %wqe.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wqe.0.lcssa, align 8
  %lkey.i92 = getelementptr i8, ptr %call7.pn.lcssa, i32 20
  %41 = ptrtoint ptr %lkey.i92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 256, ptr %lkey.i92, align 4
  %addr.i = getelementptr i8, ptr %call7.pn.lcssa, i32 24
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 0, ptr %addr.i, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %for.end.if.end38_crit_edge
  %43 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr.addr.0108, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %43, align 8
  %46 = ptrtoint ptr %wrid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wrid, align 8
  %arrayidx = getelementptr i64, ptr %47, i32 %3
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %45, ptr %arrayidx, align 8
  %49 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %13, ptr %first_free, align 4
  %inc41 = add i32 %nreq.0107, 1
  %50 = ptrtoint ptr %wr.addr.0108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr.addr.0108, align 8
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %if.end38.for.end42_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end38.for.end42_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end42

for.end42.sink.split:                             ; preds = %if.end.for.end42.sink.split_crit_edge, %do.end15
  %err.0.ph = phi i32 [ -12, %do.end15 ], [ -22, %if.end.for.end42.sink.split_crit_edge ]
  %52 = ptrtoint ptr %bad_wr to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %wr.addr.0108, ptr %bad_wr, align 4
  br label %for.end42

for.end42:                                        ; preds = %for.end42.sink.split, %if.end38.for.end42_crit_edge
  %nreq.098 = phi i32 [ %nreq.0107, %for.end42.sink.split ], [ %inc41, %if.end38.for.end42_crit_edge ]
  %err.0 = phi i32 [ %err.0.ph, %for.end42.sink.split ], [ 0, %if.end38.for.end42_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nreq.098)
  %tobool43.not = icmp eq i32 %nreq.098, 0
  br i1 %tobool43.not, label %for.end42.if.end58_crit_edge, label %if.then50, !prof !57

for.end42.if.end58_crit_edge:                     ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then50:                                        ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #11
  %counter = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 9
  %53 = ptrtoint ptr %counter to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %counter, align 4
  %55 = trunc i32 %nreq.098 to i16
  %conv52 = add i16 %54, %55
  store i16 %conv52, ptr %counter, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !62
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %counter to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %counter, align 4
  %conv57 = zext i16 %57 to i32
  %db = getelementptr inbounds %struct.mthca_srq, ptr %ibsrq, i32 0, i32 11
  %58 = ptrtoint ptr %db to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %db, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv57, ptr %59, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %for.end42.if.end58_crit_edge, %entry.if.end58_crit_edge
  %err.0119 = phi i32 [ %err.0, %if.then50 ], [ %err.0, %for.end42.if.end58_crit_edge ], [ 0, %entry.if.end58_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 %err.0119
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mthca_max_srq_sge(ptr nocapture noundef readonly %dev) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags.i = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags.i, align 8
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %max_sg2 = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 7
  %2 = ptrtoint ptr %max_sg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_sg2, align 4
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %max_desc_sz = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 10
  %4 = ptrtoint ptr %max_desc_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_desc_sz, align 8
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #9, !range !56
  %sub.i.op = xor i32 %6, 31
  %sub.i.op.op = shl nuw i32 1, %sub.i.op
  %sub5 = add i32 %sub.i.op.op, -16
  %div11 = lshr i32 %sub5, 4
  %7 = tail call i32 @llvm.smin.i32(i32 %3, i32 %div11)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %if.end ], [ %3, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_init_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %srq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24
  %lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @mthca_init_srq_table.__key, i16 noundef signext 3) #9
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %2 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_srqs, align 4
  %sub = add i32 %3, -1
  %reserved_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 16
  %4 = ptrtoint ptr %reserved_srqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reserved_srqs, align 8
  %call5 = tail call i32 @mthca_alloc_init(ptr noundef %srq_table, i32 noundef %3, i32 noundef %sub, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %srq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 2
  %6 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_srqs, align 4
  %call12 = tail call i32 @mthca_array_init(ptr noundef %srq, i32 noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end8.cleanup_crit_edge, label %if.then14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mthca_alloc_cleanup(ptr noundef %srq_table) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end8.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %do.body.cleanup_crit_edge ], [ %call12, %if.then14 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_alloc_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_array_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_alloc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_cleanup_srq_table(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mthca_flags = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %mthca_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mthca_flags, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %srq_table = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24
  %srq = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 24, i32 2
  %num_srqs = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18, i32 13
  %2 = ptrtoint ptr %num_srqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_srqs, align 4
  tail call void @mthca_array_cleanup(ptr noundef %srq, i32 noundef %3) #9
  tail call void @mthca_alloc_cleanup(ptr noundef %srq_table) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_array_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_buf_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mthca_buf_free(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @mthca_alloc_srq.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 266, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mthca_alloc_srq.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 268, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_alloc_srq.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 269, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 279, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.9, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mthca_alloc_srq._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @mthca_alloc_srq._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 305, i32 3}
!19 = !{ptr @mthca_alloc_srq._entry.10, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @mthca_alloc_srq._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 345, i32 3}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mthca_free_srq._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mthca_free_srq._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mthca_free_srq._entry.15, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 351, i32 3}
!28 = !{ptr @mthca_free_srq._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 443, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mthca_srq_event._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mthca_srq_event._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 508, i32 4}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mthca_tavor_post_srq_recv._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @mthca_tavor_post_srq_recv._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 598, i32 4}
!42 = !{ptr @mthca_arbel_post_srq_recv._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mthca_arbel_post_srq_recv._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mthca_init_srq_table.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mthca/mthca_srq.c", i32 674, i32 2}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i32 0, i32 33}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"auto-init"}
!59 = !{i64 2158249438}
!60 = !{i64 2158249649}
!61 = !{i64 4569013}
!62 = !{i64 2158251945}
