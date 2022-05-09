; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_verbs.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.ib_wc = type { %union.anon.159, i32, i32, i32, i32, ptr, %union.anon.160, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.165, ptr, i32 }
%union.anon.165 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_event = type { ptr, %union.anon.155, i32 }
%union.anon.155 = type { ptr }

@ipoib_mcast_attach._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipoib_mcast_attach = private unnamed_addr constant [19 x i8] c"ipoib_mcast_attach\00", align 1
@ipoib_mcast_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ipoib_mcast_attach, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: failed to modify QP, ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_verbs.c\00", [53 x i8] zeroinitializer }, align 32
@ipoib_mcast_attach._entry_ptr = internal global ptr @ipoib_mcast_attach._entry, section ".printk_index", align 4
@ipoib_mcast_attach._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.ipoib_mcast_attach, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014%s: failed to attach to multicast group, ret = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ipoib_mcast_attach._entry_ptr.6 = internal global ptr @ipoib_mcast_attach._entry.4, section ".printk_index", align 4
@ipoib_init_qp._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_init_qp = private unnamed_addr constant [14 x i8] c"ipoib_init_qp\00", align 1
@ipoib_init_qp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.ipoib_init_qp, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: failed to modify QP to init, ret = %d\0A\00", [51 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry_ptr = internal global ptr @ipoib_init_qp._entry, section ".printk_index", align 4
@ipoib_init_qp._rs.8 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.ipoib_init_qp, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: failed to modify QP to RTR, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry_ptr.11 = internal global ptr @ipoib_init_qp._entry.9, section ".printk_index", align 4
@ipoib_init_qp._rs.12 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.ipoib_init_qp, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: failed to modify QP to RTS, ret = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry_ptr.15 = internal global ptr @ipoib_init_qp._entry.13, section ".printk_index", align 4
@ipoib_init_qp._rs.16 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.ipoib_init_qp, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Failed to modify QP to RESET state\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_init_qp._entry_ptr.19 = internal global ptr @ipoib_init_qp._entry.17, section ".printk_index", align 4
@ipoib_sendq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_recvq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_transport_dev_init.counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@ipoib_max_conn_qp = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ib_ipoib\00", [23 x i8] zeroinitializer }, align 32
@ipoib_transport_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: failed to create receive CQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipoib_transport_dev_init\00", [39 x i8] zeroinitializer }, align 32
@ipoib_transport_dev_init._entry_ptr = internal global ptr @ipoib_transport_dev_init._entry, section ".printk_index", align 4
@ipoib_transport_dev_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: failed to create send CQ\0A\00", [32 x i8] zeroinitializer }, align 32
@ipoib_transport_dev_init._entry_ptr.25 = internal global ptr @ipoib_transport_dev_init._entry.23, section ".printk_index", align 4
@ipoib_transport_dev_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: failed to create QP\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_transport_dev_init._entry_ptr.28 = internal global ptr @ipoib_transport_dev_init._entry.26, section ".printk_index", align 4
@ipoib_transport_dev_cleanup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_transport_dev_cleanup = private unnamed_addr constant [28 x i8] c"ipoib_transport_dev_cleanup\00", align 1
@ipoib_transport_dev_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.ipoib_transport_dev_cleanup, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: ib_qp_destroy failed\0A\00", [36 x i8] zeroinitializer }, align 32
@ipoib_transport_dev_cleanup._entry_ptr = internal global ptr @ipoib_transport_dev_cleanup._entry, section ".printk_index", align 4
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Event %d on device %s port %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipoib_event\00", [20 x i8] zeroinitializer }, align 32
@ipoib_event._entry_ptr = internal global ptr @ipoib_event._entry, section ".printk_index", align 4
@ipoib_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 32, i64 9, i64 10, i64 11, i64 12, i64 17, i64 18]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 63, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 71, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 110, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 119, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 129, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 138, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 161, i32 18 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 178, i32 18 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 181, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 190, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 214, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 261, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private constant [46 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 279, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 3936, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @ipoib_event._entry, ptr @ipoib_event._entry_ptr, ptr @ipoib_init_qp._entry, ptr @ipoib_init_qp._entry.13, ptr @ipoib_init_qp._entry.17, ptr @ipoib_init_qp._entry.9, ptr @ipoib_init_qp._entry_ptr, ptr @ipoib_init_qp._entry_ptr.11, ptr @ipoib_init_qp._entry_ptr.15, ptr @ipoib_init_qp._entry_ptr.19, ptr @ipoib_mcast_attach._entry, ptr @ipoib_mcast_attach._entry.4, ptr @ipoib_mcast_attach._entry_ptr, ptr @ipoib_mcast_attach._entry_ptr.6, ptr @ipoib_transport_dev_cleanup._entry, ptr @ipoib_transport_dev_cleanup._entry_ptr, ptr @ipoib_transport_dev_init._entry, ptr @ipoib_transport_dev_init._entry.23, ptr @ipoib_transport_dev_init._entry.26, ptr @ipoib_transport_dev_init._entry_ptr, ptr @ipoib_transport_dev_init._entry_ptr.25, ptr @ipoib_transport_dev_init._entry_ptr.28, ptr @ipoib_mcast_attach._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ipoib_mcast_attach._rs.3, ptr @.str.5, ptr @ipoib_init_qp._rs, ptr @.str.7, ptr @ipoib_init_qp._rs.8, ptr @.str.10, ptr @ipoib_init_qp._rs.12, ptr @.str.14, ptr @ipoib_init_qp._rs.16, ptr @.str.18, ptr @ipoib_transport_dev_init.counter, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @ipoib_transport_dev_cleanup._rs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_attach._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_attach._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._rs.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._rs.12 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._rs.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_init_qp._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_init.counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_cleanup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_transport_dev_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_mcast_attach(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %hca, ptr noundef %mgid, i16 noundef zeroext %mlid, i32 noundef %set_qkey, i32 noundef %qkey) local_unnamed_addr #0 align 64 {
entry:
  %pkey_index = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey_index) #7
  %2 = ptrtoint ptr %pkey_index to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %pkey_index, align 2, !annotation !75
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port, align 4
  %conv = zext i8 %6 to i32
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %pkey, align 2
  %call1 = call i32 @ib_find_pkey(ptr noundef %4, i32 noundef %conv, i16 noundef zeroext %8, ptr noundef nonnull %pkey_index) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %flags2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 3, ptr noundef %flags2) #7
  br label %out

if.end:                                           ; preds = %entry
  call void @_set_bit(i32 noundef 3, ptr noundef %flags2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_qkey)
  %tobool3.not = icmp eq i32 %set_qkey, 0
  br i1 %tobool3.not, label %if.end.if.end23_crit_edge, label %if.then4

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then4:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 216) #10
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then4.out_crit_edge, label %if.end8

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.then4
  %qkey9 = getelementptr inbounds %struct.ib_qp_attr, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %qkey9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %qkey, ptr %qkey9, align 8
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp, align 8
  %call10 = call i32 @ib_modify_qp(ptr noundef %12, ptr noundef nonnull %call7.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.if.end23_crit_edge, label %do.body

if.end8.if.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

do.body:                                          ; preds = %if.end8
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_attach._rs, ptr noundef nonnull @__func__.ipoib_mcast_attach) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev17, align 4
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %14, i32 noundef %call10) #11
  br label %out

if.end23:                                         ; preds = %if.end8.if.end23_crit_edge, %if.end.if.end23_crit_edge
  %qp_attr.0 = phi ptr [ %call7.i, %if.end8.if.end23_crit_edge ], [ null, %if.end.if.end23_crit_edge ]
  %qp24 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %15 = ptrtoint ptr %qp24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp24, align 8
  %call25 = call i32 @ib_attach_mcast(ptr noundef %16, ptr noundef %mgid, i16 noundef zeroext %mlid) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.out_crit_edge, label %do.body28

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body28:                                        ; preds = %if.end23
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_attach._rs.3, ptr noundef nonnull @__func__.ipoib_mcast_attach) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body28.out_crit_edge, label %do.end34

do.body28.out_crit_edge:                          ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev36, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %18, i32 noundef %call25) #11
  br label %out

out:                                              ; preds = %do.end34, %do.body28.out_crit_edge, %if.end23.out_crit_edge, %do.end, %do.body.out_crit_edge, %if.then4.out_crit_edge, %if.then
  %ret.0 = phi i32 [ -6, %if.then ], [ %call10, %do.end ], [ %call10, %do.body.out_crit_edge ], [ %call25, %do.end34 ], [ %call25, %do.body28.out_crit_edge ], [ 0, %if.end23.out_crit_edge ], [ -12, %if.then4.out_crit_edge ]
  %qp_attr.1 = phi ptr [ null, %if.then ], [ %call7.i, %do.end ], [ %call7.i, %do.body.out_crit_edge ], [ %qp_attr.0, %do.end34 ], [ %qp_attr.0, %do.body28.out_crit_edge ], [ %qp_attr.0, %if.end23.out_crit_edge ], [ null, %if.then4.out_crit_edge ]
  call void @kfree(ptr noundef %qp_attr.1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey_index) #7
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_attach_mcast(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_mcast_detach(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %hca, ptr noundef %mgid, i16 noundef zeroext %mlid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %call1 = tail call i32 @ib_detach_mcast(ptr noundef %3, ptr noundef %mgid, i16 noundef zeroext %mlid) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_detach_mcast(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_init_qp(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #7
  %2 = call ptr @memset(ptr %qp_attr, i32 255, i32 216)
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %qp_attr, align 8
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 4
  %7 = ptrtoint ptr %qkey to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qkey, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port, align 4
  %conv = zext i8 %9 to i32
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 19
  %10 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %port_num, align 4
  %pkey_index = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkey_index, align 8
  %pkey_index2 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 12
  %13 = ptrtoint ptr %pkey_index2 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %pkey_index2, align 8
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp, align 8
  %call3 = call i32 @ib_modify_qp(ptr noundef %15, ptr noundef nonnull %qp_attr, i32 noundef 113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end15, label %do.body

do.body:                                          ; preds = %if.end
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_init_qp._rs, ptr noundef nonnull @__func__.ipoib_init_qp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body.out_fail_crit_edge, label %do.end

do.body.out_fail_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev10, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %17, i32 noundef %call3) #11
  br label %out_fail

if.end15:                                         ; preds = %if.end
  %18 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %qp_attr, align 8
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 8
  %call18 = call i32 @ib_modify_qp(ptr noundef %20, ptr noundef nonnull %qp_attr, i32 noundef 81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end36, label %do.body21

do.body21:                                        ; preds = %if.end15
  %call22 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_init_qp._rs.8, ptr noundef nonnull @__func__.ipoib_init_qp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body21.out_fail_crit_edge, label %do.end27

do.body21.out_fail_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail

do.end27:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev29, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %22, i32 noundef %call18) #11
  br label %out_fail

if.end36:                                         ; preds = %if.end15
  %23 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %qp_attr, align 8
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 6
  %24 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %sq_psn, align 8
  %25 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %qp, align 8
  %call40 = call i32 @ib_modify_qp(ptr noundef %26, ptr noundef nonnull %qp_attr, i32 noundef 65601) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end36.cleanup_crit_edge, label %do.body43

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body43:                                        ; preds = %if.end36
  %call44 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_init_qp._rs.12, ptr noundef nonnull @__func__.ipoib_init_qp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.out_fail_crit_edge, label %do.end49

do.body43.out_fail_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_fail

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev51, align 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %28, i32 noundef %call40) #11
  br label %out_fail

out_fail:                                         ; preds = %do.end49, %do.body43.out_fail_crit_edge, %do.end27, %do.body21.out_fail_crit_edge, %do.end, %do.body.out_fail_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end ], [ %call3, %do.body.out_fail_crit_edge ], [ %call18, %do.end27 ], [ %call18, %do.body21.out_fail_crit_edge ], [ %call40, %do.end49 ], [ %call40, %do.body43.out_fail_crit_edge ]
  %29 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %qp_attr, align 8
  %30 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qp, align 8
  %call61 = call i32 @ib_modify_qp(ptr noundef %31, ptr noundef nonnull %qp_attr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %out_fail.cleanup_crit_edge, label %do.body64

out_fail.cleanup_crit_edge:                       ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body64:                                        ; preds = %out_fail
  %call65 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_init_qp._rs.16, ptr noundef nonnull @__func__.ipoib_init_qp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body64.cleanup_crit_edge, label %do.end70

do.body64.cleanup_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end70:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %dev72 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev72, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %33) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %do.body64.cleanup_crit_edge, %out_fail.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ %ret.0, %do.body64.cleanup_crit_edge ], [ %ret.0, %do.end70 ], [ %ret.0, %out_fail.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_transport_dev_init(ptr noundef %dev, ptr noundef %ca) local_unnamed_addr #0 align 64 {
entry:
  %init_attr = alloca %struct.ib_qp_init_attr, align 4
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr) #7
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 2
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 3
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6
  %2 = call ptr @memset(ptr %init_attr, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %3 = load i32, ptr @ipoib_sendq_size, align 4
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %5 = load i32, ptr @ipoib_recvq_size, align 4
  %6 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max_recv_wr, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 2
  %ca1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %ca1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ca1, align 8
  %max_send_sge2 = getelementptr inbounds %struct.ib_device, ptr %8, i32 0, i32 22, i32 10
  %9 = ptrtoint ptr %max_send_sge2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_send_sge2, align 8
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 18)
  %12 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max_send_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 4
  %14 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %max_inline_data, align 4
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 6, i32 5
  %15 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %max_rdma_ctxs, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 7
  %16 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 8
  %17 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %qp_type, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr, i32 0, i32 9
  %18 = call ptr @memset(ptr %create_flags, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #7
  %19 = getelementptr inbounds i8, ptr %cq_attr, i32 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %19, align 4
  %add = add i32 %5, 1
  %call3 = tail call i32 @ipoib_cm_dev_init(ptr noundef %dev) #7
  %21 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 -95, label %entry.if.end15_crit_edge
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %22 = load i32, ptr @ipoib_sendq_size, align 4
  %add4 = add i32 %22, %add
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 4
  %cm.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %24, i32 0, i32 55
  %25 = ptrtoint ptr %cm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cm.i, align 8
  %tobool.i.not = icmp eq ptr %26, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %27 = load i32, ptr @ipoib_recvq_size, align 4
  br i1 %tobool.i.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %add8 = add i32 %add4, 1
  %add9 = add i32 %add8, %27
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_max_conn_qp to i32))
  %28 = load i32, ptr @ipoib_max_conn_qp, align 4
  %mul = mul i32 %28, %27
  %add10 = add i32 %mul, %add4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then7, %entry.if.end15_crit_edge
  %size.0 = phi i32 [ %add9, %if.then7 ], [ %add10, %if.else ], [ %add, %entry.if.end15_crit_edge ]
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @ipoib_transport_dev_init.counter, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr nonnull @ipoib_transport_dev_init.counter, i32 1, i32 3, i32 1) #7
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ipoib_transport_dev_init.counter, ptr nonnull @ipoib_transport_dev_init.counter, i32 1, ptr nonnull elementtype(i32) @ipoib_transport_dev_init.counter) #7, !srcloc !77
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !78
  %mul17 = shl i32 %asmresult.i.i.i.i, 1
  %30 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size.0, ptr %cq_attr, align 4
  %31 = ptrtoint ptr %ca1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ca1, align 8
  %num_comp_vectors = getelementptr inbounds %struct.ib_device, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_comp_vectors, align 4
  %rem = srem i32 %mul17, %34
  %comp_vector = getelementptr inbounds %struct.ib_cq_init_attr, ptr %cq_attr, i32 0, i32 1
  %35 = ptrtoint ptr %comp_vector to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rem, ptr %comp_vector, align 4
  %call20 = call ptr @__ib_create_cq(ptr noundef %32, ptr noundef nonnull @ipoib_ib_rx_completion, ptr noundef null, ptr noundef %1, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.20) #7
  %recv_cq21 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 28
  %36 = ptrtoint ptr %recv_cq21 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call20, ptr %recv_cq21, align 8
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ib_device, ptr %ca, i32 0, i32 2
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #11
  br label %out_cm_dev_cleanup

if.end27:                                         ; preds = %if.end15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %37 = load i32, ptr @ipoib_sendq_size, align 4
  %38 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cq_attr, align 4
  %add29 = or i32 %mul17, 1
  %39 = ptrtoint ptr %ca1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ca1, align 8
  %num_comp_vectors31 = getelementptr inbounds %struct.ib_device, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %num_comp_vectors31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_comp_vectors31, align 4
  %rem32 = srem i32 %add29, %42
  %43 = ptrtoint ptr %comp_vector to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %rem32, ptr %comp_vector, align 4
  %call35 = call ptr @__ib_create_cq(ptr noundef %40, ptr noundef nonnull @ipoib_ib_tx_completion, ptr noundef null, ptr noundef %1, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.20) #7
  %send_cq36 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 29
  %44 = ptrtoint ptr %send_cq36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call35, ptr %send_cq36, align 4
  %cmp.i190 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i190, label %do.end42, label %if.end47

do.end42:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %name44 = getelementptr inbounds %struct.ib_device, ptr %ca, i32 0, i32 2
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name44) #11
  br label %out_free_recv_cq

if.end47:                                         ; preds = %if.end27
  %45 = ptrtoint ptr %recv_cq21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %recv_cq21, align 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %48, i32 0, i32 1, i32 12
  %49 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = call i32 %50(ptr noundef %46, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.out_free_send_cq_crit_edge

if.end47.out_free_send_cq_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_send_cq

if.end52:                                         ; preds = %if.end47
  %51 = ptrtoint ptr %send_cq36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %send_cq36, align 4
  %53 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %send_cq, align 4
  %54 = ptrtoint ptr %recv_cq21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %recv_cq21, align 8
  %56 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %recv_cq, align 4
  %hca_caps = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 59
  %57 = ptrtoint ptr %hca_caps to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %hca_caps, align 8
  %and = and i64 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool57.not = icmp eq i64 %and, 0
  br i1 %tobool57.not, label %if.end52.if.end60_crit_edge, label %if.then58

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %create_flags, align 4
  %or = or i32 %60, 1
  store i32 %or, ptr %create_flags, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end52.if.end60_crit_edge
  %61 = ptrtoint ptr %hca_caps to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %hca_caps, align 8
  %and62 = and i64 %62, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and62)
  %tobool63.not = icmp eq i64 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end67_crit_edge, label %if.then64

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %create_flags, align 4
  %or66 = or i32 %64, 2
  store i32 %or66, ptr %create_flags, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60.if.end67_crit_edge
  %65 = ptrtoint ptr %hca_caps to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %hca_caps, align 8
  %and69 = and i64 %66, 536870912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and69)
  %tobool70.not = icmp eq i64 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end74_crit_edge, label %if.then71

if.end67.if.end74_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %create_flags, align 4
  %or73 = or i32 %68, 32
  store i32 %or73, ptr %create_flags, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67.if.end74_crit_edge
  %69 = ptrtoint ptr %hca_caps to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %hca_caps, align 8
  %and76 = and i64 %70, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and76)
  %tobool77.not = icmp eq i64 %and76, 0
  br i1 %tobool77.not, label %if.end74.if.end81_crit_edge, label %if.then78

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %create_flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %create_flags, align 4
  %or80 = or i32 %72, 128
  store i32 %or80, ptr %create_flags, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end74.if.end81_crit_edge
  %pd = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 27
  %73 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pd, align 4
  %call.i191 = call ptr @ib_create_qp_kernel(ptr noundef %74, ptr noundef nonnull %init_attr, ptr noundef nonnull @.str.20) #7
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %75 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i191, ptr %qp, align 8
  %cmp.i192 = icmp ugt ptr %call.i191, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end88, label %if.end93

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  %name90 = getelementptr inbounds %struct.ib_device, ptr %ca, i32 0, i32 2
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name90) #11
  br label %out_free_send_cq

if.end93:                                         ; preds = %if.end81
  %76 = ptrtoint ptr %send_cq36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %send_cq36, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %req_notify_cq.i193 = getelementptr inbounds %struct.ib_device, ptr %79, i32 0, i32 1, i32 12
  %80 = ptrtoint ptr %req_notify_cq.i193 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %req_notify_cq.i193, align 4
  %call.i194 = call i32 %81(ptr noundef %77, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool96.not = icmp eq i32 %call.i194, 0
  br i1 %tobool96.not, label %for.body.preheader, label %if.end93.out_free_send_cq_crit_edge

if.end93.out_free_send_cq_crit_edge:              ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_send_cq

for.body.preheader:                               ; preds = %if.end93
  %82 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pd, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %lkey = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 0, i32 2
  %86 = ptrtoint ptr %lkey to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %lkey, align 4
  %87 = load i32, ptr %83, align 4
  %lkey.1 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 1, i32 2
  %88 = ptrtoint ptr %lkey.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %lkey.1, align 4
  %89 = load i32, ptr %83, align 4
  %lkey.2 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 2, i32 2
  %90 = ptrtoint ptr %lkey.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %lkey.2, align 4
  %91 = load i32, ptr %83, align 4
  %lkey.3 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 3, i32 2
  %92 = ptrtoint ptr %lkey.3 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %lkey.3, align 4
  %93 = load i32, ptr %83, align 4
  %lkey.4 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 4, i32 2
  %94 = ptrtoint ptr %lkey.4 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %lkey.4, align 4
  %95 = load i32, ptr %83, align 4
  %lkey.5 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 5, i32 2
  %96 = ptrtoint ptr %lkey.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %lkey.5, align 4
  %97 = load i32, ptr %83, align 4
  %lkey.6 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 6, i32 2
  %98 = ptrtoint ptr %lkey.6 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %lkey.6, align 4
  %99 = load i32, ptr %83, align 4
  %lkey.7 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 7, i32 2
  %100 = ptrtoint ptr %lkey.7 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %lkey.7, align 4
  %101 = load i32, ptr %83, align 4
  %lkey.8 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 8, i32 2
  %102 = ptrtoint ptr %lkey.8 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %lkey.8, align 4
  %103 = load i32, ptr %83, align 4
  %lkey.9 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 9, i32 2
  %104 = ptrtoint ptr %lkey.9 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %lkey.9, align 4
  %105 = load i32, ptr %83, align 4
  %lkey.10 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 10, i32 2
  %106 = ptrtoint ptr %lkey.10 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %lkey.10, align 4
  %107 = load i32, ptr %83, align 4
  %lkey.11 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 11, i32 2
  %108 = ptrtoint ptr %lkey.11 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %lkey.11, align 4
  %109 = load i32, ptr %83, align 4
  %lkey.12 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 12, i32 2
  %110 = ptrtoint ptr %lkey.12 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %lkey.12, align 4
  %111 = load i32, ptr %83, align 4
  %lkey.13 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 13, i32 2
  %112 = ptrtoint ptr %lkey.13 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %lkey.13, align 4
  %113 = load i32, ptr %83, align 4
  %lkey.14 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 14, i32 2
  %114 = ptrtoint ptr %lkey.14 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %lkey.14, align 4
  %115 = load i32, ptr %83, align 4
  %lkey.15 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 15, i32 2
  %116 = ptrtoint ptr %lkey.15 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %lkey.15, align 4
  %117 = load i32, ptr %83, align 4
  %lkey.16 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 16, i32 2
  %118 = ptrtoint ptr %lkey.16 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %lkey.16, align 4
  %119 = load i32, ptr %83, align 4
  %lkey.17 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 17, i32 2
  %120 = ptrtoint ptr %lkey.17 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %lkey.17, align 4
  %opcode = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 4
  %121 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %opcode, align 8
  %tx_sge101 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43
  %sg_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 2
  %122 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %tx_sge101, ptr %sg_list, align 8
  %send_flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 5
  %123 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %send_flags, align 4
  %124 = load i32, ptr %83, align 4
  %rx_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 47
  %lkey110 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 47, i32 0, i32 2
  %125 = ptrtoint ptr %lkey110 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %lkey110, align 4
  %max_ib_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %126 = ptrtoint ptr %max_ib_mtu to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %max_ib_mtu, align 4
  %add111 = add i32 %127, 40
  %length = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 47, i32 0, i32 1
  %128 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %add111, ptr %length, align 8
  %rx_wr = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 46
  %num_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 46, i32 3
  %129 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %num_sge, align 4
  %130 = ptrtoint ptr %rx_wr to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %rx_wr, align 8
  %sg_list118 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 46, i32 2
  %131 = ptrtoint ptr %sg_list118 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %rx_sge, ptr %sg_list118, align 8
  %132 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %max_send_sge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %133)
  %cmp121 = icmp ugt i32 %133, 1
  br i1 %cmp121, label %if.then122, label %for.body.preheader.if.end124_crit_edge

for.body.preheader.if.end124_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then122:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %134 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %features, align 16
  %or123 = or i64 %135, 1
  store i64 %or123, ptr %features, align 16
  br label %if.end124

if.end124:                                        ; preds = %if.then122, %for.body.preheader.if.end124_crit_edge
  %max_send_sge127 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 61
  %136 = ptrtoint ptr %max_send_sge127 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %133, ptr %max_send_sge127, align 4
  br label %cleanup

out_free_send_cq:                                 ; preds = %if.end93.out_free_send_cq_crit_edge, %do.end88, %if.end47.out_free_send_cq_crit_edge
  %137 = ptrtoint ptr %send_cq36 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %send_cq36, align 4
  %call.i195 = call i32 @ib_destroy_cq_user(ptr noundef %138, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i, label %out_free_send_cq.out_free_recv_cq_crit_edge, label %land.rhs.i

out_free_send_cq.out_free_recv_cq_crit_edge:      ; preds = %out_free_send_cq
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_recv_cq

land.rhs.i:                                       ; preds = %out_free_send_cq
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.out_free_recv_cq_crit_edge, label %if.then.i, !prof !79

land.rhs.i.out_free_recv_cq_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_recv_cq

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.33) #7
  br label %out_free_recv_cq

out_free_recv_cq:                                 ; preds = %if.then.i, %land.rhs.i.out_free_recv_cq_crit_edge, %out_free_send_cq.out_free_recv_cq_crit_edge, %do.end42
  %139 = ptrtoint ptr %recv_cq21 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %recv_cq21, align 8
  %call.i196 = call i32 @ib_destroy_cq_user(ptr noundef %140, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool.not.i197 = icmp eq i32 %call.i196, 0
  br i1 %tobool.not.i197, label %out_free_recv_cq.out_cm_dev_cleanup_crit_edge, label %land.rhs.i199

out_free_recv_cq.out_cm_dev_cleanup_crit_edge:    ; preds = %out_free_recv_cq
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_cm_dev_cleanup

land.rhs.i199:                                    ; preds = %out_free_recv_cq
  %.b38.i198 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i198, label %land.rhs.i199.out_cm_dev_cleanup_crit_edge, label %if.then.i200, !prof !79

land.rhs.i199.out_cm_dev_cleanup_crit_edge:       ; preds = %land.rhs.i199
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_cm_dev_cleanup

if.then.i200:                                     ; preds = %land.rhs.i199
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.33) #7
  br label %out_cm_dev_cleanup

out_cm_dev_cleanup:                               ; preds = %if.then.i200, %land.rhs.i199.out_cm_dev_cleanup_crit_edge, %out_free_recv_cq.out_cm_dev_cleanup_crit_edge, %do.end
  call void @ipoib_cm_dev_cleanup(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %out_cm_dev_cleanup, %if.end124, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %out_cm_dev_cleanup ], [ 0, %if.end124 ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_cm_dev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_rx_completion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_ib_tx_completion(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_dev_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_transport_dev_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end13_crit_edge, label %do.body

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %if.then
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_transport_dev_cleanup._rs, ptr noundef nonnull @__func__.ipoib_transport_dev_cleanup) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %6 = ptrtoint ptr %qp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %qp, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %entry.if.end15_crit_edge
  %send_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %send_cq, align 4
  %call.i21 = tail call i32 @ib_destroy_cq_user(ptr noundef %8, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i, label %if.end15.ib_destroy_cq.exit_crit_edge, label %land.rhs.i

if.end15.ib_destroy_cq.exit_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_destroy_cq.exit

land.rhs.i:                                       ; preds = %if.end15
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_cq.exit_crit_edge, label %if.then.i, !prof !79

land.rhs.i.ib_destroy_cq.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_destroy_cq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.33) #7
  br label %ib_destroy_cq.exit

ib_destroy_cq.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_destroy_cq.exit_crit_edge, %if.end15.ib_destroy_cq.exit_crit_edge
  %recv_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 28
  %9 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %recv_cq, align 8
  %call.i22 = tail call i32 @ib_destroy_cq_user(ptr noundef %10, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %ib_destroy_cq.exit.ib_destroy_cq.exit27_crit_edge, label %land.rhs.i25

ib_destroy_cq.exit.ib_destroy_cq.exit27_crit_edge: ; preds = %ib_destroy_cq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_destroy_cq.exit27

land.rhs.i25:                                     ; preds = %ib_destroy_cq.exit
  %.b38.i24 = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i24, label %land.rhs.i25.ib_destroy_cq.exit27_crit_edge, label %if.then.i26, !prof !79

land.rhs.i25.ib_destroy_cq.exit27_crit_edge:      ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %ib_destroy_cq.exit27

if.then.i26:                                      ; preds = %land.rhs.i25
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.33) #7
  br label %ib_destroy_cq.exit27

ib_destroy_cq.exit27:                             ; preds = %if.then.i26, %land.rhs.i25.ib_destroy_cq.exit27_crit_edge, %ib_destroy_cq.exit.ib_destroy_cq.exit27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_event(ptr noundef %handler, ptr nocapture noundef readonly %record) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %element = getelementptr inbounds %struct.ib_event, ptr %record, i32 0, i32 1
  %0 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %element, align 4
  %port = getelementptr i8, ptr %handler, i32 -4860
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %4 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end11_crit_edge

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end:                                           ; preds = %do.body
  %dev = getelementptr i8, ptr %handler, i32 -6188
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %event = getelementptr inbounds %struct.ib_event, ptr %record, i32 0, i32 2
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event, align 4
  %9 = ptrtoint ptr %record to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %record, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 13, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %12, %do.end.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %6, i32 noundef %8, ptr noundef %retval.0.i, i32 noundef %1) #11
  br label %do.end11

do.end11:                                         ; preds = %dev_name.exit, %do.body.do.end11_crit_edge
  %event12 = getelementptr inbounds %struct.ib_event, ptr %record, i32 0, i32 2
  %16 = ptrtoint ptr %event12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event12, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %17, label %do.end11.cleanup_crit_edge [
    i32 17, label %do.end11.cleanup.sink.split_crit_edge
    i32 10, label %do.end11.if.then27_crit_edge
    i32 9, label %do.end11.if.then27_crit_edge66
    i32 11, label %do.end11.if.then27_crit_edge67
    i32 12, label %if.then33
    i32 18, label %land.lhs.true
  ]

do.end11.if.then27_crit_edge67:                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

do.end11.if.then27_crit_edge66:                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

do.end11.if.then27_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

do.end11.cleanup.sink.split_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27:                                        ; preds = %do.end11.if.then27_crit_edge, %do.end11.if.then27_crit_edge66, %do.end11.if.then27_crit_edge67
  br label %cleanup.sink.split

if.then33:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %do.end11
  %flags = getelementptr i8, ptr %handler, i32 -5728
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags, align 4
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %if.then33, %if.then27, %do.end11.cleanup.sink.split_crit_edge
  %.sink65 = phi i32 [ -5152, %if.then33 ], [ -5196, %if.then27 ], [ -5240, %do.end11.cleanup.sink.split_crit_edge ], [ -5240, %land.lhs.true.cleanup.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_workqueue to i32))
  %22 = load ptr, ptr @ipoib_workqueue, align 4
  %flush_light = getelementptr i8, ptr %handler, i32 %.sink65
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %flush_light) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %do.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 63, i32 4}
!2 = !{ptr @ipoib_mcast_attach._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.ipoib_mcast_attach, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ipoib_mcast_attach._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ipoib_mcast_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @ipoib_mcast_attach._rs.3, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 71, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipoib_mcast_attach._entry.4, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ipoib_mcast_attach._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @ipoib_init_qp._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 110, i32 3}
!15 = !{ptr @__func__.ipoib_init_qp, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ipoib_init_qp._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ipoib_init_qp._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @ipoib_init_qp._rs.8, !20, !"_rs", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 119, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipoib_init_qp._entry.9, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipoib_init_qp._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @ipoib_init_qp._rs.12, !25, !"_rs", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 129, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ipoib_init_qp._entry.13, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ipoib_init_qp._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ipoib_init_qp._rs.16, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 138, i32 3}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ipoib_init_qp._entry.17, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ipoib_init_qp._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ipoib_transport_dev_init.counter, !35, !"counter", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 161, i32 18}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 178, i32 18}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 181, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ipoib_transport_dev_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ipoib_transport_dev_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 190, i32 3}
!45 = !{ptr @ipoib_transport_dev_init._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipoib_transport_dev_init._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 214, i32 3}
!49 = !{ptr @ipoib_transport_dev_init._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ipoib_transport_dev_init._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ipoib_transport_dev_cleanup._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 261, i32 4}
!53 = !{ptr @__func__.ipoib_transport_dev_cleanup, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ipoib_transport_dev_cleanup._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ipoib_transport_dev_cleanup._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_verbs.c", i32 279, i32 2}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ipoib_event._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipoib_event._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 2148672321}
!77 = !{i64 2148587606, i64 2148587638, i64 2148587667, i64 2148587701, i64 2148587732, i64 2148587755}
!78 = !{i64 2148672550}
!79 = !{!"branch_weights", i32 2000, i32 1}
