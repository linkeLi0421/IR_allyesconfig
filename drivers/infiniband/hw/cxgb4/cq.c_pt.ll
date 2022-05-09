; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/cq.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/cq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.12 }
%union.anon.12 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.t4_wq = type { %struct.t4_sq, %struct.t4_rq, ptr, ptr, i32, ptr, ptr }
%struct.t4_sq = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_rq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_cq = type { ptr, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i32, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, ptr, i32 }
%struct.t4_cqe = type { i32, i32, %union.anon.2, [3 x i64], i64 }
%union.anon.2 = type { [3 x i64] }
%struct.c4iw_qp = type { %struct.ib_qp, %struct.list_head, ptr, ptr, %struct.c4iw_qp_attributes, %struct.t4_wq, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, %struct.completion, %struct.refcount_struct }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.list_head = type { ptr, ptr }
%struct.c4iw_qp_attributes = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }
%struct.c4iw_mpa_attributes = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.c4iw_cq = type { %struct.ib_cq, ptr, ptr, %struct.t4_cq, %struct.spinlock, %struct.spinlock, %struct.refcount_struct, %struct.completion, ptr }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.216, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.216 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.t4_swsqe = type { i64, %struct.t4_cqe, i32, i32, i32, i32, i16, i32, i64, i64 }
%struct.anon.4 = type { i32, i16, i16 }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.235, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.235 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.220 }
%struct.anon.220 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.c4iw_rdev = type { %struct.c4iw_resource, i32, i32, %struct.c4iw_dev_ucontext, ptr, ptr, ptr, i32, %struct.cxgb4_lld_info, i32, ptr, i32, ptr, %struct.c4iw_stats, %struct.c4iw_hw_queue, ptr, %struct.atomic_t, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.kref, %struct.kref }
%struct.c4iw_resource = type { %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table, %struct.c4iw_id_table }
%struct.c4iw_id_table = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.c4iw_dev_ucontext = type { %struct.list_head, %struct.list_head, %struct.mutex, %struct.kref }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.c4iw_stats = type { %struct.mutex, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, %struct.c4iw_stat, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.c4iw_stat = type { i64, i64, i64, i64 }
%struct.c4iw_hw_queue = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_wc = type { %union.anon.214, i32, i32, i32, i32, ptr, %union.anon.215, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.214 = type { i64 }
%union.anon.215 = type { i32 }
%struct.c4iw_srq = type { %struct.ib_srq, %struct.list_head, ptr, %struct.t4_srq, ptr, i32, i32, i32, i32, %struct.spinlock, ptr, i8 }
%struct.ib_srq = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.anon.211, %struct.rdma_restrack_entry }
%struct.anon.211 = type { ptr, %union.anon.212 }
%union.anon.212 = type { %struct.anon.213 }
%struct.anon.213 = type { ptr, i32 }
%struct.t4_srq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, ptr, i16, i16, i16, i16 }
%struct.uverbs_attr_bundle = type { %struct.ib_udata, %struct.ib_udata, ptr, ptr, ptr, [2 x i32], [0 x %struct.uverbs_attr] }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.uverbs_attr = type { %union.anon.226 }
%union.anon.226 = type { %struct.uverbs_ptr_attr }
%struct.uverbs_ptr_attr = type { %union.anon.227, i16, i16, i8 }
%union.anon.227 = type { i64 }
%struct.c4iw_ucontext = type { %struct.ib_ucontext, %struct.c4iw_dev_ucontext, i32, %struct.spinlock, %struct.list_head, i8 }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.sk_buff = type { %union.anon.62, %union.anon.65, %union.anon.66, [48 x i8], %union.anon.67, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.69, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, ptr, %union.anon.64 }
%union.anon.64 = type { ptr }
%union.anon.65 = type { ptr }
%union.anon.66 = type { i64 }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { i32, ptr }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.71, i32, i32, i32, i16, i16, %union.anon.73, i32, %union.anon.74, %union.anon.75, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.71 = type { i32 }
%union.anon.73 = type { i32 }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i16 }
%struct.fw_ri_res_wr = type { i32, i32, i64, [0 x %struct.fw_ri_res] }
%struct.fw_ri_res = type { %union.fw_ri_restype }
%union.fw_ri_restype = type { %struct.fw_ri_res_cq }
%struct.fw_ri_res_cq = type { i8, i8, i16, i32, [2 x i32], i32, i16, i16, i64, i32, i32, i64 }
%struct.c4iw_wr_wait = type { %struct.completion, i32, %struct.kref }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.178, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.178 = type { ptr }
%struct.c4iw_create_cq_resp = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.t4_status_page = type { i32, i16, i16, i16, i16, i8, i8, [2 x i8], i16, i16, i16, i16, i32 }
%struct.c4iw_mm_entry = type { %struct.list_head, i64, i32, i32 }
%struct.anon.5 = type { i32, i32 }
%struct.anon.3 = type { i32, i32 }
%struct.t4_swrqe = type { i64, i64, i64, i32 }
%struct.anon.6 = type { i32, i32, i32, i32 }
%union.t4_recv_wr = type { [16 x i64] }
%struct.t4_srq_pending_wr = type { i64, %union.t4_recv_wr, i8 }

@c4iw_flush_rq.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cxgb4\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"c4iw_flush_rq\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/cq.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"wq %p cq %p rq.in_use %u skip count %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"iw_cxgb4: wq %p cq %p rq.in_use %u skip count %u\0A\00", [46 x i8] zeroinitializer }, align 32
@c4iw_flush_hw_cq.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_flush_hw_cq\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cqid 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iw_cxgb4: cqid 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@c4iw_count_rcqes.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_count_rcqes\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"count zero %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iw_cxgb4: count zero %d\0A\00", [39 x i8] zeroinitializer }, align 32
@c4iw_count_rcqes.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cq %p count %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iw_cxgb4: cq %p count %d\0A\00", [38 x i8] zeroinitializer }, align 32
@c4iw_destroy_cq.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c4iw_destroy_cq\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ib_cq %p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iw_cxgb4: ib_cq %p\0A\00", [44 x i8] zeroinitializer }, align 32
@c4iw_create_cq.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c4iw_create_cq\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ib_dev %p entries %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iw_cxgb4: ib_dev %p entries %d\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_create_cq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&chp->lock\00", [21 x i8] zeroinitializer }, align 32
@c4iw_create_cq.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&chp->comp_handler_lock\00", [40 x i8] zeroinitializer }, align 32
@c4iw_create_cq.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cqid 0x%0x chp %p size %u memsize %zu, dma_addr %pad\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"iw_cxgb4: cqid 0x%0x chp %p size %u memsize %zu, dma_addr %pad\0A\00", [32 x i8] zeroinitializer }, align 32
@insert_recv_cqe.__UNIQUE_ID_ddebug676 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"insert_recv_cqe\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wq %p cq %p sw_cidx %u sw_pidx %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"iw_cxgb4: wq %p cq %p sw_cidx %u sw_pidx %u\0A\00", [51 x i8] zeroinitializer }, align 32
@insert_sq_cqe.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.25, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"insert_sq_cqe\00", [18 x i8] zeroinitializer }, align 32
@t4_next_hw_cqe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013iw_cxgb4: cq overflow cqid %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"t4_next_hw_cqe\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/cxgb4/t4.h\00", [63 x i8] zeroinitializer }, align 32
@t4_next_hw_cqe._entry_ptr = internal global ptr @t4_next_hw_cqe._entry, section ".printk_index", align 4
@flush_completed_wrs.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flush_completed_wrs\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"moving cqe into swcq sq idx %u cq idx %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"iw_cxgb4: moving cqe into swcq sq idx %u cq idx %u\0A\00", [44 x i8] zeroinitializer }, align 32
@t4_swcq_produce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.30, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014iw_cxgb4: %s cxgb4 sw cq overflow cqid %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"t4_swcq_produce\00", [16 x i8] zeroinitializer }, align 32
@t4_swcq_produce._entry_ptr = internal global ptr @t4_swcq_produce._entry, section ".printk_index", align 4
@cqe_completes_wr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected DRAIN CQE qp id %u!\0A\00", [32 x i8] zeroinitializer }, align 32
@__c4iw_poll_cq_one.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__c4iw_poll_cq_one\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"qpid 0x%x type %d opcode %d status 0x%x len %u wrid hi 0x%x lo 0x%x cookie 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"iw_cxgb4: qpid 0x%x type %d opcode %d status 0x%x len %u wrid hi 0x%x lo 0x%x cookie 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@__c4iw_poll_cq_one._entry = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 812, ptr null, ptr null }, align 1
@.str.40 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013iw_cxgb4: Unexpected opcode %d in the CQE received for QPID=0x%0x\0A\00", [59 x i8] zeroinitializer }, align 32
@__c4iw_poll_cq_one._entry_ptr = internal global ptr @__c4iw_poll_cq_one._entry, section ".printk_index", align 4
@__c4iw_poll_cq_one._entry.41 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.2, i32 849, ptr null, ptr null }, align 1
@__c4iw_poll_cq_one._entry_ptr.42 = internal global ptr @__c4iw_poll_cq_one._entry.41, section ".printk_index", align 4
@__c4iw_poll_cq_one._entry.43 = internal constant %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 904, ptr null, ptr null }, align 1
@.str.44 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013iw_cxgb4: Unexpected cqe_status 0x%x for QPID=0x%0x\0A\00", [41 x i8] zeroinitializer }, align 32
@__c4iw_poll_cq_one._entry_ptr.45 = internal global ptr @__c4iw_poll_cq_one._entry.43, section ".printk_index", align 4
@poll_cq.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"poll_cq\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"CQE OVF %u qpid 0x%0x genbit %u type %u status 0x%0x opcode 0x%0x len 0x%0x wrid_hi_stag 0x%x wrid_low_msn 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"iw_cxgb4: CQE OVF %u qpid 0x%0x genbit %u type %u status 0x%0x opcode 0x%0x len 0x%0x wrid_hi_stag 0x%x wrid_low_msn 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@poll_cq.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"out of order completion going in sw_sq at idx %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"iw_cxgb4: out of order completion going in sw_sq at idx %u\0A\00", [36 x i8] zeroinitializer }, align 32
@poll_cq.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.51, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"completing sq idx %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iw_cxgb4: completing sq idx %u\0A\00", [32 x i8] zeroinitializer }, align 32
@c4iw_wr_log = external dso_local local_unnamed_addr global i32, align 4
@poll_cq.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.53, i8 0, i8 -76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"completing rq idx %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iw_cxgb4: completing rq idx %u\0A\00", [32 x i8] zeroinitializer }, align 32
@poll_cq.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.55, i8 0, i8 -70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cq %p cqid 0x%x skip sw cqe cidx %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iw_cxgb4: cq %p cqid 0x%x skip sw cqe cidx %u\0A\00", [49 x i8] zeroinitializer }, align 32
@poll_cq.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.57, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cq %p cqid 0x%x skip hw cqe cidx %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iw_cxgb4: cq %p cqid 0x%x skip hw cqe cidx %u\0A\00", [49 x i8] zeroinitializer }, align 32
@reap_srq_cqe.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reap_srq_cqe\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s in order cqe rel_idx %u cidx %u pidx %u wq_pidx %u in_use %u rq_size %u wr_id %llx\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"iw_cxgb4: %s in order cqe rel_idx %u cidx %u pidx %u wq_pidx %u in_use %u rq_size %u wr_id %llx\0A\00", [63 x i8] zeroinitializer }, align 32
@reap_srq_cqe.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"%s eat ooo cidx %u pidx %u wq_pidx %u in_use %u rq_size %u ooo_count %u wr_id %llx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"iw_cxgb4: %s eat ooo cidx %u pidx %u wq_pidx %u in_use %u rq_size %u ooo_count %u wr_id %llx\0A\00", [34 x i8] zeroinitializer }, align 32
@reap_srq_cqe.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.64, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s ooo cqe rel_idx %u cidx %u pidx %u wq_pidx %u in_use %u rq_size %u ooo_count %u wr_id %llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"iw_cxgb4: %s ooo cqe rel_idx %u cidx %u pidx %u wq_pidx %u in_use %u rq_size %u ooo_count %u wr_id %llx\0A\00", [55 x i8] zeroinitializer }, align 32
@post_pending_srq_wrs.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"post_pending_srq_wrs\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s posting pending cidx %u pidx %u wq_pidx %u in_use %u rq_size %u wr_id %llx\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"iw_cxgb4: %s posting pending cidx %u pidx %u wq_pidx %u in_use %u rq_size %u wr_id %llx\0A\00", [39 x i8] zeroinitializer }, align 32
@t4_ring_srq_db.__UNIQUE_ID_ddebug662 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.30, ptr @.str.70, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"t4_ring_srq_db\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : WC srq->pidx = %d; len16=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iw_cxgb4: %s : WC srq->pidx = %d; len16=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@t4_ring_srq_db.__UNIQUE_ID_ddebug663 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.30, ptr @.str.72, i8 0, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: DB srq->pidx = %d; len16=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iw_cxgb4: %s: DB srq->pidx = %d; len16=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.destroy_cq = private unnamed_addr constant [11 x i8] c"destroy_cq\00", align 1
@c4iw_ref_send_wait.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.75, ptr @.str.76, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c4iw_ref_send_wait\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s wr_wait %p hwtid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s wr_wait %p hwtid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_get_wr_wait.__UNIQUE_ID_ddebug669 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.78, ptr @.str.75, ptr @.str.79, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_get_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before get %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before get %u\0A\00", [56 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.75, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013iw_cxgb4: %s - Device %s not responding (disabling device) - tid %u qpid %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"c4iw_wait_for_reply\00", [44 x i8] zeroinitializer }, align 32
@c4iw_wait_for_reply._entry_ptr = internal global ptr @c4iw_wait_for_reply._entry, section ".printk_index", align 4
@c4iw_wait_for_reply.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.75, ptr @.str.83, i8 0, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FW reply %d tid %u qpid %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iw_cxgb4: %s: FW reply %d tid %u qpid %u\0A\00", [54 x i8] zeroinitializer }, align 32
@c4iw_put_wr_wait.__UNIQUE_ID_ddebug668 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.85, ptr @.str.75, ptr @.str.86, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c4iw_put_wr_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wr_wait %p ref before put %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iw_cxgb4: wr_wait %p ref before put %u\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.create_cq = private unnamed_addr constant [10 x i8] c"create_cq\00", align 1
@create_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @__func__.create_cq, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014iw_cxgb4: %s: cqid %u not in BAR2 range\0A\00", [53 x i8] zeroinitializer }, align 32
@create_cq._entry_ptr = internal global ptr @create_cq._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@insert_mmap.__UNIQUE_ID_ddebug675 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.75, ptr @.str.94, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"insert_mmap\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"key 0x%x addr 0x%llx len %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iw_cxgb4: key 0x%x addr 0x%llx len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.99 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.100 = internal global [26 x i64] [i64 24, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 12, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 28, i64 29, i64 31]
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 208, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 342, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 449, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 459, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 981, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1013, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1087, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1088, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1138, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 188, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 222, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 793, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 286, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 737, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 425, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 781, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 811, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 903, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 557, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 683, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 716, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 723, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 743, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 747, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 500, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 506, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 517, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 472, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 588, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/t4.h\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.318, i32 592, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 296, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 228, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 273, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 280, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 220, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private constant [36 x i8] c"../drivers/infiniband/hw/cxgb4/cq.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 167, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.375, i32 87, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 230, i32 6 }
@___asan_gen_.381 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 214, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 174, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.393, i32 569, i32 2 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__c4iw_poll_cq_one._entry, ptr @__c4iw_poll_cq_one._entry.41, ptr @__c4iw_poll_cq_one._entry.43, ptr @__c4iw_poll_cq_one._entry_ptr, ptr @__c4iw_poll_cq_one._entry_ptr.42, ptr @__c4iw_poll_cq_one._entry_ptr.45, ptr @c4iw_wait_for_reply._entry, ptr @c4iw_wait_for_reply._entry_ptr, ptr @create_cq._entry, ptr @create_cq._entry_ptr, ptr @t4_next_hw_cqe._entry, ptr @t4_next_hw_cqe._entry_ptr, ptr @t4_swcq_produce._entry, ptr @t4_swcq_produce._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @c4iw_create_cq.__key, ptr @.str.19, ptr @c4iw_create_cq.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @init_completion.__key, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_cq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_create_cq.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_next_hw_cqe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_swcq_produce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_wait_for_reply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_flush_rq(ptr noundef %wq, ptr noundef %cq, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %in_use1 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %in_use1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %in_use1, align 2
  %conv = zext i16 %1 to i32
  %sub = sub i32 %conv, %count
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_flush_rq.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_flush_rq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %in_use1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %in_use1, align 2
  %conv6 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_flush_rq.__UNIQUE_ID_ddebug677, ptr noundef nonnull @.str.4, ptr noundef %wq, ptr noundef %cq, i32 noundef %conv6, i32 noundef %count) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool7.not15 = icmp eq i32 %sub, 0
  br i1 %tobool7.not15, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.end.while.body_crit_edge
  %in_use.016 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %sub, %do.end.while.body_crit_edge ]
  %dec = add i32 %in_use.016, -1
  tail call fastcc void @insert_recv_cqe(ptr noundef %wq, ptr noundef %cq, i32 noundef 0)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret i32 %sub
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_recv_cqe(ptr noundef %wq, ptr noundef %cq, i32 noundef %srqidx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_recv_cqe.__UNIQUE_ID_ddebug676, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_recv_cqe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sw_cidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  %0 = ptrtoint ptr %sw_cidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sw_cidx, align 2
  %conv = zext i16 %1 to i32
  %sw_pidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %2 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_pidx, align 8
  %conv3 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_recv_cqe.__UNIQUE_ID_ddebug676, ptr noundef nonnull @.str.26, ptr noundef %wq, ptr noundef %cq, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %4 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qid, align 8
  %gen = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 20
  %6 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %gen, align 8
  %conv4 = zext i8 %7 to i64
  %shl5 = shl i64 %conv4, 63
  %shl = shl i32 %5, 12
  %or = or i32 %shl, 2435
  %sw_queue = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %8 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_queue, align 4
  %sw_pidx9 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %10 = ptrtoint ptr %sw_pidx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sw_pidx9, align 8
  %idxprom = zext i16 %11 to i32
  %arrayidx = getelementptr %struct.t4_cqe, ptr %9, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx, align 8
  %cqe.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %13 = call ptr @memset(ptr %cqe.sroa.6.0.arrayidx.sroa_idx, i32 0, i32 16)
  %cqe.sroa.610.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 20
  %14 = ptrtoint ptr %cqe.sroa.610.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %srqidx, ptr %cqe.sroa.610.0.arrayidx.sroa_idx, align 4
  %cqe.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 24
  %15 = call ptr @memset(ptr %cqe.sroa.7.0.arrayidx.sroa_idx, i32 0, i32 32)
  %cqe.sroa.711.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 56
  %16 = ptrtoint ptr %cqe.sroa.711.0.arrayidx.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shl5, ptr %cqe.sroa.711.0.arrayidx.sroa_idx, align 8
  %sw_in_use.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 18
  %17 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sw_in_use.i, align 4
  %inc.i = add i16 %18, 1
  store i16 %inc.i, ptr %sw_in_use.i, align 4
  %size.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %20)
  %cmp.i = icmp eq i16 %inc.i, %20
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %cqid.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %21 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cqid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %22) #13
  %error.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 21
  %23 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %error.i, align 1
  %24 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sw_in_use.i, align 4
  %dec.i = add i16 %25, -1
  store i16 %dec.i, ptr %sw_in_use.i, align 4
  br label %t4_swcq_produce.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %sw_pidx9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sw_pidx9, align 8
  %inc5.i = add i16 %27, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i, i16 %20)
  %cmp9.i = icmp eq i16 %inc5.i, %20
  %spec.store.select.i = select i1 %cmp9.i, i16 0, i16 %inc5.i
  %28 = ptrtoint ptr %sw_pidx9 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.store.select.i, ptr %sw_pidx9, align 8
  br label %t4_swcq_produce.exit

t4_swcq_produce.exit:                             ; preds = %if.end.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_flush_sq(ptr noundef %qhp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wq1 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5
  %send_cq = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 2
  %0 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_cq, align 8
  %cq2 = getelementptr inbounds %struct.c4iw_cq, ptr %1, i32 0, i32 3
  %flush_cidx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 18
  %2 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flush_cidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp = icmp eq i16 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cidx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 13
  %4 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cidx, align 8
  %6 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %flush_cidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flush_cidx, align 2
  %conv9 = sext i16 %8 to i32
  %pidx = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 14
  %9 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pidx, align 2
  %conv1171 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv1171)
  %cmp12.not72 = icmp eq i32 %conv9, %conv1171
  br i1 %cmp12.not72, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %sw_sq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 4
  %oldest_read = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 5
  %size.i = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %idx.074 = phi i32 [ %conv9, %while.body.lr.ph ], [ %spec.store.select, %if.end20.while.body_crit_edge ]
  %flushed.073 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end20.while.body_crit_edge ]
  %11 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw_sq, align 8
  %arrayidx = getelementptr %struct.t4_swsqe, ptr %12, i32 %idx.074
  %flushed15 = getelementptr %struct.t4_swsqe, ptr %12, i32 %idx.074, i32 7
  %13 = ptrtoint ptr %flushed15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flushed15, align 4
  tail call fastcc void @insert_sq_cqe(ptr noundef %wq1, ptr noundef %cq2, ptr noundef %arrayidx)
  %14 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %oldest_read, align 4
  %cmp17 = icmp eq ptr %15, %arrayidx
  br i1 %cmp17, label %if.then19, label %while.body.if.end20_crit_edge

while.body.if.end20_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %while.body
  %16 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oldest_read, align 4
  %18 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw_sq, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size.i, align 2
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %add.i, %conv.i
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %add.i
  %22 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pidx, align 2
  %conv5.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %conv5.i)
  %cmp6.not39.i = icmp eq i32 %spec.store.select.i, %conv5.i
  br i1 %cmp6.not39.i, label %if.then19.while.end.i_crit_edge, label %if.then19.while.body.i_crit_edge

if.then19.while.body.i_crit_edge:                 ; preds = %if.then19
  br label %while.body.i

if.then19.while.end.i_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %if.then19.while.body.i_crit_edge
  %rptr.040.i = phi i32 [ %spec.store.select27.i, %if.end17.i.while.body.i_crit_edge ], [ %spec.store.select.i, %if.then19.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.t4_swsqe, ptr %19, i32 %rptr.040.i
  %24 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx.i, ptr %oldest_read, align 4
  %opcode.i = getelementptr %struct.t4_swsqe, ptr %19, i32 %rptr.040.i, i32 3
  %25 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp14.i = icmp eq i32 %26, 1
  br i1 %cmp14.i, label %while.body.i.if.end20_crit_edge, label %if.end17.i

while.body.i.if.end20_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end17.i:                                       ; preds = %while.body.i
  %inc.i = add i32 %rptr.040.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp21.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select27.i = select i1 %cmp21.i, i32 0, i32 %inc.i
  %cmp6.not.i = icmp eq i32 %spec.store.select27.i, %conv5.i
  br i1 %cmp6.not.i, label %if.end17.i.while.end.i_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end17.i.while.end.i_crit_edge, %if.then19.while.end.i_crit_edge
  %27 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %oldest_read, align 4
  br label %if.end20

if.end20:                                         ; preds = %while.end.i, %while.body.i.if.end20_crit_edge, %while.body.if.end20_crit_edge
  %inc = add i32 %flushed.073, 1
  %inc21 = add i32 %idx.074, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size.i, align 2
  %conv23 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21, i32 %conv23)
  %cmp24 = icmp eq i32 %inc21, %conv23
  %spec.store.select = select i1 %cmp24, i32 0, i32 %inc21
  %30 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pidx, align 2
  %conv11 = zext i16 %31 to i32
  %cmp12.not = icmp eq i32 %spec.store.select, %conv11
  br i1 %cmp12.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %if.end.while.end_crit_edge
  %flushed.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc, %if.end20.while.end_crit_edge ]
  %32 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flush_cidx, align 2
  %34 = trunc i32 %flushed.0.lcssa to i16
  %conv31 = add i16 %33, %34
  store i16 %conv31, ptr %flush_cidx, align 2
  %conv34 = sext i16 %conv31 to i32
  %size36 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5, i32 0, i32 12
  %35 = ptrtoint ptr %size36 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size36, align 2
  %conv37 = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34, i32 %conv37)
  %cmp38.not = icmp slt i32 %conv34, %conv37
  br i1 %cmp38.not, label %while.end.if.end48_crit_edge, label %if.then40

while.end.if.end48_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then40:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i16 %conv31, %36
  %37 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %sub, ptr %flush_cidx, align 2
  br label %if.end48

if.end48:                                         ; preds = %if.then40, %while.end.if.end48_crit_edge
  ret i32 %flushed.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_sq_cqe(ptr noundef %wq, ptr noundef %cq, ptr nocapture noundef readonly %swcqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_sq_cqe.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_sq_cqe, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sw_cidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  %0 = ptrtoint ptr %sw_cidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sw_cidx, align 2
  %conv = zext i16 %1 to i32
  %sw_pidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %2 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_pidx, align 8
  %conv3 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_sq_cqe.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.26, ptr noundef %wq, ptr noundef %cq, i32 noundef %conv, i32 noundef %conv3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %opcode = getelementptr inbounds %struct.t4_swsqe, ptr %swcqe, i32 0, i32 3
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opcode, align 4
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %6 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qid, align 8
  %shl6 = shl i32 %7, 12
  %or5 = or i32 %5, %shl6
  %or7 = or i32 %or5, 2448
  %idx = getelementptr inbounds %struct.t4_swsqe, ptr %swcqe, i32 0, i32 6
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idx, align 8
  %gen = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 20
  %10 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gen, align 8
  %conv8 = zext i8 %11 to i64
  %shl9 = shl i64 %conv8, 63
  %sw_queue = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %12 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw_queue, align 4
  %sw_pidx10 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %14 = ptrtoint ptr %sw_pidx10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sw_pidx10, align 8
  %idxprom = zext i16 %15 to i32
  %arrayidx = getelementptr %struct.t4_cqe, ptr %13, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or7, ptr %arrayidx, align 8
  %cqe.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %17 = call ptr @memset(ptr %cqe.sroa.6.0.arrayidx.sroa_idx, i32 0, i32 10)
  %cqe.sroa.611.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 14
  %18 = ptrtoint ptr %cqe.sroa.611.0.arrayidx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %9, ptr %cqe.sroa.611.0.arrayidx.sroa_idx, align 2
  %cqe.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %19 = call ptr @memset(ptr %cqe.sroa.7.0.arrayidx.sroa_idx, i32 0, i32 40)
  %cqe.sroa.712.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 56
  %20 = ptrtoint ptr %cqe.sroa.712.0.arrayidx.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %shl9, ptr %cqe.sroa.712.0.arrayidx.sroa_idx, align 8
  %sw_in_use.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 18
  %21 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sw_in_use.i, align 4
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr %sw_in_use.i, align 4
  %size.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %23 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %24)
  %cmp.i = icmp eq i16 %inc.i, %24
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %cqid.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %25 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cqid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %26) #13
  %error.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 21
  %27 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %error.i, align 1
  %28 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sw_in_use.i, align 4
  %dec.i = add i16 %29, -1
  store i16 %dec.i, ptr %sw_in_use.i, align 4
  br label %t4_swcq_produce.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %sw_pidx10 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sw_pidx10, align 8
  %inc5.i = add i16 %31, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i, i16 %24)
  %cmp9.i = icmp eq i16 %inc5.i, %24
  %spec.store.select.i = select i1 %cmp9.i, i16 0, i16 %inc5.i
  %32 = ptrtoint ptr %sw_pidx10 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %spec.store.select.i, ptr %sw_pidx10, align 8
  br label %t4_swcq_produce.exit

t4_swcq_produce.exit:                             ; preds = %if.end.i, %do.end.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @advance_oldest_read(ptr nocapture noundef %wq) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %oldest_read = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 5
  %0 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oldest_read, align 4
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %2 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw_sq, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 112
  %add = add nsw i32 %sub.ptr.div, 1
  %size = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp eq i32 %add, %conv
  %spec.store.select = select i1 %cmp, i32 0, i32 %add
  %pidx = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 14
  %6 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pidx, align 2
  %conv5 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %conv5)
  %cmp6.not39 = icmp eq i32 %spec.store.select, %conv5
  br i1 %cmp6.not39, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %entry.while.body_crit_edge
  %rptr.040 = phi i32 [ %spec.store.select27, %if.end17.while.body_crit_edge ], [ %spec.store.select, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.t4_swsqe, ptr %3, i32 %rptr.040
  %8 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %oldest_read, align 4
  %opcode = getelementptr %struct.t4_swsqe, ptr %3, i32 %rptr.040, i32 3
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %while.body.cleanup_crit_edge, label %if.end17

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %while.body
  %inc = add i32 %rptr.040, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp21 = icmp eq i32 %inc, %conv
  %spec.store.select27 = select i1 %cmp21, i32 0, i32 %inc
  %cmp6.not = icmp eq i32 %spec.store.select27, %conv5
  br i1 %cmp6.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %entry.while.end_crit_edge
  %11 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %oldest_read, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_flush_hw_cq(ptr noundef %chp, ptr noundef readnone %flush_qhp) local_unnamed_addr #0 align 64 {
entry:
  %read_cqe = alloca %struct.t4_cqe, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %read_cqe) #10
  %0 = call ptr @memset(ptr %read_cqe, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_flush_hw_cq.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_flush_hw_cq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cqid = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 11
  %1 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cqid, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_flush_hw_cq.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.7, i32 noundef %2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cq3 = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3
  %cidx.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 15
  %3 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  br i1 %cmp.i, label %if.then.i, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %size.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 14
  %5 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %size.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  %prev_cidx.0.in.i = phi i16 [ %6, %if.then.i ], [ %4, %do.end.if.end.i_crit_edge ]
  %prev_cidx.0.i = add i16 %prev_cidx.0.in.i, -1
  %7 = ptrtoint ptr %cq3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cq3, align 8
  %idxprom.i = zext i16 %prev_cidx.0.i to i32
  %bits_type_ts.i = getelementptr %struct.t4_cqe, ptr %8, i32 %idxprom.i, i32 4
  %9 = ptrtoint ptr %bits_type_ts.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %bits_type_ts.i, align 8
  %bits_type_ts8.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 10
  %11 = ptrtoint ptr %bits_type_ts8.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bits_type_ts8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp9.not.i = icmp eq i64 %10, %12
  br i1 %cmp9.not.i, label %if.else12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %error.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 21
  %13 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %error.i, align 1
  %cqid.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 11
  %14 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cqid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %15) #13
  br label %while.end

if.else12.i:                                      ; preds = %if.end.i
  %idxprom15.i = zext i16 %4 to i32
  %bits_type_ts.i.i = getelementptr %struct.t4_cqe, ptr %8, i32 %idxprom15.i, i32 4
  %16 = ptrtoint ptr %bits_type_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %bits_type_ts.i.i, align 8
  %shr.i.i = lshr i64 %17, 63
  %conv.i.i = trunc i64 %shr.i.i to i32
  %gen.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 20
  %18 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gen.i.i, align 8
  %conv1.i.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv1.i.i)
  %cmp.i.not.i = icmp eq i32 %conv.i.i, %conv1.i.i
  br i1 %cmp.i.not.i, label %while.body.lr.ph, label %if.else12.i.while.end_crit_edge

if.else12.i.while.end_crit_edge:                  ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %20 = ptrtoint ptr %cq3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cq3, align 8
  %22 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cidx.i, align 2
  %idxprom21.i = zext i16 %23 to i32
  %arrayidx22.i = getelementptr %struct.t4_cqe, ptr %21, i32 %idxprom21.i
  %rhp = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 1
  %u.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 2
  %cidx.i97 = getelementptr inbounds %struct.anon.4, ptr %u.i, i32 0, i32 2
  %len.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 1
  %bits_type_ts10.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 4
  %sw_queue = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 3
  %sw_pidx = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 16
  %sw_in_use.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 18
  %size.i126 = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 14
  %cqid.i128 = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 11
  %error.i130 = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 21
  %cidx_inc.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 19
  %bar2_va.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 5
  %bar2_qid.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 7
  %gts.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 4
  %gen.i = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end69.while.body_crit_edge, %while.body.lr.ph
  %hw_cqe.1174 = phi ptr [ %arrayidx22.i, %while.body.lr.ph ], [ %hw_cqe.4, %if.end69.while.body_crit_edge ]
  %24 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rhp, align 8
  %26 = ptrtoint ptr %hw_cqe.1174 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hw_cqe.1174, align 8
  %shr = lshr i32 %27, 12
  %qps.i = getelementptr inbounds %struct.c4iw_dev, ptr %25, i32 0, i32 4
  %call.i93 = tail call ptr @xa_load(ptr noundef %qps.i, i32 noundef %shr) #10
  %cmp = icmp eq ptr %call.i93, null
  br i1 %cmp, label %while.body.next_cqe_crit_edge, label %if.end10

while.body.next_cqe_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end10:                                         ; preds = %while.body
  %cmp11.not = icmp eq ptr %call.i93, %flush_qhp
  br i1 %cmp11.not, label %if.end10.if.end16_crit_edge, label %if.then12

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12:                                        ; preds = %if.end10
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %flushed = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp13 = icmp eq i32 %29, 1
  br i1 %cmp13, label %if.then12.next_cqe_crit_edge, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then12.next_cqe_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end16:                                         ; preds = %if.then12.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %30 = ptrtoint ptr %hw_cqe.1174 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hw_cqe.1174, align 8
  %and19 = and i32 %31, 15
  %32 = zext i32 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and19, label %if.end16.if.end44_crit_edge [
    i32 7, label %if.end16.next_cqe_crit_edge
    i32 2, label %if.then27
  ]

if.end16.next_cqe_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end16.if.end44_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then27:                                        ; preds = %if.end16
  %33 = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp31.not = icmp eq i32 %33, 0
  br i1 %cmp31.not, label %if.end33, label %if.then27.next_cqe_crit_edge

if.then27.next_cqe_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end33:                                         ; preds = %if.then27
  %u = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.1174, i32 0, i32 2
  %34 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %u, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp34 = icmp eq i32 %35, 1
  br i1 %cmp34, label %if.end33.next_cqe_crit_edge, label %if.end36

if.end33.next_cqe_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end36:                                         ; preds = %if.end33
  %oldest_read = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 5
  %36 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %oldest_read, align 4
  %signaled = getelementptr inbounds %struct.t4_swsqe, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %signaled to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %signaled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %sw_sq.i = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 4
  %40 = ptrtoint ptr %sw_sq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sw_sq.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 112
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  %size.i94 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 12
  %42 = ptrtoint ptr %size.i94 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size.i94, align 2
  %conv.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i95 = icmp eq i32 %add.i, %conv.i
  %spec.store.select.i = select i1 %cmp.i95, i32 0, i32 %add.i
  %pidx.i = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 14
  %44 = ptrtoint ptr %pidx.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pidx.i, align 2
  %conv5.i = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i, i32 %conv5.i)
  %cmp6.not39.i = icmp eq i32 %spec.store.select.i, %conv5.i
  br i1 %cmp6.not39.i, label %if.then39.while.end.i_crit_edge, label %if.then39.while.body.i_crit_edge

if.then39.while.body.i_crit_edge:                 ; preds = %if.then39
  br label %while.body.i

if.then39.while.end.i_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %if.end17.i.while.body.i_crit_edge, %if.then39.while.body.i_crit_edge
  %rptr.040.i = phi i32 [ %spec.store.select27.i, %if.end17.i.while.body.i_crit_edge ], [ %spec.store.select.i, %if.then39.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.t4_swsqe, ptr %41, i32 %rptr.040.i
  %46 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx.i, ptr %oldest_read, align 4
  %opcode.i = getelementptr %struct.t4_swsqe, ptr %41, i32 %rptr.040.i, i32 3
  %47 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp14.i = icmp eq i32 %48, 1
  br i1 %cmp14.i, label %while.body.i.next_cqe_crit_edge, label %if.end17.i

while.body.i.next_cqe_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %next_cqe

if.end17.i:                                       ; preds = %while.body.i
  %inc.i = add i32 %rptr.040.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp21.i = icmp eq i32 %inc.i, %conv.i
  %spec.store.select27.i = select i1 %cmp21.i, i32 0, i32 %inc.i
  %cmp6.not.i = icmp eq i32 %spec.store.select27.i, %conv5.i
  br i1 %cmp6.not.i, label %if.end17.i.while.end.i_crit_edge, label %if.end17.i.while.body.i_crit_edge

if.end17.i.while.body.i_crit_edge:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end17.i.while.end.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %if.end17.i.while.end.i_crit_edge, %if.then39.while.end.i_crit_edge
  %49 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %oldest_read, align 4
  br label %next_cqe

if.end41:                                         ; preds = %if.end36
  %idx.i = getelementptr inbounds %struct.t4_swsqe, ptr %37, i32 0, i32 6
  %50 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %idx.i, align 8
  %52 = ptrtoint ptr %cidx.i97 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %cidx.i97, align 2
  %read_len.i = getelementptr inbounds %struct.t4_swsqe, ptr %37, i32 0, i32 2
  %53 = ptrtoint ptr %read_len.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %read_len.i, align 8
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %len.i, align 4
  %56 = ptrtoint ptr %hw_cqe.1174 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hw_cqe.1174, align 8
  %or.i = and i32 %57, -2048
  %or8.i = or i32 %or.i, 17
  %58 = ptrtoint ptr %read_cqe to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or8.i, ptr %read_cqe, align 8
  %bits_type_ts.i98 = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.1174, i32 0, i32 4
  %59 = ptrtoint ptr %bits_type_ts.i98 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %bits_type_ts.i98, align 8
  %61 = ptrtoint ptr %bits_type_ts10.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %bits_type_ts10.i, align 8
  %sw_sq.i100 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 4
  %62 = ptrtoint ptr %sw_sq.i100 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw_sq.i100, align 8
  %sub.ptr.lhs.cast.i101 = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i102 = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i103 = sub i32 %sub.ptr.lhs.cast.i101, %sub.ptr.rhs.cast.i102
  %sub.ptr.div.i104 = sdiv exact i32 %sub.ptr.sub.i103, 112
  %add.i105 = add nsw i32 %sub.ptr.div.i104, 1
  %size.i106 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 12
  %64 = ptrtoint ptr %size.i106 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size.i106, align 2
  %conv.i107 = zext i16 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i105, i32 %conv.i107)
  %cmp.i108 = icmp eq i32 %add.i105, %conv.i107
  %spec.store.select.i109 = select i1 %cmp.i108, i32 0, i32 %add.i105
  %pidx.i110 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 14
  %66 = ptrtoint ptr %pidx.i110 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pidx.i110, align 2
  %conv5.i111 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select.i109, i32 %conv5.i111)
  %cmp6.not39.i112 = icmp eq i32 %spec.store.select.i109, %conv5.i111
  br i1 %cmp6.not39.i112, label %if.end41.while.end.i123_crit_edge, label %if.end41.while.body.i117_crit_edge

if.end41.while.body.i117_crit_edge:               ; preds = %if.end41
  br label %while.body.i117

if.end41.while.end.i123_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i123

while.body.i117:                                  ; preds = %if.end17.i122.while.body.i117_crit_edge, %if.end41.while.body.i117_crit_edge
  %rptr.040.i113 = phi i32 [ %spec.store.select27.i120, %if.end17.i122.while.body.i117_crit_edge ], [ %spec.store.select.i109, %if.end41.while.body.i117_crit_edge ]
  %arrayidx.i114 = getelementptr %struct.t4_swsqe, ptr %63, i32 %rptr.040.i113
  %68 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i114, ptr %oldest_read, align 4
  %opcode.i115 = getelementptr %struct.t4_swsqe, ptr %63, i32 %rptr.040.i113, i32 3
  %69 = ptrtoint ptr %opcode.i115 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %opcode.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp14.i116 = icmp eq i32 %70, 1
  br i1 %cmp14.i116, label %while.body.i117.if.end44_crit_edge, label %if.end17.i122

while.body.i117.if.end44_crit_edge:               ; preds = %while.body.i117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end17.i122:                                    ; preds = %while.body.i117
  %inc.i118 = add i32 %rptr.040.i113, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i118, i32 %conv.i107)
  %cmp21.i119 = icmp eq i32 %inc.i118, %conv.i107
  %spec.store.select27.i120 = select i1 %cmp21.i119, i32 0, i32 %inc.i118
  %cmp6.not.i121 = icmp eq i32 %spec.store.select27.i120, %conv5.i111
  br i1 %cmp6.not.i121, label %if.end17.i122.while.end.i123_crit_edge, label %if.end17.i122.while.body.i117_crit_edge

if.end17.i122.while.body.i117_crit_edge:          ; preds = %if.end17.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i117

if.end17.i122.while.end.i123_crit_edge:           ; preds = %if.end17.i122
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i123

while.end.i123:                                   ; preds = %if.end17.i122.while.end.i123_crit_edge, %if.end41.while.end.i123_crit_edge
  %71 = ptrtoint ptr %oldest_read to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %oldest_read, align 4
  br label %if.end44

if.end44:                                         ; preds = %while.end.i123, %while.body.i117.if.end44_crit_edge, %if.end16.if.end44_crit_edge
  %hw_cqe.2 = phi ptr [ %hw_cqe.1174, %if.end16.if.end44_crit_edge ], [ %read_cqe, %while.end.i123 ], [ %read_cqe, %while.body.i117.if.end44_crit_edge ]
  %72 = ptrtoint ptr %hw_cqe.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_cqe.2, align 8
  %74 = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool48.not = icmp eq i32 %74, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %wq50 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5
  %sw_sq = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 5, i32 0, i32 4
  %75 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sw_sq, align 8
  %u52 = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.2, i32 0, i32 2
  %cidx = getelementptr inbounds %struct.anon.4, ptr %u52, i32 0, i32 2
  %77 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %cidx, align 2
  %idxprom = zext i16 %78 to i32
  %cqe = getelementptr %struct.t4_swsqe, ptr %76, i32 %idxprom, i32 1
  %79 = call ptr @memcpy(ptr %cqe, ptr %hw_cqe.2, i32 64)
  %complete = getelementptr %struct.t4_swsqe, ptr %76, i32 %idxprom, i32 4
  %80 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %complete, align 8
  tail call fastcc void @flush_completed_wrs(ptr noundef %wq50, ptr noundef %cq3)
  br label %next_cqe

if.else:                                          ; preds = %if.end44
  %81 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sw_queue, align 4
  %83 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %sw_pidx, align 8
  %idxprom57 = zext i16 %84 to i32
  %arrayidx58 = getelementptr %struct.t4_cqe, ptr %82, i32 %idxprom57
  %85 = call ptr @memcpy(ptr %arrayidx58, ptr %hw_cqe.2, i32 64)
  %86 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx58, align 8
  %or = or i32 %87, 2048
  store i32 %or, ptr %arrayidx58, align 8
  %88 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sw_in_use.i, align 4
  %inc.i125 = add i16 %89, 1
  store i16 %inc.i125, ptr %sw_in_use.i, align 4
  %90 = ptrtoint ptr %size.i126 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %size.i126, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i125, i16 %91)
  %cmp.i127 = icmp eq i16 %inc.i125, %91
  br i1 %cmp.i127, label %do.end.i, label %if.end.i132

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %cqid.i128 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cqid.i128, align 8
  %call.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %93) #13
  %94 = ptrtoint ptr %error.i130 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %error.i130, align 1
  %95 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %sw_in_use.i, align 4
  %dec.i = add i16 %96, -1
  store i16 %dec.i, ptr %sw_in_use.i, align 4
  br label %next_cqe

if.end.i132:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %sw_pidx, align 8
  %inc5.i = add i16 %98, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i, i16 %91)
  %cmp9.i = icmp eq i16 %inc5.i, %91
  %spec.store.select.i131 = select i1 %cmp9.i, i16 0, i16 %inc5.i
  %99 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %spec.store.select.i131, ptr %sw_pidx, align 8
  br label %next_cqe

next_cqe:                                         ; preds = %if.end.i132, %do.end.i, %if.then49, %while.end.i, %while.body.i.next_cqe_crit_edge, %if.end33.next_cqe_crit_edge, %if.then27.next_cqe_crit_edge, %if.end16.next_cqe_crit_edge, %if.then12.next_cqe_crit_edge, %while.body.next_cqe_crit_edge
  %hw_cqe.3 = phi ptr [ %hw_cqe.1174, %while.body.next_cqe_crit_edge ], [ %hw_cqe.2, %if.then49 ], [ %hw_cqe.1174, %if.end33.next_cqe_crit_edge ], [ %hw_cqe.1174, %if.then27.next_cqe_crit_edge ], [ %hw_cqe.1174, %if.end16.next_cqe_crit_edge ], [ %hw_cqe.1174, %if.then12.next_cqe_crit_edge ], [ %hw_cqe.1174, %while.end.i ], [ %hw_cqe.2, %do.end.i ], [ %hw_cqe.2, %if.end.i132 ], [ %hw_cqe.1174, %while.body.i.next_cqe_crit_edge ]
  %100 = ptrtoint ptr %cq3 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cq3, align 8
  %102 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %cidx.i, align 2
  %idxprom.i134 = zext i16 %103 to i32
  %bits_type_ts.i135 = getelementptr %struct.t4_cqe, ptr %101, i32 %idxprom.i134, i32 4
  %104 = ptrtoint ptr %bits_type_ts.i135 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %bits_type_ts.i135, align 8
  %106 = ptrtoint ptr %bits_type_ts8.i to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %bits_type_ts8.i, align 8
  %107 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cidx_inc.i, align 2
  %inc.i136 = add i16 %108, 1
  store i16 %inc.i136, ptr %cidx_inc.i, align 2
  %109 = ptrtoint ptr %size.i126 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %size.i126, align 4
  %111 = lshr i16 %110, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i136, i16 %111)
  %cmp.i138 = icmp eq i16 %inc.i136, %111
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc.i136)
  %cmp6.i = icmp eq i16 %inc.i136, 4095
  %or.cond.i = or i1 %cmp6.i, %cmp.i138
  br i1 %or.cond.i, label %if.then.i139, label %next_cqe.if.end.i140_crit_edge

next_cqe.if.end.i140_crit_edge:                   ; preds = %next_cqe
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i140

if.then.i139:                                     ; preds = %next_cqe
  %112 = or i16 %inc.i136, -8192
  %or10.i = zext i16 %112 to i32
  %113 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bar2_va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %114, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %bar2_qid.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %bar2_qid.i.i, align 8
  %shl.i.i = shl i32 %116, 16
  %or.i.i = or i32 %shl.i.i, %or10.i
  %117 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %118 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %bar2_va.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %119, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %117) #10, !srcloc !195
  br label %write_gts.exit.i

do.body2.i.i:                                     ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %cqid.i128 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cqid.i128, align 8
  %shl4.i.i = shl i32 %121, 16
  %or5.i.i = or i32 %shl4.i.i, %or10.i
  %122 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  %123 = ptrtoint ptr %gts.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %gts.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %122) #10, !srcloc !195
  br label %write_gts.exit.i

write_gts.exit.i:                                 ; preds = %do.body2.i.i, %do.body.i.i
  %125 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %cidx_inc.i, align 2
  br label %if.end.i140

if.end.i140:                                      ; preds = %write_gts.exit.i, %next_cqe.if.end.i140_crit_edge
  %126 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %cidx.i, align 2
  %inc13.i = add i16 %127, 1
  store i16 %inc13.i, ptr %cidx.i, align 2
  %128 = ptrtoint ptr %size.i126 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %size.i126, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc13.i, i16 %129)
  %cmp17.i = icmp eq i16 %inc13.i, %129
  br i1 %cmp17.i, label %t4_hwcq_consume.exit.thread, label %t4_hwcq_consume.exit

t4_hwcq_consume.exit.thread:                      ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %cidx.i, align 2
  %131 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %gen.i, align 8
  %133 = xor i8 %132, 1
  store i8 %133, ptr %gen.i, align 8
  br label %if.then.i144

t4_hwcq_consume.exit:                             ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc13.i)
  %cmp.i142 = icmp eq i16 %inc13.i, 0
  br i1 %cmp.i142, label %t4_hwcq_consume.exit.if.then.i144_crit_edge, label %t4_hwcq_consume.exit.if.end.i151_crit_edge

t4_hwcq_consume.exit.if.end.i151_crit_edge:       ; preds = %t4_hwcq_consume.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i151

t4_hwcq_consume.exit.if.then.i144_crit_edge:      ; preds = %t4_hwcq_consume.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i144

if.then.i144:                                     ; preds = %t4_hwcq_consume.exit.if.then.i144_crit_edge, %t4_hwcq_consume.exit.thread
  %134 = ptrtoint ptr %size.i126 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %size.i126, align 4
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.then.i144, %t4_hwcq_consume.exit.if.end.i151_crit_edge
  %136 = phi i16 [ 0, %if.then.i144 ], [ %inc13.i, %t4_hwcq_consume.exit.if.end.i151_crit_edge ]
  %prev_cidx.0.in.i145 = phi i16 [ %135, %if.then.i144 ], [ %inc13.i, %t4_hwcq_consume.exit.if.end.i151_crit_edge ]
  %prev_cidx.0.i146 = add i16 %prev_cidx.0.in.i145, -1
  %137 = ptrtoint ptr %cq3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cq3, align 8
  %idxprom.i147 = zext i16 %prev_cidx.0.i146 to i32
  %bits_type_ts.i148 = getelementptr %struct.t4_cqe, ptr %138, i32 %idxprom.i147, i32 4
  %139 = ptrtoint ptr %bits_type_ts.i148 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %bits_type_ts.i148, align 8
  %141 = ptrtoint ptr %bits_type_ts8.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %bits_type_ts8.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %140, i64 %142)
  %cmp9.not.i150 = icmp eq i64 %140, %142
  br i1 %cmp9.not.i150, label %if.else12.i163, label %if.then11.i155

if.then11.i155:                                   ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #12
  %143 = ptrtoint ptr %error.i130 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %error.i130, align 1
  %144 = ptrtoint ptr %cqid.i128 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %cqid.i128, align 8
  %call.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %145) #13
  br label %t4_next_hw_cqe.exit168

if.else12.i163:                                   ; preds = %if.end.i151
  %idxprom15.i156 = zext i16 %136 to i32
  %bits_type_ts.i.i157 = getelementptr %struct.t4_cqe, ptr %138, i32 %idxprom15.i156, i32 4
  %146 = ptrtoint ptr %bits_type_ts.i.i157 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %bits_type_ts.i.i157, align 8
  %shr.i.i158 = lshr i64 %147, 63
  %conv.i.i159 = trunc i64 %shr.i.i158 to i32
  %148 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %gen.i, align 8
  %conv1.i.i161 = zext i8 %149 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i159, i32 %conv1.i.i161)
  %cmp.i.not.i162 = icmp eq i32 %conv.i.i159, %conv1.i.i161
  br i1 %cmp.i.not.i162, label %if.then18.i166, label %if.else12.i163.t4_next_hw_cqe.exit168_crit_edge

if.else12.i163.t4_next_hw_cqe.exit168_crit_edge:  ; preds = %if.else12.i163
  call void @__sanitizer_cov_trace_pc() #12
  br label %t4_next_hw_cqe.exit168

if.then18.i166:                                   ; preds = %if.else12.i163
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %150 = ptrtoint ptr %cq3 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cq3, align 8
  %152 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %cidx.i, align 2
  %idxprom21.i164 = zext i16 %153 to i32
  %arrayidx22.i165 = getelementptr %struct.t4_cqe, ptr %151, i32 %idxprom21.i164
  br label %t4_next_hw_cqe.exit168

t4_next_hw_cqe.exit168:                           ; preds = %if.then18.i166, %if.else12.i163.t4_next_hw_cqe.exit168_crit_edge, %if.then11.i155
  %hw_cqe.4 = phi ptr [ %arrayidx22.i165, %if.then18.i166 ], [ %hw_cqe.3, %if.else12.i163.t4_next_hw_cqe.exit168_crit_edge ], [ %hw_cqe.3, %if.then11.i155 ]
  %tobool5.not = phi i1 [ true, %if.then18.i166 ], [ false, %if.else12.i163.t4_next_hw_cqe.exit168_crit_edge ], [ false, %if.then11.i155 ]
  %cmp66.not = icmp eq ptr %call.i93, %flush_qhp
  %or.cond = or i1 %cmp, %cmp66.not
  br i1 %or.cond, label %t4_next_hw_cqe.exit168.if.end69_crit_edge, label %if.then67

t4_next_hw_cqe.exit168.if.end69_crit_edge:        ; preds = %t4_next_hw_cqe.exit168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then67:                                        ; preds = %t4_next_hw_cqe.exit168
  call void @__sanitizer_cov_trace_pc() #12
  %lock68 = getelementptr inbounds %struct.c4iw_qp, ptr %call.i93, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lock68) #10
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %t4_next_hw_cqe.exit168.if.end69_crit_edge
  br i1 %tobool5.not, label %if.end69.while.body_crit_edge, label %if.end69.while.end_crit_edge

if.end69.while.end_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end69.while.end_crit_edge, %if.else12.i.while.end_crit_edge, %if.then11.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %read_cqe) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_completed_wrs(ptr nocapture noundef %wq, ptr nocapture noundef %cq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_cidx = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 18
  %0 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flush_cidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp = icmp eq i16 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cidx3 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 13
  %2 = ptrtoint ptr %cidx3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cidx3, align 8
  %4 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %flush_cidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flush_cidx, align 2
  %conv8 = sext i16 %6 to i32
  %pidx = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 14
  %7 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pidx, align 2
  %conv1068 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %conv1068)
  %cmp11.not69 = icmp eq i32 %conv8, %conv1068
  br i1 %cmp11.not69, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %sw_pidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %sw_queue = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %sw_in_use.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 18
  %size.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %cqid.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %error.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 21
  %size34 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.lr.ph
  %cidx.070 = phi i32 [ %conv8, %while.body.lr.ph ], [ %cidx.1, %if.end45.while.body_crit_edge ]
  %9 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw_sq, align 8
  %signaled = getelementptr %struct.t4_swsqe, ptr %10, i32 %cidx.070, i32 5
  %11 = ptrtoint ptr %signaled to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signaled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %cidx.070, 1
  %13 = ptrtoint ptr %size34 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size34, align 2
  %conv16 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv16)
  %cmp17 = icmp eq i32 %inc, %conv16
  %spec.store.select = select i1 %cmp17, i32 0, i32 %inc
  br label %if.end45

if.else:                                          ; preds = %while.body
  %complete = getelementptr %struct.t4_swsqe, ptr %10, i32 %cidx.070, i32 4
  %15 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %complete, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool21.not = icmp eq i32 %16, 0
  br i1 %tobool21.not, label %if.else.while.end_crit_edge, label %do.body

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.body:                                          ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @flush_completed_wrs.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@flush_completed_wrs, %if.then26)) #10
          to label %do.end [label %if.then26], !srcloc !193

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sw_pidx, align 8
  %conv27 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @flush_completed_wrs.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.33, i32 noundef %cidx.070, i32 noundef %conv27) #10
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %cqe = getelementptr %struct.t4_swsqe, ptr %10, i32 %cidx.070, i32 1
  %19 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cqe, align 8
  %or = or i32 %20, 2048
  store i32 %or, ptr %cqe, align 8
  %21 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw_queue, align 4
  %23 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %sw_pidx, align 8
  %idxprom = zext i16 %24 to i32
  %arrayidx30 = getelementptr %struct.t4_cqe, ptr %22, i32 %idxprom
  %25 = call ptr @memcpy(ptr %arrayidx30, ptr %cqe, i32 64)
  %26 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sw_in_use.i, align 4
  %inc.i = add i16 %27, 1
  store i16 %inc.i, ptr %sw_in_use.i, align 4
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %29)
  %cmp.i = icmp eq i16 %inc.i, %29
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cqid.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %31) #13
  %32 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %error.i, align 1
  %33 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %sw_in_use.i, align 4
  %dec.i = add i16 %34, -1
  store i16 %dec.i, ptr %sw_in_use.i, align 4
  br label %t4_swcq_produce.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sw_pidx, align 8
  %inc5.i = add i16 %36, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc5.i, i16 %29)
  %cmp9.i = icmp eq i16 %inc5.i, %29
  %spec.store.select.i = select i1 %cmp9.i, i16 0, i16 %inc5.i
  %37 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %spec.store.select.i, ptr %sw_pidx, align 8
  br label %t4_swcq_produce.exit

t4_swcq_produce.exit:                             ; preds = %if.end.i, %do.end.i
  %flushed = getelementptr %struct.t4_swsqe, ptr %10, i32 %cidx.070, i32 7
  %38 = ptrtoint ptr %flushed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %flushed, align 4
  %inc32 = add i32 %cidx.070, 1
  %39 = ptrtoint ptr %size34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size34, align 2
  %conv35 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc32, i32 %conv35)
  %cmp36 = icmp eq i32 %inc32, %conv35
  %spec.store.select46 = select i1 %cmp36, i32 0, i32 %inc32
  %conv40 = trunc i32 %spec.store.select46 to i16
  %41 = ptrtoint ptr %flush_cidx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv40, ptr %flush_cidx, align 2
  br label %if.end45

if.end45:                                         ; preds = %t4_swcq_produce.exit, %if.then14
  %cidx.1 = phi i32 [ %spec.store.select46, %t4_swcq_produce.exit ], [ %spec.store.select, %if.then14 ]
  %42 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pidx, align 2
  %conv10 = zext i16 %43 to i32
  %cmp11.not = icmp eq i32 %cidx.1, %conv10
  br i1 %cmp11.not, label %if.end45.while.end_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end45.while.end_crit_edge, %if.else.while.end_crit_edge, %if.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_count_rcqes(ptr noundef %cq, ptr nocapture noundef readonly %wq, ptr nocapture noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_count_rcqes.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_count_rcqes, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_count_rcqes.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.10, i32 noundef %2) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sw_cidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  %3 = ptrtoint ptr %sw_cidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sw_cidx, align 2
  %sw_pidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 16
  %5 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sw_pidx, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not66 = icmp eq i16 %4, %6
  br i1 %cmp.not66, label %do.end.do.body28_crit_edge, label %while.body.lr.ph

do.end.do.body28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

while.body.lr.ph:                                 ; preds = %do.end
  %conv = zext i16 %4 to i32
  %sw_queue = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %qid = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 10
  %in_use.i.i = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 12
  %size = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %ptr.067 = phi i32 [ %conv, %while.body.lr.ph ], [ %spec.store.select, %if.end21.while.body_crit_edge ]
  %7 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw_queue, align 4
  %arrayidx = getelementptr %struct.t4_cqe, ptr %8, i32 %ptr.067
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp ne i32 %11, 0
  %and8 = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 2
  %or.cond = or i1 %tobool5.not, %cmp9.not
  br i1 %or.cond, label %while.body.if.end21_crit_edge, label %land.lhs.true11

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true11:                                  ; preds = %while.body
  %shr13 = lshr i32 %10, 12
  %12 = ptrtoint ptr %qid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13, i32 %13)
  %cmp15 = icmp eq i32 %shr13, %13
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true11.if.end21_crit_edge

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true17:                                  ; preds = %land.lhs.true11
  %14 = and i32 %10, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end35.i, label %land.end.i

land.end.i:                                       ; preds = %land.lhs.true17
  %.b102.i = load i1, ptr @cqe_completes_wr.__already_done, align 1
  br i1 %.b102.i, label %land.end.i.if.end21_crit_edge, label %if.then6.i, !prof !196

land.end.i.if.end21_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then6.i:                                       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cqe_completes_wr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.36, i32 noundef %shr13) #10
  br label %if.end21

if.end35.i:                                       ; preds = %land.lhs.true17
  %15 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and8, label %if.end50.i [
    i32 7, label %if.end35.i.if.end21_crit_edge
    i32 0, label %if.end35.i.if.end21_crit_edge68
  ]

if.end35.i.if.end21_crit_edge68:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end35.i.if.end21_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end50.i:                                       ; preds = %if.end35.i
  %16 = and i32 %10, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %16)
  %.not.i = icmp eq i32 %16, 18
  br i1 %.not.i, label %if.end50.i.if.end21_crit_edge, label %if.end61.i

if.end50.i.if.end21_crit_edge:                    ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end61.i:                                       ; preds = %if.end50.i
  %17 = add nsw i32 %and8, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %17)
  %switch.i = icmp ult i32 %17, -4
  br i1 %switch.i, label %if.end61.i.if.then20_crit_edge, label %land.lhs.true85.i

if.end61.i.if.then20_crit_edge:                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

land.lhs.true85.i:                                ; preds = %if.end61.i
  %18 = ptrtoint ptr %in_use.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_use.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i.not.i = icmp eq i16 %19, 0
  br i1 %cmp.i.not.i, label %land.lhs.true85.i.if.end21_crit_edge, label %land.lhs.true85.i.if.then20_crit_edge

land.lhs.true85.i.if.then20_crit_edge:            ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

land.lhs.true85.i.if.end21_crit_edge:             ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true85.i.if.then20_crit_edge, %if.end61.i.if.then20_crit_edge
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true85.i.if.end21_crit_edge, %if.end50.i.if.end21_crit_edge, %if.end35.i.if.end21_crit_edge, %if.end35.i.if.end21_crit_edge68, %if.then6.i, %land.end.i.if.end21_crit_edge, %land.lhs.true11.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %inc22 = add i32 %ptr.067, 1
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %size, align 4
  %conv23 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc22, i32 %conv23)
  %cmp24 = icmp eq i32 %inc22, %conv23
  %spec.store.select = select i1 %cmp24, i32 0, i32 %inc22
  %24 = ptrtoint ptr %sw_pidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sw_pidx, align 8
  %conv3 = zext i16 %25 to i32
  %cmp.not = icmp eq i32 %spec.store.select, %conv3
  br i1 %cmp.not, label %if.end21.do.body28_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end21.do.body28_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

do.body28:                                        ; preds = %if.end21.do.body28_crit_edge, %do.end.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_count_rcqes.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_count_rcqes, %if.then40)) #10
          to label %do.end43 [label %if.then40], !srcloc !193

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_count_rcqes.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.12, ptr noundef %cq, i32 noundef %27) #10
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.body28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_poll_cq(ptr noundef %ibcq, i32 noundef %num_entries, ptr noundef %wc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp642 = icmp sgt i32 %num_entries, 0
  br i1 %cmp642, label %do.body8.preheader.lr.ph, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

do.body8.preheader.lr.ph:                         ; preds = %entry
  %cq.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3
  %error.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 21
  %sw_in_use.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 18
  %sw_queue.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 3
  %sw_cidx.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 17
  %cidx.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 15
  %size.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 14
  %bits_type_ts8.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 10
  %gen.i.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 20
  %rhp.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 1
  br label %do.body8.preheader

do.body8.preheader:                               ; preds = %for.inc.do.body8.preheader_crit_edge, %do.body8.preheader.lr.ph
  %npolled.043 = phi i32 [ 0, %do.body8.preheader.lr.ph ], [ %inc, %for.inc.do.body8.preheader_crit_edge ]
  %add.ptr = getelementptr %struct.ib_wc, ptr %wc, i32 %npolled.043
  br label %do.body8

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %npolled.0.lcssa = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ %num_entries, %for.inc.for.end.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cond.end

do.body8:                                         ; preds = %c4iw_poll_cq_one.exit.do.body8_crit_edge, %do.body8.preheader
  %0 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %error.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body8.for.end.thread29_crit_edge

do.body8.for.end.thread29_crit_edge:              ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread29

if.else.i.i:                                      ; preds = %do.body8
  %2 = ptrtoint ptr %sw_in_use.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sw_in_use.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool1.not.i.i, label %if.else3.i.i, label %if.else.i.i.if.end.i_crit_edge

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  %4 = ptrtoint ptr %cidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cidx.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i.i.i = icmp eq i16 %5, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else3.i.i.if.end.i.i.i_crit_edge

if.else3.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.else3.i.i.if.end.i.i.i_crit_edge
  %prev_cidx.0.in.i.i.i = phi i16 [ %7, %if.then.i.i.i ], [ %5, %if.else3.i.i.if.end.i.i.i_crit_edge ]
  %prev_cidx.0.i.i.i = add i16 %prev_cidx.0.in.i.i.i, -1
  %8 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cq.i, align 8
  %idxprom.i.i.i = zext i16 %prev_cidx.0.i.i.i to i32
  %bits_type_ts.i.i.i = getelementptr %struct.t4_cqe, ptr %9, i32 %idxprom.i.i.i, i32 4
  %10 = ptrtoint ptr %bits_type_ts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bits_type_ts.i.i.i, align 8
  %12 = ptrtoint ptr %bits_type_ts8.i.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bits_type_ts8.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp9.not.i.i.i = icmp eq i64 %11, %13
  br i1 %cmp9.not.i.i.i, label %if.else12.i.i.i, label %for.end.thread31

for.end.thread31:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %error.i.i, align 1
  %cqid.i.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 11
  %15 = ptrtoint ptr %cqid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cqid.i.i.i, align 8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %16) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cond.false

if.else12.i.i.i:                                  ; preds = %if.end.i.i.i
  %idxprom15.i.i.i = zext i16 %5 to i32
  %bits_type_ts.i.i.i.i = getelementptr %struct.t4_cqe, ptr %9, i32 %idxprom15.i.i.i, i32 4
  %17 = ptrtoint ptr %bits_type_ts.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %bits_type_ts.i.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %18, 63
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %19 = ptrtoint ptr %gen.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %gen.i.i.i.i, align 8
  %conv1.i.i.i.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i.i, i32 %conv1.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %conv.i.i.i.i, %conv1.i.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then18.i.i.i, label %if.else12.i.i.i.for.end.thread29_crit_edge

if.else12.i.i.i.for.end.thread29_crit_edge:       ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread29

if.then18.i.i.i:                                  ; preds = %if.else12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  br label %if.end.i

if.end.i:                                         ; preds = %if.then18.i.i.i, %if.else.i.i.if.end.i_crit_edge
  %cidx.i.i.sink.i = phi ptr [ %cidx.i.i.i, %if.then18.i.i.i ], [ %sw_cidx.i.i, %if.else.i.i.if.end.i_crit_edge ]
  %.sink.in.i = phi ptr [ %cq.i, %if.then18.i.i.i ], [ %sw_queue.i.i, %if.else.i.i.if.end.i_crit_edge ]
  %21 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %22 = ptrtoint ptr %cidx.i.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cidx.i.i.sink.i, align 2
  %idxprom21.i.i.i = zext i16 %23 to i32
  %arrayidx22.i.i.i = getelementptr %struct.t4_cqe, ptr %.sink.i, i32 %idxprom21.i.i.i
  %24 = ptrtoint ptr %rhp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rhp.i, align 8
  %26 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx22.i.i.i, align 8
  %shr.i = lshr i32 %27, 12
  %qps.i.i = getelementptr inbounds %struct.c4iw_dev, ptr %25, i32 0, i32 4
  %call.i.i = tail call ptr @xa_load(ptr noundef %qps.i.i, i32 noundef %shr.i) #10
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.c4iw_qp, ptr %call.i.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #10
  %srq4.i = getelementptr inbounds %struct.c4iw_qp, ptr %call.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %srq4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %srq4.i, align 8
  %tobool5.not.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then6.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock7.i = getelementptr inbounds %struct.c4iw_srq, ptr %29, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock7.i) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then3.i.if.end8.i_crit_edge
  %call9.i = tail call fastcc i32 @__c4iw_poll_cq_one(ptr noundef %ibcq, ptr noundef nonnull %call.i.i, ptr noundef %add.ptr, ptr noundef %29) #10
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #10
  br i1 %tobool5.not.i, label %if.end8.i.c4iw_poll_cq_one.exit_crit_edge, label %if.then12.i

if.end8.i.c4iw_poll_cq_one.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %c4iw_poll_cq_one.exit

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %lock13.i = getelementptr inbounds %struct.c4iw_srq, ptr %29, i32 0, i32 9
  tail call void @_raw_spin_unlock(ptr noundef %lock13.i) #10
  br label %c4iw_poll_cq_one.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call15.i = tail call fastcc i32 @__c4iw_poll_cq_one(ptr noundef %ibcq, ptr noundef null, ptr noundef %add.ptr, ptr noundef null) #10
  br label %c4iw_poll_cq_one.exit

c4iw_poll_cq_one.exit:                            ; preds = %if.else.i, %if.then12.i, %if.end8.i.c4iw_poll_cq_one.exit_crit_edge
  %retval.0.i = phi i32 [ %call9.i, %if.then12.i ], [ %call9.i, %if.end8.i.c4iw_poll_cq_one.exit_crit_edge ], [ %call15.i, %if.else.i ]
  %30 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %retval.0.i, label %for.end [
    i32 -11, label %c4iw_poll_cq_one.exit.do.body8_crit_edge
    i32 0, label %for.inc
  ]

c4iw_poll_cq_one.exit.do.body8_crit_edge:         ; preds = %c4iw_poll_cq_one.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

for.inc:                                          ; preds = %c4iw_poll_cq_one.exit
  %inc = add nuw nsw i32 %npolled.043, 1
  %exitcond.not = icmp eq i32 %inc, %num_entries
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.do.body8.preheader_crit_edge

for.inc.do.body8.preheader_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8.preheader

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.thread

for.end.thread29:                                 ; preds = %if.else12.i.i.i.for.end.thread29_crit_edge, %do.body8.for.end.thread29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cond.end

for.end:                                          ; preds = %c4iw_poll_cq_one.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i)
  %cond34 = icmp eq i32 %retval.0.i, -61
  br i1 %cond34, label %for.end.cond.end_crit_edge, label %for.end.cond.false_crit_edge

for.end.cond.false_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %for.end.cond.false_crit_edge, %for.end.thread31
  %err.133 = phi i32 [ -75, %for.end.thread31 ], [ %retval.0.i, %for.end.cond.false_crit_edge ]
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge, %for.end.thread29, %for.end.thread
  %cond = phi i32 [ %err.133, %cond.false ], [ %npolled.043, %for.end.cond.end_crit_edge ], [ %npolled.0.lcssa, %for.end.thread ], [ %npolled.043, %for.end.thread29 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_cq_rem_ref(ptr noundef %chp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #10, !srcloc !198
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !196

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !199
  %cq_rel_comp = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 7
  tail call void @complete(ptr noundef %cq_rel_comp) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_destroy_cq(ptr noundef %ib_cq, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_destroy_cq.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_destroy_cq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_destroy_cq.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.15, ptr noundef %ib_cq) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rhp = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 1
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 8
  %cqs = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 3
  %cqid = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 3, i32 11
  %2 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cqid, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %cqs) #10
  %call.i = tail call ptr @__xa_erase(ptr noundef %cqs, i32 noundef %3) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %cqs) #10
  %refcnt.i = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #10, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.c4iw_cq_rem_ref.exit_crit_edge, label %if.then10.i.i.i.i, !prof !196

if.end5.i.i.i.i.c4iw_cq_rem_ref.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %c4iw_cq_rem_ref.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #10
  br label %c4iw_cq_rem_ref.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !199
  %cq_rel_comp.i = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 7
  tail call void @complete(ptr noundef %cq_rel_comp.i) #10
  br label %c4iw_cq_rem_ref.exit

c4iw_cq_rem_ref.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.c4iw_cq_rem_ref.exit_crit_edge
  %cq_rel_comp = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %cq_rel_comp) #10
  %tobool5.not = icmp eq ptr %udata, null
  br i1 %tobool5.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %c4iw_cq_rem_ref.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rhp, align 8
  br label %cond.false12

cond.end:                                         ; preds = %c4iw_cq_rem_ref.exit
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  %9 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rhp, align 8
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %cond.end.cond.false12_crit_edge, label %cond.true11

cond.end.cond.false12_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %8, i32 0, i32 1
  br label %cond.end16

cond.false12:                                     ; preds = %cond.end.cond.false12_crit_edge, %cond.end.thread
  %11 = phi ptr [ %6, %cond.end.thread ], [ %10, %cond.end.cond.false12_crit_edge ]
  %rdev14 = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %rdev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev14, align 4
  %uctx15 = getelementptr inbounds %struct.c4iw_rdev, ptr %13, i32 0, i32 3
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false12, %cond.true11
  %14 = phi ptr [ %10, %cond.true11 ], [ %11, %cond.false12 ]
  %cond17 = phi ptr [ %uctx, %cond.true11 ], [ %uctx15, %cond.false12 ]
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 3
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %14, i32 0, i32 1
  %destroy_skb = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 2
  %15 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %destroy_skb, align 4
  %wr_waitp = getelementptr inbounds %struct.c4iw_cq, ptr %ib_cq, i32 0, i32 8
  %17 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr_waitp, align 4
  tail call fastcc void @destroy_cq(ptr noundef %rdev, ptr noundef %cq, ptr noundef %cond17, ptr noundef %16, ptr noundef %18)
  %19 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wr_waitp, align 4
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %20)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xa_erase_irq(ptr noundef %xa, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %xa) #10
  %call = tail call ptr @__xa_erase(ptr noundef %xa, i32 noundef %index) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %xa) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_cq(ptr noundef %rdev, ptr nocapture noundef readonly %cq, ptr noundef %uctx, ptr noundef %skb, ptr noundef %wr_waitp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %queue_mapping1.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %1 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_zero.exit, label %do.body3.i.i, !prof !196

do.body3.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !200
  unreachable

__skb_put_zero.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 64
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %6, 64
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %4, i32 18
  %8 = call ptr @memset(ptr %7, i32 0, i32 46)
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 203423745, ptr %4, align 8
  %len16_pkd = getelementptr inbounds %struct.fw_ri_res_wr, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %len16_pkd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len16_pkd, align 4
  %11 = ptrtoint ptr %wr_waitp to i32
  %conv = zext i32 %11 to i64
  %cookie = getelementptr inbounds %struct.fw_ri_res_wr, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %cookie, align 8
  %res1 = getelementptr inbounds %struct.fw_ri_res_wr, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %res1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %res1, align 8
  %op = getelementptr inbounds %struct.fw_ri_res_cq, ptr %res1, i32 0, i32 1
  %14 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %op, align 1
  %cqid = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %15 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cqid, align 8
  %iqid = getelementptr inbounds %struct.fw_ri_res_wr, ptr %4, i32 1, i32 1
  %17 = ptrtoint ptr %iqid to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %iqid, align 4
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ret.i, align 4
  %19 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wr_waitp, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %wr_waitp, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #10
  %20 = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef %skb, ptr noundef %wr_waitp, ptr noundef nonnull @__func__.destroy_cq)
  %sw_queue = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %21 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw_queue, align 4
  tail call void @kfree(ptr noundef %22) #10
  %lldi = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %23 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lldi, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %memsize = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 9
  %25 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %memsize, align 8
  %27 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cq, align 8
  %mapping = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 2
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mapping, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %26, ptr noundef %28, i32 noundef %30, i32 noundef 0) #10
  %31 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cqid, align 8
  tail call void @c4iw_put_cqid(ptr noundef %rdev, i32 noundef %32, ptr noundef %uctx) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_put_wr_wait, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %kref = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #10
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, ptr noundef nonnull @.str.87, ptr noundef %wr_waitp, i32 noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref4 = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4, i32 noundef 4) #10
  %2 = ptrtoint ptr %kref4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end20, label %do.end.if.end26_crit_edge, !prof !201

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 222, i32 noundef 9, ptr noundef null) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end.if.end26_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %kref4, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4, ptr %kref4, i32 1, ptr elementtype(i32) %kref4) #10, !srcloc !198
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !196

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref4, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @_c4iw_free_wr_wait(ptr noundef %kref4) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_create_cq(ptr noundef %ibcq, ptr nocapture noundef readonly %attr, ptr noundef readonly %udata) local_unnamed_addr #0 align 64 {
entry:
  %uresp = alloca %struct.c4iw_create_cq_resp, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcq, align 8
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attr, align 4
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %comp_vector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %comp_vector, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %uresp) #10
  %6 = call ptr @memset(ptr %uresp, i32 255, i32 40)
  %tobool.not = icmp eq ptr %udata, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %context = getelementptr inbounds %struct.uverbs_attr_bundle, ptr %udata, i32 0, i32 3
  %7 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %8, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_create_cq.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_create_cq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_create_cq.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.18, ptr noundef %1, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  %flags = getelementptr inbounds %struct.ib_cq_init_attr, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %max_cqe = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 22, i32 14
  %11 = ptrtoint ptr %max_cqe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_cqe, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %12)
  %cmp12 = icmp sgt i32 %3, %12
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  %rdev = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1
  %nciq = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 10
  %13 = ptrtoint ptr %nciq to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nciq, align 4
  %conv = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp15.not = icmp slt i32 %5, %conv
  br i1 %cmp15.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  br i1 %tobool.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %15 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp21 = icmp ult i32 %16, 8
  br i1 %cmp21, label %if.then23, label %if.then20.if.end25_crit_edge

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %is_32b_cqe = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 5
  %17 = ptrtoint ptr %is_32b_cqe to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %is_32b_cqe, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %call26 = tail call ptr @c4iw_alloc_wr_wait(i32 noundef 3264) #10
  %wr_waitp = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 8
  %18 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %wr_waitp, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.end25.cleanup_crit_edge, label %if.end30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %ret.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %call26, i32 0, i32 1
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %ret.i, align 4
  %20 = ptrtoint ptr %call26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %call26, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %call26, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #10
  %call.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %destroy_skb = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 2
  %21 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %destroy_skb, align 4
  %tobool34.not = icmp eq ptr %call.i, null
  br i1 %tobool34.not, label %if.end30.err_free_wr_wait_crit_edge, label %if.end36

if.end30.err_free_wr_wait_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_wr_wait

if.end36:                                         ; preds = %if.end30
  %add = add nuw i32 %3, 17
  %div = sdiv i32 %add, 16
  %mul = shl nsw i32 %div, 4
  %mul39 = shl i32 %div, 5
  %t4_max_iq_size = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 14, i32 2
  %22 = ptrtoint ptr %t4_max_iq_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %t4_max_iq_size, align 8
  %24 = tail call i32 @llvm.smin.i32(i32 %mul39, i32 %23)
  %25 = tail call i32 @llvm.umax.i32(i32 %24, i32 64)
  %tobool52.not = icmp eq ptr %cond, null
  br i1 %tobool52.not, label %if.end36.land.end_crit_edge, label %land.rhs

if.end36.land.end_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %is_32b_cqe53 = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 5
  %26 = ptrtoint ptr %is_32b_cqe53 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_32b_cqe53, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool54.not = icmp eq i8 %27, 0
  %phi.sel = select i1 %tobool54.not, i32 64, i32 32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end36.land.end_crit_edge
  %28 = phi i32 [ 64, %if.end36.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %mul57 = mul i32 %28, %25
  %add63 = add i32 %mul57, 4095
  %div64318 = and i32 %add63, -4096
  %memsize.0 = select i1 %tobool.not, i32 %mul57, i32 %div64318
  %conv67 = trunc i32 %25 to i16
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3
  %size = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 14
  %29 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv67, ptr %size, align 4
  %memsize69 = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 9
  %30 = ptrtoint ptr %memsize69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %memsize.0, ptr %memsize69, align 8
  %vector71 = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 13
  %31 = ptrtoint ptr %vector71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %5, ptr %vector71, align 8
  %uctx = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 1
  %uctx78 = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 3
  %cond80 = select i1 %tobool52.not, ptr %uctx78, ptr %uctx
  %32 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr_waitp, align 4
  %cmp.not.i = icmp eq ptr %uctx78, %cond80
  %add.ptr.i = getelementptr i8, ptr %cond80, i32 -148
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %call.i323 = tail call i32 @c4iw_get_cqid(ptr noundef %rdev, ptr noundef %cond80) #10
  %cqid.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 11
  %34 = ptrtoint ptr %cqid.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i323, ptr %cqid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool3.not.i = icmp eq i32 %call.i323, 0
  br i1 %tobool3.not.i, label %land.end.err_free_skb_crit_edge, label %if.end5.i

land.end.err_free_skb_crit_edge:                  ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_skb

if.end5.i:                                        ; preds = %land.end
  br i1 %cmp.not.i, label %if.end8.i.i.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end8.i.i.i:                                    ; preds = %if.end5.i
  %35 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %memsize69, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #14
  %sw_queue.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %sw_queue.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call9.i.i.i, ptr %sw_queue.i, align 4
  %tobool10.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.i.i.err2.i_crit_edge, label %if.end8.i.i.i.if.end13.i_crit_edge

if.end8.i.i.i.if.end13.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.end8.i.i.i.err2.i_crit_edge:                   ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err2.i

if.end13.i:                                       ; preds = %if.end8.i.i.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %lldi.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lldi.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %memsize69, align 8
  %dma_addr.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef %41, ptr noundef %dma_addr.i, i32 noundef 3264, i32 noundef 0) #10
  %42 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i, ptr %cq, align 8
  %tobool17.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool17.not.i, label %if.end13.i.err3.i_crit_edge, label %if.end19.i

if.end13.i.err3.i_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err3.i

if.end19.i:                                       ; preds = %if.end13.i
  %43 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_addr.i, align 4
  %mapping.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 2
  %45 = ptrtoint ptr %mapping.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mapping.i, align 8
  br i1 %cmp.not.i, label %if.end19.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end19.i.if.else.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %is_32b_cqe.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %spec.select.i, i32 0, i32 5
  %46 = ptrtoint ptr %is_32b_cqe.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_32b_cqe.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool22.not.i = icmp eq i8 %47, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end36.i_crit_edge

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end19.i.if.else.i_crit_edge
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end36.i_crit_edge
  %.sink175.i = phi i32 [ 6, %if.else.i ], [ 5, %land.lhs.true.i.if.end36.i_crit_edge ]
  %.sink.i = phi i32 [ -64, %if.else.i ], [ -32, %land.lhs.true.i.if.end36.i_crit_edge ]
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size, align 4
  %conv30.i = zext i16 %49 to i32
  %sub31.i = shl nuw nsw i32 %conv30.i, %.sink175.i
  %mul32.i = add nsw i32 %sub31.i, %.sink.i
  %add.ptr33.i = getelementptr i8, ptr %call.i.i, i32 %mul32.i
  %qp_err34.i = getelementptr inbounds %struct.t4_status_page, ptr %add.ptr33.i, i32 0, i32 5
  %qp_errp35.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 22
  %50 = ptrtoint ptr %qp_errp35.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %qp_err34.i, ptr %qp_errp35.i, align 4
  %call.i170.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool38.not.i = icmp eq ptr %call.i170.i, null
  br i1 %tobool38.not.i, label %if.end36.i.err4.i_crit_edge, label %if.end40.i

if.end36.i.err4.i_crit_edge:                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err4.i

if.end40.i:                                       ; preds = %if.end36.i
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 10
  %51 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %queue_mapping1.i.i.i, align 8
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 7
  %52 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put_zero.exit.i, label %do.body3.i.i.i, !prof !196

do.body3.i.i.i:                                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !200
  unreachable

__skb_put_zero.exit.i:                            ; preds = %if.end40.i
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 64
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i.i, align 8
  %len9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 6
  %56 = ptrtoint ptr %len9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len9.i.i.i, align 4
  %add.i.i.i = add i32 %57, 64
  store i32 %add.i.i.i, ptr %len9.i.i.i, align 4
  %58 = getelementptr inbounds i8, ptr %55, i32 18
  %59 = call ptr @memset(ptr %58, i32 0, i32 46)
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 203423745, ptr %55, align 8
  %len16_pkd.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 0, i32 1
  %61 = ptrtoint ptr %len16_pkd.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %len16_pkd.i, align 4
  %62 = ptrtoint ptr %33 to i32
  %conv43.i = zext i32 %62 to i64
  %cookie.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 0, i32 2
  %63 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv43.i, ptr %cookie.i, align 8
  %res44.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %res44.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %res44.i, align 8
  %op.i = getelementptr inbounds %struct.fw_ri_res_cq, ptr %res44.i, i32 0, i32 1
  %65 = ptrtoint ptr %op.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %op.i, align 1
  %66 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cqid.i, align 8
  %iqid.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 1, i32 1
  %68 = ptrtoint ptr %iqid.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %iqid.i, align 4
  %ciq_ids.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 7
  %69 = ptrtoint ptr %ciq_ids.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ciq_ids.i, align 4
  %71 = ptrtoint ptr %vector71 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %vector71, align 8
  %arrayidx.i = getelementptr i16, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx.i, align 2
  %75 = or i16 %74, -28672
  %or.i = zext i16 %75 to i32
  %iqandst_to_iqandstindex.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 2
  %76 = ptrtoint ptr %iqandst_to_iqandstindex.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i, ptr %iqandst_to_iqandstindex.i, align 8
  br i1 %cmp.not.i, label %__skb_put_zero.exit.i.land.end.i_crit_edge, label %land.rhs.i

__skb_put_zero.exit.i.land.end.i_crit_edge:       ; preds = %__skb_put_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %__skb_put_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %is_32b_cqe52.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %spec.select.i, i32 0, i32 5
  %77 = ptrtoint ptr %is_32b_cqe52.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_32b_cqe52.i, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool53.not.i = icmp eq i8 %78, 0
  %phi.cast.i = select i1 %tobool53.not.i, i16 -24566, i16 -24567
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %__skb_put_zero.exit.i.land.end.i_crit_edge
  %79 = phi i16 [ -24566, %__skb_put_zero.exit.i.land.end.i_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %iqdroprss_to_iqesize.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 2, i32 1
  %80 = ptrtoint ptr %iqdroprss_to_iqesize.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %iqdroprss_to_iqesize.i, align 4
  %81 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %size, align 4
  %iqsize.i = getelementptr inbounds %struct.fw_ri_res_cq, ptr %res44.i, i32 0, i32 7
  %83 = ptrtoint ptr %iqsize.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %iqsize.i, align 2
  %84 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_addr.i, align 4
  %conv61.i = zext i32 %85 to i64
  %iqaddr.i = getelementptr inbounds %struct.fw_ri_res_wr, ptr %55, i32 2, i32 2
  %86 = ptrtoint ptr %iqaddr.i to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv61.i, ptr %iqaddr.i, align 8
  %ret.i.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %33, i32 0, i32 1
  %87 = ptrtoint ptr %ret.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %ret.i.i, align 4
  %88 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %33, align 4
  %wait.i.i.i = getelementptr inbounds %struct.completion, ptr %33, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #10
  %call63.i = tail call fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef nonnull %call.i170.i, ptr noundef %33, ptr noundef nonnull @__func__.create_cq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %land.end.i.err4.i_crit_edge

land.end.i.err4.i_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err4.i

if.end66.i:                                       ; preds = %land.end.i
  %gen.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 20
  %89 = ptrtoint ptr %gen.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %gen.i, align 8
  %gts_reg.i = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 24
  %90 = ptrtoint ptr %gts_reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gts_reg.i, align 4
  %gts.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 4
  %92 = ptrtoint ptr %gts.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %gts.i, align 8
  %rdev68.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %rdev68.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %rdev, ptr %rdev68.i, align 4
  %94 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cqid.i, align 8
  %bar2_qid.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 7
  %bar2_pa.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 6
  %spec.select169.i = select i1 %cmp.not.i, ptr null, ptr %bar2_pa.i
  %call72.i = tail call ptr @c4iw_bar2_addrs(ptr noundef %rdev, i32 noundef %95, i32 noundef 1, ptr noundef %bar2_qid.i, ptr noundef %spec.select169.i) #10
  %bar2_va.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 5
  %96 = ptrtoint ptr %bar2_va.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call72.i, ptr %bar2_va.i, align 4
  br i1 %cmp.not.i, label %if.end66.i.if.end85_crit_edge, label %land.lhs.true74.i

if.end66.i.if.end85_crit_edge:                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

land.lhs.true74.i:                                ; preds = %if.end66.i
  %97 = ptrtoint ptr %bar2_pa.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %bar2_pa.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %98)
  %tobool76.not.i = icmp eq i64 %98, 0
  br i1 %tobool76.not.i, label %do.end.i, label %land.lhs.true74.i.if.end85_crit_edge

land.lhs.true74.i.if.end85_crit_edge:             ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

do.end.i:                                         ; preds = %land.lhs.true74.i
  %99 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %lldi.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44, i32 3
  %101 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i171.i, label %do.end.i.pci_name.exit.i_crit_edge

do.end.i.pci_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i171.i:                                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %100, i32 0, i32 44
  %103 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i171.i, %do.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %104, %if.end.i.i171.i ], [ %102, %do.end.i.pci_name.exit.i_crit_edge ]
  %105 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cqid.i, align 8
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %retval.0.i.i.i, i32 noundef %106) #13
  br label %err4.i

err4.i:                                           ; preds = %pci_name.exit.i, %land.end.i.err4.i_crit_edge, %if.end36.i.err4.i_crit_edge
  %ret.0.i = phi i32 [ %call63.i, %land.end.i.err4.i_crit_edge ], [ -22, %pci_name.exit.i ], [ -12, %if.end36.i.err4.i_crit_edge ]
  %107 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %lldi.i, align 8
  %dev87.i = getelementptr inbounds %struct.pci_dev, ptr %108, i32 0, i32 44
  %109 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %memsize69, align 8
  %111 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cq, align 8
  %113 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mapping.i, align 8
  tail call void @dma_free_attrs(ptr noundef %dev87.i, i32 noundef %110, ptr noundef %112, i32 noundef %114, i32 noundef 0) #10
  br label %err3.i

err3.i:                                           ; preds = %err4.i, %if.end13.i.err3.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err4.i ], [ -12, %if.end13.i.err3.i_crit_edge ]
  %sw_queue91.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 3
  %115 = ptrtoint ptr %sw_queue91.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sw_queue91.i, align 4
  tail call void @kfree(ptr noundef %116) #10
  br label %err2.i

err2.i:                                           ; preds = %err3.i, %if.end8.i.i.i.err2.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %err3.i ], [ -12, %if.end8.i.i.i.err2.i_crit_edge ]
  %117 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %cqid.i, align 8
  tail call void @c4iw_put_cqid(ptr noundef %rdev, i32 noundef %118, ptr noundef %cond80) #10
  br label %err_free_skb

if.end85:                                         ; preds = %land.lhs.true74.i.if.end85_crit_edge, %if.end66.i.if.end85_crit_edge
  %rhp86 = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 1
  %119 = ptrtoint ptr %rhp86 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %1, ptr %rhp86, align 8
  %120 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %size, align 4
  %dec = add i16 %121, -1
  store i16 %dec, ptr %size, align 4
  %sub89 = add i32 %mul, -2
  %cqe91 = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 5
  %122 = ptrtoint ptr %cqe91 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sub89, ptr %cqe91, align 4
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @c4iw_create_cq.__key, i16 noundef signext 3) #10
  %comp_handler_lock = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %comp_handler_lock, ptr noundef nonnull @.str.21, ptr noundef nonnull @c4iw_create_cq.__key.20, i16 noundef signext 3) #10
  %refcnt = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #10
  %123 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 1, ptr %refcnt, align 4
  %cq_rel_comp = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 7
  %124 = ptrtoint ptr %cq_rel_comp to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %cq_rel_comp, align 4
  %wait.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @init_completion.__key) #10
  %cqs = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 3
  %125 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cqid.i, align 8
  %call101 = tail call fastcc i32 @xa_insert_irq(ptr noundef %cqs, i32 noundef %126, ptr noundef %ibcq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end85.err_destroy_cq_crit_edge

if.end85.err_destroy_cq_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_destroy_cq

if.end104:                                        ; preds = %if.end85
  br i1 %tobool52.not, label %if.end104.do.body160_crit_edge, label %if.then106

if.end104.do.body160_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body160

if.then106:                                       ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %127 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3264, i32 noundef 24) #15
  %tobool108.not = icmp eq ptr %call7.i, null
  br i1 %tobool108.not, label %if.then106.err_remove_handle_crit_edge, label %if.end110

if.then106.err_remove_handle_crit_edge:           ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_remove_handle

if.end110:                                        ; preds = %if.then106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %128 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i319 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %128, i32 noundef 3264, i32 noundef 24) #15
  %tobool112.not = icmp eq ptr %call7.i319, null
  br i1 %tobool112.not, label %if.end110.err_free_mm_crit_edge, label %if.end114

if.end110.err_free_mm_crit_edge:                  ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_mm

if.end114:                                        ; preds = %if.end110
  %cqmask = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 2
  %129 = ptrtoint ptr %cqmask to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cqmask, align 4
  %qid_mask = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 5
  %131 = ptrtoint ptr %qid_mask to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %qid_mask, align 8
  %132 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cqid.i, align 8
  %cqid118 = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 3
  %134 = ptrtoint ptr %cqid118 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %cqid118, align 8
  %135 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %size, align 4
  %conv121 = zext i16 %136 to i32
  %size122 = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 4
  %137 = ptrtoint ptr %size122 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv121, ptr %size122, align 4
  %138 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %memsize69, align 8
  %conv125 = zext i32 %139 to i64
  %memsize126 = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 2
  %140 = ptrtoint ptr %memsize126 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %conv125, ptr %memsize126, align 8
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #10
  %key = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 2
  %141 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %key, align 4
  %conv127 = zext i32 %142 to i64
  %143 = ptrtoint ptr %uresp to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %conv127, ptr %uresp, align 8
  %add130 = add i32 %142, 4096
  %conv132 = zext i32 %add130 to i64
  %gts_key = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 1
  %144 = ptrtoint ptr %gts_key to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv132, ptr %gts_key, align 8
  %add134 = add i32 %142, 8192
  store i32 %add134, ptr %key, align 4
  %flags135 = getelementptr inbounds %struct.c4iw_create_cq_resp, ptr %uresp, i32 0, i32 6
  %145 = ptrtoint ptr %flags135 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %flags135, align 4
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #10
  %is_32b_cqe137 = getelementptr inbounds %struct.c4iw_ucontext, ptr %cond, i32 0, i32 5
  %146 = ptrtoint ptr %is_32b_cqe137 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %is_32b_cqe137, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool138.not = icmp eq i8 %147, 0
  %cond140 = select i1 %tobool138.not, i32 40, i32 36
  %call141 = call fastcc i32 @ib_copy_to_udata(ptr noundef %udata, ptr noundef nonnull %uresp, i32 noundef %cond140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %err_free_mm2

if.end144:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %uresp to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %uresp, align 8
  %conv146 = trunc i64 %149 to i32
  %key147 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 2
  %150 = ptrtoint ptr %key147 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv146, ptr %key147, align 8
  %151 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cq, align 8
  %153 = ptrtoint ptr %152 to i32
  %call.i325 = call i32 @__virt_to_phys(i32 noundef %153) #10
  %conv150 = zext i32 %call.i325 to i64
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 1
  %154 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %conv150, ptr %addr, align 8
  %155 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %memsize69, align 8
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i, i32 0, i32 3
  %157 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %len, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef nonnull %call7.i)
  %158 = ptrtoint ptr %gts_key to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %gts_key, align 8
  %conv154 = trunc i64 %159 to i32
  %key155 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i319, i32 0, i32 2
  %160 = ptrtoint ptr %key155 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %conv154, ptr %key155, align 8
  %161 = ptrtoint ptr %bar2_pa.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %bar2_pa.i, align 8
  %addr157 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i319, i32 0, i32 1
  %163 = ptrtoint ptr %addr157 to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %162, ptr %addr157, align 8
  %len158 = getelementptr inbounds %struct.c4iw_mm_entry, ptr %call7.i319, i32 0, i32 3
  %164 = ptrtoint ptr %len158 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 4096, ptr %len158, align 4
  call fastcc void @insert_mmap(ptr noundef nonnull %cond, ptr noundef nonnull %call7.i319)
  br label %do.body160

do.body160:                                       ; preds = %if.end144, %if.end104.do.body160_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_create_cq.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_create_cq, %if.then172)) #10
          to label %cleanup [label %if.then172], !srcloc !193

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cqid.i, align 8
  %167 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %size, align 4
  %conv177 = zext i16 %168 to i32
  %169 = ptrtoint ptr %memsize69 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %memsize69, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_create_cq.__UNIQUE_ID_ddebug698, ptr noundef nonnull @.str.23, i32 noundef %166, ptr noundef %ibcq, i32 noundef %conv177, i32 noundef %170, ptr noundef %dma_addr.i) #10
  br label %cleanup

err_free_mm2:                                     ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i319) #10
  br label %err_free_mm

err_free_mm:                                      ; preds = %err_free_mm2, %if.end110.err_free_mm_crit_edge
  %ret.0 = phi i32 [ %call141, %err_free_mm2 ], [ -12, %if.end110.err_free_mm_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %err_remove_handle

err_remove_handle:                                ; preds = %err_free_mm, %if.then106.err_remove_handle_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_free_mm ], [ -12, %if.then106.err_remove_handle_crit_edge ]
  %171 = ptrtoint ptr %cqid.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cqid.i, align 8
  call fastcc void @xa_erase_irq(ptr noundef %cqs, i32 noundef %172)
  br label %err_destroy_cq

err_destroy_cq:                                   ; preds = %err_remove_handle, %if.end85.err_destroy_cq_crit_edge
  %ret.2 = phi i32 [ %call101, %if.end85.err_destroy_cq_crit_edge ], [ %ret.1, %err_remove_handle ]
  %173 = ptrtoint ptr %rhp86 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %rhp86, align 8
  %rdev189 = getelementptr inbounds %struct.c4iw_dev, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %destroy_skb, align 4
  %177 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %wr_waitp, align 4
  call fastcc void @destroy_cq(ptr noundef %rdev189, ptr noundef %cq, ptr noundef %cond80, ptr noundef %176, ptr noundef %178)
  br label %err_free_skb

err_free_skb:                                     ; preds = %err_destroy_cq, %err2.i, %land.end.err_free_skb_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_destroy_cq ], [ %ret.2.i, %err2.i ], [ -12, %land.end.err_free_skb_crit_edge ]
  %179 = ptrtoint ptr %destroy_skb to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %destroy_skb, align 4
  call void @kfree_skb_reason(ptr noundef %180, i32 noundef 0) #10
  br label %err_free_wr_wait

err_free_wr_wait:                                 ; preds = %err_free_skb, %if.end30.err_free_wr_wait_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_free_skb ], [ -12, %if.end30.err_free_wr_wait_crit_edge ]
  %181 = ptrtoint ptr %wr_waitp to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %wr_waitp, align 4
  call fastcc void @c4iw_put_wr_wait(ptr noundef %182)
  br label %cleanup

cleanup:                                          ; preds = %err_free_wr_wait, %if.then172, %do.body160, %if.end25.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ 0, %if.then172 ], [ %ret.4, %err_free_wr_wait ], [ -12, %if.end25.cleanup_crit_edge ], [ 0, %do.body160 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %uresp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_alloc_wr_wait(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xa_insert_irq(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock_irq(ptr noundef %xa) #10
  %call = tail call i32 @__xa_insert(ptr noundef %xa, i32 noundef %index, ptr noundef %entry1, i32 noundef 3264) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %xa) #10
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ib_copy_to_udata(ptr nocapture noundef readonly %udata, ptr noundef %src, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %outbuf = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %outbuf, align 4
  tail call void @__check_object_size(ptr noundef %src, i32 noundef %len, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.92, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %len, i32 -1226833920) #16, !srcloc !203
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit.thread

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %src, i32 noundef %len) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %src, i32 noundef %len) #10
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %n.addr.0.i = phi i32 [ %len, %entry.copy_to_user.exit.thread_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %len, %if.end.i.i.copy_to_user.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  ret i32 %spec.select
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @insert_mmap(ptr noundef %ucontext, ptr noundef %mm) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %mmap_lock = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %mmap_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @insert_mmap.__UNIQUE_ID_ddebug675, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@insert_mmap, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %key = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 2
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 8
  %addr = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %addr, align 8
  %len = getelementptr inbounds %struct.c4iw_mm_entry, ptr %mm, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @insert_mmap.__UNIQUE_ID_ddebug675, ptr noundef nonnull @.str.95, i32 noundef %1, i64 noundef %3, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mmaps = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.c4iw_ucontext, ptr %ucontext, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mm, ptr noundef %7, ptr noundef %mmaps) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mm, ptr %prev.i, align 4
  %9 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mmaps, ptr %mm, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %mm, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mm, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %mmap_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_arm_cq(ptr noundef %ibcq, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3
  %and = and i32 %flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp6 = icmp eq i32 %and, 1
  %flags.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 23
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #10
  %cidx_inc.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 19
  %0 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cidx_inc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp14.i = icmp ugt i16 %1, 4095
  br i1 %cmp14.i, label %while.body.lr.ph.i, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %bar2_va.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 5
  %bar2_qid.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 7
  %cqid.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 11
  %gts.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %write_gts.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bar2_va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %bar2_qid.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bar2_qid.i.i, align 8
  %shl.i.i = shl i32 %5, 16
  %or.i.i = or i32 %shl.i.i, 61439
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %7 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bar2_va.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #10, !srcloc !195
  br label %write_gts.exit.i

do.body2.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %cqid.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cqid.i.i, align 8
  %shl4.i.i = shl i32 %10, 16
  %or5.i.i = or i32 %shl4.i.i, 61439
  %11 = tail call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  %12 = ptrtoint ptr %gts.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gts.i.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #10, !srcloc !195
  br label %write_gts.exit.i

write_gts.exit.i:                                 ; preds = %do.body2.i.i, %do.body.i.i
  %14 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cidx_inc.i, align 2
  %sub.i = add i16 %15, -4095
  store i16 %sub.i, ptr %cidx_inc.i, align 2
  %cmp.i = icmp ugt i16 %sub.i, 4095
  br i1 %cmp.i, label %write_gts.exit.i.while.body.i_crit_edge, label %write_gts.exit.i.while.end.i_crit_edge

write_gts.exit.i.while.end.i_crit_edge:           ; preds = %write_gts.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

write_gts.exit.i.while.body.i_crit_edge:          ; preds = %write_gts.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %write_gts.exit.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %.lcssa.i = phi i16 [ %1, %entry.while.end.i_crit_edge ], [ %sub.i, %write_gts.exit.i.while.end.i_crit_edge ]
  %conv.i = zext i16 %.lcssa.i to i32
  %or.i = select i1 %cmp6, i32 53248, i32 49152
  %or8.i = or i32 %or.i, %conv.i
  %bar2_va.i1.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 5
  %16 = ptrtoint ptr %bar2_va.i1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bar2_va.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %17, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i2.i, label %do.body2.i12.i, label %do.body.i7.i

do.body.i7.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bar2_qid.i3.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %bar2_qid.i3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bar2_qid.i3.i, align 8
  %shl.i4.i = shl i32 %19, 16
  %or.i5.i = or i32 %shl.i4.i, %or8.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i5.i) #10
  %21 = ptrtoint ptr %bar2_va.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bar2_va.i1.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %20) #10, !srcloc !195
  br label %t4_arm_cq.exit

do.body2.i12.i:                                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cqid.i8.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 11
  %23 = ptrtoint ptr %cqid.i8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cqid.i8.i, align 8
  %shl4.i9.i = shl i32 %24, 16
  %or5.i10.i = or i32 %shl4.i9.i, %or8.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %or5.i10.i) #10
  %gts.i11.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %gts.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gts.i11.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !195
  br label %t4_arm_cq.exit

t4_arm_cq.exit:                                   ; preds = %do.body2.i12.i, %do.body.i7.i
  %28 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %cidx_inc.i, align 2
  %and9 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %t4_arm_cq.exit.if.end_crit_edge, label %if.then

t4_arm_cq.exit.if.end_crit_edge:                  ; preds = %t4_arm_cq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %t4_arm_cq.exit
  %sw_in_use.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 18
  %29 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %sw_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool.not.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cq, align 8
  %cidx.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 15
  %33 = ptrtoint ptr %cidx.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cidx.i, align 2
  %idxprom.i = zext i16 %34 to i32
  %bits_type_ts.i.i = getelementptr %struct.t4_cqe, ptr %32, i32 %idxprom.i, i32 4
  %35 = ptrtoint ptr %bits_type_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bits_type_ts.i.i, align 8
  %shr.i.i = lshr i64 %36, 63
  %conv.i.i = trunc i64 %shr.i.i to i32
  %gen.i.i = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 20
  %37 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %gen.i.i, align 8
  %conv1.i.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv1.i.i)
  %cmp.i.i = icmp eq i32 %conv.i.i, %conv1.i.i
  %conv2.i.i = zext i1 %cmp.i.i to i32
  br label %if.end

if.end:                                           ; preds = %lor.rhs.i, %if.then.if.end_crit_edge, %t4_arm_cq.exit.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %t4_arm_cq.exit.if.end_crit_edge ], [ 1, %if.then.if.end_crit_edge ], [ %conv2.i.i, %lor.rhs.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c4iw_flush_srqidx(ptr noundef %qhp, i32 noundef %srqidx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_cq = getelementptr inbounds %struct.ib_qp, ptr %qhp, i32 0, i32 3
  %0 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %recv_cq, align 4
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %lock6 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock6) #10
  %wq = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %1, i32 0, i32 3
  tail call fastcc void @insert_recv_cqe(ptr noundef %wq, ptr noundef %cq, i32 noundef %srqidx)
  tail call void @_raw_spin_unlock(ptr noundef %lock6) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__c4iw_poll_cq_one(ptr noundef %chp, ptr noundef %qhp, ptr noundef %wc, ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  %cqe = alloca %struct.t4_cqe, align 8
  %credit = alloca i32, align 4
  %cqe_flushed = alloca i8, align 1
  %cookie = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cqe) #10
  %0 = call ptr @memset(ptr %cqe, i32 255, i32 64)
  %tobool.not = icmp eq ptr %qhp, null
  %wq1 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 5
  %spec.select = select i1 %tobool.not, ptr null, ptr %wq1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %credit) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cqe_flushed) #10
  %1 = ptrtoint ptr %cqe_flushed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %cqe_flushed, align 1, !annotation !204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cookie) #10
  %2 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %cookie, align 8
  %cq = getelementptr inbounds %struct.c4iw_cq, ptr %chp, i32 0, i32 3
  %tobool2.not = icmp eq ptr %srq, null
  %wq4 = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3
  %cond7 = select i1 %tobool2.not, ptr null, ptr %wq4
  %call = call fastcc i32 @poll_cq(ptr noundef %spec.select, ptr noundef %cq, ptr noundef nonnull %cqe, ptr noundef nonnull %cqe_flushed, ptr noundef nonnull %cookie, ptr noundef nonnull %credit, ptr noundef %cond7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %cookie to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %cookie, align 8
  %5 = ptrtoint ptr %wc to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %wc, align 8
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %qhp, ptr %qp, align 8
  %7 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cqe, align 8
  %shr = lshr i32 %8, 5
  %and = and i32 %shr, 31
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %9 = ptrtoint ptr %vendor_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %vendor_err, align 8
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %10 = ptrtoint ptr %wc_flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wc_flags, align 8
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %land.lhs.true

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 8
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and15 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true17:                                  ; preds = %land.lhs.true
  %armed = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 11
  %13 = ptrtoint ptr %armed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %armed, align 4, !range !202
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool18.not = icmp eq i8 %14, 0
  br i1 %tobool18.not, label %land.lhs.true17.do.body_crit_edge, label %land.lhs.true19

land.lhs.true17.do.body_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %in_use = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 3, i32 18
  %15 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %in_use, align 4
  %conv = zext i16 %16 to i32
  %srq_limit = getelementptr inbounds %struct.c4iw_srq, ptr %srq, i32 0, i32 5
  %17 = ptrtoint ptr %srq_limit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %srq_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp = icmp ugt i32 %18, %conv
  br i1 %cmp, label %if.then22, label %land.lhs.true19.do.body_crit_edge

land.lhs.true19.do.body_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @c4iw_dispatch_srq_limit_reached_event(ptr noundef nonnull %srq) #10
  br label %do.body

do.body:                                          ; preds = %if.then22, %land.lhs.true19.do.body_crit_edge, %land.lhs.true17.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__c4iw_poll_cq_one.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__c4iw_poll_cq_one, %if.then28)) #10
          to label %do.end [label %if.then28], !srcloc !193

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %shr30 = lshr i32 %8, 12
  %shr33 = lshr i32 %8, 4
  %and34 = and i32 %shr33, 1
  %and37 = and i32 %8, 15
  %len = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 1
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %u = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %21 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %u, align 8
  %wrid_low = getelementptr inbounds %struct.anon.5, ptr %u, i32 0, i32 1
  %23 = ptrtoint ptr %wrid_low to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wrid_low, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__c4iw_poll_cq_one.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.39, i32 noundef %shr30, i32 noundef %and34, i32 noundef %and37, i32 noundef %and, i32 noundef %20, i32 noundef %22, i32 noundef %24, i64 noundef %4) #10
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %25 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp46 = icmp eq i32 %25, 0
  br i1 %cmp46, label %if.then48, label %if.else82

if.then48:                                        ; preds = %do.end
  %26 = and i32 %8, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool52.not = icmp eq i32 %26, 0
  br i1 %tobool52.not, label %if.then53, label %if.then48.if.end56_crit_edge

if.then48.if.end56_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

if.then53:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %len54 = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 1
  %27 = ptrtoint ptr %len54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.then48.if.end56_crit_edge
  %.sink = phi i32 [ %28, %if.then53 ], [ 0, %if.then48.if.end56_crit_edge ]
  %29 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %29, align 4
  %and59 = and i32 %8, 15
  %31 = zext i32 %and59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %and59, label %do.end73 [
    i32 3, label %sw.bb
    i32 4, label %if.end56.sw.bb60_crit_edge
    i32 6, label %if.end56.sw.bb60_crit_edge212
    i32 8, label %sw.bb65
  ]

if.end56.sw.bb60_crit_edge212:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

if.end56.sw.bb60_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb60

sw.bb:                                            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %32 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %opcode, align 4
  br label %if.end125

sw.bb60:                                          ; preds = %if.end56.sw.bb60_crit_edge, %if.end56.sw.bb60_crit_edge212
  %opcode61 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %33 = ptrtoint ptr %opcode61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %opcode61, align 4
  %u62 = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %34 = ptrtoint ptr %u62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %u62, align 8
  %ex = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %36 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ex, align 4
  %37 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wc_flags, align 8
  %or = or i32 %38, 4
  store i32 %or, ptr %wc_flags, align 8
  %rhp = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %39 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rhp, align 4
  tail call void @c4iw_invalidate_mr(ptr noundef %40, i32 noundef %35) #10
  br label %if.end125

sw.bb65:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %opcode66 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %41 = ptrtoint ptr %opcode66 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 129, ptr %opcode66, align 4
  %iw_imm_data = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2, i32 0, i32 1
  %42 = ptrtoint ptr %iw_imm_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iw_imm_data, align 8
  %ex68 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %44 = ptrtoint ptr %ex68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %ex68, align 4
  %45 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wc_flags, align 8
  %or70 = or i32 %46, 2
  store i32 %or70, ptr %wc_flags, align 8
  br label %if.end125

do.end73:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %shr79 = lshr i32 %8, 12
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %and59, i32 noundef %shr79) #13
  br label %out

if.else82:                                        ; preds = %do.end
  %and85 = and i32 %8, 15
  %47 = zext i32 %and85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and85, label %do.end115 [
    i32 8, label %if.else82.sw.bb86_crit_edge
    i32 0, label %if.else82.sw.bb86_crit_edge213
    i32 1, label %sw.bb88
    i32 4, label %if.else82.sw.bb92_crit_edge
    i32 6, label %if.else82.sw.bb92_crit_edge214
    i32 3, label %if.else82.sw.bb96_crit_edge
    i32 5, label %if.else82.sw.bb96_crit_edge215
    i32 11, label %sw.bb98
    i32 10, label %sw.bb100
  ]

if.else82.sw.bb96_crit_edge215:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb96

if.else82.sw.bb96_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb96

if.else82.sw.bb92_crit_edge214:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb92

if.else82.sw.bb92_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb92

if.else82.sw.bb86_crit_edge213:                   ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb86

if.else82.sw.bb86_crit_edge:                      ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb86

sw.bb86:                                          ; preds = %if.else82.sw.bb86_crit_edge, %if.else82.sw.bb86_crit_edge213
  %opcode87 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %48 = ptrtoint ptr %opcode87 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %opcode87, align 4
  br label %if.end125

sw.bb88:                                          ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  %opcode89 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %49 = ptrtoint ptr %opcode89 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %opcode89, align 4
  %len90 = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 1
  %50 = ptrtoint ptr %len90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len90, align 4
  %byte_len91 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %52 = ptrtoint ptr %byte_len91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %byte_len91, align 4
  br label %if.end125

sw.bb92:                                          ; preds = %if.else82.sw.bb92_crit_edge, %if.else82.sw.bb92_crit_edge214
  %opcode93 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %53 = ptrtoint ptr %opcode93 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %opcode93, align 4
  %54 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %wc_flags, align 8
  %or95 = or i32 %55, 4
  store i32 %or95, ptr %wc_flags, align 8
  br label %if.end125

sw.bb96:                                          ; preds = %if.else82.sw.bb96_crit_edge, %if.else82.sw.bb96_crit_edge215
  %opcode97 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %56 = ptrtoint ptr %opcode97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %opcode97, align 4
  br label %if.end125

sw.bb98:                                          ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  %opcode99 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %57 = ptrtoint ptr %opcode99 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %opcode99, align 4
  br label %if.end125

sw.bb100:                                         ; preds = %if.else82
  %opcode101 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %58 = ptrtoint ptr %opcode101 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 8, ptr %opcode101, align 4
  %59 = and i32 %8, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp105.not = icmp eq i32 %59, 0
  br i1 %cmp105.not, label %sw.bb100.if.end125_crit_edge, label %if.then107

sw.bb100.if.end125_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then107:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #12
  %rhp108 = getelementptr inbounds %struct.c4iw_qp, ptr %qhp, i32 0, i32 2
  %60 = ptrtoint ptr %rhp108 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rhp108, align 4
  %u109 = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %62 = ptrtoint ptr %u109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %u109, align 8
  tail call void @c4iw_invalidate_mr(ptr noundef %61, i32 noundef %63) #10
  br label %if.end125

do.end115:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #12
  %shr121 = lshr i32 %8, 12
  %call123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %and85, i32 noundef %shr121) #13
  br label %out

if.end125:                                        ; preds = %if.then107, %sw.bb100.if.end125_crit_edge, %sw.bb98, %sw.bb96, %sw.bb92, %sw.bb88, %sw.bb86, %sw.bb65, %sw.bb60, %sw.bb
  %64 = ptrtoint ptr %cqe_flushed to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %cqe_flushed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool126.not = icmp eq i8 %65, 0
  br i1 %tobool126.not, label %if.else128, label %if.then127

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %66 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %status, align 8
  br label %out

if.else128:                                       ; preds = %if.end125
  %67 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %and, label %do.end153 [
    i32 0, label %sw.bb132
    i32 1, label %sw.bb134
    i32 2, label %sw.bb136
    i32 3, label %if.else128.sw.bb138_crit_edge
    i32 4, label %if.else128.sw.bb138_crit_edge216
    i32 5, label %sw.bb140
    i32 6, label %sw.bb142
    i32 7, label %if.else128.sw.bb144_crit_edge
    i32 8, label %if.else128.sw.bb144_crit_edge217
    i32 16, label %if.else128.sw.bb146_crit_edge
    i32 17, label %if.else128.sw.bb146_crit_edge218
    i32 18, label %if.else128.sw.bb146_crit_edge219
    i32 19, label %if.else128.sw.bb146_crit_edge220
    i32 20, label %if.else128.sw.bb146_crit_edge221
    i32 21, label %if.else128.sw.bb146_crit_edge222
    i32 23, label %if.else128.sw.bb146_crit_edge223
    i32 24, label %if.else128.sw.bb146_crit_edge224
    i32 25, label %if.else128.sw.bb146_crit_edge225
    i32 26, label %if.else128.sw.bb146_crit_edge226
    i32 28, label %if.else128.sw.bb146_crit_edge227
    i32 29, label %if.else128.sw.bb146_crit_edge228
    i32 22, label %if.else128.sw.bb146_crit_edge229
    i32 31, label %if.else128.sw.bb146_crit_edge230
    i32 12, label %sw.bb148
  ]

if.else128.sw.bb146_crit_edge230:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge229:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge228:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge227:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge226:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge225:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge224:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge223:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge222:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge221:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge220:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge219:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge218:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb146_crit_edge:                    ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb146

if.else128.sw.bb144_crit_edge217:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb144

if.else128.sw.bb144_crit_edge:                    ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb144

if.else128.sw.bb138_crit_edge216:                 ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb138

if.else128.sw.bb138_crit_edge:                    ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb138

sw.bb132:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status133 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %68 = ptrtoint ptr %status133 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %status133, align 8
  br label %out

sw.bb134:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status135 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %69 = ptrtoint ptr %status135 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 8, ptr %status135, align 8
  br label %out

sw.bb136:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status137 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %70 = ptrtoint ptr %status137 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %status137, align 8
  br label %out

sw.bb138:                                         ; preds = %if.else128.sw.bb138_crit_edge, %if.else128.sw.bb138_crit_edge216
  %status139 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %71 = ptrtoint ptr %status139 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 8, ptr %status139, align 8
  br label %out

sw.bb140:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status141 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %72 = ptrtoint ptr %status141 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 21, ptr %status141, align 8
  br label %out

sw.bb142:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status143 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %73 = ptrtoint ptr %status143 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %status143, align 8
  br label %out

sw.bb144:                                         ; preds = %if.else128.sw.bb144_crit_edge, %if.else128.sw.bb144_crit_edge217
  %status145 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %74 = ptrtoint ptr %status145 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 6, ptr %status145, align 8
  br label %out

sw.bb146:                                         ; preds = %if.else128.sw.bb146_crit_edge, %if.else128.sw.bb146_crit_edge218, %if.else128.sw.bb146_crit_edge219, %if.else128.sw.bb146_crit_edge220, %if.else128.sw.bb146_crit_edge221, %if.else128.sw.bb146_crit_edge222, %if.else128.sw.bb146_crit_edge223, %if.else128.sw.bb146_crit_edge224, %if.else128.sw.bb146_crit_edge225, %if.else128.sw.bb146_crit_edge226, %if.else128.sw.bb146_crit_edge227, %if.else128.sw.bb146_crit_edge228, %if.else128.sw.bb146_crit_edge229, %if.else128.sw.bb146_crit_edge230
  %status147 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %75 = ptrtoint ptr %status147 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 19, ptr %status147, align 8
  br label %out

sw.bb148:                                         ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %status149 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %76 = ptrtoint ptr %status149 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 5, ptr %status149, align 8
  br label %out

do.end153:                                        ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #12
  %shr159 = lshr i32 %8, 12
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %and, i32 noundef %shr159) #13
  %status162 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %77 = ptrtoint ptr %status162 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 19, ptr %status162, align 8
  br label %out

out:                                              ; preds = %do.end153, %sw.bb148, %sw.bb146, %sw.bb144, %sw.bb142, %sw.bb140, %sw.bb138, %sw.bb136, %sw.bb134, %sw.bb132, %if.then127, %do.end115, %do.end73, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ -22, %do.end73 ], [ 0, %if.then127 ], [ 0, %do.end153 ], [ 0, %sw.bb148 ], [ 0, %sw.bb146 ], [ 0, %sw.bb144 ], [ 0, %sw.bb142 ], [ 0, %sw.bb140 ], [ 0, %sw.bb138 ], [ 0, %sw.bb136 ], [ 0, %sw.bb134 ], [ 0, %sw.bb132 ], [ -22, %do.end115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cookie) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cqe_flushed) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %credit) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cqe) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_cq(ptr noundef %wq, ptr noundef %cq, ptr nocapture noundef writeonly %cqe, ptr nocapture noundef writeonly %cqe_flushed, ptr nocapture noundef writeonly %cookie, ptr nocapture noundef writeonly %credit, ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  %read_cqe = alloca %struct.t4_cqe, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %read_cqe) #10
  %0 = call ptr @memset(ptr %read_cqe, i32 255, i32 64)
  %1 = ptrtoint ptr %cqe_flushed to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %cqe_flushed, align 1
  %2 = ptrtoint ptr %credit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %credit, align 4
  %error.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 21
  %3 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %error.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %sw_in_use.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 18
  %5 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sw_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not.i = icmp eq i16 %6, 0
  br i1 %tobool1.not.i, label %if.else3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sw_queue.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 3
  %sw_cidx.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  br label %do.body

if.else3.i:                                       ; preds = %if.else.i
  %cidx.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 15
  %7 = ptrtoint ptr %cidx.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.i.i = icmp eq i16 %8, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else3.i.if.end.i.i_crit_edge

if.else3.i.if.end.i.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #12
  %size.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %9 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %size.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.else3.i.if.end.i.i_crit_edge
  %prev_cidx.0.in.i.i = phi i16 [ %10, %if.then.i.i ], [ %8, %if.else3.i.if.end.i.i_crit_edge ]
  %prev_cidx.0.i.i = add i16 %prev_cidx.0.in.i.i, -1
  %11 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cq, align 8
  %idxprom.i.i = zext i16 %prev_cidx.0.i.i to i32
  %bits_type_ts.i.i = getelementptr %struct.t4_cqe, ptr %12, i32 %idxprom.i.i, i32 4
  %13 = ptrtoint ptr %bits_type_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %bits_type_ts.i.i, align 8
  %bits_type_ts8.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 10
  %15 = ptrtoint ptr %bits_type_ts8.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %bits_type_ts8.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp9.not.i.i = icmp eq i64 %14, %16
  br i1 %cmp9.not.i.i, label %if.else12.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %error.i, align 1
  %cqid.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %18 = ptrtoint ptr %cqid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cqid.i.i, align 8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %19) #13
  br label %cleanup

if.else12.i.i:                                    ; preds = %if.end.i.i
  %idxprom15.i.i = zext i16 %8 to i32
  %bits_type_ts.i.i.i = getelementptr %struct.t4_cqe, ptr %12, i32 %idxprom15.i.i, i32 4
  %20 = ptrtoint ptr %bits_type_ts.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bits_type_ts.i.i.i, align 8
  %shr.i.i.i = lshr i64 %21, 63
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %gen.i.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 20
  %22 = ptrtoint ptr %gen.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %gen.i.i.i, align 8
  %conv1.i.i.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %conv1.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %conv.i.i.i, %conv1.i.i.i
  br i1 %cmp.i.not.i.i, label %if.then18.i.i, label %if.else12.i.i.cleanup_crit_edge

if.else12.i.i.cleanup_crit_edge:                  ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  br label %do.body

do.body:                                          ; preds = %if.then18.i.i, %if.then2.i
  %cidx.i.i.sink = phi ptr [ %cidx.i.i, %if.then18.i.i ], [ %sw_cidx.i, %if.then2.i ]
  %.sink.in = phi ptr [ %cq, %if.then18.i.i ], [ %sw_queue.i, %if.then2.i ]
  %24 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink = load ptr, ptr %.sink.in, align 4
  %25 = ptrtoint ptr %cidx.i.i.sink to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cidx.i.i.sink, align 2
  %idxprom21.i.i = zext i16 %26 to i32
  %arrayidx22.i.i = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then5)) #10
          to label %do.end [label %if.then5], !srcloc !193

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %bits_type_ts = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 4
  %27 = ptrtoint ptr %bits_type_ts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %bits_type_ts, align 8
  %shr = lshr i64 %28, 62
  %29 = trunc i64 %shr to i32
  %conv = and i32 %29, 1
  %30 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx22.i.i, align 8
  %shr6 = lshr i32 %31, 12
  %shr9 = lshr i64 %28, 63
  %conv11 = trunc i64 %shr9 to i32
  %shr13 = lshr i32 %31, 4
  %and14 = and i32 %shr13, 1
  %shr16 = lshr i32 %31, 5
  %and17 = and i32 %shr16, 31
  %and20 = and i32 %31, 15
  %len = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %u = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 2
  %34 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %u, align 8
  %wrid_low = getelementptr inbounds %struct.anon.5, ptr %u, i32 0, i32 1
  %36 = ptrtoint ptr %wrid_low to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrid_low, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.48, i32 noundef %conv, i32 noundef %shr6, i32 noundef %conv11, i32 noundef %and14, i32 noundef %and17, i32 noundef %and20, i32 noundef %33, i32 noundef %35, i32 noundef %37) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %cmp = icmp eq ptr %wq, null
  br i1 %cmp, label %do.end.skip_cqe_crit_edge, label %if.end25

do.end.skip_cqe_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_cqe

if.end25:                                         ; preds = %do.end
  %flushed = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 4
  %38 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flushed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool26.not = icmp eq i32 %39, 0
  br i1 %tobool26.not, label %if.end25.if.end32_crit_edge, label %land.lhs.true

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end25
  %40 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx22.i.i, align 8
  %42 = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool30.not = icmp eq i32 %42, 0
  br i1 %tobool30.not, label %land.lhs.true.skip_cqe_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.lhs.true.skip_cqe_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_cqe

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %43 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx22.i.i, align 8
  %and35 = and i32 %44, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 7
  br i1 %cmp36, label %if.end32.skip_cqe_crit_edge, label %if.end39

if.end32.skip_cqe_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_cqe

if.end39:                                         ; preds = %if.end32
  %45 = and i32 %44, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool43.not = icmp eq i32 %45, 0
  br i1 %tobool43.not, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %u45 = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 2
  %46 = ptrtoint ptr %u45 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %u45, align 8
  %48 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %cookie, align 8
  %49 = call ptr @memcpy(ptr %cqe, ptr %arrayidx22.i.i, i32 64)
  br label %skip_cqe

if.end46:                                         ; preds = %if.end39
  %50 = and i32 %44, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %if.end70, label %if.end46.if.end85_crit_edge

if.end46.if.end85_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.end70:                                         ; preds = %if.end46
  %u71 = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 2
  %52 = ptrtoint ptr %u71 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %u71, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp72 = icmp eq i32 %53, 1
  br i1 %cmp72, label %if.then74, label %if.end81

if.then74:                                        ; preds = %if.end70
  %54 = and i32 %44, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool78.not = icmp eq i32 %54, 0
  br i1 %tobool78.not, label %if.then74.skip_cqe_crit_edge, label %if.then79

if.then74.skip_cqe_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_cqe

if.then79:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %qp_errp.i = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 5
  %55 = ptrtoint ptr %qp_errp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %qp_errp.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %56, align 1
  br label %skip_cqe

if.end81:                                         ; preds = %if.end70
  %oldest_read = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 5
  %58 = ptrtoint ptr %oldest_read to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %oldest_read, align 4
  %signaled = getelementptr inbounds %struct.t4_swsqe, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %signaled to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %signaled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool82.not = icmp eq i32 %61, 0
  br i1 %tobool82.not, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @advance_oldest_read(ptr noundef nonnull %wq)
  br label %skip_cqe

if.end84:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %idx.i = getelementptr inbounds %struct.t4_swsqe, ptr %59, i32 0, i32 6
  %62 = ptrtoint ptr %idx.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %idx.i, align 8
  %u.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 2
  %cidx.i = getelementptr inbounds %struct.anon.4, ptr %u.i, i32 0, i32 2
  %64 = ptrtoint ptr %cidx.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %cidx.i, align 2
  %read_len.i = getelementptr inbounds %struct.t4_swsqe, ptr %59, i32 0, i32 2
  %65 = ptrtoint ptr %read_len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_len.i, align 8
  %len.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 1
  %67 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %len.i, align 4
  %68 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx22.i.i, align 8
  %or.i = and i32 %69, -2048
  %or8.i = or i32 %or.i, 17
  %70 = ptrtoint ptr %read_cqe to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or8.i, ptr %read_cqe, align 8
  %bits_type_ts.i = getelementptr %struct.t4_cqe, ptr %.sink, i32 %idxprom21.i.i, i32 4
  %71 = ptrtoint ptr %bits_type_ts.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %bits_type_ts.i, align 8
  %bits_type_ts10.i = getelementptr inbounds %struct.t4_cqe, ptr %read_cqe, i32 0, i32 4
  %73 = ptrtoint ptr %bits_type_ts10.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %bits_type_ts10.i, align 8
  tail call fastcc void @advance_oldest_read(ptr noundef nonnull %wq)
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end46.if.end85_crit_edge
  %hw_cqe.1 = phi ptr [ %read_cqe, %if.end84 ], [ %arrayidx22.i.i, %if.end46.if.end85_crit_edge ]
  %74 = ptrtoint ptr %hw_cqe.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %hw_cqe.1, align 8
  %76 = and i32 %75, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool89.not = icmp eq i32 %76, 0
  br i1 %tobool89.not, label %lor.lhs.false, label %if.end85.if.then92_crit_edge

if.end85.if.then92_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end85
  %qp_errp.i374 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 5
  %77 = ptrtoint ptr %qp_errp.i374 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qp_errp.i374, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool91.not = icmp eq i8 %80, 0
  br i1 %tobool91.not, label %lor.lhs.false.if.end99_crit_edge, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then92

lor.lhs.false.if.end99_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end85.if.then92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %76)
  %cmp96 = icmp eq i32 %76, 384
  %conv98 = zext i1 %cmp96 to i8
  %81 = ptrtoint ptr %cqe_flushed to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv98, ptr %cqe_flushed, align 1
  %qp_errp.i375 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 5
  %82 = ptrtoint ptr %qp_errp.i375 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %qp_errp.i375, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %83, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %lor.lhs.false.if.end99_crit_edge
  %85 = ptrtoint ptr %hw_cqe.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %hw_cqe.1, align 8
  %87 = and i32 %86, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool103.not = icmp eq i32 %87, 0
  br i1 %tobool103.not, label %if.then104, label %if.end122

if.then104:                                       ; preds = %if.end99
  %88 = and i32 %86, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool108.not = icmp eq i32 %88, 0
  br i1 %tobool108.not, label %land.rhs, label %if.then104.proc_cqe_crit_edge

if.then104.proc_cqe_crit_edge:                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #12
  br label %proc_cqe

land.rhs:                                         ; preds = %if.then104
  %u109 = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.1, i32 0, i32 2
  %msn = getelementptr inbounds %struct.anon.3, ptr %u109, i32 0, i32 1
  %89 = ptrtoint ptr %msn to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msn, align 4
  %msn110 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 9
  %91 = ptrtoint ptr %msn110 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msn110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp111.not = icmp eq i32 %90, %92
  br i1 %cmp111.not, label %land.rhs.proc_cqe_crit_edge, label %if.then119, !prof !196

land.rhs.proc_cqe_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %proc_cqe

if.then119:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  %qp_errp.i376 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 5
  %93 = ptrtoint ptr %qp_errp.i376 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %qp_errp.i376, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %94, align 1
  %96 = ptrtoint ptr %hw_cqe.1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %hw_cqe.1, align 8
  %or = or i32 %97, 768
  store i32 %or, ptr %hw_cqe.1, align 8
  br label %proc_cqe

if.end122:                                        ; preds = %if.end99
  %98 = and i32 %86, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool126.not = icmp eq i32 %98, 0
  br i1 %tobool126.not, label %land.lhs.true127, label %if.end122.proc_cqe_crit_edge

if.end122.proc_cqe_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %proc_cqe

land.lhs.true127:                                 ; preds = %if.end122
  %u128 = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.1, i32 0, i32 2
  %cidx = getelementptr inbounds %struct.anon.4, ptr %u128, i32 0, i32 2
  %99 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %cidx, align 2
  %cidx131 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 13
  %101 = ptrtoint ptr %cidx131 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %cidx131, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %102)
  %cmp133.not = icmp eq i16 %100, %102
  br i1 %cmp133.not, label %land.lhs.true127.proc_cqe_crit_edge, label %if.then135

land.lhs.true127.proc_cqe_crit_edge:              ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #12
  br label %proc_cqe

if.then135:                                       ; preds = %land.lhs.true127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then148)) #10
          to label %do.end154 [label %if.then148], !srcloc !193

if.then148:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %cidx, align 2
  %conv151 = zext i16 %104 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.50, i32 noundef %conv151) #10
  br label %do.end154

do.end154:                                        ; preds = %if.then148, %if.then135
  %sw_sq = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %105 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sw_sq, align 8
  %107 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %cidx, align 2
  %idxprom = zext i16 %108 to i32
  %cqe158 = getelementptr %struct.t4_swsqe, ptr %106, i32 %idxprom, i32 1
  %109 = call ptr @memcpy(ptr %cqe158, ptr %hw_cqe.1, i32 64)
  %complete = getelementptr %struct.t4_swsqe, ptr %106, i32 %idxprom, i32 4
  %110 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 1, ptr %complete, align 8
  br label %flush_wq

proc_cqe:                                         ; preds = %land.lhs.true127.proc_cqe_crit_edge, %if.end122.proc_cqe_crit_edge, %if.then119, %land.rhs.proc_cqe_crit_edge, %if.then104.proc_cqe_crit_edge
  %111 = call ptr @memcpy(ptr %cqe, ptr %hw_cqe.1, i32 64)
  %112 = ptrtoint ptr %hw_cqe.1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hw_cqe.1, align 8
  %114 = and i32 %113, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool163.not = icmp eq i32 %114, 0
  br i1 %tobool163.not, label %if.else224, label %if.then164

if.then164:                                       ; preds = %proc_cqe
  %u165 = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe.1, i32 0, i32 2
  %cidx166 = getelementptr inbounds %struct.anon.4, ptr %u165, i32 0, i32 2
  %115 = ptrtoint ptr %cidx166 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %cidx166, align 2
  %cidx169 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 13
  %117 = ptrtoint ptr %cidx169 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %cidx169, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %116)
  %cmp171 = icmp ugt i16 %118, %116
  br i1 %cmp171, label %if.then173, label %if.else

if.then173:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  %119 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %size, align 2
  %in_use = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 11
  %121 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %in_use, align 4
  %123 = add i16 %116, %120
  %sub.neg = sub i16 %118, %123
  %sub181 = add i16 %sub.neg, %122
  store i16 %sub181, ptr %in_use, align 4
  br label %if.end192

if.else:                                          ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  %sub186.neg = sub i16 %118, %116
  %in_use188 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 11
  %124 = ptrtoint ptr %in_use188 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %in_use188, align 4
  %sub190 = add i16 %sub186.neg, %125
  store i16 %sub190, ptr %in_use188, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.else, %if.then173
  %126 = ptrtoint ptr %cidx169 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %116, ptr %cidx169, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then208)) #10
          to label %do.end214 [label %if.then208], !srcloc !193

if.then208:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %cidx169 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %cidx169, align 8
  %conv211 = zext i16 %128 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.52, i32 noundef %conv211) #10
  br label %do.end214

do.end214:                                        ; preds = %if.then208, %if.end192
  %sw_sq216 = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 4
  %129 = ptrtoint ptr %sw_sq216 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sw_sq216, align 8
  %131 = ptrtoint ptr %cidx169 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %cidx169, align 8
  %idxprom219 = zext i16 %132 to i32
  %arrayidx220 = getelementptr %struct.t4_swsqe, ptr %130, i32 %idxprom219
  %133 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx220, align 8
  %135 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %cookie, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %136 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool221.not = icmp eq i32 %136, 0
  br i1 %tobool221.not, label %do.end214.if.end223_crit_edge, label %if.then222

do.end214.if.end223_crit_edge:                    ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end223

if.then222:                                       ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #12
  call void @c4iw_log_wr_stats(ptr noundef nonnull %wq, ptr noundef %hw_cqe.1) #10
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %do.end214.if.end223_crit_edge
  %137 = ptrtoint ptr %cidx169 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %cidx169, align 8
  %conv.i378 = zext i16 %138 to i32
  %flush_cidx.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 18
  %139 = ptrtoint ptr %flush_cidx.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %flush_cidx.i, align 2
  %conv2.i = sext i16 %140 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i378, i32 %conv2.i)
  %cmp.i = icmp eq i32 %conv.i378, %conv2.i
  br i1 %cmp.i, label %if.then.i, label %if.end223.t4_sq_consume.exit_crit_edge

if.end223.t4_sq_consume.exit_crit_edge:           ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  br label %t4_sq_consume.exit

if.then.i:                                        ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %flush_cidx.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 -1, ptr %flush_cidx.i, align 2
  br label %t4_sq_consume.exit

t4_sq_consume.exit:                               ; preds = %if.then.i, %if.end223.t4_sq_consume.exit_crit_edge
  %in_use.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 11
  %142 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %in_use.i, align 4
  %dec.i = add i16 %143, -1
  store i16 %dec.i, ptr %in_use.i, align 4
  %inc.i = add i16 %138, 1
  %size.i = getelementptr inbounds %struct.t4_sq, ptr %wq, i32 0, i32 12
  %144 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %145)
  %cmp12.i = icmp eq i16 %inc.i, %145
  %spec.store.select.i = select i1 %cmp12.i, i16 0, i16 %inc.i
  %146 = ptrtoint ptr %cidx169 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %spec.store.select.i, ptr %cidx169, align 8
  br label %flush_wq

if.else224:                                       ; preds = %proc_cqe
  %tobool225.not = icmp eq ptr %srq, null
  br i1 %tobool225.not, label %do.body227, label %if.else255

do.body227:                                       ; preds = %if.else224
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then239)) #10
          to label %do.end245 [label %if.then239], !srcloc !193

if.then239:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #12
  %cidx241 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 14
  %147 = ptrtoint ptr %cidx241 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %cidx241, align 2
  %conv242 = zext i16 %148 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.54, i32 noundef %conv242) #10
  br label %do.end245

do.end245:                                        ; preds = %if.then239, %do.body227
  %sw_rq = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 3
  %149 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sw_rq, align 4
  %cidx248 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 14
  %151 = ptrtoint ptr %cidx248 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %cidx248, align 2
  %idxprom249 = zext i16 %152 to i32
  %arrayidx250 = getelementptr %struct.t4_swrqe, ptr %150, i32 %idxprom249
  %153 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx250, align 8
  %155 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %cookie, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @c4iw_wr_log to i32))
  %156 = load i32, ptr @c4iw_wr_log, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool252.not = icmp eq i32 %156, 0
  br i1 %tobool252.not, label %do.end245.if.end254_crit_edge, label %if.then253

do.end245.if.end254_crit_edge:                    ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end254

if.then253:                                       ; preds = %do.end245
  call void @__sanitizer_cov_trace_pc() #12
  call void @c4iw_log_wr_stats(ptr noundef nonnull %wq, ptr noundef %hw_cqe.1) #10
  br label %if.end254

if.end254:                                        ; preds = %if.then253, %do.end245.if.end254_crit_edge
  %in_use.i379 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 12
  %157 = ptrtoint ptr %in_use.i379 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %in_use.i379, align 2
  %dec.i380 = add i16 %158, -1
  store i16 %dec.i380, ptr %in_use.i379, align 2
  %159 = ptrtoint ptr %cidx248 to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %cidx248, align 2
  %inc.i382 = add i16 %160, 1
  %size.i383 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 13
  %161 = ptrtoint ptr %size.i383 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %size.i383, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i382, i16 %162)
  %cmp.i384 = icmp eq i16 %inc.i382, %162
  %spec.store.select.i385 = select i1 %cmp.i384, i16 0, i16 %inc.i382
  %163 = ptrtoint ptr %cidx248 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %spec.store.select.i385, ptr %cidx248, align 2
  br label %if.end257

if.else255:                                       ; preds = %if.else224
  call void @__sanitizer_cov_trace_pc() #12
  %call256 = call fastcc i64 @reap_srq_cqe(ptr noundef %hw_cqe.1, ptr noundef nonnull %srq)
  %164 = ptrtoint ptr %cookie to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %call256, ptr %cookie, align 8
  br label %if.end257

if.end257:                                        ; preds = %if.else255, %if.end254
  %msn259 = getelementptr inbounds %struct.t4_wq, ptr %wq, i32 0, i32 1, i32 9
  %165 = ptrtoint ptr %msn259 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %msn259, align 4
  %inc = add i32 %166, 1
  store i32 %inc, ptr %msn259, align 4
  br label %skip_cqe

flush_wq:                                         ; preds = %t4_sq_consume.exit, %do.end154
  %ret.0 = phi i32 [ 0, %t4_sq_consume.exit ], [ -11, %do.end154 ]
  call fastcc void @flush_completed_wrs(ptr noundef nonnull %wq, ptr noundef %cq)
  br label %skip_cqe

skip_cqe:                                         ; preds = %flush_wq, %if.end257, %if.then83, %if.then79, %if.then74.skip_cqe_crit_edge, %if.then44, %if.end32.skip_cqe_crit_edge, %land.lhs.true.skip_cqe_crit_edge, %do.end.skip_cqe_crit_edge
  %hw_cqe.2 = phi ptr [ %arrayidx22.i.i, %do.end.skip_cqe_crit_edge ], [ %arrayidx22.i.i, %if.end32.skip_cqe_crit_edge ], [ %arrayidx22.i.i, %if.then74.skip_cqe_crit_edge ], [ %arrayidx22.i.i, %if.then79 ], [ %arrayidx22.i.i, %if.then83 ], [ %hw_cqe.1, %if.end257 ], [ %hw_cqe.1, %flush_wq ], [ %arrayidx22.i.i, %if.then44 ], [ %arrayidx22.i.i, %land.lhs.true.skip_cqe_crit_edge ]
  %ret.1 = phi i32 [ -11, %do.end.skip_cqe_crit_edge ], [ -11, %if.end32.skip_cqe_crit_edge ], [ -11, %if.then74.skip_cqe_crit_edge ], [ -11, %if.then79 ], [ -11, %if.then83 ], [ 0, %if.end257 ], [ %ret.0, %flush_wq ], [ 0, %if.then44 ], [ -11, %land.lhs.true.skip_cqe_crit_edge ]
  %167 = ptrtoint ptr %hw_cqe.2 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %hw_cqe.2, align 8
  %169 = and i32 %168, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool264.not = icmp eq i32 %169, 0
  br i1 %tobool264.not, label %do.body284, label %do.body266

do.body266:                                       ; preds = %skip_cqe
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then278)) #10
          to label %do.end282 [label %if.then278], !srcloc !193

if.then278:                                       ; preds = %do.body266
  call void @__sanitizer_cov_trace_pc() #12
  %cqid = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %170 = ptrtoint ptr %cqid to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %cqid, align 8
  %sw_cidx = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  %172 = ptrtoint ptr %sw_cidx to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %sw_cidx, align 2
  %conv279 = zext i16 %173 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.56, ptr noundef %cq, i32 noundef %171, i32 noundef %conv279) #10
  br label %do.end282

do.end282:                                        ; preds = %if.then278, %do.body266
  %174 = ptrtoint ptr %sw_in_use.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %sw_in_use.i, align 4
  %dec.i387 = add i16 %175, -1
  store i16 %dec.i387, ptr %sw_in_use.i, align 4
  %sw_cidx.i388 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 17
  %176 = ptrtoint ptr %sw_cidx.i388 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %sw_cidx.i388, align 2
  %inc.i389 = add i16 %177, 1
  %size.i390 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %178 = ptrtoint ptr %size.i390 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %size.i390, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i389, i16 %179)
  %cmp.i391 = icmp eq i16 %inc.i389, %179
  %spec.store.select.i392 = select i1 %cmp.i391, i16 0, i16 %inc.i389
  %180 = ptrtoint ptr %sw_cidx.i388 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %spec.store.select.i392, ptr %sw_cidx.i388, align 2
  br label %cleanup

do.body284:                                       ; preds = %skip_cqe
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_cq.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_cq, %if.then296)) #10
          to label %do.end302 [label %if.then296], !srcloc !193

if.then296:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #12
  %cqid297 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %181 = ptrtoint ptr %cqid297 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cqid297, align 8
  %cidx298 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 15
  %183 = ptrtoint ptr %cidx298 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %cidx298, align 2
  %conv299 = zext i16 %184 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @poll_cq.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.58, ptr noundef %cq, i32 noundef %182, i32 noundef %conv299) #10
  br label %do.end302

do.end302:                                        ; preds = %if.then296, %do.body284
  %185 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cq, align 8
  %cidx.i393 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 15
  %187 = ptrtoint ptr %cidx.i393 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %cidx.i393, align 2
  %idxprom.i394 = zext i16 %188 to i32
  %bits_type_ts.i395 = getelementptr %struct.t4_cqe, ptr %186, i32 %idxprom.i394, i32 4
  %189 = ptrtoint ptr %bits_type_ts.i395 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %bits_type_ts.i395, align 8
  %bits_type_ts1.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 10
  %191 = ptrtoint ptr %bits_type_ts1.i to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 %190, ptr %bits_type_ts1.i, align 8
  %cidx_inc.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 19
  %192 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %cidx_inc.i, align 2
  %inc.i396 = add i16 %193, 1
  store i16 %inc.i396, ptr %cidx_inc.i, align 2
  %size.i397 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 14
  %194 = ptrtoint ptr %size.i397 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %size.i397, align 4
  %196 = lshr i16 %195, 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i396, i16 %196)
  %cmp.i398 = icmp eq i16 %inc.i396, %196
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %inc.i396)
  %cmp6.i = icmp eq i16 %inc.i396, 4095
  %or.cond.i = or i1 %cmp6.i, %cmp.i398
  br i1 %or.cond.i, label %if.then.i399, label %do.end302.if.end.i_crit_edge

do.end302.if.end.i_crit_edge:                     ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i399:                                     ; preds = %do.end302
  %197 = or i16 %inc.i396, -8192
  %or10.i = zext i16 %197 to i32
  %bar2_va.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 5
  %198 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %bar2_va.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %199, null
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  call void @arm_heavy_mb() #10
  br i1 %tobool.not.i.i, label %do.body2.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then.i399
  call void @__sanitizer_cov_trace_pc() #12
  %bar2_qid.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 7
  %200 = ptrtoint ptr %bar2_qid.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %bar2_qid.i.i, align 8
  %shl.i.i = shl i32 %201, 16
  %or.i.i = or i32 %shl.i.i, %or10.i
  %202 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %203 = ptrtoint ptr %bar2_va.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %bar2_va.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %204, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %202) #10, !srcloc !195
  br label %write_gts.exit.i

do.body2.i.i:                                     ; preds = %if.then.i399
  call void @__sanitizer_cov_trace_pc() #12
  %cqid.i.i400 = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 11
  %205 = ptrtoint ptr %cqid.i.i400 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %cqid.i.i400, align 8
  %shl4.i.i = shl i32 %206, 16
  %or5.i.i = or i32 %shl4.i.i, %or10.i
  %207 = call i32 @llvm.bswap.i32(i32 %or5.i.i) #10
  %gts.i.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 4
  %208 = ptrtoint ptr %gts.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %gts.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #10, !srcloc !195
  br label %write_gts.exit.i

write_gts.exit.i:                                 ; preds = %do.body2.i.i, %do.body.i.i
  %210 = ptrtoint ptr %cidx_inc.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %cidx_inc.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %write_gts.exit.i, %do.end302.if.end.i_crit_edge
  %211 = ptrtoint ptr %cidx.i393 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %cidx.i393, align 2
  %inc13.i = add i16 %212, 1
  store i16 %inc13.i, ptr %cidx.i393, align 2
  %213 = ptrtoint ptr %size.i397 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %size.i397, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc13.i, i16 %214)
  %cmp17.i = icmp eq i16 %inc13.i, %214
  br i1 %cmp17.i, label %if.then19.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %215 = ptrtoint ptr %cidx.i393 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %cidx.i393, align 2
  %gen.i = getelementptr inbounds %struct.t4_cq, ptr %cq, i32 0, i32 20
  %216 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %gen.i, align 8
  %218 = xor i8 %217, 1
  store i8 %218, ptr %gen.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then19.i, %if.end.i.cleanup_crit_edge, %do.end282, %if.else12.i.i.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end282 ], [ %ret.1, %if.end.i.cleanup_crit_edge ], [ %ret.1, %if.then19.i ], [ -61, %if.else12.i.i.cleanup_crit_edge ], [ -75, %if.then11.i.i ], [ -61, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %read_cqe) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_dispatch_srq_limit_reached_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_invalidate_mr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_log_wr_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @reap_srq_cqe(ptr nocapture noundef readonly %hw_cqe, ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.t4_cqe, ptr %hw_cqe, i32 0, i32 2
  %abs_rqe_idx = getelementptr inbounds %struct.anon.6, ptr %u, i32 0, i32 3
  %0 = ptrtoint ptr %abs_rqe_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %abs_rqe_idx, align 4
  %rqt_abs_idx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 11
  %2 = ptrtoint ptr %rqt_abs_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqt_abs_idx, align 4
  %sub = sub i32 %1, %3
  %sw_rq = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 3
  %4 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw_rq, align 4
  %valid = getelementptr %struct.t4_swrqe, ptr %5, i32 %sub, i32 3
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %valid, align 8
  %7 = load ptr, ptr %sw_rq, align 4
  %arrayidx2 = getelementptr %struct.t4_swrqe, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx2, align 8
  %cidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 14
  %10 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cidx, align 4
  %conv = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp = icmp eq i32 %sub, %conv
  br i1 %cmp, label %do.body, label %do.body67

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reap_srq_cqe.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reap_srq_cqe, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !193

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cidx, align 4
  %conv9 = zext i16 %13 to i32
  %pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %14 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pidx, align 2
  %conv10 = zext i16 %15 to i32
  %wq_pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  %16 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %wq_pidx, align 8
  %conv11 = zext i16 %17 to i32
  %in_use = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 18
  %18 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %in_use, align 4
  %conv12 = zext i16 %19 to i32
  %size = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %size, align 2
  %conv13 = zext i16 %21 to i32
  %22 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw_rq, align 4
  %arrayidx15 = getelementptr %struct.t4_swrqe, ptr %23, i32 %sub
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx15, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reap_srq_cqe.__UNIQUE_ID_ddebug684, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef %sub, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i64 noundef %25) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %in_use.i = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 18
  %26 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %in_use.i, align 4
  %dec.i = add i16 %27, -1
  store i16 %dec.i, ptr %in_use.i, align 4
  %28 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cidx, align 4
  %inc.i = add i16 %29, 1
  %size.i = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %31)
  %cmp.i = icmp eq i16 %inc.i, %31
  %spec.store.select.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %32 = ptrtoint ptr %cidx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %spec.store.select.i, ptr %cidx, align 4
  %33 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %srq, align 8
  %idxprom.i = zext i16 %31 to i32
  %arrayidx.i = getelementptr %union.t4_recv_wr, ptr %34, i32 %idxprom.i
  %host_cidx.i = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i, i32 0, i32 9
  %35 = ptrtoint ptr %host_cidx.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %spec.store.select.i, ptr %host_cidx.i, align 2
  %ooo_count = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 23
  %36 = ptrtoint ptr %ooo_count to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ooo_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool18.not160 = icmp eq i16 %37, 0
  br i1 %tobool18.not160, label %do.end.land.lhs.true_crit_edge, label %land.rhs.lr.ph

do.end.land.lhs.true_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.rhs.lr.ph:                                   ; preds = %do.end
  %pidx41 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %wq_pidx43 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  br label %land.rhs

land.rhs:                                         ; preds = %do.end58.land.rhs_crit_edge, %land.rhs.lr.ph
  %38 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sw_rq, align 4
  %40 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cidx, align 4
  %idxprom = zext i16 %41 to i32
  %valid22 = getelementptr %struct.t4_swrqe, ptr %39, i32 %idxprom, i32 3
  %42 = ptrtoint ptr %valid22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %valid22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool23.not = icmp eq i32 %43, 0
  br i1 %tobool23.not, label %do.body26, label %land.rhs.if.end98_crit_edge

land.rhs.if.end98_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

do.body26:                                        ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reap_srq_cqe.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reap_srq_cqe, %if.then38)) #10
          to label %do.end58 [label %if.then38], !srcloc !193

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cidx, align 4
  %conv40 = zext i16 %45 to i32
  %46 = ptrtoint ptr %pidx41 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %pidx41, align 2
  %conv42 = zext i16 %47 to i32
  %48 = ptrtoint ptr %wq_pidx43 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %wq_pidx43, align 8
  %conv44 = zext i16 %49 to i32
  %50 = ptrtoint ptr %in_use.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %in_use.i, align 4
  %conv46 = zext i16 %51 to i32
  %52 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %size.i, align 2
  %conv48 = zext i16 %53 to i32
  %54 = ptrtoint ptr %ooo_count to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ooo_count, align 2
  %conv50 = zext i16 %55 to i32
  %56 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sw_rq, align 4
  %arrayidx54 = getelementptr %struct.t4_swrqe, ptr %57, i32 %conv40
  %58 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx54, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reap_srq_cqe.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.59, i32 noundef %conv40, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv48, i32 noundef %conv50, i64 noundef %59) #10
  br label %do.end58

do.end58:                                         ; preds = %if.then38, %do.body26
  %60 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %cidx, align 4
  %inc.i145 = add i16 %61, 1
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i145, i16 %63)
  %cmp.i147 = icmp eq i16 %inc.i145, %63
  %spec.store.select.i148 = select i1 %cmp.i147, i16 0, i16 %inc.i145
  %64 = ptrtoint ptr %cidx to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %spec.store.select.i148, ptr %cidx, align 4
  %65 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %srq, align 8
  %idxprom.i149 = zext i16 %63 to i32
  %arrayidx.i150 = getelementptr %union.t4_recv_wr, ptr %66, i32 %idxprom.i149
  %host_cidx.i151 = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i150, i32 0, i32 9
  %67 = ptrtoint ptr %host_cidx.i151 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %spec.store.select.i148, ptr %host_cidx.i151, align 2
  %68 = ptrtoint ptr %ooo_count to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ooo_count, align 2
  %dec.i152 = add i16 %69, -1
  store i16 %dec.i152, ptr %ooo_count, align 2
  %tobool18.not = icmp eq i16 %dec.i152, 0
  br i1 %tobool18.not, label %do.end58.land.lhs.true_crit_edge, label %do.end58.land.rhs_crit_edge

do.end58.land.rhs_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

do.end58.land.lhs.true_crit_edge:                 ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end58.land.lhs.true_crit_edge, %do.end.land.lhs.true_crit_edge
  %pending_in_use = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 22
  %70 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %pending_in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool64.not = icmp eq i16 %71, 0
  br i1 %tobool64.not, label %land.lhs.true.if.end98_crit_edge, label %if.then65

land.lhs.true.if.end98_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @post_pending_srq_wrs(ptr noundef %srq)
  br label %if.end98

do.body67:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reap_srq_cqe.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reap_srq_cqe, %if.then79)) #10
          to label %do.end97 [label %if.then79], !srcloc !193

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %cidx, align 4
  %conv81 = zext i16 %73 to i32
  %pidx82 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %74 = ptrtoint ptr %pidx82 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pidx82, align 2
  %conv83 = zext i16 %75 to i32
  %wq_pidx84 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  %76 = ptrtoint ptr %wq_pidx84 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %wq_pidx84, align 8
  %conv85 = zext i16 %77 to i32
  %in_use86 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 18
  %78 = ptrtoint ptr %in_use86 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %in_use86, align 4
  %conv87 = zext i16 %79 to i32
  %size88 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  %80 = ptrtoint ptr %size88 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %size88, align 2
  %conv89 = zext i16 %81 to i32
  %ooo_count90 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 23
  %82 = ptrtoint ptr %ooo_count90 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %ooo_count90, align 2
  %conv91 = zext i16 %83 to i32
  %84 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sw_rq, align 4
  %arrayidx93 = getelementptr %struct.t4_swrqe, ptr %85, i32 %sub
  %86 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx93, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reap_srq_cqe.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.59, i32 noundef %sub, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv91, i64 noundef %87) #10
  br label %do.end97

do.end97:                                         ; preds = %if.then79, %do.body67
  %in_use.i153 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 18
  %88 = ptrtoint ptr %in_use.i153 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %in_use.i153, align 4
  %dec.i154 = add i16 %89, -1
  store i16 %dec.i154, ptr %in_use.i153, align 4
  %ooo_count.i155 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 23
  %90 = ptrtoint ptr %ooo_count.i155 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %ooo_count.i155, align 2
  %inc.i156 = add i16 %91, 1
  store i16 %inc.i156, ptr %ooo_count.i155, align 2
  br label %if.end98

if.end98:                                         ; preds = %do.end97, %if.then65, %land.lhs.true.if.end98_crit_edge, %land.rhs.if.end98_crit_edge
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @post_pending_srq_wrs(ptr noundef %srq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_in_use = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 22
  %0 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pending_in_use, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not66 = icmp eq i16 %1, 0
  br i1 %tobool.not66, label %entry.if.end31_crit_edge, label %while.body.lr.ph

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

while.body.lr.ph:                                 ; preds = %entry
  %pending_wrs = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 19
  %pending_cidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 20
  %sw_rq = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 3
  %pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %cidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 14
  %wq_pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  %in_use = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 18
  %size = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  br label %while.body

while.body:                                       ; preds = %t4_srq_produce.exit.while.body_crit_edge, %while.body.lr.ph
  %idx.067 = phi i16 [ 0, %while.body.lr.ph ], [ %add21, %t4_srq_produce.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %pending_wrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_wrs, align 8
  %4 = ptrtoint ptr %pending_cidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pending_cidx, align 4
  %idxprom = zext i16 %5 to i32
  %arrayidx = getelementptr %struct.t4_srq_pending_wr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %sw_rq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sw_rq, align 4
  %10 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pidx, align 2
  %idxprom1 = zext i16 %11 to i32
  %arrayidx2 = getelementptr %struct.t4_swrqe, ptr %9, i32 %idxprom1
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %7, ptr %arrayidx2, align 8
  %13 = load ptr, ptr %sw_rq, align 4
  %14 = load i16, ptr %pidx, align 2
  %idxprom6 = zext i16 %14 to i32
  %valid = getelementptr %struct.t4_swrqe, ptr %13, i32 %idxprom6, i32 3
  %15 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %valid, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @post_pending_srq_wrs.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@post_pending_srq_wrs, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %cidx to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cidx, align 4
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pidx, align 2
  %conv12 = zext i16 %19 to i32
  %20 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %wq_pidx, align 8
  %conv13 = zext i16 %21 to i32
  %22 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %in_use, align 4
  %conv14 = zext i16 %23 to i32
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size, align 2
  %conv15 = zext i16 %25 to i32
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @post_pending_srq_wrs.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i64 noundef %27) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %wqe = getelementptr %struct.t4_srq_pending_wr, ptr %3, i32 %idxprom, i32 1
  %len16 = getelementptr %struct.t4_srq_pending_wr, ptr %3, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %len16 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len16, align 8
  tail call void @c4iw_copy_wr_to_srq(ptr noundef %srq, ptr noundef %wqe, i8 noundef zeroext %29) #10
  %30 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pending_in_use, align 8
  %dec.i = add i16 %31, -1
  store i16 %dec.i, ptr %pending_in_use, align 8
  %32 = ptrtoint ptr %in_use to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %in_use, align 4
  %dec1.i = add i16 %33, -1
  store i16 %dec1.i, ptr %in_use, align 4
  %34 = ptrtoint ptr %pending_cidx to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pending_cidx, align 4
  %inc.i = add i16 %35, 1
  %36 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %37)
  %cmp.i = icmp eq i16 %inc.i, %37
  %spec.store.select.i = select i1 %cmp.i, i16 0, i16 %inc.i
  %38 = ptrtoint ptr %pending_cidx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %spec.store.select.i, ptr %pending_cidx, align 4
  %39 = ptrtoint ptr %len16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %len16, align 8
  %41 = ptrtoint ptr %in_use to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %33, ptr %in_use, align 4
  %42 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pidx, align 2
  %inc1.i = add i16 %43, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %inc1.i, i16 %37)
  %cmp.i63 = icmp eq i16 %inc1.i, %37
  %spec.store.select.i64 = select i1 %cmp.i63, i16 0, i16 %inc1.i
  %44 = ptrtoint ptr %pidx to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %spec.store.select.i64, ptr %pidx, align 2
  %conv5.i = zext i8 %40 to i16
  %mul.i = shl nuw nsw i16 %conv5.i, 4
  %sub.i = add nuw nsw i16 %mul.i, 63
  %div37.i = lshr i16 %sub.i, 6
  %45 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wq_pidx, align 8
  %add7.i = add i16 %46, %div37.i
  %conv10.i = zext i16 %add7.i to i32
  %conv12.i = zext i16 %37 to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul13.i, i32 %conv10.i)
  %cmp14.not.i = icmp ugt i32 %mul13.i, %conv10.i
  br i1 %cmp14.not.i, label %do.end.t4_srq_produce.exit_crit_edge, label %if.then16.i

do.end.t4_srq_produce.exit_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %t4_srq_produce.exit

if.then16.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i = urem i32 %conv10.i, %mul13.i
  %conv22.i = trunc i32 %rem.i to i16
  br label %t4_srq_produce.exit

t4_srq_produce.exit:                              ; preds = %if.then16.i, %do.end.t4_srq_produce.exit_crit_edge
  %storemerge.i = phi i16 [ %conv22.i, %if.then16.i ], [ %add7.i, %do.end.t4_srq_produce.exit_crit_edge ]
  %47 = ptrtoint ptr %wq_pidx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %storemerge.i, ptr %wq_pidx, align 8
  %48 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %srq, align 8
  %arrayidx.i = getelementptr %union.t4_recv_wr, ptr %49, i32 %conv12.i
  %host_pidx.i = getelementptr inbounds %struct.t4_status_page, ptr %arrayidx.i, i32 0, i32 10
  %50 = ptrtoint ptr %host_pidx.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %spec.store.select.i64, ptr %host_pidx.i, align 4
  %51 = ptrtoint ptr %len16 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %len16, align 8
  %conv19 = zext i8 %52 to i16
  %mul = shl nuw nsw i16 %conv19, 4
  %sub = add nuw nsw i16 %mul, 63
  %div59 = lshr i16 %sub, 6
  %add21 = add i16 %div59, %idx.067
  %53 = ptrtoint ptr %pending_in_use to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pending_in_use, align 8
  %tobool.not = icmp eq i16 %54, 0
  br i1 %tobool.not, label %while.end, label %t4_srq_produce.exit.while.body_crit_edge

t4_srq_produce.exit.while.body_crit_edge:         ; preds = %t4_srq_produce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %t4_srq_produce.exit
  %idxprom.le = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add21)
  %tobool23.not = icmp eq i16 %add21, 0
  br i1 %tobool23.not, label %while.end.if.end31_crit_edge, label %if.then24

while.end.if.end31_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then24:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %len1625 = getelementptr %struct.t4_srq_pending_wr, ptr %3, i32 %idxprom.le, i32 2
  %55 = ptrtoint ptr %len1625 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %len1625, align 8
  %wqe26 = getelementptr %struct.t4_srq_pending_wr, ptr %3, i32 %idxprom.le, i32 1
  tail call fastcc void @t4_ring_srq_db(ptr noundef %srq, i16 noundef zeroext %add21, i8 noundef zeroext %56, ptr noundef %wqe26)
  %wq_pidx27 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 16
  %57 = ptrtoint ptr %wq_pidx27 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %wq_pidx27, align 8
  %59 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %srq, align 8
  %size28 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 13
  %61 = ptrtoint ptr %size28 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %size28, align 2
  %idxprom29 = zext i16 %62 to i32
  %host_wq_pidx = getelementptr %union.t4_recv_wr, ptr %60, i32 %idxprom29, i32 0, i32 2
  %63 = ptrtoint ptr %host_wq_pidx to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %58, ptr %host_wq_pidx, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %while.end.if.end31_crit_edge, %entry.if.end31_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_copy_wr_to_srq(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @t4_ring_srq_db(ptr nocapture noundef readonly %srq, i16 noundef zeroext %inc, i8 noundef zeroext %len16, ptr noundef readonly %wqe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  %conv = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %inc)
  %cmp = icmp eq i16 %inc, 1
  br i1 %cmp, label %land.lhs.true, label %entry.do.body13_crit_edge

entry.do.body13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

land.lhs.true:                                    ; preds = %entry
  %bar2_qid = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 7
  %0 = ptrtoint ptr %bar2_qid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bar2_qid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp ne i32 %1, 0
  %tobool.not = icmp eq ptr %wqe, null
  %or.cond = or i1 %tobool.not, %cmp2
  br i1 %or.cond, label %land.lhs.true.do.body13_crit_edge, label %do.body5

land.lhs.true.do.body13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.body5:                                         ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug662, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_srq_db, %if.then9)) #10
          to label %do.end12 [label %if.then9], !srcloc !193

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %pidx = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %2 = ptrtoint ptr %pidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pidx, align 2
  %conv10 = zext i16 %3 to i32
  %conv11 = zext i8 %len16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_srq_db.__UNIQUE_ID_ddebug662, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef %conv10, i32 noundef %conv11) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body5
  %bar2_va = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 4
  %4 = ptrtoint ptr %bar2_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bar2_va, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end12
  %count.07.i = phi i32 [ 8, %do.end12 ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %src.addr.06.i = phi ptr [ %wqe, %do.end12 ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dst.addr.05.i = phi ptr [ %add.ptr, %do.end12 ], [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %src.addr.06.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %src.addr.06.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %conv.i.i = trunc i64 %7 to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.addr.05.i, i32 %8) #10, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
  %shr.i.i = lshr i64 %7, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.05.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #10, !srcloc !195
  %incdec.ptr.i = getelementptr i64, ptr %src.addr.06.i, i32 1
  %incdec.ptr1.i = getelementptr i64, ptr %dst.addr.05.i, i32 1
  %dec.i = add nsw i32 %count.07.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body39_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.do.body39_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body39

do.body13:                                        ; preds = %land.lhs.true.do.body13_crit_edge, %entry.do.body13_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug663, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@t4_ring_srq_db, %if.then25)) #10
          to label %do.body31 [label %if.then25], !srcloc !193

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  %pidx26 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 15
  %10 = ptrtoint ptr %pidx26 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pidx26, align 2
  %conv27 = zext i16 %11 to i32
  %conv28 = zext i8 %len16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @t4_ring_srq_db.__UNIQUE_ID_ddebug663, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.69, i32 noundef %conv27, i32 noundef %conv28) #10
  br label %do.body31

do.body31:                                        ; preds = %if.then25, %do.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
  %bar2_qid34 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 7
  %12 = ptrtoint ptr %bar2_qid34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bar2_qid34, align 4
  %shl35 = shl i32 %13, 15
  %or = or i32 %shl35, %conv
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %bar2_va36 = getelementptr inbounds %struct.t4_srq, ptr %srq, i32 0, i32 4
  %15 = ptrtoint ptr %bar2_va36 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bar2_va36, align 8
  %add.ptr37 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %14) #10, !srcloc !195
  br label %do.body39

do.body39:                                        ; preds = %do.body31, %while.body.i.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @c4iw_ref_send_wait(ptr noundef %rdev, ptr noundef %skb, ptr noundef %wr_waitp, ptr noundef %func) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.77, ptr noundef %func, ptr noundef %wr_waitp, i32 noundef 0, i32 noundef 0) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !193

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %kref.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref.i, i32 noundef 4) #10
  %0 = ptrtoint ptr %kref.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, ptr noundef nonnull @.str.80, ptr noundef %wr_waitp, i32 noundef %1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %kref4.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 2
  %call.i.i.i.i39.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref4.i, i32 noundef 4) #10
  %2 = ptrtoint ptr %kref4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %kref4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %do.end20.i, label %do.end.i.if.end26.i_crit_edge, !prof !201

do.end.i.if.end26.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

do.end20.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.75, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %do.end.i.if.end26.i_crit_edge
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref4.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref4.i, ptr %kref4.i, i32 1, ptr elementtype(i32) %kref4.i) #10, !srcloc !210
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !201

if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end26.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !196

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %c4iw_get_wr_wait.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end26.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %c4iw_get_wr_wait.exit

c4iw_get_wr_wait.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.c4iw_get_wr_wait.exit_crit_edge
  %call3 = tail call i32 @c4iw_ofld_send(ptr noundef %rdev, ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %c4iw_get_wr_wait.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @c4iw_put_wr_wait(ptr noundef %wr_waitp)
  br label %cleanup

if.end6:                                          ; preds = %c4iw_get_wr_wait.exit
  %flags.i.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 7
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i1

if.then.i1:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %ret1.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %8 = ptrtoint ptr %ret1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -5, ptr %ret1.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end.i:                                         ; preds = %if.end6
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %wr_waitp, i32 noundef 6000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i2, label %if.end8.i

do.end.i2:                                        ; preds = %if.end.i
  %lldi.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %9 = ptrtoint ptr %lldi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lldi.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44, i32 3
  %11 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i2.pci_name.exit.i_crit_edge

do.end.i2.pci_name.exit.i_crit_edge:              ; preds = %do.end.i2
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i2
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i2.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %14, %if.end.i.i.i ], [ %12, %do.end.i2.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %func, ptr noundef %retval.0.i.i.i, i32 noundef 0, i32 noundef 0) #13
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %or.i = or i32 %16, 1
  store i32 %or.i, ptr %flags.i.i, align 4
  %ret7.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %17 = ptrtoint ptr %ret7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -5, ptr %ret7.i, align 4
  br label %c4iw_wait_for_reply.exit

if.end8.i:                                        ; preds = %if.end.i
  %ret9.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %18 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool10.not.i = icmp eq i32 %19, 0
  br i1 %tobool10.not.i, label %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, label %do.body12.i

if.end8.i.c4iw_wait_for_reply.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %c4iw_wait_for_reply.exit

do.body12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c4iw_ref_send_wait, %if.then18.i)) #10
          to label %c4iw_wait_for_reply.exit [label %if.then18.i], !srcloc !193

if.then18.i:                                      ; preds = %do.body12.i
  %lldi19.i = getelementptr inbounds %struct.c4iw_rdev, ptr %rdev, i32 0, i32 8
  %20 = ptrtoint ptr %lldi19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lldi19.i, align 8
  %init_name.i.i1.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44, i32 3
  %22 = ptrtoint ptr %init_name.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i.i1.i, align 8
  %tobool.not.i.i2.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i2.i, label %if.end.i.i4.i, label %if.then18.i.pci_name.exit6.i_crit_edge

if.then18.i.pci_name.exit6.i_crit_edge:           ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit6.i

if.end.i.i4.i:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i3.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %24 = ptrtoint ptr %dev.i3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i3.i, align 4
  br label %pci_name.exit6.i

pci_name.exit6.i:                                 ; preds = %if.end.i.i4.i, %if.then18.i.pci_name.exit6.i_crit_edge
  %retval.0.i.i5.i = phi ptr [ %25, %if.end.i.i4.i ], [ %23, %if.then18.i.pci_name.exit6.i_crit_edge ]
  %26 = ptrtoint ptr %ret9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret9.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, ptr noundef nonnull @.str.84, ptr noundef %retval.0.i.i5.i, i32 noundef %27, i32 noundef 0, i32 noundef 0) #10
  br label %c4iw_wait_for_reply.exit

c4iw_wait_for_reply.exit:                         ; preds = %pci_name.exit6.i, %do.body12.i, %if.end8.i.c4iw_wait_for_reply.exit_crit_edge, %pci_name.exit.i, %if.then.i1
  %ret27.i = getelementptr inbounds %struct.c4iw_wr_wait, ptr %wr_waitp, i32 0, i32 1
  %28 = ptrtoint ptr %ret27.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ret27.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %c4iw_wait_for_reply.exit, %if.then5
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ %29, %c4iw_wait_for_reply.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c4iw_put_cqid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_c4iw_free_wr_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c4iw_get_cqid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @c4iw_bar2_addrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !141, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !174, !175, !177, !179, !181, !182, !183}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 208, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @c4iw_flush_rq.__UNIQUE_ID_ddebug677, !1, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 342, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @c4iw_flush_hw_cq.__UNIQUE_ID_ddebug680, !8, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 449, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @c4iw_count_rcqes.__UNIQUE_ID_ddebug681, !13, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 459, i32 2}
!19 = !{ptr @c4iw_count_rcqes.__UNIQUE_ID_ddebug682, !18, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 981, i32 2}
!23 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @c4iw_destroy_cq.__UNIQUE_ID_ddebug694, !22, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!25 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 1013, i32 2}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @c4iw_create_cq.__UNIQUE_ID_ddebug695, !27, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!30 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @c4iw_create_cq.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 1087, i32 2}
!33 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @c4iw_create_cq.__key.20, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 1088, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 1138, i32 2}
!39 = !{ptr @c4iw_create_cq.__UNIQUE_ID_ddebug698, !38, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!40 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 188, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @insert_recv_cqe.__UNIQUE_ID_ddebug676, !42, !"__UNIQUE_ID_ddebug676", i1 false, i1 false}
!45 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 222, i32 2}
!48 = !{ptr @insert_sq_cqe.__UNIQUE_ID_ddebug678, !47, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 793, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @t4_next_hw_cqe._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @t4_next_hw_cqe._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 286, i32 4}
!57 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @flush_completed_wrs.__UNIQUE_ID_ddebug679, !56, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!59 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 737, i32 3}
!62 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @t4_swcq_produce._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @t4_swcq_produce._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 425, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 781, i32 2}
!70 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @__c4iw_poll_cq_one.__UNIQUE_ID_ddebug693, !69, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!72 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 811, i32 4}
!75 = !{ptr @__c4iw_poll_cq_one._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @__c4iw_poll_cq_one._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__c4iw_poll_cq_one._entry.41, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 848, i32 4}
!79 = !{ptr @__c4iw_poll_cq_one._entry_ptr.42, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 903, i32 4}
!82 = !{ptr @__c4iw_poll_cq_one._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @__c4iw_poll_cq_one._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 557, i32 2}
!86 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @poll_cq.__UNIQUE_ID_ddebug687, !85, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!88 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 683, i32 3}
!91 = !{ptr @poll_cq.__UNIQUE_ID_ddebug688, !90, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!92 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 716, i32 3}
!95 = !{ptr @poll_cq.__UNIQUE_ID_ddebug689, !94, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!96 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 723, i32 4}
!99 = !{ptr @poll_cq.__UNIQUE_ID_ddebug690, !98, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!100 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 743, i32 3}
!103 = !{ptr @poll_cq.__UNIQUE_ID_ddebug691, !102, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!104 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 747, i32 3}
!107 = !{ptr @poll_cq.__UNIQUE_ID_ddebug692, !106, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!108 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 500, i32 3}
!111 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @reap_srq_cqe.__UNIQUE_ID_ddebug684, !110, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!113 = !{ptr @.str.61, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 506, i32 4}
!116 = !{ptr @reap_srq_cqe.__UNIQUE_ID_ddebug685, !115, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!117 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 517, i32 3}
!120 = !{ptr @reap_srq_cqe.__UNIQUE_ID_ddebug686, !119, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!121 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 472, i32 3}
!124 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @post_pending_srq_wrs.__UNIQUE_ID_ddebug683, !123, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!126 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 588, i32 3}
!129 = !{ptr @.str.70, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug662, !128, !"__UNIQUE_ID_ddebug662", i1 false, i1 false}
!131 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/cxgb4/t4.h", i32 592, i32 3}
!134 = !{ptr @t4_ring_srq_db.__UNIQUE_ID_ddebug663, !133, !"__UNIQUE_ID_ddebug663", i1 false, i1 false}
!135 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @__func__.destroy_cq, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 61, i32 48}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 296, i32 2}
!140 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @c4iw_ref_send_wait.__UNIQUE_ID_ddebug671, !139, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!143 = !{ptr @.str.77, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 228, i32 2}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @c4iw_get_wr_wait.__UNIQUE_ID_ddebug669, !145, !"__UNIQUE_ID_ddebug669", i1 false, i1 false}
!148 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 273, i32 3}
!151 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @c4iw_wait_for_reply._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @c4iw_wait_for_reply._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 280, i32 3}
!156 = !{ptr @c4iw_wait_for_reply.__UNIQUE_ID_ddebug670, !155, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!157 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 220, i32 2}
!160 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @c4iw_put_wr_wait.__UNIQUE_ID_ddebug668, !159, !"__UNIQUE_ID_ddebug668", i1 false, i1 false}
!162 = !{ptr @.str.87, !159, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @__func__.create_cq, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 155, i32 54}
!165 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/hw/cxgb4/cq.c", i32 167, i32 3}
!167 = !{ptr @create_cq._entry, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @create_cq._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @init_completion.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../include/linux/completion.h", i32 87, i32 2}
!171 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!174 = !{ptr @.str.90, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/hw/cxgb4/iw_cxgb4.h", i32 569, i32 2}
!181 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @insert_mmap.__UNIQUE_ID_ddebug675, !180, !"__UNIQUE_ID_ddebug675", i1 false, i1 false}
!183 = !{ptr @.str.95, !180, !"<string literal>", i1 false, i1 false}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 2148759198, i64 2148759203, i64 2148759216, i64 2148759260, i64 2148759294, i64 2148759315}
!194 = !{i64 2160824658}
!195 = !{i64 6381994}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = !{i64 2148366914}
!198 = !{i64 2148281378, i64 2148281410, i64 2148281439, i64 2148281473, i64 2148281504, i64 2148281527}
!199 = !{i64 2149684123}
!200 = !{i64 2154867113, i64 2154867601, i64 2154867150, i64 2154867206, i64 2154867240, i64 2154867264, i64 2154867305, i64 2154867326, i64 2154867354, i64 2154867388}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i8 0, i8 2}
!203 = !{i64 2152508420, i64 2152508445}
!204 = !{!"auto-init"}
!205 = !{i64 2160799040}
!206 = !{i64 2160551235}
!207 = !{i64 2160551608}
!208 = !{i64 2160804259}
!209 = !{i64 2160804704}
!210 = !{i64 2148278913, i64 2148278945, i64 2148278974, i64 2148279008, i64 2148279039, i64 2148279062}
