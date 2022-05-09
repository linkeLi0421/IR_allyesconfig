; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/cxgb4/restrack.c_pt.bc'
source_filename = "../drivers/infiniband/hw/cxgb4/restrack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.t4_swsqe = type { i64, %struct.t4_cqe, i32, i32, i32, i32, i16, i32, i64, i64 }
%struct.t4_cqe = type { i32, i32, %union.anon.220, [3 x i64], i64 }
%union.anon.220 = type { [3 x i64] }
%struct.c4iw_qp = type { %struct.ib_qp, %struct.list_head, ptr, ptr, %struct.c4iw_qp_attributes, %struct.t4_wq, %struct.spinlock, %struct.mutex, %struct.wait_queue_head, i32, ptr, ptr, ptr, %struct.completion, %struct.refcount_struct }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.atomic_t = type { i32 }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.list_head = type { ptr, ptr }
%struct.c4iw_qp_attributes = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, [52 x i8], i32, i8, %struct.c4iw_mpa_attributes, ptr, i8, i8, i16, i16, i8 }
%struct.c4iw_mpa_attributes = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.t4_wq = type { %struct.t4_sq, %struct.t4_rq, ptr, ptr, i32, ptr, ptr }
%struct.t4_sq = type { ptr, i32, i32, i32, ptr, ptr, ptr, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.t4_rq = type { ptr, i32, i32, ptr, ptr, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon, %union.anon.172, %union.anon.173, [48 x i8], %union.anon.174, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.176, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.172 = type { ptr }
%union.anon.173 = type { i64 }
%union.anon.174 = type { %struct.anon.175 }
%struct.anon.175 = type { i32, ptr }
%union.anon.176 = type { %struct.anon.177 }
%struct.anon.177 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.178, i32, i32, i32, i16, i16, %union.anon.180, i32, %union.anon.181, %union.anon.182, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.178 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i16 }
%struct.iw_cm_id = type { ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, ptr, ptr, ptr, i8, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.216 }
%union.anon.216 = type { ptr, [124 x i8] }
%struct.c4iw_ep_common = type { ptr, ptr, ptr, %struct.sk_buff_head, i32, %struct.kref, %struct.mutex, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
%struct.c4iw_listen_ep = type { %struct.c4iw_ep_common, i32, i32 }
%struct.c4iw_ep = type { %struct.c4iw_ep_common, ptr, %struct.timer_list, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.c4iw_mpa_attributes, [276 x i8], i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, %struct.c4iw_ep_stats, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.c4iw_ep_stats = type { i32, i32 }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.202, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.202 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.c4iw_cq = type { %struct.ib_cq, ptr, ptr, %struct.t4_cq, %struct.spinlock, %struct.spinlock, %struct.refcount_struct, %struct.completion, ptr }
%struct.t4_cq = type { ptr, i32, i32, ptr, ptr, ptr, i64, i32, ptr, i32, i64, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i8, ptr, i32 }
%struct.fw_ri_tpte = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.c4iw_mr = type { %struct.ib_mr, ptr, ptr, ptr, i64, %struct.tpt_attributes, ptr, i32, i32, i32, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.195, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.195 = type { %struct.list_head }
%struct.tpt_attributes = type { i64, i64, i32, i32, i32, i32, i32, i32, i16 }
%struct.c4iw_dev = type { %struct.ib_device, %struct.c4iw_rdev, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.mutex, ptr, i32, %struct.xarray, %struct.xarray, %struct.xarray, %struct.list_head, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.219, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.219 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.ib_odp_caps = type { i64, %struct.anon.206 }
%struct.anon.206 = type { i32, i32, i32, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.228, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.228 = type { ptr }
%struct.anon.223 = type { i32, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"history\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stid\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"backlog\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwtid\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ord\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ird\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emss\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"atid\00", [27 x i8] zeroinitializer }, align 32
@c4iw_fill_res_mr_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 450, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s cxgb4_read_tpte err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"c4iw_fill_res_mr_entry\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/hw/cxgb4/restrack.c\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c4iw_fill_res_mr_entry._entry_ptr = internal global ptr @c4iw_fill_res_mr_entry._entry, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"idx\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"valid\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pdid\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"perm\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ps\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pbl_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sqid\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"flushed\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"memsize\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cidx\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pidx\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wq_pidx\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"flush_cidx\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"in_use\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"opcode\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"complete\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cqe_status\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"signaled\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rqid\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msn\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rqt_hwaddr\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rqt_size\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cqid\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cidx_inc\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_cidx\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sw_pidx\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sw_in_use\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vector\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gen\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bits_type_ts\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"swcq_idx\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"header\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wrid_hi\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wrid_low\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hwcq_idx\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 234, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 236, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 238, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 242, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 244, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 247, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 249, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 251, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 253, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 256, i32 53 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 449, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 454, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 456, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 459, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 464, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 467, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 470, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 473, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 476, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 42, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 44, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 46, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 48, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 50, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 52, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 54, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 56, i32 34 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 58, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 100, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 102, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 105, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 107, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 70, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 80, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 82, i32 38 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 84, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 991, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 273, i32 34 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 281, i32 34 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 283, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 285, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 287, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 289, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 291, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 293, i32 34 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 295, i32 38 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 359, i32 31 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 312, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 317, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 320, i32 38 }
@___asan_gen_.220 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.221 = private constant [42 x i8] c"../drivers/infiniband/hw/cxgb4/restrack.c\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 339, i32 31 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @c4iw_fill_res_mr_entry._entry, ptr @c4iw_fill_res_mr_entry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c4iw_fill_res_mr_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_fill_res_qp_entry(ptr noundef %msg, ptr noundef %ibqp) local_unnamed_addr #0 align 64 {
entry:
  %first_sqe = alloca %struct.t4_swsqe, align 8
  %last_sqe = alloca %struct.t4_swsqe, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %first_sqe) #5
  %0 = call ptr @memset(ptr %first_sqe, i32 255, i32 112)
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %last_sqe) #5
  %1 = call ptr @memset(ptr %last_sqe, i32 255, i32 112)
  %ucontext = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 11
  %2 = ptrtoint ptr %ucontext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucontext, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 52, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not132 = icmp eq ptr %5, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not132
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %wq.sroa.4.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 8
  %6 = ptrtoint ptr %wq.sroa.4.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %wq.sroa.4.0.copyload = load i32, ptr %wq.sroa.4.0.wq5.sroa_idx, align 8
  %wq.sroa.5113.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 10
  %7 = ptrtoint ptr %wq.sroa.5113.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %wq.sroa.5113.0.copyload = load i32, ptr %wq.sroa.5113.0.wq5.sroa_idx, align 8
  %wq.sroa.6.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 11
  %8 = ptrtoint ptr %wq.sroa.6.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %8)
  %wq.sroa.6.0.copyload = load i16, ptr %wq.sroa.6.0.wq5.sroa_idx, align 4
  %wq.sroa.7.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 12
  %9 = ptrtoint ptr %wq.sroa.7.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %wq.sroa.7.0.copyload = load i16, ptr %wq.sroa.7.0.wq5.sroa_idx, align 2
  %wq.sroa.9.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 13
  %10 = ptrtoint ptr %wq.sroa.9.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %wq.sroa.9.0.copyload = load i16, ptr %wq.sroa.9.0.wq5.sroa_idx, align 8
  %wq.sroa.11.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 14
  %11 = ptrtoint ptr %wq.sroa.11.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %wq.sroa.11.0.copyload = load i16, ptr %wq.sroa.11.0.wq5.sroa_idx, align 2
  %wq.sroa.14.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 15
  %12 = ptrtoint ptr %wq.sroa.14.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %wq.sroa.14.0.copyload = load i16, ptr %wq.sroa.14.0.wq5.sroa_idx, align 4
  %wq.sroa.15118.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 17
  %13 = ptrtoint ptr %wq.sroa.15118.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %wq.sroa.15118.0.copyload = load i16, ptr %wq.sroa.15118.0.wq5.sroa_idx, align 8
  %wq.sroa.16.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 18
  %14 = ptrtoint ptr %wq.sroa.16.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %wq.sroa.16.0.copyload = load i16, ptr %wq.sroa.16.0.wq5.sroa_idx, align 2
  %wq.sroa.17119.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 6
  %15 = ptrtoint ptr %wq.sroa.17119.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %wq.sroa.17119.0.copyload = load i32, ptr %wq.sroa.17119.0.wq5.sroa_idx, align 8
  %wq.sroa.18120.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 8
  %16 = ptrtoint ptr %wq.sroa.18120.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %wq.sroa.18120.0.copyload = load i32, ptr %wq.sroa.18120.0.wq5.sroa_idx, align 8
  %wq.sroa.19.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 9
  %17 = ptrtoint ptr %wq.sroa.19.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %wq.sroa.19.0.copyload = load i32, ptr %wq.sroa.19.0.wq5.sroa_idx, align 4
  %wq.sroa.20.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 10
  %18 = ptrtoint ptr %wq.sroa.20.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %wq.sroa.20.0.copyload = load i32, ptr %wq.sroa.20.0.wq5.sroa_idx, align 8
  %wq.sroa.21.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 11
  %19 = ptrtoint ptr %wq.sroa.21.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %wq.sroa.21.0.copyload = load i16, ptr %wq.sroa.21.0.wq5.sroa_idx, align 4
  %wq.sroa.22.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 12
  %20 = ptrtoint ptr %wq.sroa.22.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %20)
  %wq.sroa.22.0.copyload = load i16, ptr %wq.sroa.22.0.wq5.sroa_idx, align 2
  %wq.sroa.23.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 13
  %21 = ptrtoint ptr %wq.sroa.23.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %wq.sroa.23.0.copyload = load i16, ptr %wq.sroa.23.0.wq5.sroa_idx, align 8
  %wq.sroa.24.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 14
  %22 = ptrtoint ptr %wq.sroa.24.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %wq.sroa.24.0.copyload = load i16, ptr %wq.sroa.24.0.wq5.sroa_idx, align 2
  %wq.sroa.25.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 15
  %23 = ptrtoint ptr %wq.sroa.25.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %wq.sroa.25.0.copyload = load i16, ptr %wq.sroa.25.0.wq5.sroa_idx, align 4
  %wq.sroa.26.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 1, i32 16
  %24 = ptrtoint ptr %wq.sroa.26.0.wq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %wq.sroa.26.0.copyload = load i16, ptr %wq.sroa.26.0.wq5.sroa_idx, align 2
  %wq.sroa.27121.0.wq5.sroa_idx = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 4
  %25 = ptrtoint ptr %wq.sroa.27121.0.wq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %wq.sroa.27121.0.copyload = load i32, ptr %wq.sroa.27121.0.wq5.sroa_idx, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %wq.sroa.9.0.copyload, i16 %wq.sroa.11.0.copyload)
  %cmp.not = icmp eq i16 %wq.sroa.9.0.copyload, %wq.sroa.11.0.copyload
  br i1 %cmp.not, label %if.end4.if.end35_crit_edge, label %if.then9

if.end4.if.end35_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then9:                                         ; preds = %if.end4
  %conv = zext i16 %wq.sroa.9.0.copyload to i32
  %sw_sq = getelementptr inbounds %struct.c4iw_qp, ptr %ibqp, i32 0, i32 5, i32 0, i32 4
  %26 = ptrtoint ptr %sw_sq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw_sq, align 8
  %arrayidx = getelementptr %struct.t4_swsqe, ptr %27, i32 %conv
  %28 = call ptr @memcpy(ptr %first_sqe, ptr %arrayidx, i32 112)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wq.sroa.11.0.copyload)
  %cmp17 = icmp eq i16 %wq.sroa.11.0.copyload, 0
  %spec.select = select i1 %cmp17, i16 %wq.sroa.7.0.copyload, i16 %wq.sroa.11.0.copyload
  %last_sq_idx.0 = add i16 %spec.select, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %last_sq_idx.0, i16 %wq.sroa.9.0.copyload)
  %cmp26.not = icmp eq i16 %last_sq_idx.0, %wq.sroa.9.0.copyload
  br i1 %cmp26.not, label %if.then9.if.end35_crit_edge, label %if.then28

if.then9.if.end35_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then28:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %conv24 = zext i16 %last_sq_idx.0 to i32
  %arrayidx33 = getelementptr %struct.t4_swsqe, ptr %27, i32 %conv24
  %29 = call ptr @memcpy(ptr %last_sqe, ptr %arrayidx33, i32 112)
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %if.then9.if.end35_crit_edge, %if.end4.if.end35_crit_edge
  %fsp.0 = phi ptr [ %first_sqe, %if.then28 ], [ %first_sqe, %if.then9.if.end35_crit_edge ], [ null, %if.end4.if.end35_crit_edge ]
  %lsp.0 = phi ptr [ %last_sqe, %if.then28 ], [ null, %if.then9.if.end35_crit_edge ], [ null, %if.end4.if.end35_crit_edge ]
  %first_sq_idx.0 = phi i16 [ %wq.sroa.9.0.copyload, %if.then28 ], [ %wq.sroa.9.0.copyload, %if.then9.if.end35_crit_edge ], [ 0, %if.end4.if.end35_crit_edge ]
  %last_sq_idx.1 = phi i16 [ %last_sq_idx.0, %if.then28 ], [ %wq.sroa.9.0.copyload, %if.then9.if.end35_crit_edge ], [ 0, %if.end4.if.end35_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %call.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.23, i32 noundef %wq.sroa.5113.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.if.then.i.i_crit_edge

if.end35.if.then.i.i_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end.i:                                         ; preds = %if.end35
  %call1.i76 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.24, i32 noundef %wq.sroa.27121.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool2.not.i = icmp eq i32 %call1.i76, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %call6.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.25, i32 noundef %wq.sroa.4.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end4.i.if.then.i.i_crit_edge

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end9.i:                                        ; preds = %if.end4.i
  %conv.i = zext i16 %wq.sroa.9.0.copyload to i32
  %call11.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.26, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end9.i.if.then.i.i_crit_edge

if.end9.i.if.then.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end14.i:                                       ; preds = %if.end9.i
  %conv16.i = zext i16 %wq.sroa.11.0.copyload to i32
  %call17.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.27, i32 noundef %conv16.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end14.i.if.then.i.i_crit_edge

if.end14.i.if.then.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end20.i:                                       ; preds = %if.end14.i
  %conv22.i = zext i16 %wq.sroa.14.0.copyload to i32
  %call23.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.28, i32 noundef %conv22.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end20.i.if.then.i.i_crit_edge

if.end20.i.if.then.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end26.i:                                       ; preds = %if.end20.i
  %conv28.i = sext i16 %wq.sroa.16.0.copyload to i32
  %call29.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.29, i32 noundef %conv28.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end26.i.if.then.i.i_crit_edge

if.end26.i.if.then.i.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end32.i:                                       ; preds = %if.end26.i
  %conv34.i = zext i16 %wq.sroa.6.0.copyload to i32
  %call35.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.30, i32 noundef %conv34.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end32.i.if.then.i.i_crit_edge

if.end32.i.if.then.i.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end38.i:                                       ; preds = %if.end32.i
  %conv40.i = zext i16 %wq.sroa.7.0.copyload to i32
  %call41.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.31, i32 noundef %conv40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end38.i.if.then.i.i_crit_edge

if.end38.i.if.then.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end44.i:                                       ; preds = %if.end38.i
  %conv46.i = zext i16 %wq.sroa.15118.0.copyload to i32
  %call47.i = tail call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.1, i32 noundef %conv46.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end40, label %if.end44.i.if.then.i.i_crit_edge

if.end44.i.if.then.i.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end44.i
  %tobool.not.i77 = icmp eq ptr %fsp.0, null
  br i1 %tobool.not.i77, label %if.end40.if.end45_crit_edge, label %if.end.i79

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end.i79:                                       ; preds = %if.end40
  %call.i78 = call fastcc i32 @fill_swsqe(ptr noundef %msg, i16 noundef zeroext %first_sq_idx.0, ptr noundef nonnull %fsp.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool1.not.i = icmp eq i32 %call.i78, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i79.if.then.i.i_crit_edge

if.end.i79.if.then.i.i_crit_edge:                 ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end3.i:                                        ; preds = %if.end.i79
  %tobool4.not.i = icmp eq ptr %lsp.0, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end45_crit_edge, label %if.end6.i

if.end3.i.if.end45_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end6.i:                                        ; preds = %if.end3.i
  %call7.i = call fastcc i32 @fill_swsqe(ptr noundef %msg, i16 noundef zeroext %last_sq_idx.1, ptr noundef nonnull %lsp.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end45_crit_edge, label %if.end6.i.if.then.i.i_crit_edge

if.end6.i.if.then.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end6.i.if.end45_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %if.end6.i.if.end45_crit_edge, %if.end3.i.if.end45_crit_edge, %if.end40.if.end45_crit_edge
  %call.i83 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.36, i32 noundef %wq.sroa.18120.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i86, label %if.end45.if.then.i.i_crit_edge

if.end45.if.then.i.i_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end.i86:                                       ; preds = %if.end45
  %call2.i = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.25, i32 noundef %wq.sroa.17119.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i86.if.then.i.i_crit_edge

if.end.i86.if.then.i.i_crit_edge:                 ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end5.i:                                        ; preds = %if.end.i86
  %conv.i88 = zext i16 %wq.sroa.24.0.copyload to i32
  %call7.i89 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.26, i32 noundef %conv.i88) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i89)
  %tobool8.not.i90 = icmp eq i32 %call7.i89, 0
  br i1 %tobool8.not.i90, label %if.end10.i, label %if.end5.i.if.then.i.i_crit_edge

if.end5.i.if.then.i.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end10.i:                                       ; preds = %if.end5.i
  %conv12.i = zext i16 %wq.sroa.25.0.copyload to i32
  %call13.i = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.27, i32 noundef %conv12.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end10.i.if.then.i.i_crit_edge

if.end10.i.if.then.i.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end16.i:                                       ; preds = %if.end10.i
  %conv18.i = zext i16 %wq.sroa.26.0.copyload to i32
  %call19.i = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.28, i32 noundef %conv18.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end16.i.if.then.i.i_crit_edge

if.end16.i.if.then.i.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end22.i:                                       ; preds = %if.end16.i
  %call24.i = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.37, i32 noundef %wq.sroa.19.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end27.i, label %if.end22.i.if.then.i.i_crit_edge

if.end22.i.if.then.i.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end27.i:                                       ; preds = %if.end22.i
  %call29.i93 = call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.38, i32 noundef %wq.sroa.20.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i93)
  %tobool30.not.i94 = icmp eq i32 %call29.i93, 0
  br i1 %tobool30.not.i94, label %if.end32.i98, label %if.end27.i.if.then.i.i_crit_edge

if.end27.i.if.then.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end32.i98:                                     ; preds = %if.end27.i
  %conv34.i95 = zext i16 %wq.sroa.21.0.copyload to i32
  %call35.i96 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.39, i32 noundef %conv34.i95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i96)
  %tobool36.not.i97 = icmp eq i32 %call35.i96, 0
  br i1 %tobool36.not.i97, label %if.end38.i103, label %if.end32.i98.if.then.i.i_crit_edge

if.end32.i98.if.then.i.i_crit_edge:               ; preds = %if.end32.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end38.i103:                                    ; preds = %if.end32.i98
  %conv40.i100 = zext i16 %wq.sroa.22.0.copyload to i32
  %call41.i101 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.30, i32 noundef %conv40.i100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i101)
  %tobool42.not.i102 = icmp eq i32 %call41.i101, 0
  br i1 %tobool42.not.i102, label %if.end44.i108, label %if.end38.i103.if.then.i.i_crit_edge

if.end38.i103.if.then.i.i_crit_edge:              ; preds = %if.end38.i103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end44.i108:                                    ; preds = %if.end38.i103
  %conv46.i105 = zext i16 %wq.sroa.23.0.copyload to i32
  %call47.i106 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.31, i32 noundef %conv46.i105) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i106)
  %tobool48.not.i107 = icmp eq i32 %call47.i106, 0
  br i1 %tobool48.not.i107, label %if.end49, label %if.end44.i108.if.then.i.i_crit_edge

if.end44.i108.if.then.i.i_crit_edge:              ; preds = %if.end44.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end49:                                         ; preds = %if.end44.i108
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i112 = trunc i32 %sub.ptr.sub.i to i16
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i112, ptr %5, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end44.i108.if.then.i.i_crit_edge, %if.end38.i103.if.then.i.i_crit_edge, %if.end32.i98.if.then.i.i_crit_edge, %if.end27.i.if.then.i.i_crit_edge, %if.end22.i.if.then.i.i_crit_edge, %if.end16.i.if.then.i.i_crit_edge, %if.end10.i.if.then.i.i_crit_edge, %if.end5.i.if.then.i.i_crit_edge, %if.end.i86.if.then.i.i_crit_edge, %if.end45.if.then.i.i_crit_edge, %if.end6.i.if.then.i.i_crit_edge, %if.end.i79.if.then.i.i_crit_edge, %if.end44.i.if.then.i.i_crit_edge, %if.end38.i.if.then.i.i_crit_edge, %if.end32.i.if.then.i.i_crit_edge, %if.end26.i.if.then.i.i_crit_edge, %if.end20.i.if.then.i.i_crit_edge, %if.end14.i.if.then.i.i_crit_edge, %if.end9.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge, %if.end35.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %34, %5
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !117

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end49, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %last_sqe) #5
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %first_sqe) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_fill_res_cm_id_entry(ptr noundef %msg, ptr noundef %cm_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdma_iw_cm_id(ptr noundef %cm_id) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %provider_data = getelementptr inbounds %struct.iw_cm_id, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %provider_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %provider_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 884) #8
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 52, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool9.not113 = icmp eq ptr %4, null
  %tobool9.not = select i1 %cmp.i, i1 true, i1 %tobool9.not113
  br i1 %tobool9.not, label %if.end7.cleanup.sink.split_crit_edge, label %if.end11

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %mutex = getelementptr inbounds %struct.c4iw_ep_common, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.c4iw_ep_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr %1, i32 444)
  br label %if.end16

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %8 = call ptr @memcpy(ptr %call7.i.i, ptr %1, i32 884)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  %listen_ep.0 = phi ptr [ %call7.i.i, %if.then12 ], [ null, %if.else ]
  %ep.0 = phi ptr [ null, %if.then12 ], [ %call7.i.i, %if.else ]
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %state17 = getelementptr inbounds %struct.c4iw_ep_common, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state17, align 4
  %call18 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str, i32 noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end21:                                         ; preds = %if.end16
  %flags = getelementptr inbounds %struct.c4iw_ep_common, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %conv = zext i32 %12 to i64
  %call22 = tail call i32 @rdma_nl_put_driver_u64_hex(ptr noundef %msg, ptr noundef nonnull @.str.1, i64 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.if.then.i.i_crit_edge

if.end21.if.then.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end25:                                         ; preds = %if.end21
  %history = getelementptr inbounds %struct.c4iw_ep_common, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %history to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %history, align 8
  %conv26 = zext i32 %14 to i64
  %call27 = tail call i32 @rdma_nl_put_driver_u64_hex(ptr noundef %msg, ptr noundef nonnull @.str.2, i64 noundef %conv26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.if.then.i.i_crit_edge

if.end25.if.then.i.i_crit_edge:                   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end30:                                         ; preds = %if.end25
  %15 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp32 = icmp eq i32 %16, 1
  br i1 %cmp32, label %if.then34, label %if.else43

if.then34:                                        ; preds = %if.end30
  %stid = getelementptr inbounds %struct.c4iw_listen_ep, ptr %listen_ep.0, i32 0, i32 1
  %17 = ptrtoint ptr %stid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stid, align 4
  %call35 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.3, i32 noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.if.then.i.i_crit_edge

if.then34.if.then.i.i_crit_edge:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end38:                                         ; preds = %if.then34
  %backlog = getelementptr inbounds %struct.c4iw_listen_ep, ptr %listen_ep.0, i32 0, i32 2
  %19 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %backlog, align 8
  %call39 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.4, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end38.if.end66_crit_edge, label %if.end38.if.then.i.i_crit_edge

if.end38.if.then.i.i_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end38.if.end66_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.else43:                                        ; preds = %if.end30
  %hwtid = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 5
  %21 = ptrtoint ptr %hwtid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwtid, align 4
  %call44 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.5, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.else43.if.then.i.i_crit_edge

if.else43.if.then.i.i_crit_edge:                  ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end47:                                         ; preds = %if.else43
  %ord = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 15
  %23 = ptrtoint ptr %ord to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ord, align 8
  %call48 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.6, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.if.then.i.i_crit_edge

if.end47.if.then.i.i_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end51:                                         ; preds = %if.end47
  %ird = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 14
  %25 = ptrtoint ptr %ird to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ird, align 4
  %call52 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.7, i32 noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.if.then.i.i_crit_edge

if.end51.if.then.i.i_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end55:                                         ; preds = %if.end51
  %emss = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 20
  %27 = ptrtoint ptr %emss to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %emss, align 2
  %conv56 = zext i16 %28 to i32
  %call57 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.8, i32 noundef %conv56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.if.then.i.i_crit_edge

if.end55.if.then.i.i_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end60:                                         ; preds = %if.end55
  %parent_ep = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 1
  %29 = ptrtoint ptr %parent_ep to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_ep, align 4
  %tobool61.not = icmp eq ptr %30, null
  br i1 %tobool61.not, label %land.lhs.true, label %if.end60.if.end66_crit_edge

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end60
  %atid = getelementptr inbounds %struct.c4iw_ep, ptr %ep.0, i32 0, i32 4
  %31 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %atid, align 8
  %call62 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.9, i32 noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true.if.end66_crit_edge, %if.end60.if.end66_crit_edge, %if.end38.if.end66_crit_edge
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %4, align 2
  br label %cleanup.sink.split

if.then.i.i:                                      ; preds = %land.lhs.true.if.then.i.i_crit_edge, %if.end55.if.then.i.i_crit_edge, %if.end51.if.then.i.i_crit_edge, %if.end47.if.then.i.i_crit_edge, %if.else43.if.then.i.i_crit_edge, %if.end38.if.then.i.i_crit_edge, %if.then34.if.then.i.i_crit_edge, %if.end25.if.then.i.i_crit_edge, %if.end21.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %37, %4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !117

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nla_nest_cancel.exit, %if.end66, %if.end7.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end66 ], [ -90, %if.end7.cleanup.sink.split_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_iw_cm_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_put_driver_u32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_put_driver_u64_hex(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_fill_res_cq_entry(ptr noundef %msg, ptr noundef %ibcq) local_unnamed_addr #0 align 64 {
entry:
  %hwcqes = alloca [2 x %struct.t4_cqe], align 8
  %swcqes = alloca [2 x %struct.t4_cqe], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %hwcqes) #5
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %swcqes) #5
  %0 = call ptr @memset(ptr %swcqes, i32 255, i32 128)
  %uobject = getelementptr inbounds %struct.ib_cq, ptr %ibcq, i32 0, i32 1
  %1 = ptrtoint ptr %uobject to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %uobject, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 52, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not157 = icmp eq ptr %4, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not157
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %cq5 = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3
  %cq.sroa.4.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 9
  %5 = ptrtoint ptr %cq.sroa.4.0.cq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %cq.sroa.4.0.copyload = load i32, ptr %cq.sroa.4.0.cq5.sroa_idx, align 8
  %cq.sroa.5113.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 10
  %6 = ptrtoint ptr %cq.sroa.5113.0.cq5.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %cq.sroa.5113.0.copyload = load i64, ptr %cq.sroa.5113.0.cq5.sroa_idx, align 8
  %cq.sroa.6.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 11
  %7 = ptrtoint ptr %cq.sroa.6.0.cq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %cq.sroa.6.0.copyload = load i32, ptr %cq.sroa.6.0.cq5.sroa_idx, align 8
  %cq.sroa.7114.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 13
  %8 = ptrtoint ptr %cq.sroa.7114.0.cq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %cq.sroa.7114.0.copyload = load i32, ptr %cq.sroa.7114.0.cq5.sroa_idx, align 8
  %cq.sroa.8.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 14
  %9 = ptrtoint ptr %cq.sroa.8.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %9)
  %cq.sroa.8.0.copyload = load i16, ptr %cq.sroa.8.0.cq5.sroa_idx, align 4
  %cq.sroa.13.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 15
  %10 = ptrtoint ptr %cq.sroa.13.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %10)
  %cq.sroa.13.0.copyload = load i16, ptr %cq.sroa.13.0.cq5.sroa_idx, align 2
  %cq.sroa.18.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %cq.sroa.18.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %cq.sroa.18.0.copyload = load i16, ptr %cq.sroa.18.0.cq5.sroa_idx, align 8
  %cq.sroa.21.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 17
  %12 = ptrtoint ptr %cq.sroa.21.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %cq.sroa.21.0.copyload = load i16, ptr %cq.sroa.21.0.cq5.sroa_idx, align 2
  %cq.sroa.24.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 18
  %13 = ptrtoint ptr %cq.sroa.24.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %13)
  %cq.sroa.24.0.copyload = load i16, ptr %cq.sroa.24.0.cq5.sroa_idx, align 4
  %cq.sroa.29.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 19
  %14 = ptrtoint ptr %cq.sroa.29.0.cq5.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %14)
  %cq.sroa.29.0.copyload = load i16, ptr %cq.sroa.29.0.cq5.sroa_idx, align 2
  %cq.sroa.30.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 20
  %15 = ptrtoint ptr %cq.sroa.30.0.cq5.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cq.sroa.30.0.copyload = load i8, ptr %cq.sroa.30.0.cq5.sroa_idx, align 8
  %cq.sroa.31.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 21
  %16 = ptrtoint ptr %cq.sroa.31.0.cq5.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cq.sroa.31.0.copyload = load i8, ptr %cq.sroa.31.0.cq5.sroa_idx, align 1
  %cq.sroa.32131.0.cq5.sroa_idx = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 23
  %17 = ptrtoint ptr %cq.sroa.32131.0.cq5.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %cq.sroa.32131.0.copyload = load i32, ptr %cq.sroa.32131.0.cq5.sroa_idx, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cq.sroa.13.0.copyload)
  %cmp.not = icmp eq i16 %cq.sroa.13.0.copyload, 0
  %spec.select = select i1 %cmp.not, i16 %cq.sroa.8.0.copyload, i16 %cq.sroa.13.0.copyload
  %cond = add i16 %spec.select, -1
  %18 = ptrtoint ptr %cq5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cq5, align 8
  %idxprom = zext i16 %cond to i32
  %arrayidx13 = getelementptr %struct.t4_cqe, ptr %19, i32 %idxprom
  %20 = call ptr @memcpy(ptr %hwcqes, ptr %arrayidx13, i32 64)
  %arrayidx15 = getelementptr inbounds [2 x %struct.t4_cqe], ptr %hwcqes, i32 0, i32 1
  %idxprom18 = zext i16 %cq.sroa.13.0.copyload to i32
  %arrayidx19 = getelementptr %struct.t4_cqe, ptr %19, i32 %idxprom18
  %21 = call ptr @memcpy(ptr %arrayidx15, ptr %arrayidx19, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cq.sroa.24.0.copyload)
  %tobool20.not = icmp eq i16 %cq.sroa.24.0.copyload, 0
  br i1 %tobool20.not, label %if.end4.if.end51_crit_edge, label %if.then21

if.end4.if.end51_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then21:                                        ; preds = %if.end4
  %sw_queue = getelementptr inbounds %struct.c4iw_cq, ptr %ibcq, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %sw_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw_queue, align 4
  %idxprom24 = zext i16 %cq.sroa.21.0.copyload to i32
  %arrayidx25 = getelementptr %struct.t4_cqe, ptr %23, i32 %idxprom24
  %24 = call ptr @memcpy(ptr %swcqes, ptr %arrayidx25, i32 64)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cq.sroa.24.0.copyload)
  %cmp28.not = icmp eq i16 %cq.sroa.24.0.copyload, 1
  br i1 %cmp28.not, label %if.then21.if.end51_crit_edge, label %if.then30

if.then21.if.end51_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then30:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cq.sroa.18.0.copyload)
  %cmp32.not = icmp eq i16 %cq.sroa.18.0.copyload, 0
  %spec.select154 = select i1 %cmp32.not, i16 %cq.sroa.8.0.copyload, i16 %cq.sroa.18.0.copyload
  %cond43 = add i16 %spec.select154, -1
  %arrayidx45 = getelementptr inbounds [2 x %struct.t4_cqe], ptr %swcqes, i32 0, i32 1
  %idxprom48 = zext i16 %cond43 to i32
  %arrayidx49 = getelementptr %struct.t4_cqe, ptr %23, i32 %idxprom48
  %25 = call ptr @memcpy(ptr %arrayidx45, ptr %arrayidx49, i32 64)
  br label %if.end51

if.end51:                                         ; preds = %if.then30, %if.then21.if.end51_crit_edge, %if.end4.if.end51_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %call.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.41, i32 noundef %cq.sroa.6.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end51.if.then.i.i_crit_edge

if.end51.if.then.i.i_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end.i:                                         ; preds = %if.end51
  %call1.i88 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.25, i32 noundef %cq.sroa.4.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %conv.i = zext i16 %cq.sroa.8.0.copyload to i32
  %call5.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.31, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.then.i.i_crit_edge

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  %call10.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.26, i32 noundef %idxprom18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end8.i.if.then.i.i_crit_edge

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end13.i:                                       ; preds = %if.end8.i
  %conv14.i = zext i16 %cq.sroa.29.0.copyload to i32
  %call15.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.42, i32 noundef %conv14.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i.if.then.i.i_crit_edge

if.end13.i.if.then.i.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end18.i:                                       ; preds = %if.end13.i
  %conv19.i = zext i16 %cq.sroa.21.0.copyload to i32
  %call20.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.43, i32 noundef %conv19.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end18.i.if.then.i.i_crit_edge

if.end18.i.if.then.i.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end23.i:                                       ; preds = %if.end18.i
  %conv24.i = zext i16 %cq.sroa.18.0.copyload to i32
  %call25.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.44, i32 noundef %conv24.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end23.i.if.then.i.i_crit_edge

if.end23.i.if.then.i.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end28.i:                                       ; preds = %if.end23.i
  %conv29.i = zext i16 %cq.sroa.24.0.copyload to i32
  %call30.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.45, i32 noundef %conv29.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end28.i.if.then.i.i_crit_edge

if.end28.i.if.then.i.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end33.i:                                       ; preds = %if.end28.i
  %call34.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.46, i32 noundef %cq.sroa.7114.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.if.then.i.i_crit_edge

if.end33.i.if.then.i.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end37.i:                                       ; preds = %if.end33.i
  %conv38.i = zext i8 %cq.sroa.30.0.copyload to i32
  %call39.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.47, i32 noundef %conv38.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end37.i.if.then.i.i_crit_edge

if.end37.i.if.then.i.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end42.i:                                       ; preds = %if.end37.i
  %conv43.i = zext i8 %cq.sroa.31.0.copyload to i32
  %call44.i = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.48, i32 noundef %conv43.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end42.i.if.then.i.i_crit_edge

if.end42.i.if.then.i.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end47.i:                                       ; preds = %if.end42.i
  %call48.i = tail call i32 @rdma_nl_put_driver_u64_hex(ptr noundef %msg, ptr noundef nonnull @.str.49, i64 noundef %cq.sroa.5113.0.copyload) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end51.i, label %if.end47.i.if.then.i.i_crit_edge

if.end47.i.if.then.i.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end51.i:                                       ; preds = %if.end47.i
  %conv52.i = zext i32 %cq.sroa.32131.0.copyload to i64
  %call53.i = tail call i32 @rdma_nl_put_driver_u64_hex(ptr noundef %msg, ptr noundef nonnull @.str.1, i64 noundef %conv52.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool54.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool54.not.i, label %if.end56, label %if.end51.i.if.then.i.i_crit_edge

if.end51.i.if.then.i.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end56:                                         ; preds = %if.end51.i
  br i1 %tobool20.not, label %if.end56.if.end60_crit_edge, label %if.end.i93

if.end56.if.end60_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end.i93:                                       ; preds = %if.end56
  %call.i92 = call fastcc i32 @fill_cqe(ptr noundef %msg, ptr noundef nonnull %swcqes, i16 noundef zeroext %cq.sroa.21.0.copyload, ptr noundef nonnull @.str.50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool1.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i93.if.then.i.i_crit_edge

if.end.i93.if.then.i.i_crit_edge:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end3.i:                                        ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %cq.sroa.24.0.copyload)
  %cmp.i94 = icmp eq i16 %cq.sroa.24.0.copyload, 1
  br i1 %cmp.i94, label %if.end3.i.if.end60_crit_edge, label %if.end7.i

if.end3.i.if.end60_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cq.sroa.18.0.copyload)
  %cmp9.not.i = icmp eq i16 %cq.sroa.18.0.copyload, 0
  %spec.select155 = select i1 %cmp9.not.i, i16 %cq.sroa.8.0.copyload, i16 %cq.sroa.18.0.copyload
  %cond.i = add i16 %spec.select155, -1
  %add.ptr.i = getelementptr inbounds %struct.t4_cqe, ptr %swcqes, i32 1
  %call16.i = call fastcc i32 @fill_cqe(ptr noundef %msg, ptr noundef %add.ptr.i, i16 noundef zeroext %cond.i, ptr noundef nonnull @.str.50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end7.i.if.end60_crit_edge, label %if.end7.i.if.then.i.i_crit_edge

if.end7.i.if.then.i.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end7.i.if.end60_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.end60:                                         ; preds = %if.end7.i.if.end60_crit_edge, %if.end3.i.if.end60_crit_edge, %if.end56.if.end60_crit_edge
  %call.i104 = call fastcc i32 @fill_cqe(ptr noundef %msg, ptr noundef nonnull %hwcqes, i16 noundef zeroext %cond, ptr noundef nonnull @.str.54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end.i108, label %if.end60.if.then.i.i_crit_edge

if.end60.if.then.i.i_crit_edge:                   ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end.i108:                                      ; preds = %if.end60
  %call8.i = call fastcc i32 @fill_cqe(ptr noundef %msg, ptr noundef %arrayidx15, i16 noundef zeroext %cq.sroa.13.0.copyload, ptr noundef nonnull @.str.54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end65, label %if.end.i108.if.then.i.i_crit_edge

if.end.i108.if.then.i.i_crit_edge:                ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end65:                                         ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i112 = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i112, ptr %4, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i108.if.then.i.i_crit_edge, %if.end60.if.then.i.i_crit_edge, %if.end7.i.if.then.i.i_crit_edge, %if.end.i93.if.then.i.i_crit_edge, %if.end51.i.if.then.i.i_crit_edge, %if.end47.i.if.then.i.i_crit_edge, %if.end42.i.if.then.i.i_crit_edge, %if.end37.i.if.then.i.i_crit_edge, %if.end33.i.if.then.i.i_crit_edge, %if.end28.i.if.then.i.i_crit_edge, %if.end23.i.if.then.i.i_crit_edge, %if.end18.i.if.then.i.i_crit_edge, %if.end13.i.if.then.i.i_crit_edge, %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge, %if.end51.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %30, %4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !117

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end65, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %swcqes) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %hwcqes) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c4iw_fill_res_mr_entry(ptr noundef %msg, ptr nocapture noundef readonly %ibmr) local_unnamed_addr #0 align 64 {
entry:
  %tpte = alloca %struct.fw_ri_tpte, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rhp = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 2
  %0 = ptrtoint ptr %rhp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rhp, align 4
  %stag1 = getelementptr inbounds %struct.c4iw_mr, ptr %ibmr, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %stag1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stag1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tpte) #5
  %4 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 2
  %6 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 3
  %7 = getelementptr inbounds %struct.fw_ri_tpte, ptr %tpte, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %8 = call ptr @memset(ptr %tpte, i32 255, i32 32)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 52, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not91 = icmp eq ptr %10, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not91
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ports = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8, i32 3
  %11 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call6 = call i32 @cxgb4_read_tpte(ptr noundef %14, i32 noundef %3, ptr noundef nonnull %tpte) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %lldi = getelementptr inbounds %struct.c4iw_dev, ptr %1, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lldi, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call6) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %shr = lshr i32 %3, 8
  %call13 = call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.15, i32 noundef %shr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.if.then.i.i_crit_edge

if.end12.if.then.i.i_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end16:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %tpte to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tpte, align 4
  %shr17 = lshr i32 %18, 31
  %call18 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.16, i32 noundef %shr17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.if.then.i.i_crit_edge

if.end16.if.then.i.i_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end21:                                         ; preds = %if.end16
  %and22 = and i32 %3, 255
  %call23 = call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.17, i32 noundef %and22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.if.then.i.i_crit_edge

if.end21.if.then.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end26:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %tpte to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tpte, align 4
  %shr28 = lshr i32 %20, 22
  %and29 = and i32 %shr28, 1
  %call30 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str, i32 noundef %and29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end26.if.then.i.i_crit_edge

if.end26.if.then.i.i_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end33:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %tpte to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tpte, align 4
  %and36 = and i32 %22, 1048575
  %call37 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.18, i32 noundef %and36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end33.if.then.i.i_crit_edge

if.end33.if.then.i.i_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end40:                                         ; preds = %if.end33
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %shr41 = lshr i32 %24, 28
  %call43 = call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.19, i32 noundef %shr41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end40.if.then.i.i_crit_edge

if.end40.if.then.i.i_crit_edge:                   ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end46:                                         ; preds = %if.end40
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %shr48 = lshr i32 %26, 20
  %and49 = and i32 %shr48, 31
  %call50 = call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.20, i32 noundef %and49) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.if.then.i.i_crit_edge

if.end46.if.then.i.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end53:                                         ; preds = %if.end46
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %7, align 4
  %conv = zext i32 %28 to i64
  %shl = shl nuw i64 %conv, 32
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %6, align 4
  %conv54 = zext i32 %30 to i64
  %or = or i64 %shl, %conv54
  %call55 = call i32 @rdma_nl_put_driver_u64(ptr noundef %msg, ptr noundef nonnull @.str.21, i64 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.if.then.i.i_crit_edge

if.end53.if.then.i.i_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end58:                                         ; preds = %if.end53
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 4
  %and60 = and i32 %32, 536870911
  %call61 = call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.22, i32 noundef %and60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.if.then.i.i_crit_edge

if.end58.if.then.i.i_crit_edge:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i

if.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %10, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end58.if.then.i.i_crit_edge, %if.end53.if.then.i.i_crit_edge, %if.end46.if.then.i.i_crit_edge, %if.end40.if.then.i.i_crit_edge, %if.end33.if.then.i.i_crit_edge, %if.end26.if.then.i.i_crit_edge, %if.end21.if.then.i.i_crit_edge, %if.end16.if.then.i.i_crit_edge, %if.end12.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %37, %10
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !117

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #5
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end64, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.end64 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %nla_nest_cancel.exit ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tpte) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_read_tpte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_put_driver_u32_hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_nl_put_driver_u64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_swsqe(ptr noundef %msg, i16 noundef zeroext %idx, ptr nocapture noundef readonly %sqe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %idx to i32
  %call = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.15, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.t4_swsqe, ptr %sqe, i32 0, i32 3
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opcode, align 4
  %call1 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.32, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %if.end
  %complete = getelementptr inbounds %struct.t4_swsqe, ptr %sqe, i32 0, i32 4
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %complete, align 8
  %call5 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.33, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %complete, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %if.end8.if.end14_crit_edge, label %land.lhs.true

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %cqe = getelementptr inbounds %struct.t4_swsqe, ptr %sqe, i32 0, i32 1
  %6 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cqe, align 8
  %shr = lshr i32 %7, 5
  %and = and i32 %shr, 31
  %call11 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.34, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true.err_crit_edge

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %signaled = getelementptr inbounds %struct.t4_swsqe, ptr %sqe, i32 0, i32 5
  %8 = ptrtoint ptr %signaled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %signaled, align 4
  %call15 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.35, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_crit_edge

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end18:                                         ; preds = %if.end14
  %flushed = getelementptr inbounds %struct.t4_swsqe, ptr %sqe, i32 0, i32 7
  %10 = ptrtoint ptr %flushed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flushed, align 4
  %call19 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.24, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.return_crit_edge, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end18.return_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

err:                                              ; preds = %if.end18.err_crit_edge, %if.end14.err_crit_edge, %land.lhs.true.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  br label %return

return:                                           ; preds = %err, %if.end18.return_crit_edge
  %retval.0 = phi i32 [ -90, %err ], [ 0, %if.end18.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_cqe(ptr noundef %msg, ptr nocapture noundef readonly %cqe, i16 noundef zeroext %idx, ptr noundef %qstr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %idx to i32
  %call = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef %qstr, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe, align 8
  %call1 = tail call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.51, i32 noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call5 = tail call i32 @rdma_nl_put_driver_u32(ptr noundef %msg, ptr noundef nonnull @.str.21, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end8:                                          ; preds = %if.end4
  %u = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 2
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 8
  %call9 = tail call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.52, i32 noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end12:                                         ; preds = %if.end8
  %wrid_low = getelementptr inbounds %struct.anon.223, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %wrid_low to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrid_low, align 4
  %call14 = tail call i32 @rdma_nl_put_driver_u32_hex(ptr noundef %msg, ptr noundef nonnull @.str.53, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.err_crit_edge

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end17:                                         ; preds = %if.end12
  %bits_type_ts = getelementptr inbounds %struct.t4_cqe, ptr %cqe, i32 0, i32 4
  %8 = ptrtoint ptr %bits_type_ts to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %bits_type_ts, align 8
  %call18 = tail call i32 @rdma_nl_put_driver_u64_hex(ptr noundef %msg, ptr noundef nonnull @.str.49, i64 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.return_crit_edge, label %if.end17.err_crit_edge

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

err:                                              ; preds = %if.end17.err_crit_edge, %if.end12.err_crit_edge, %if.end8.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge, %entry.err_crit_edge
  br label %return

return:                                           ; preds = %err, %if.end17.return_crit_edge
  %retval.0 = phi i32 [ -90, %err ], [ 0, %if.end17.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 234, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 236, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 238, i32 38}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 242, i32 35}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 244, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 247, i32 35}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 249, i32 35}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 251, i32 35}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 253, i32 35}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 256, i32 53}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 449, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @c4iw_fill_res_mr_entry._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @c4iw_fill_res_mr_entry._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 454, i32 38}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 456, i32 34}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 459, i32 38}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 464, i32 34}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 467, i32 38}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 470, i32 34}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 473, i32 34}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 476, i32 38}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 42, i32 34}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 44, i32 34}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 46, i32 34}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 48, i32 34}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 50, i32 34}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 52, i32 34}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 54, i32 34}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 56, i32 34}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 58, i32 34}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 100, i32 34}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 102, i32 34}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 105, i32 34}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 107, i32 34}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 70, i32 34}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 80, i32 34}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 82, i32 38}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 84, i32 34}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/net/netlink.h", i32 991, i32 3}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 273, i32 34}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 281, i32 34}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 283, i32 34}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 285, i32 34}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 287, i32 34}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 289, i32 34}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 291, i32 34}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 293, i32 34}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 295, i32 38}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 359, i32 31}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 312, i32 38}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 317, i32 38}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 320, i32 38}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/cxgb4/restrack.c", i32 339, i32 31}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"branch_weights", i32 1, i32 2000}
