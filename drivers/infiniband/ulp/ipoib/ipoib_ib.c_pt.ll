; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_ib.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_ib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipoib_ah = type { ptr, ptr, %struct.list_head, %struct.kref, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.ipoib_tx_buf = type { ptr, [18 x i64] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ipoib_rx_buf = type { ptr, [2 x i64] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.152 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_grh = type { i32, i16, i8, i8, %union.ib_gid, %union.ib_gid }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ipoib_qp_state_validate = type { %struct.work_struct, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_data_debug_level = internal constant [26 x i8] c"ib_ipoib.data_debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@data_debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_data_debug_level = internal constant %struct.kernel_param { ptr @__param_str_data_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @data_debug_level } }, section "__param", align 4
@__UNIQUE_ID_data_debug_leveltype520 = internal constant [39 x i8] c"ib_ipoib.parmtype=data_debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_data_debug_level521 = internal constant [69 x i8] c"ib_ipoib.parm=data_debug_level:Enable data path debug tracing if > 0\00", section ".modinfo", align 1
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_create_ah._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: Created ah %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipoib_create_ah\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_ib.c\00", [56 x i8] zeroinitializer }, align 32
@ipoib_create_ah._entry_ptr = internal global ptr @ipoib_create_ah._entry, section ".printk_index", align 4
@ipoib_rx_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Got unexpected wqe id\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipoib_rx_poll\00", [18 x i8] zeroinitializer }, align 32
@ipoib_rx_poll._entry_ptr = internal global ptr @ipoib_rx_poll._entry, section ".printk_index", align 4
@ipoib_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipoib_send = private unnamed_addr constant [11 x i8] c"ipoib_send\00", align 1
@ipoib_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ipoib_send, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: linear data too small\0A\00", [35 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr = internal global ptr @ipoib_send._entry, section ".printk_index", align 4
@ipoib_send._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_send._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.ipoib_send, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: packet len %d (> %d) too long to send, dropping\0A\00", [41 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.10 = internal global ptr @ipoib_send._entry.8, section ".printk_index", align 4
@ipoib_send._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_send._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ipoib_send, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: skb could not be linearized\0A\00", [61 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.14 = internal global ptr @ipoib_send._entry.12, section ".printk_index", align 4
@ipoib_send._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_send._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.ipoib_send, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: too many frags after skb linearize\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.18 = internal global ptr @ipoib_send._entry.16, section ".printk_index", align 4
@ipoib_send._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.ipoib_send, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: sending packet, length=%d address=%p dqpn=0x%06x\0A\00", [40 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.21 = internal global ptr @ipoib_send._entry.19, section ".printk_index", align 4
@ipoib_sendq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_send._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @__func__.ipoib_send, ptr @.str.2, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: TX ring full, stopping kernel net queue\0A\00", [49 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.24 = internal global ptr @ipoib_send._entry.22, section ".printk_index", align 4
@ipoib_send._rs.25 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_send._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @__func__.ipoib_send, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: request notify on send CQ failed\0A\00", [56 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.28 = internal global ptr @ipoib_send._entry.26, section ".printk_index", align 4
@ipoib_send._rs.29 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_send._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.ipoib_send, ptr @.str.2, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: post_send failed, error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_send._entry_ptr.32 = internal global ptr @ipoib_send._entry.30, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipoib_ib_dev_stop_default._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_ib_dev_stop_default = private unnamed_addr constant [26 x i8] c"ipoib_ib_dev_stop_default\00", align 1
@ipoib_ib_dev_stop_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @__func__.ipoib_ib_dev_stop_default, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: timing out; %d sends %d receives not completed\0A\00", [42 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_stop_default._entry_ptr = internal global ptr @ipoib_ib_dev_stop_default._entry, section ".printk_index", align 4
@ipoib_recvq_size = external dso_local local_unnamed_addr global i32, align 4
@ipoib_ib_dev_stop_default._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.ipoib_ib_dev_stop_default, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: All sends and receives done.\0A\00", [60 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_stop_default._entry_ptr.36 = internal global ptr @ipoib_ib_dev_stop_default._entry.34, section ".printk_index", align 4
@ipoib_ib_dev_stop_default._rs.37 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_stop_default._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @__func__.ipoib_ib_dev_stop_default, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Failed to modify QP to RESET state\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_stop_default._entry_ptr.40 = internal global ptr @ipoib_ib_dev_stop_default._entry.38, section ".printk_index", align 4
@ipoib_ib_dev_open_default._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_ib_dev_open_default = private unnamed_addr constant [26 x i8] c"ipoib_ib_dev_open_default\00", align 1
@ipoib_ib_dev_open_default._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.ipoib_ib_dev_open_default, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: ipoib_init_qp returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open_default._entry_ptr = internal global ptr @ipoib_ib_dev_open_default._entry, section ".printk_index", align 4
@ipoib_ib_dev_open_default._rs.42 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open_default._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.ipoib_ib_dev_open_default, ptr @.str.2, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: ipoib_ib_post_receives returned %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open_default._entry_ptr.45 = internal global ptr @ipoib_ib_dev_open_default._entry.43, section ".printk_index", align 4
@ipoib_ib_dev_open_default._rs.46 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open_default._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @__func__.ipoib_ib_dev_open_default, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: ipoib_cm_dev_open returned %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open_default._entry_ptr.49 = internal global ptr @ipoib_ib_dev_open_default._entry.47, section ".printk_index", align 4
@ipoib_ib_dev_open._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_ib_dev_open = private unnamed_addr constant [18 x i8] c"ipoib_ib_dev_open\00", align 1
@ipoib_ib_dev_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.ipoib_ib_dev_open, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: P_Key 0x%04x is %s\0A\00", [38 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open._entry_ptr = internal global ptr @ipoib_ib_dev_open._entry, section ".printk_index", align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not found\00", [22 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.ipoib_ib_dev_open, ptr @.str.2, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: Failed to open dev\0A\00", [38 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_open._entry_ptr.55 = internal global ptr @ipoib_ib_dev_open._entry.53, section ".printk_index", align 4
@ipoib_ib_dev_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: PKEY is not assigned.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ipoib_ib_dev_up\00", [16 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_up._entry_ptr = internal global ptr @ipoib_ib_dev_up._entry, section ".printk_index", align 4
@ipoib_ib_dev_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: downing ib_dev\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipoib_ib_dev_down\00", [46 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_down._entry_ptr = internal global ptr @ipoib_ib_dev_down._entry, section ".printk_index", align 4
@ipoib_drain_cq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.60, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipoib_drain_cq\00", [17 x i8] zeroinitializer }, align 32
@ipoib_drain_cq._entry_ptr = internal global ptr @ipoib_drain_cq._entry, section ".printk_index", align 4
@ipoib_ib_dev_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: cleaning up ib_dev\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipoib_ib_dev_cleanup\00", [43 x i8] zeroinitializer }, align 32
@ipoib_ib_dev_cleanup._entry_ptr = internal global ptr @ipoib_ib_dev_cleanup._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@ipoib_ib_handle_rx_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: recv completion: id %d, status: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_ib_handle_rx_wc\00", [42 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry_ptr = internal global ptr @ipoib_ib_handle_rx_wc._entry, section ".printk_index", align 4
@ipoib_ib_handle_rx_wc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: recv completion event with wrid %d (> %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry_ptr.69 = internal global ptr @ipoib_ib_handle_rx_wc._entry.67, section ".printk_index", align 4
@ipoib_ib_handle_rx_wc._rs.70 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: failed recv event (status=%d, wrid=%d vend_err %#x)\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry_ptr.73 = internal global ptr @ipoib_ib_handle_rx_wc._entry.71, section ".printk_index", align 4
@ipoib_ib_handle_rx_wc._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.66, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: received %d bytes, SLID 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry_ptr.76 = internal global ptr @ipoib_ib_handle_rx_wc._entry.74, section ".printk_index", align 4
@ipoib_ib_handle_rx_wc._rs.77 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.66, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: ipoib_ib_post_receive failed for buf %d\0A\00", [49 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_rx_wc._entry_ptr.80 = internal global ptr @ipoib_ib_handle_rx_wc._entry.78, section ".printk_index", align 4
@ipoib_ib_post_receive._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_ib_post_receive = private unnamed_addr constant [22 x i8] c"ipoib_ib_post_receive\00", align 1
@ipoib_ib_post_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.ipoib_ib_post_receive, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: receive failed for buf %d (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_ib_post_receive._entry_ptr = internal global ptr @ipoib_ib_post_receive._entry, section ".printk_index", align 4
@ipoib_ib_handle_tx_wc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: send completion: id %d, status: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_ib_handle_tx_wc\00", [42 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_tx_wc._entry_ptr = internal global ptr @ipoib_ib_handle_tx_wc._entry, section ".printk_index", align 4
@ipoib_ib_handle_tx_wc._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_tx_wc._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014%s: send completion event with wrid %d (> %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_tx_wc._entry_ptr.86 = internal global ptr @ipoib_ib_handle_tx_wc._entry.84, section ".printk_index", align 4
@ipoib_ib_handle_tx_wc._rs.87 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_tx_wc._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: failed send event (status=%d, wrid=%d vend_err %#x)\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_ib_handle_tx_wc._entry_ptr.90 = internal global ptr @ipoib_ib_handle_tx_wc._entry.88, section ".printk_index", align 4
@ipoib_ib_handle_tx_wc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&qp_work->work)\00", [62 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_qp_state_validate_work = private unnamed_addr constant [29 x i8] c"ipoib_qp_state_validate_work\00", align 1
@ipoib_qp_state_validate_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @__func__.ipoib_qp_state_validate_work, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: %s: Failed to query QP ret: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._entry_ptr = internal global ptr @ipoib_qp_state_validate_work._entry, section ".printk_index", align 4
@ipoib_qp_state_validate_work._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @__func__.ipoib_qp_state_validate_work, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: QP: 0x%x is in state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._entry_ptr.95 = internal global ptr @ipoib_qp_state_validate_work._entry.93, section ".printk_index", align 4
@ipoib_qp_state_validate_work._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @__func__.ipoib_qp_state_validate_work, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014failed(%d) modify QP:0x%x SQE->RTS\0A\00", [58 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._entry_ptr.98 = internal global ptr @ipoib_qp_state_validate_work._entry.96, section ".printk_index", align 4
@ipoib_qp_state_validate_work._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @__func__.ipoib_qp_state_validate_work, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: QP: 0x%x moved from IB_QPS_SQE to IB_QPS_RTS\0A\00", [44 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._entry_ptr.101 = internal global ptr @ipoib_qp_state_validate_work._entry.99, section ".printk_index", align 4
@ipoib_qp_state_validate_work._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @__func__.ipoib_qp_state_validate_work, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014QP (%d) will stay in state: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_qp_state_validate_work._entry_ptr.104 = internal global ptr @ipoib_qp_state_validate_work._entry.102, section ".printk_index", align 4
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@check_qp_movement_and_print._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.check_qp_movement_and_print = private unnamed_addr constant [28 x i8] c"check_qp_movement_and_print\00", align 1
@check_qp_movement_and_print._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @__func__.check_qp_movement_and_print, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: %s: Failed to query QP\0A\00", [34 x i8] zeroinitializer }, align 32
@check_qp_movement_and_print._entry_ptr = internal global ptr @check_qp_movement_and_print._entry, section ".printk_index", align 4
@check_qp_movement_and_print._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @__func__.check_qp_movement_and_print, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: Failed modify QP, IB_QPS_RESET to IB_QPS_ERR, acceptable\0A\00", [32 x i8] zeroinitializer }, align 32
@check_qp_movement_and_print._entry_ptr.110 = internal global ptr @check_qp_movement_and_print._entry.108, section ".printk_index", align 4
@check_qp_movement_and_print._rs.111 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@check_qp_movement_and_print._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @__func__.check_qp_movement_and_print, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: Failed to modify QP to state: %d from state: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@check_qp_movement_and_print._entry_ptr.114 = internal global ptr @check_qp_movement_and_print._entry.112, section ".printk_index", align 4
@ipoib_ib_post_receives._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_ib_post_receives = private unnamed_addr constant [23 x i8] c"ipoib_ib_post_receives\00", align 1
@ipoib_ib_post_receives._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @__func__.ipoib_ib_post_receives, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: failed to allocate receive buffer %d\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_ib_post_receives._entry_ptr = internal global ptr @ipoib_ib_post_receives._entry, section ".printk_index", align 4
@ipoib_ib_post_receives._rs.116 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_ib_post_receives._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @__func__.ipoib_ib_post_receives, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_ib_post_receives._entry_ptr.118 = internal global ptr @ipoib_ib_post_receives._entry.117, section ".printk_index", align 4
@__ipoib_ib_dev_flush._entry = internal constant %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 1174, ptr null, ptr null }, align 1
@.str.119 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: Not flushing - IPOIB_FLAG_INITIALIZED not set.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__ipoib_ib_dev_flush\00", [43 x i8] zeroinitializer }, align 32
@__ipoib_ib_dev_flush._entry_ptr = internal global ptr @__ipoib_ib_dev_flush._entry, section ".printk_index", align 4
@__ipoib_ib_dev_flush._entry.121 = internal constant %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.2, i32 1187, ptr null, ptr null }, align 1
@.str.122 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: Not flushing - IPOIB_FLAG_ADMIN_UP not set.\0A\00", [45 x i8] zeroinitializer }, align 32
@__ipoib_ib_dev_flush._entry_ptr.123 = internal global ptr @__ipoib_ib_dev_flush._entry.121, section ".printk_index", align 4
@__ipoib_ib_dev_flush._entry.124 = internal constant %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.2, i32 1199, ptr null, ptr null }, align 1
@.str.125 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Not flushing - P_Key index not changed.\0A\00", [49 x i8] zeroinitializer }, align 32
@__ipoib_ib_dev_flush._entry_ptr.126 = internal global ptr @__ipoib_ib_dev_flush._entry.124, section ".printk_index", align 4
@__ipoib_ib_dev_flush._entry.127 = internal constant %struct.pi_entry { ptr @.str.128, ptr @.str.120, ptr @.str.2, i32 1207, ptr null, ptr null }, align 1
@.str.128 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Not flushing - P_Key value not changed.\0A\00", [49 x i8] zeroinitializer }, align 32
@__ipoib_ib_dev_flush._entry_ptr.129 = internal global ptr @__ipoib_ib_dev_flush._entry.127, section ".printk_index", align 4
@update_parent_pkey._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.update_parent_pkey = private unnamed_addr constant [19 x i8] c"update_parent_pkey\00", align 1
@update_parent_pkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @__func__.update_parent_pkey, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: ib_query_pkey port %d failed (ret = %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@update_parent_pkey._entry_ptr = internal global ptr @update_parent_pkey._entry, section ".printk_index", align 4
@update_parent_pkey._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @__func__.update_parent_pkey, ptr @.str.2, i32 1024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: pkey changed from 0x%x to 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@update_parent_pkey._entry_ptr.133 = internal global ptr @update_parent_pkey._entry.131, section ".printk_index", align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"data_debug_level\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 48, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 75, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 478, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 579, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 587, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 599, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 607, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 615, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 641, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 651, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 656, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 798, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 836, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 841, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 855, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 861, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 867, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 886, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 893, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 939, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 952, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 992, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1284, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 326, i32 6 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 182, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 186, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 195, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 216, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 271, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 113, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 391, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 395, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 421, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 428, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 357, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 361, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 370, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 374, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 377, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 3630, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 745, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 750, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 752, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 161, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 165, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1174, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1187, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1199, i32 5 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1207, i32 5 }
@___asan_gen_.518 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1015, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.531 = private constant [43 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_ib.c\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1023, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.534, i32 3498, i32 2 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_data_debug_level521, ptr @__UNIQUE_ID_data_debug_leveltype520, ptr @__ipoib_ib_dev_flush._entry, ptr @__ipoib_ib_dev_flush._entry.121, ptr @__ipoib_ib_dev_flush._entry.124, ptr @__ipoib_ib_dev_flush._entry.127, ptr @__ipoib_ib_dev_flush._entry_ptr, ptr @__ipoib_ib_dev_flush._entry_ptr.123, ptr @__ipoib_ib_dev_flush._entry_ptr.126, ptr @__ipoib_ib_dev_flush._entry_ptr.129, ptr @__param_data_debug_level, ptr @check_qp_movement_and_print._entry, ptr @check_qp_movement_and_print._entry.108, ptr @check_qp_movement_and_print._entry.112, ptr @check_qp_movement_and_print._entry_ptr, ptr @check_qp_movement_and_print._entry_ptr.110, ptr @check_qp_movement_and_print._entry_ptr.114, ptr @ipoib_create_ah._entry, ptr @ipoib_create_ah._entry_ptr, ptr @ipoib_drain_cq._entry, ptr @ipoib_drain_cq._entry_ptr, ptr @ipoib_ib_dev_cleanup._entry, ptr @ipoib_ib_dev_cleanup._entry_ptr, ptr @ipoib_ib_dev_down._entry, ptr @ipoib_ib_dev_down._entry_ptr, ptr @ipoib_ib_dev_open._entry, ptr @ipoib_ib_dev_open._entry.53, ptr @ipoib_ib_dev_open._entry_ptr, ptr @ipoib_ib_dev_open._entry_ptr.55, ptr @ipoib_ib_dev_open_default._entry, ptr @ipoib_ib_dev_open_default._entry.43, ptr @ipoib_ib_dev_open_default._entry.47, ptr @ipoib_ib_dev_open_default._entry_ptr, ptr @ipoib_ib_dev_open_default._entry_ptr.45, ptr @ipoib_ib_dev_open_default._entry_ptr.49, ptr @ipoib_ib_dev_stop_default._entry, ptr @ipoib_ib_dev_stop_default._entry.34, ptr @ipoib_ib_dev_stop_default._entry.38, ptr @ipoib_ib_dev_stop_default._entry_ptr, ptr @ipoib_ib_dev_stop_default._entry_ptr.36, ptr @ipoib_ib_dev_stop_default._entry_ptr.40, ptr @ipoib_ib_dev_up._entry, ptr @ipoib_ib_dev_up._entry_ptr, ptr @ipoib_ib_handle_rx_wc._entry, ptr @ipoib_ib_handle_rx_wc._entry.67, ptr @ipoib_ib_handle_rx_wc._entry.71, ptr @ipoib_ib_handle_rx_wc._entry.74, ptr @ipoib_ib_handle_rx_wc._entry.78, ptr @ipoib_ib_handle_rx_wc._entry_ptr, ptr @ipoib_ib_handle_rx_wc._entry_ptr.69, ptr @ipoib_ib_handle_rx_wc._entry_ptr.73, ptr @ipoib_ib_handle_rx_wc._entry_ptr.76, ptr @ipoib_ib_handle_rx_wc._entry_ptr.80, ptr @ipoib_ib_handle_tx_wc._entry, ptr @ipoib_ib_handle_tx_wc._entry.84, ptr @ipoib_ib_handle_tx_wc._entry.88, ptr @ipoib_ib_handle_tx_wc._entry_ptr, ptr @ipoib_ib_handle_tx_wc._entry_ptr.86, ptr @ipoib_ib_handle_tx_wc._entry_ptr.90, ptr @ipoib_ib_post_receive._entry, ptr @ipoib_ib_post_receive._entry_ptr, ptr @ipoib_ib_post_receives._entry, ptr @ipoib_ib_post_receives._entry.117, ptr @ipoib_ib_post_receives._entry_ptr, ptr @ipoib_ib_post_receives._entry_ptr.118, ptr @ipoib_qp_state_validate_work._entry, ptr @ipoib_qp_state_validate_work._entry.102, ptr @ipoib_qp_state_validate_work._entry.93, ptr @ipoib_qp_state_validate_work._entry.96, ptr @ipoib_qp_state_validate_work._entry.99, ptr @ipoib_qp_state_validate_work._entry_ptr, ptr @ipoib_qp_state_validate_work._entry_ptr.101, ptr @ipoib_qp_state_validate_work._entry_ptr.104, ptr @ipoib_qp_state_validate_work._entry_ptr.95, ptr @ipoib_qp_state_validate_work._entry_ptr.98, ptr @ipoib_rx_poll._entry, ptr @ipoib_rx_poll._entry_ptr, ptr @ipoib_send._entry, ptr @ipoib_send._entry.12, ptr @ipoib_send._entry.16, ptr @ipoib_send._entry.19, ptr @ipoib_send._entry.22, ptr @ipoib_send._entry.26, ptr @ipoib_send._entry.30, ptr @ipoib_send._entry.8, ptr @ipoib_send._entry_ptr, ptr @ipoib_send._entry_ptr.10, ptr @ipoib_send._entry_ptr.14, ptr @ipoib_send._entry_ptr.18, ptr @ipoib_send._entry_ptr.21, ptr @ipoib_send._entry_ptr.24, ptr @ipoib_send._entry_ptr.28, ptr @ipoib_send._entry_ptr.32, ptr @update_parent_pkey._entry, ptr @update_parent_pkey._entry.131, ptr @update_parent_pkey._entry_ptr, ptr @update_parent_pkey._entry_ptr.133, ptr @data_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ipoib_send._rs, ptr @.str.5, ptr @.str.6, ptr @ipoib_send._rs.7, ptr @.str.9, ptr @ipoib_send._rs.11, ptr @.str.13, ptr @ipoib_send._rs.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @ipoib_send._rs.25, ptr @.str.27, ptr @ipoib_send._rs.29, ptr @.str.31, ptr @ipoib_ib_dev_stop_default._rs, ptr @.str.33, ptr @.str.35, ptr @ipoib_ib_dev_stop_default._rs.37, ptr @.str.39, ptr @ipoib_ib_dev_open_default._rs, ptr @.str.41, ptr @ipoib_ib_dev_open_default._rs.42, ptr @.str.44, ptr @ipoib_ib_dev_open_default._rs.46, ptr @.str.48, ptr @ipoib_ib_dev_open._rs, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @ipoib_ib_handle_rx_wc._rs, ptr @.str.68, ptr @ipoib_ib_handle_rx_wc._rs.70, ptr @.str.72, ptr @.str.75, ptr @ipoib_ib_handle_rx_wc._rs.77, ptr @.str.79, ptr @ipoib_ib_post_receive._rs, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @ipoib_ib_handle_tx_wc._rs, ptr @.str.85, ptr @ipoib_ib_handle_tx_wc._rs.87, ptr @.str.89, ptr @ipoib_ib_handle_tx_wc.__key, ptr @.str.91, ptr @ipoib_qp_state_validate_work._rs, ptr @.str.92, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @check_qp_movement_and_print._rs, ptr @.str.107, ptr @.str.109, ptr @check_qp_movement_and_print._rs.111, ptr @.str.113, ptr @ipoib_ib_post_receives._rs, ptr @.str.115, ptr @ipoib_ib_post_receives._rs.116, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @update_parent_pkey._rs, ptr @.str.130, ptr @.str.132, ptr @.str.134], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_create_ah._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_rx_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs.25 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._rs.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_send._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_stop_default._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_stop_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_stop_default._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_stop_default._rs.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_stop_default._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._rs.42 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._rs.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open_default._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_open._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_drain_cq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_dev_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._rs.70 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._rs.77 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_rx_wc._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receive._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc._rs.87 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_handle_tx_wc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_qp_state_validate_work._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qp_movement_and_print._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qp_movement_and_print._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qp_movement_and_print._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qp_movement_and_print._rs.111 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_qp_movement_and_print._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receives._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receives._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receives._rs.116 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_ib_post_receives._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_parent_pkey._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_parent_pkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_parent_pkey._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_create_ah(ptr noundef %dev, ptr noundef %pd, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 28) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i, align 8
  %last_send = getelementptr inbounds %struct.ipoib_ah, ptr %call7.i, i32 0, i32 4
  %2 = ptrtoint ptr %last_send to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %last_send, align 4
  %ref = getelementptr inbounds %struct.ipoib_ah, ptr %call7.i, i32 0, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %3 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ref, align 8
  %call3 = tail call ptr @rdma_create_ah(ptr noundef %pd, ptr noundef %attr, i32 noundef 1) #8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ah6 = getelementptr inbounds %struct.ipoib_ah, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %ah6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %ah6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %5 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 4
  %dev10 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %9, ptr noundef %call3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.then5 ], [ %call7.i, %do.end ], [ %call7.i, %if.else.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_ah(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_free_ah(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %list = getelementptr i8, ptr %kref, i32 -8
  %dead_ahs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 49
  %prev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 49, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %dead_ahs) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dead_ahs, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %kref, i32 -4
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_dma_map_tx(ptr nocapture noundef readonly %ca, ptr nocapture noundef %tx_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_req, align 8
  %mapping2 = getelementptr inbounds %struct.ipoib_tx_buf, ptr %tx_req, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %tobool.not = icmp eq i32 %3, %5
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ca, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !263

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %9) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %13, %if.end.i.i.i ], [ %11, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %7, i32 noundef %sub.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %7 to i32
  %sub.i.i = add i32 %15, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %14, i32 %shr.i.i
  %and.i.i = and i32 %15, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #8
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %16 = ptrtoint ptr %mapping2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv2.i, ptr %mapping2, align 8
  %17 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ca, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %ib_dma_map_single.exit.cleanup54_crit_edge, label %ib_dma_map_single.exit.if.end11_crit_edge

ib_dma_map_single.exit.if.end11_crit_edge:        ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

ib_dma_map_single.exit.cleanup54_crit_edge:       ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.end11:                                         ; preds = %ib_dma_map_single.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  %off.0 = phi i32 [ 0, %entry.if.end11_crit_edge ], [ 1, %ib_dma_map_single.exit.if.end11_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %nr_frags103 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags103 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_frags103, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp105.not = icmp eq i8 %22, 0
  br i1 %cmp105.not, label %if.end11.cleanup54_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.cleanup54_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %23 = phi ptr [ %36, %for.inc.for.body_crit_edge ], [ %20, %if.end11.for.body_crit_edge ]
  %i.0106 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %arrayidx15 = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %i.0106
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %i.0106, i32 2
  %26 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset.i, align 4
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %23, i32 0, i32 12, i32 %i.0106, i32 1
  %28 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len.i, align 4
  %30 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ca, align 8
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef 1, i32 noundef 0) #8
  %conv3.i = zext i32 %call2.i to i64
  %add = add nuw nsw i32 %i.0106, %off.0
  %arrayidx20 = getelementptr i64, ptr %mapping2, i32 %add
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv3.i, ptr %arrayidx20, align 8
  %33 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ca, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i.i92.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i.i92.not, label %for.cond33.preheader, label %for.inc

for.cond33.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0106)
  %cmp34107.not = icmp eq i32 %i.0106, 0
  br i1 %cmp34107.not, label %for.cond33.preheader.for.end48_crit_edge, label %for.body36.lr.ph

for.cond33.preheader.for.end48_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.body36.lr.ph:                                 ; preds = %for.cond33.preheader
  %lnot.ext43.neg = sext i1 %tobool.not to i32
  br label %for.body36

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0106, 1
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %38 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup54_crit_edge

for.inc.cleanup54_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %for.body36.lr.ph
  %i.1108 = phi i32 [ %i.0106, %for.body36.lr.ph ], [ %sub, %for.body36.for.body36_crit_edge ]
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i, align 4
  %sub = add nsw i32 %i.1108, -1
  %sub44 = add nsw i32 %i.1108, %lnot.ext43.neg
  %arrayidx45 = getelementptr i64, ptr %mapping2, i32 %sub44
  %41 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx45, align 8
  %bv_len.i95 = getelementptr %struct.skb_shared_info, ptr %40, i32 0, i32 12, i32 %sub, i32 1
  %43 = ptrtoint ptr %bv_len.i95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_len.i95, align 4
  %45 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ca, align 8
  %conv.i = trunc i64 %42 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %46, i32 noundef %conv.i, i32 noundef %44, i32 noundef 1, i32 noundef 0) #8
  %cmp34 = icmp sgt i32 %i.1108, 1
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.end48_crit_edge

for.body36.for.end48_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.end48:                                        ; preds = %for.body36.for.end48_crit_edge, %for.cond33.preheader.for.end48_crit_edge
  br i1 %tobool.not, label %for.end48.cleanup54_crit_edge, label %if.then50

for.end48.cleanup54_crit_edge:                    ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup54

if.then50:                                        ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %mapping2, align 8
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i, align 4
  %51 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_len.i, align 8
  %sub.i98 = sub i32 %50, %52
  %53 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ca, align 8
  %conv.i99 = trunc i64 %48 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %54, i32 noundef %conv.i99, i32 noundef %sub.i98, i32 noundef 1, i32 noundef 0) #8
  br label %cleanup54

cleanup54:                                        ; preds = %if.then50, %for.end48.cleanup54_crit_edge, %for.inc.cleanup54_crit_edge, %if.end11.cleanup54_crit_edge, %ib_dma_map_single.exit.cleanup54_crit_edge
  %retval.0 = phi i32 [ -5, %if.then50 ], [ -5, %for.end48.cleanup54_crit_edge ], [ -5, %ib_dma_map_single.exit.cleanup54_crit_edge ], [ 0, %if.end11.cleanup54_crit_edge ], [ 0, %for.inc.cleanup54_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_dma_unmap_tx(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %tx_req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_req, align 8
  %mapping2 = getelementptr inbounds %struct.ipoib_tx_buf, ptr %tx_req, i32 0, i32 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %tobool.not = icmp eq i32 %3, %5
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %3, %5
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  %6 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ca, align 8
  %8 = ptrtoint ptr %mapping2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mapping2, align 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %conv.i = trunc i64 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %conv.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %off.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %nr_frags25 = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %nr_frags25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nr_frags25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp27.not = icmp eq i8 %15, 0
  br i1 %cmp27.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ca8 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %16 = phi ptr [ %13, %for.body.lr.ph ], [ %26, %for.body.for.body_crit_edge ]
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %ca8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ca8, align 8
  %add = add nuw nsw i32 %i.028, %off.0
  %arrayidx9 = getelementptr i64, ptr %mapping2, i32 %add
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx9, align 8
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %16, i32 0, i32 12, i32 %i.028, i32 1
  %21 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_len.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  %conv.i24 = trunc i64 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %conv.i24, i32 noundef %22, i32 noundef 1, i32 noundef 0) #8
  %inc = add nuw nsw i32 %i.028, 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %28 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_rx_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -236
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %recv_cq = getelementptr i8, ptr %napi, i32 1104
  %ibwc = getelementptr i8, ptr %napi, i32 5688
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %done.1 = phi i32 [ 0, %entry ], [ %done.1.be, %while.cond.backedge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %done.1, i32 %budget)
  %cmp = icmp slt i32 %done.1, %budget
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %sub = sub i32 %budget, %done.1
  %2 = tail call i32 @llvm.smin.i32(i32 %sub, i32 4)
  %3 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %recv_cq, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 1, i32 10
  %7 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %poll_cq.i, align 4
  %call.i = tail call i32 %8(ptr noundef %4, i32 noundef %2, ptr noundef %ibwc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp462 = icmp sgt i32 %call.i, 0
  br i1 %cmp462, label %while.body.for.body_crit_edge, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %while.body.for.body_crit_edge
  %done.264 = phi i32 [ %done.3, %if.end14.for.body_crit_edge ], [ %done.1, %while.body.for.body_crit_edge ]
  %i.063 = phi i32 [ %inc15, %if.end14.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %add.ptr7 = getelementptr %struct.ib_wc, ptr %ibwc, i32 %i.063
  %9 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr7, align 8
  %and = and i64 %10, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add i32 %done.264, 1
  %and8 = and i64 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipoib_cm_handle_rx_wc(ptr noundef %1, ptr noundef %add.ptr7) #8
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ipoib_ib_handle_rx_wc(ptr noundef %1, ptr noundef %add.ptr7)
  br label %if.end14

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.else, %if.then10
  %done.3 = phi i32 [ %inc, %if.then10 ], [ %inc, %if.else ], [ %done.264, %do.end ]
  %inc15 = add nuw nsw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc15, %call.i
  br i1 %exitcond.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %while.body.for.end_crit_edge
  %done.2.lcssa = phi i32 [ %done.1, %while.body.for.end_crit_edge ], [ %done.3, %if.end14.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %2)
  %cmp16.not = icmp eq i32 %call.i, %2
  br i1 %cmp16.not, label %for.end.while.cond.backedge_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.end.while.cond.backedge_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %napi_reschedule.exit, %for.end.while.cond.backedge_crit_edge
  %done.1.be = phi i32 [ %done.2.lcssa, %for.end.while.cond.backedge_crit_edge ], [ %done.4, %napi_reschedule.exit ]
  br label %while.cond

while.end:                                        ; preds = %for.end.while.end_crit_edge, %while.cond.while.end_crit_edge
  %done.4 = phi i32 [ %done.2.lcssa, %for.end.while.end_crit_edge ], [ %done.1, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %done.4, i32 %budget)
  %cmp19 = icmp slt i32 %done.4, %budget
  br i1 %cmp19, label %if.then20, label %while.end.if.end30_crit_edge

while.end.if.end30_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then20:                                        ; preds = %while.end
  %call.i59 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  %11 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %recv_cq, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 1, i32 12
  %15 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i60 = tail call i32 %16(ptr noundef %12, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool24.not = icmp eq i32 %call.i60, 0
  br i1 %tobool24.not, label %if.then20.if.end30_crit_edge, label %land.lhs.true, !prof !263

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.then20
  %call.i61 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i61, label %napi_reschedule.exit, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

napi_reschedule.exit:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %while.cond.backedge

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.then20.if.end30_crit_edge, %while.end.if.end30_crit_edge
  ret i32 %done.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_handle_rx_wc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_ib_handle_rx_wc(ptr noundef %dev, ptr nocapture noundef readonly %wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 2147483647
  %5 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %7, i32 noundef %conv, i32 noundef %9) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %10 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %10)
  %cmp7.not = icmp ult i32 %conv, %10
  br i1 %cmp7.not, label %if.end26, label %do.body11, !prof !263

do.body11:                                        ; preds = %do.end6
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_handle_rx_wc._rs, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.cleanup204_crit_edge, label %do.end17

do.body11.cleanup204_crit_edge:                   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %13 = load i32, ptr @ipoib_recvq_size, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %12, i32 noundef %conv, i32 noundef %13) #12
  br label %cleanup204

if.end26:                                         ; preds = %do.end6
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %14 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring, align 8
  %arrayidx = getelementptr %struct.ipoib_rx_buf, ptr %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 8
  %status28 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %18 = ptrtoint ptr %status28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status28, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.body42 [
    i32 0, label %if.end66
    i32 5, label %if.end26.if.end58_crit_edge
  ], !prof !264

if.end26.if.end58_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.body42:                                        ; preds = %if.end26
  %call43 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_handle_rx_wc._rs.70, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body42.if.end58_crit_edge, label %do.end48

do.body42.if.end58_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev50, align 4
  %23 = ptrtoint ptr %status28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status28, align 8
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %25 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vendor_err, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %22, i32 noundef %24, i32 noundef %conv, i32 noundef %26) #12
  br label %if.end58

if.end58:                                         ; preds = %do.end48, %do.body42.if.end58_crit_edge, %if.end26.if.end58_crit_edge
  %27 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring, align 8
  %mapping61 = getelementptr %struct.ipoib_rx_buf, ptr %28, i32 %conv, i32 1
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %29 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ca.i, align 8
  %31 = ptrtoint ptr %mapping61 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mapping61, align 8
  %max_ib_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %33 = ptrtoint ptr %max_ib_mtu.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_ib_mtu.i, align 4
  %add.i = add i32 %34, 40
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 8
  %conv.i.i = trunc i64 %32 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %conv.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #8
  tail call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 1) #8
  %37 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_ring, align 8
  %arrayidx64 = getelementptr %struct.ipoib_rx_buf, ptr %38, i32 %conv
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx64, align 8
  br label %cleanup204

if.end66:                                         ; preds = %if.end26
  %mapping70 = getelementptr %struct.ipoib_rx_buf, ptr %15, i32 %conv, i32 1
  %40 = ptrtoint ptr %mapping70 to i32
  call void @__asan_load8_noabort(i32 %40)
  %mapping.sroa.0.0.copyload = load i64, ptr %mapping70, align 8
  %call72 = tail call fastcc ptr @ipoib_alloc_rx_skb(ptr noundef %dev, i32 noundef %conv)
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.then82, label %do.body84, !prof !265

if.then82:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  %41 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %42, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %repost

do.body84:                                        ; preds = %if.end66
  %43 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp85 = icmp sgt i32 %43, 0
  br i1 %cmp85, label %do.end90, label %do.body84.do.end98_crit_edge

do.body84.do.end98_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

do.end90:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev92, align 4
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %46 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %byte_len, align 4
  %slid = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %48 = ptrtoint ptr %slid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %slid, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %45, i32 noundef %47, i32 noundef %49) #12
  br label %do.end98

do.end98:                                         ; preds = %do.end90, %do.body84.do.end98_crit_edge
  %ca.i275 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %50 = ptrtoint ptr %ca.i275 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ca.i275, align 8
  %max_ib_mtu.i276 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %52 = ptrtoint ptr %max_ib_mtu.i276 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_ib_mtu.i276, align 4
  %add.i277 = add i32 %53, 40
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 8
  %conv.i.i278 = trunc i64 %mapping.sroa.0.0.copyload to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %55, i32 noundef %conv.i.i278, i32 noundef %add.i277, i32 noundef 2, i32 noundef 0) #8
  %byte_len100 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %56 = ptrtoint ptr %byte_len100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %byte_len100, align 4
  %call101 = tail call ptr @skb_put(ptr noundef %17, i32 noundef %57) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %dgid102 = getelementptr inbounds %struct.ib_grh, ptr %59, i32 0, i32 5
  %wc_flags = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 9
  %60 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %wc_flags, align 8
  %and103 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.end98.if.then109_crit_edge, label %lor.lhs.false

do.end98.if.then109_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

lor.lhs.false:                                    ; preds = %do.end98
  %62 = ptrtoint ptr %dgid102 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %dgid102, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %63)
  %cmp107.not = icmp eq i8 %63, -1
  br i1 %cmp107.not, label %if.else, label %lor.lhs.false.if.then109_crit_edge

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %do.end98.if.then109_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15
  %64 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  br label %if.end125

if.else:                                          ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.net_device, ptr %dev, i32 0, i32 99, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dgid102, ptr noundef dereferenceable(16) %add.ptr, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp112 = icmp eq i32 %bcmp, 0
  %pkt_type115 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15
  %65 = ptrtoint ptr %pkt_type115 to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load116 = load i16, ptr %pkt_type115, align 8
  %bf.clear117 = and i16 %bf.load116, 8191
  br i1 %cmp112, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set118 = or i16 %bf.clear117, 8192
  %66 = ptrtoint ptr %pkt_type115 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %bf.set118, ptr %pkt_type115, align 8
  br label %if.end125

if.else119:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set123 = or i16 %bf.clear117, 16384
  %67 = ptrtoint ptr %pkt_type115 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %bf.set123, ptr %pkt_type115, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.else119, %if.then114, %if.then109
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %slid128 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 8
  %70 = ptrtoint ptr %slid128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %slid128, align 4
  %local_lid = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 33
  %72 = ptrtoint ptr %local_lid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %local_lid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp129 = icmp eq i32 %71, %73
  br i1 %cmp129, label %land.lhs.true, label %if.end125.if.end146_crit_edge

if.end125.if.end146_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

land.lhs.true:                                    ; preds = %if.end125
  %src_qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 7
  %74 = ptrtoint ptr %src_qp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %src_qp, align 8
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %76 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %77, i32 0, i32 19
  %78 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %qp_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %79)
  %cmp131 = icmp eq i32 %75, %79
  br i1 %cmp131, label %if.then133, label %land.lhs.true.if.end146_crit_edge

land.lhs.true.if.end146_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then133:                                       ; preds = %land.lhs.true
  %80 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wc_flags, align 8
  %and135 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.then133.cleanup_crit_edge, label %land.lhs.true137

if.then133.cleanup_crit_edge:                     ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true137:                                 ; preds = %if.then133
  %interface_id = getelementptr inbounds %struct.ib_grh, ptr %69, i32 0, i32 4, i32 0, i32 1
  %82 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %interface_id, align 8
  %interface_id138 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 32, i32 0, i32 1
  %84 = ptrtoint ptr %interface_id138 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %interface_id138, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %85)
  %cmp139.not.not = icmp eq i64 %83, %85
  br i1 %cmp139.not.not, label %land.lhs.true137.cleanup_crit_edge, label %land.lhs.true137.if.end146_crit_edge

land.lhs.true137.if.end146_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

land.lhs.true137.cleanup_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true137.cleanup_crit_edge, %if.then133.cleanup_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %17, i32 noundef 1) #8
  br label %repost

if.end146:                                        ; preds = %land.lhs.true137.if.end146_crit_edge, %land.lhs.true.if.end146_crit_edge, %if.end125.if.end146_crit_edge
  %call147 = tail call ptr @skb_pull(ptr noundef %17, i32 noundef 40) #8
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 18
  %90 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %protocol, align 8
  %call.i = tail call ptr @skb_push(ptr noundef %17, i32 noundef 20) #8
  %91 = call ptr @memset(ptr %call.i, i32 0, i32 20)
  %92 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 18
  %94 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i279 = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15, i32 0, i32 21
  %96 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i.i279, ptr %mac_header.i.i, align 2
  %call1.i = tail call ptr @skb_pull(ptr noundef %17, i32 noundef 24) #8
  %stats149 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %97 = ptrtoint ptr %stats149 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %stats149, align 8
  %inc150 = add i32 %98, 1
  store i32 %inc150, ptr %stats149, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %99 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %101 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %102, %100
  store i32 %add, ptr %rx_bytes, align 8
  %pkt_type152 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 15
  %103 = ptrtoint ptr %pkt_type152 to i32
  call void @__asan_load2_noabort(i32 %103)
  %bf.load153 = load i16, ptr %pkt_type152, align 8
  %bf.lshr.mask = and i16 %bf.load153, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp155 = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp155, label %if.then157, label %if.end146.if.end160_crit_edge

if.end146.if.end160_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then157:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %multicast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 8
  %104 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %multicast, align 8
  %inc159 = add i32 %105, 1
  store i32 %inc159, ptr %multicast, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end146.if.end160_crit_edge
  %106 = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 2
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %dev, ptr %106, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %108 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %features, align 16
  %and161 = and i64 %109, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and161)
  %tobool162.not = icmp eq i64 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end177_crit_edge, label %land.lhs.true163

if.end160.if.end177_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

land.lhs.true163:                                 ; preds = %if.end160
  %110 = ptrtoint ptr %wc_flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %wc_flags, align 8
  %and165 = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %land.lhs.true163.if.end177_crit_edge, label %if.then173, !prof !265

land.lhs.true163.if.end177_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177

if.then173:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %pkt_type152 to i32
  call void @__asan_load2_noabort(i32 %112)
  %bf.load174 = load i16, ptr %pkt_type152, align 8
  %bf.clear175 = and i16 %bf.load174, -1537
  %bf.set176 = or i16 %bf.clear175, 512
  store i16 %bf.set176, ptr %pkt_type152, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then173, %land.lhs.true163.if.end177_crit_edge, %if.end160.if.end177_crit_edge
  %recv_napi = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 4
  %call178 = tail call i32 @napi_gro_receive(ptr noundef %recv_napi, ptr noundef %17) #8
  br label %repost

repost:                                           ; preds = %if.end177, %cleanup, %if.then82
  %call179 = tail call fastcc i32 @ipoib_ib_post_receive(ptr noundef %dev, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %repost.cleanup204_crit_edge, label %do.body188, !prof !263

repost.cleanup204_crit_edge:                      ; preds = %repost
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

do.body188:                                       ; preds = %repost
  %call189 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_handle_rx_wc._rs.77, ptr noundef nonnull @.str.66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %do.body188.cleanup204_crit_edge, label %do.end194

do.body188.cleanup204_crit_edge:                  ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup204

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #10
  %dev196 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %113 = ptrtoint ptr %dev196 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev196, align 4
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %114, i32 noundef %conv) #12
  br label %cleanup204

cleanup204:                                       ; preds = %do.end194, %do.body188.cleanup204_crit_edge, %repost.cleanup204_crit_edge, %if.end58, %do.end17, %do.body11.cleanup204_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_tx_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 -12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %send_cq = getelementptr i8, ptr %napi, i32 1332
  %send_wc = getelementptr i8, ptr %napi, i32 1760
  br label %poll_more

poll_more:                                        ; preds = %napi_reschedule.exit, %entry
  %2 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %send_cq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 64, ptr noundef %send_wc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp sgt i32 %call.i, 0
  br i1 %cmp35, label %poll_more.for.body_crit_edge, label %poll_more.for.end_crit_edge

poll_more.for.end_crit_edge:                      ; preds = %poll_more
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

poll_more.for.body_crit_edge:                     ; preds = %poll_more
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %poll_more.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %poll_more.for.body_crit_edge ]
  %add.ptr4 = getelementptr %struct.ib_wc, ptr %send_wc, i32 %i.036
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr4, align 8
  %and = and i64 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipoib_cm_handle_tx_wc(ptr noundef %1, ptr noundef %add.ptr4) #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ipoib_ib_handle_tx_wc(ptr noundef %1, ptr noundef %add.ptr4)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %poll_more.for.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %budget)
  %cmp5 = icmp slt i32 %call.i, %budget
  br i1 %cmp5, label %if.then6, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then6:                                         ; preds = %for.end
  %call.i32 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  %10 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %send_cq, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %13, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i33 = tail call i32 %15(ptr noundef %11, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool10.not = icmp eq i32 %call.i33, 0
  br i1 %tobool10.not, label %if.then6.if.end16_crit_edge, label %land.lhs.true, !prof !263

if.then6.if.end16_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.then6
  %call.i34 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i34, label %napi_reschedule.exit, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

napi_reschedule.exit:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %poll_more

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.then6.if.end16_crit_edge, %for.end.if.end16_crit_edge
  %16 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 0)
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_handle_tx_wc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_ib_handle_tx_wc(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = ptrtoint ptr %wc to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wc, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %6, i32 noundef %conv, i32 noundef %8) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %9 = load i32, ptr @ipoib_sendq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp7.not = icmp ugt i32 %9, %conv
  br i1 %cmp7.not, label %if.end26, label %do.body11, !prof !263

do.body11:                                        ; preds = %do.end6
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_handle_tx_wc._rs, ptr noundef nonnull @.str.83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.cleanup86_crit_edge, label %do.end17

do.body11.cleanup86_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %12 = load i32, ptr @ipoib_sendq_size, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %11, i32 noundef %conv, i32 noundef %12) #12
  br label %cleanup86

if.end26:                                         ; preds = %do.end6
  %tx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 38
  %13 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_ring, align 4
  %arrayidx = getelementptr %struct.ipoib_tx_buf, ptr %14, i32 %conv
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 8
  %mapping2.i = getelementptr %struct.ipoib_tx_buf, ptr %14, i32 %conv, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %tobool.not.i = icmp eq i32 %18, %20
  br i1 %tobool.not.i, label %if.end26.if.end.i_crit_edge, label %if.then.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %18, %20
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ca.i, align 8
  %23 = ptrtoint ptr %mapping2.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mapping2.i, align 8
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %conv.i.i = trunc i64 %24 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %26, i32 noundef %conv.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end26.if.end.i_crit_edge
  %off.0.i = phi i32 [ 1, %if.then.i ], [ 0, %if.end26.if.end.i_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 17
  %27 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %end.i.i, align 4
  %nr_frags25.i = getelementptr inbounds %struct.skb_shared_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %nr_frags25.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr_frags25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp27.not.i = icmp eq i8 %30, 0
  br i1 %cmp27.not.i, label %if.end.i.ipoib_dma_unmap_tx.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.ipoib_dma_unmap_tx.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_dma_unmap_tx.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ca8.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %31 = phi ptr [ %28, %for.body.lr.ph.i ], [ %41, %for.body.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %ca8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ca8.i, align 8
  %add.i = add nuw nsw i32 %i.028.i, %off.0.i
  %arrayidx9.i = getelementptr i64, ptr %mapping2.i, i32 %add.i
  %34 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx9.i, align 8
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %31, i32 0, i32 12, i32 %i.028.i, i32 1
  %36 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len.i.i, align 4
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 8
  %conv.i24.i = trunc i64 %35 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %conv.i24.i, i32 noundef %37, i32 noundef 1, i32 noundef 0) #8
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %40 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %43 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.ipoib_dma_unmap_tx.exit_crit_edge

for.body.i.ipoib_dma_unmap_tx.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_dma_unmap_tx.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

ipoib_dma_unmap_tx.exit:                          ; preds = %for.body.i.ipoib_dma_unmap_tx.exit_crit_edge, %if.end.i.ipoib_dma_unmap_tx.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %44 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %45, 1
  store i32 %inc, ptr %tx_packets, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %51, %49
  store i32 %add, ptr %tx_bytes, align 4
  %52 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %52, i32 noundef 1) #8
  %tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 40
  %53 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_tail, align 4
  %inc29 = add i32 %54, 1
  store i32 %inc29, ptr %tx_tail, align 4
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  %55 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %global_tx_tail, align 4
  %inc30 = add i32 %56, 1
  store i32 %inc30, ptr %global_tx_tail, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %57 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %ipoib_dma_unmap_tx.exit.if.end45_crit_edge, label %land.lhs.true

ipoib_dma_unmap_tx.exit.if.end45_crit_edge:       ; preds = %ipoib_dma_unmap_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true:                                    ; preds = %ipoib_dma_unmap_tx.exit
  %global_tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 41
  %61 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %global_tx_head, align 8
  %sub = sub i32 %62, %inc30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %63 = load i32, ptr @ipoib_sendq_size, align 4
  %shr = ashr i32 %63, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shr)
  %cmp34.not = icmp ugt i32 %sub, %shr
  br i1 %cmp34.not, label %land.lhs.true.if.end45_crit_edge, label %land.rhs

land.lhs.true.if.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.rhs:                                         ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags, align 4
  %66 = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool37.not = icmp eq i32 %66, 0
  br i1 %tobool37.not, label %land.rhs.if.end45_crit_edge, label %if.then44, !prof !263

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %58) #8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %land.rhs.if.end45_crit_edge, %land.lhs.true.if.end45_crit_edge, %ipoib_dma_unmap_tx.exit.if.end45_crit_edge
  %status46 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %67 = ptrtoint ptr %status46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %status46, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %68, label %if.then53 [
    i32 0, label %if.end45.cleanup86_crit_edge
    i32 5, label %if.end45.cleanup86_crit_edge126
  ]

if.end45.cleanup86_crit_edge126:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

if.end45.cleanup86_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

if.then53:                                        ; preds = %if.end45
  %call55 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_handle_tx_wc._rs.87, ptr noundef nonnull @.str.83) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then53.do.end69_crit_edge, label %do.end60

if.then53.do.end69_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

do.end60:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %dev62 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %70 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev62, align 4
  %72 = ptrtoint ptr %status46 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status46, align 8
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %74 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vendor_err, align 8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %71, i32 noundef %73, i32 noundef %conv, i32 noundef %75) #12
  br label %do.end69

do.end69:                                         ; preds = %do.end60, %if.then53.do.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %76, i32 noundef 2848, i32 noundef 48) #11
  %tobool71.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool71.not, label %do.end69.cleanup86_crit_edge, label %do.body74

do.end69.cleanup86_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

do.body74:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.91, ptr noundef nonnull @ipoib_ib_handle_tx_wc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry78 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %78 = ptrtoint ptr %entry78 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %entry78, ptr %entry78, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %entry78, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ipoib_qp_state_validate_work, ptr %func, align 4
  %priv82 = getelementptr inbounds %struct.ipoib_qp_state_validate, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %priv82 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %1, ptr %priv82, align 4
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %82 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %83, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup86

cleanup86:                                        ; preds = %do.body74, %do.end69.cleanup86_crit_edge, %if.end45.cleanup86_crit_edge, %if.end45.cleanup86_crit_edge126, %do.end17, %do.body11.cleanup86_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_rx_completion(ptr nocapture noundef readnone %cq, ptr noundef %ctx_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_napi = getelementptr inbounds %struct.ipoib_dev_priv, ptr %ctx_ptr, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %recv_napi) #8
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %recv_napi) #8
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_tx_completion(ptr nocapture noundef readnone %cq, ptr noundef %ctx_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %send_napi = getelementptr inbounds %struct.ipoib_dev_priv, ptr %ctx_ptr, i32 0, i32 3
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %send_napi) #8
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %send_napi) #8
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_send(ptr noundef %dev, ptr noundef %skb, ptr noundef %address, i32 noundef %dqpn) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %max_send_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 61
  %2 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_send_sge, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %tobool = icmp ne i32 %5, %7
  %lnot.ext.neg = sext i1 %tobool to i32
  %sub = add i32 %3, %lnot.ext.neg
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %8 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.i.not = icmp eq i16 %11, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %14 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i322 = getelementptr i8, ptr %13, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i322 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i322, i32 0, i32 4
  %18 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %19 = lshr i16 %bf.load.i.i, 10
  %20 = and i16 %19, 60
  %mul.i.i = zext i16 %20 to i32
  %add = add i32 %sub.ptr.sub.i, %mul.i.i
  %call6 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %add) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.body, label %if.then.if.end61_crit_edge, !prof !265

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.body:                                          ; preds = %if.then
  %call16 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.do.end23_crit_edge, label %do.end

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev20, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %22) #12
  br label %do.end23

do.end23:                                         ; preds = %do.end, %do.body.do.end23_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %25 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_errors, align 4
  %inc25 = add i32 %26, 1
  store i32 %inc25, ptr %tx_errors, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %mcast_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 35
  %27 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mcast_mtu, align 8
  %add27 = add i32 %28, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add27)
  %cmp = icmp ugt i32 %5, %add27
  br i1 %cmp, label %do.body35, label %if.else.if.end61_crit_edge, !prof !265

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.body35:                                        ; preds = %if.else
  %call36 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs.7, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.body35.do.end52_crit_edge, label %do.end41

do.body35.do.end52_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end52

do.end41:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  %dev43 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev43, align 4
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %33 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mcast_mtu, align 8
  %add48 = add i32 %34, 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %30, i32 noundef %32, i32 noundef %add48) #12
  br label %do.end52

do.end52:                                         ; preds = %do.end41, %do.body35.do.end52_crit_edge
  %tx_dropped54 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %tx_dropped54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_dropped54, align 4
  %inc55 = add i32 %36, 1
  store i32 %inc55, ptr %tx_dropped54, align 4
  %tx_errors57 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %37 = ptrtoint ptr %tx_errors57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_errors57, align 4
  %inc58 = add i32 %38, 1
  store i32 %inc58, ptr %tx_errors57, align 4
  %39 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mcast_mtu, align 8
  tail call void @ipoib_cm_skb_too_long(ptr noundef %dev, ptr noundef %skb, i32 noundef %40) #8
  br label %cleanup

if.end61:                                         ; preds = %if.else.if.end61_crit_edge, %if.then.if.end61_crit_edge
  %phead.0 = phi ptr [ %17, %if.then.if.end61_crit_edge ], [ null, %if.else.if.end61_crit_edge ]
  %hlen.0 = phi i32 [ %add, %if.then.if.end61_crit_edge ], [ 0, %if.else.if.end61_crit_edge ]
  %41 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv)
  %cmp63 = icmp ult i32 %sub, %conv
  br i1 %cmp63, label %if.then65, label %if.end61.do.body121_crit_edge

if.end61.do.body121_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body121

if.then65:                                        ; preds = %if.end61
  %45 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i.not.i, label %if.then65.if.end91_crit_edge, label %cond.true.i

if.then65.if.end91_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

cond.true.i:                                      ; preds = %if.then65
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %46) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.body70, label %cond.true.i.if.end91_crit_edge

cond.true.i.if.end91_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.body70:                                        ; preds = %cond.true.i
  %call71 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs.11, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body70.do.end84_crit_edge, label %do.end76

do.body70.do.end84_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end84

do.end76:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #10
  %dev78 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev78, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %48) #12
  br label %do.end84

do.end84:                                         ; preds = %do.end76, %do.body70.do.end84_crit_edge
  %tx_dropped86 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %49 = ptrtoint ptr %tx_dropped86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_dropped86, align 4
  %inc87 = add i32 %50, 1
  store i32 %inc87, ptr %tx_dropped86, align 4
  %tx_errors89 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %51 = ptrtoint ptr %tx_errors89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_errors89, align 4
  %inc90 = add i32 %52, 1
  store i32 %inc90, ptr %tx_errors89, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end91:                                         ; preds = %cond.true.i.if.end91_crit_edge, %if.then65.if.end91_crit_edge
  %53 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i.i, align 4
  %nr_frags93 = getelementptr inbounds %struct.skb_shared_info, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %nr_frags93 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nr_frags93, align 2
  %conv94 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv94)
  %cmp95 = icmp ult i32 %sub, %conv94
  br i1 %cmp95, label %do.body98, label %if.end91.do.body121_crit_edge

if.end91.do.body121_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body121

do.body98:                                        ; preds = %if.end91
  %call99 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs.15, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body98.do.end112_crit_edge, label %do.end104

do.body98.do.end112_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end112

do.end104:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #10
  %dev106 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %57 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev106, align 4
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %58) #12
  br label %do.end112

do.end112:                                        ; preds = %do.end104, %do.body98.do.end112_crit_edge
  %tx_dropped114 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %59 = ptrtoint ptr %tx_dropped114 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_dropped114, align 4
  %inc115 = add i32 %60, 1
  store i32 %inc115, ptr %tx_dropped114, align 4
  %tx_errors117 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %61 = ptrtoint ptr %tx_errors117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_errors117, align 4
  %inc118 = add i32 %62, 1
  store i32 %inc118, ptr %tx_errors117, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

do.body121:                                       ; preds = %if.end91.do.body121_crit_edge, %if.end61.do.body121_crit_edge
  %63 = load i32, ptr @data_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp122 = icmp sgt i32 %63, 0
  br i1 %cmp122, label %do.end127, label %do.body121.do.end136_crit_edge

do.body121.do.end136_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end136

do.end127:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #10
  %dev129 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev129, align 4
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %65, i32 noundef %67, ptr noundef %address, i32 noundef %dqpn) #12
  br label %do.end136

do.end136:                                        ; preds = %do.end127, %do.body121.do.end136_crit_edge
  %tx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 38
  %68 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_ring, align 4
  %tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 39
  %70 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_head, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %72 = load i32, ptr @ipoib_sendq_size, align 4
  %sub137 = add i32 %72, -1
  %and = and i32 %sub137, %71
  %arrayidx = getelementptr %struct.ipoib_tx_buf, ptr %69, i32 %and
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %skb, ptr %arrayidx, align 8
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %74 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ca, align 8
  %call139 = tail call i32 @ipoib_dma_map_tx(ptr noundef %75, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end151, label %if.then147, !prof !263

if.then147:                                       ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  %tx_errors149 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %76 = ptrtoint ptr %tx_errors149 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_errors149, align 4
  %inc150 = add i32 %77, 1
  store i32 %inc150, ptr %tx_errors149, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

if.end151:                                        ; preds = %do.end136
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %78 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load = load i16, ptr %ip_summed, align 8
  %79 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %79)
  %cmp153 = icmp eq i16 %79, 1536
  %send_flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 5
  %80 = ptrtoint ptr %send_flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %send_flags, align 4
  %and160 = and i32 %81, -17
  %masksel = select i1 %cmp153, i32 16, i32 0
  %and160.sink = or i32 %and160, %masksel
  store i32 %and160.sink, ptr %send_flags, align 4
  %global_tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 41
  %82 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %global_tx_head, align 8
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  %84 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %global_tx_tail, align 4
  %sub162 = sub i32 %83, %85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %86 = load i32, ptr @ipoib_sendq_size, align 4
  %sub163 = add i32 %86, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub162, i32 %sub163)
  %cmp164 = icmp eq i32 %sub162, %sub163
  br i1 %cmp164, label %do.body167, label %if.end151.if.end182_crit_edge

if.end151.if.end182_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end182

do.body167:                                       ; preds = %if.end151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %87 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp168 = icmp sgt i32 %87, 0
  br i1 %cmp168, label %do.end173, label %do.body167.do.end181_crit_edge

do.body167.do.end181_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end181

do.end173:                                        ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #10
  %dev175 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev175, align 4
  %call178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %89) #12
  br label %do.end181

do.end181:                                        ; preds = %do.end173, %do.body167.do.end181_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %90 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %91, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end182

if.end182:                                        ; preds = %do.end181, %if.end151.if.end182_crit_edge
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %92 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %93(ptr noundef %skb) #8
  %94 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %destructor.i, align 4
  %95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %95, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end182
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %tobool3.not.i = icmp eq ptr %99, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !263

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !266
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i324 = icmp eq i32 %102, 0
  br i1 %tobool.not.i324, label %skb_orphan.exit.skb_dst_drop.exit_crit_edge, label %if.then.i326

skb_orphan.exit.skb_dst_drop.exit_crit_edge:      ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_drop.exit

if.then.i326:                                     ; preds = %skb_orphan.exit
  %and.i.i = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i325 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i325, label %if.then.i.i, label %if.then.i326.refdst_drop.exit.i_crit_edge

if.then.i326.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i326
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i.i = and i32 %102, -2
  %103 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %103) #8
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i326.refdst_drop.exit.i_crit_edge
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %100, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %skb_orphan.exit.skb_dst_drop.exit_crit_edge
  %_tx.i.i327 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %105 = ptrtoint ptr %_tx.i.i327 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %_tx.i.i327, align 128
  %state.i.i328 = getelementptr inbounds %struct.netdev_queue, ptr %106, i32 0, i32 13
  %107 = ptrtoint ptr %state.i.i328 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %state.i.i328, align 4
  %and1.i.i.i = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %skb_dst_drop.exit.if.end205_crit_edge, label %if.then184

skb_dst_drop.exit.if.end205_crit_edge:            ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then184:                                       ; preds = %skb_dst_drop.exit
  %send_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 29
  %109 = ptrtoint ptr %send_cq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %send_cq, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %112, i32 0, i32 1, i32 12
  %113 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %114(ptr noundef %110, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp186 = icmp slt i32 %call.i, 0
  br i1 %cmp186, label %do.body189, label %if.then184.if.end205_crit_edge

if.then184.if.end205_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

do.body189:                                       ; preds = %if.then184
  %call190 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs.25, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %do.body189.if.end205_crit_edge, label %do.end195

do.body189.if.end205_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

do.end195:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #10
  %dev197 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %115 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev197, align 4
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %116) #12
  br label %if.end205

if.end205:                                        ; preds = %do.end195, %do.body189.if.end205_crit_edge, %if.then184.if.end205_crit_edge, %skb_dst_drop.exit.if.end205_crit_edge
  %117 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %tx_head, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %119 = load i32, ptr @ipoib_sendq_size, align 4
  %sub207 = add i32 %119, -1
  %and208 = and i32 %sub207, %118
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %end.i.i.i, align 4
  %frags2.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 12
  %nr_frags4.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %nr_frags4.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %nr_frags4.i.i, align 2
  %conv.i.i329 = zext i8 %125 to i32
  %mapping5.i.i = getelementptr %struct.ipoib_tx_buf, ptr %69, i32 %and, i32 1
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 6
  %126 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 7
  %128 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %tobool.not.i.i330 = icmp eq i32 %127, %129
  br i1 %tobool.not.i.i330, label %if.end205.if.end.i.i_crit_edge, label %if.then.i.i331

if.end205.if.end.i.i_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i331:                                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %mapping5.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %mapping5.i.i, align 8
  %tx_sge.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43
  %132 = ptrtoint ptr %tx_sge.i.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %tx_sge.i.i, align 8
  %133 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len.i.i.i, align 4
  %135 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i46.i.i = sub i32 %134, %136
  %length.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 0, i32 1
  %137 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %sub.i46.i.i, ptr %length.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i331, %if.end205.if.end.i.i_crit_edge
  %off.0.i.i = phi i32 [ 1, %if.then.i.i331 ], [ 0, %if.end205.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp47.not.i.i = icmp eq i8 %125, 0
  br i1 %cmp47.not.i.i, label %if.end.i.i.ipoib_build_sge.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.ipoib_build_sge.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_build_sge.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %i.048.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %i.048.i.i, %off.0.i.i
  %arrayidx13.i.i = getelementptr i64, ptr %mapping5.i.i, i32 %add.i.i
  %138 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx13.i.i, align 8
  %arrayidx16.i.i = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 %add.i.i
  %140 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %arrayidx16.i.i, align 8
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %frags2.i.i, i32 %i.048.i.i, i32 1
  %141 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bv_len.i.i.i, align 4
  %length23.i.i = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 43, i32 %add.i.i, i32 1
  %143 = ptrtoint ptr %length23.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %length23.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.048.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i329
  br i1 %exitcond.not.i.i, label %for.body.i.i.ipoib_build_sge.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.ipoib_build_sge.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_build_sge.exit.i

ipoib_build_sge.exit.i:                           ; preds = %for.body.i.i.ipoib_build_sge.exit.i_crit_edge, %if.end.i.i.ipoib_build_sge.exit.i_crit_edge
  %add24.i.i = add nuw nsw i32 %off.0.i.i, %conv.i.i329
  %num_sge.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 3
  %144 = ptrtoint ptr %num_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %add24.i.i, ptr %num_sge.i.i, align 4
  %conv.i = zext i32 %and208 to i64
  %145 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 1
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %conv.i, ptr %145, align 8
  %remote_qpn.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 5
  %147 = ptrtoint ptr %remote_qpn.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %dqpn, ptr %remote_qpn.i, align 8
  %ah.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 1
  %148 = ptrtoint ptr %ah.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %address, ptr %ah.i, align 8
  %tobool.not.i332 = icmp eq ptr %phead.0, null
  br i1 %tobool.not.i332, label %ipoib_build_sge.exit.i.post_send.exit_crit_edge, label %if.then.i334

ipoib_build_sge.exit.i.post_send.exit_crit_edge:  ; preds = %ipoib_build_sge.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %post_send.exit

if.then.i334:                                     ; preds = %ipoib_build_sge.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i333 = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 4
  %151 = ptrtoint ptr %gso_size.i333 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %gso_size.i333, align 4
  %conv4.i = zext i16 %152 to i32
  %mss.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 4
  %153 = ptrtoint ptr %mss.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv4.i, ptr %mss.i, align 4
  %header.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 2
  %154 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %phead.0, ptr %header.i, align 4
  %hlen8.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 3
  %155 = ptrtoint ptr %hlen8.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %hlen.0, ptr %hlen8.i, align 8
  br label %post_send.exit

post_send.exit:                                   ; preds = %if.then.i334, %ipoib_build_sge.exit.i.post_send.exit_crit_edge
  %.sink.i = phi i32 [ 10, %if.then.i334 ], [ 2, %ipoib_build_sge.exit.i.post_send.exit_crit_edge ]
  %156 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44, i32 0, i32 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %.sink.i, ptr %156, align 8
  %tx_wr.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 44
  %qp.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %158 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %qp.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %160 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !267
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %159, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %162, i32 0, i32 1, i32 6
  %163 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i335 = call i32 %164(ptr noundef %159, ptr noundef %tx_wr.i, ptr noundef nonnull %dummy.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i335)
  %tobool210.not = icmp eq i32 %call.i.i335, 0
  br i1 %tobool210.not, label %if.else239, label %do.body218, !prof !263

do.body218:                                       ; preds = %post_send.exit
  %call219 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_send._rs.29, ptr noundef nonnull @__func__.ipoib_send) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %do.body218.do.end232_crit_edge, label %do.end224

do.body218.do.end232_crit_edge:                   ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end232

do.end224:                                        ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #10
  %dev226 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %165 = ptrtoint ptr %dev226 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev226, align 4
  %call229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %166, i32 noundef %call.i.i335) #12
  br label %do.end232

do.end232:                                        ; preds = %do.end224, %do.body218.do.end232_crit_edge
  %tx_errors234 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %167 = ptrtoint ptr %tx_errors234 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %tx_errors234, align 4
  %inc235 = add i32 %168, 1
  store i32 %inc235, ptr %tx_errors234, align 4
  call void @ipoib_dma_unmap_tx(ptr noundef %1, ptr noundef %arrayidx)
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  %169 = ptrtoint ptr %_tx.i.i327 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %_tx.i.i327, align 128
  %state.i.i337 = getelementptr inbounds %struct.netdev_queue, ptr %170, i32 0, i32 13
  %171 = ptrtoint ptr %state.i.i337 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load volatile i32, ptr %state.i.i337, align 4
  %and1.i.i.i338 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i338)
  %tobool.i.i339.not = icmp eq i32 %and1.i.i.i338, 0
  br i1 %tobool.i.i339.not, label %do.end232.cleanup_crit_edge, label %if.then237

do.end232.cleanup_crit_edge:                      ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then237:                                       ; preds = %do.end232
  call void @__sanitizer_cov_trace_pc() #10
  call void @netif_tx_wake_queue(ptr noundef %170) #8
  br label %cleanup

if.else239:                                       ; preds = %post_send.exit
  %173 = ptrtoint ptr %_tx.i.i327 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %_tx.i.i327, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %175 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %174, i32 0, i32 12
  %176 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %175)
  %cmp.not.i.i = icmp eq i32 %177, %175
  br i1 %cmp.not.i.i, label %if.else239.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.else239.netif_trans_update.exit_crit_edge:     ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #10
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.else239
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile i32 %175, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.else239.netif_trans_update.exit_crit_edge
  %179 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_head, align 8
  %inc242 = add i32 %180, 1
  store i32 %inc242, ptr %tx_head, align 8
  %181 = ptrtoint ptr %global_tx_head to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %global_tx_head, align 8
  %inc244 = add i32 %182, 1
  store i32 %inc244, ptr %global_tx_head, align 8
  br label %cleanup

cleanup:                                          ; preds = %netif_trans_update.exit, %if.then237, %do.end232.cleanup_crit_edge, %if.then147, %do.end112, %do.end84, %do.end52, %do.end23
  %retval.0 = phi i32 [ -1, %do.end23 ], [ -1, %do.end84 ], [ -1, %do.end112 ], [ -1, %if.then147 ], [ -1, %do.end52 ], [ %180, %netif_trans_update.exit ], [ 0, %if.then237 ], [ 0, %do.end232.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_skb_too_long(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_reap_ah(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1168
  tail call fastcc void @ipoib_reap_dead_ahs(ptr noundef %add.ptr)
  %flags = getelementptr i8, ptr %work, i32 -664
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wq = getelementptr i8, ptr %work, i32 -324
  %3 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wq, align 4
  %call1 = tail call i32 @round_jiffies_relative(i32 noundef 100) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipoib_reap_dead_ahs(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call fastcc void @local_bh_disable() #8
  tail call void @netif_tx_lock(ptr noundef %1) #8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %priv) #8
  %dead_ahs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 49
  %2 = ptrtoint ptr %dead_ahs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dead_ahs, align 8
  %cmp12.not40 = icmp eq ptr %3, %dead_ahs
  br i1 %cmp12.not40, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in41 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn44, %for.inc.for.body_crit_edge ]
  %ah.043 = getelementptr i8, ptr %.pn.in41, i32 -8
  %4 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn44 = load ptr, ptr %.pn.in41, align 4
  %5 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_tail, align 4
  %last_send = getelementptr i8, ptr %.pn.in41, i32 12
  %7 = ptrtoint ptr %last_send to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_send, align 4
  %sub = sub i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp14 = icmp sgt i32 %sub, -1
  br i1 %cmp14, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in41) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in41, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in41, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in41, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ah17 = getelementptr i8, ptr %.pn.in41, i32 -4
  %17 = ptrtoint ptr %ah17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ah17, align 4
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef %18, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %list_del.exit.rdma_destroy_ah.exit_crit_edge, label %land.rhs.i

list_del.exit.rdma_destroy_ah.exit_crit_edge:     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdma_destroy_ah.exit

land.rhs.i:                                       ; preds = %list_del.exit
  %.b1.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.rdma_destroy_ah.exit_crit_edge, label %if.then.i, !prof !263

land.rhs.i.rdma_destroy_ah.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rdma_destroy_ah.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.106) #8
  br label %rdma_destroy_ah.exit

rdma_destroy_ah.exit:                             ; preds = %if.then.i, %land.rhs.i.rdma_destroy_ah.exit_crit_edge, %list_del.exit.rdma_destroy_ah.exit_crit_edge
  tail call void @kfree(ptr noundef %ah.043) #8
  br label %for.inc

for.inc:                                          ; preds = %rdma_destroy_ah.exit, %for.body.for.inc_crit_edge
  %cmp12.not = icmp eq ptr %.pn44, %dead_ahs
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %priv, i32 noundef %call2) #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @netif_tx_unlock(ptr noundef %20) #8
  tail call fastcc void @local_bh_enable() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_ib_dev_stop_default(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %query_init_attr.i = alloca %struct.ib_qp_init_attr, align 4
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #8
  %2 = call ptr @memset(ptr %qp_attr, i32 255, i32 216)
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %recv_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 4
  tail call void @napi_disable(ptr noundef %recv_napi.i) #8
  %send_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %send_napi.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @ipoib_cm_dev_stop(ptr noundef %dev) #8
  %6 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %qp_attr, align 8
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp, align 8
  %call2 = call i32 @ib_modify_qp(ptr noundef %8, ptr noundef nonnull %qp_attr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qp, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #8
  %11 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %query_init_attr.i) #8
  %12 = call ptr @memset(ptr %query_init_attr.i, i32 255, i32 72)
  %call.i = call i32 @ib_query_qp(ptr noundef %10, ptr noundef nonnull %qp_attr.i, i32 noundef 1, ptr noundef nonnull %query_init_attr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.i

do.body.i:                                        ; preds = %if.then4
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @check_qp_movement_and_print._rs, ptr noundef nonnull @__func__.check_qp_movement_and_print) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.check_qp_movement_and_print.exit_crit_edge, label %do.end.i

do.body.i.check_qp_movement_and_print.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_qp_movement_and_print.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %14, ptr noundef nonnull @__func__.check_qp_movement_and_print) #12
  br label %check_qp_movement_and_print.exit

land.lhs.true.i:                                  ; preds = %if.then4
  %15 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qp_attr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.i = icmp eq i32 %16, 0
  br i1 %cmp9.i, label %do.body11.i, label %do.body25.i

do.body11.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %17 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12.i = icmp sgt i32 %17, 0
  br i1 %cmp12.i, label %do.end16.i, label %do.body11.i.check_qp_movement_and_print.exit_crit_edge

do.body11.i.check_qp_movement_and_print.exit_crit_edge: ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_qp_movement_and_print.exit

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev18.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18.i, align 4
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %19) #12
  br label %check_qp_movement_and_print.exit

do.body25.i:                                      ; preds = %land.lhs.true.i
  %call26.i = call i32 @___ratelimit(ptr noundef nonnull @check_qp_movement_and_print._rs.111, ptr noundef nonnull @__func__.check_qp_movement_and_print) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.check_qp_movement_and_print.exit_crit_edge, label %do.end31.i

do.body25.i.check_qp_movement_and_print.exit_crit_edge: ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %check_qp_movement_and_print.exit

do.end31.i:                                       ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev33.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33.i, align 4
  %22 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qp_attr.i, align 8
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %21, i32 noundef 6, i32 noundef %23) #12
  br label %check_qp_movement_and_print.exit

check_qp_movement_and_print.exit:                 ; preds = %do.end31.i, %do.body25.i.check_qp_movement_and_print.exit_crit_edge, %do.end16.i, %do.body11.i.check_qp_movement_and_print.exit_crit_edge, %do.end.i, %do.body.i.check_qp_movement_and_print.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %query_init_attr.i) #8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #8
  br label %if.end6

if.end6:                                          ; preds = %check_qp_movement_and_print.exit, %if.end.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %tx_head = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 39
  %tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 40
  %add = add i32 %24, 500
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end6
  %25 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_head, align 8
  %27 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not = icmp eq i32 %26, %28
  br i1 %cmp.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %29 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp5.i = icmp sgt i32 %29, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %lor.rhs.do.body48_crit_edge

lor.rhs.do.body48_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

for.body.lr.ph.i:                                 ; preds = %lor.rhs
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i, align 4
  %rx_ring.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %31, i32 0, i32 37
  %32 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_ring.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc1.i, %for.body.i.for.body.i_crit_edge ]
  %pending.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ipoib_rx_buf, ptr %33, i32 %i.07.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i123 = icmp ne ptr %35, null
  %inc.i = zext i1 %tobool.not.i123 to i32
  %spec.select.i = add i32 %pending.06.i, %inc.i
  %inc1.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %29
  br i1 %exitcond.not.i, label %recvs_pending.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

recvs_pending.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool8.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool8.not, label %recvs_pending.exit.do.body48_crit_edge, label %recvs_pending.exit.while.body_crit_edge

recvs_pending.exit.while.body_crit_edge:          ; preds = %recvs_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

recvs_pending.exit.do.body48_crit_edge:           ; preds = %recvs_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

while.body:                                       ; preds = %recvs_pending.exit.while.body_crit_edge, %while.cond.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %36
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %do.body, label %if.end46

do.body:                                          ; preds = %while.body
  %call11 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_stop_default._rs, ptr noundef nonnull @__func__.ipoib_ib_dev_stop_default) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body.do.end23_crit_edge, label %do.end

do.body.do.end23_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23

do.end:                                           ; preds = %do.body
  %dev15 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev15, align 4
  %39 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_head, align 8
  %41 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_tail, align 4
  %sub18 = sub i32 %40, %42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %43 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.i124 = icmp sgt i32 %43, 0
  br i1 %cmp5.i124, label %for.body.lr.ph.i127, label %do.end.recvs_pending.exit138_crit_edge

do.end.recvs_pending.exit138_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvs_pending.exit138

for.body.lr.ph.i127:                              ; preds = %do.end
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 4
  %rx_ring.i126 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %45, i32 0, i32 37
  %46 = ptrtoint ptr %rx_ring.i126 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_ring.i126, align 8
  br label %for.body.i136

for.body.i136:                                    ; preds = %for.body.i136.for.body.i136_crit_edge, %for.body.lr.ph.i127
  %i.07.i128 = phi i32 [ 0, %for.body.lr.ph.i127 ], [ %inc1.i134, %for.body.i136.for.body.i136_crit_edge ]
  %pending.06.i129 = phi i32 [ 0, %for.body.lr.ph.i127 ], [ %spec.select.i133, %for.body.i136.for.body.i136_crit_edge ]
  %arrayidx.i130 = getelementptr %struct.ipoib_rx_buf, ptr %47, i32 %i.07.i128
  %48 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i130, align 8
  %tobool.not.i131 = icmp ne ptr %49, null
  %inc.i132 = zext i1 %tobool.not.i131 to i32
  %spec.select.i133 = add i32 %pending.06.i129, %inc.i132
  %inc1.i134 = add nuw nsw i32 %i.07.i128, 1
  %exitcond.not.i135 = icmp eq i32 %inc1.i134, %43
  br i1 %exitcond.not.i135, label %for.body.i136.recvs_pending.exit138_crit_edge, label %for.body.i136.for.body.i136_crit_edge

for.body.i136.for.body.i136_crit_edge:            ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i136

for.body.i136.recvs_pending.exit138_crit_edge:    ; preds = %for.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %recvs_pending.exit138

recvs_pending.exit138:                            ; preds = %for.body.i136.recvs_pending.exit138_crit_edge, %do.end.recvs_pending.exit138_crit_edge
  %pending.0.lcssa.i137 = phi i32 [ 0, %do.end.recvs_pending.exit138_crit_edge ], [ %spec.select.i133, %for.body.i136.recvs_pending.exit138_crit_edge ]
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %38, i32 noundef %sub18, i32 noundef %pending.0.lcssa.i137) #12
  br label %do.end23

do.end23:                                         ; preds = %recvs_pending.exit138, %do.body.do.end23_crit_edge
  %50 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_tail, align 4
  %52 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_head, align 8
  %sub27151 = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27151)
  %cmp28152 = icmp slt i32 %sub27151, 0
  br i1 %cmp28152, label %while.body29.lr.ph, label %do.end23.for.cond.preheader_crit_edge

do.end23.for.cond.preheader_crit_edge:            ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

while.body29.lr.ph:                               ; preds = %do.end23
  %tx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 38
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %global_tx_tail = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 42
  br label %while.body29

for.cond.preheader:                               ; preds = %ipoib_dma_unmap_tx.exit.for.cond.preheader_crit_edge, %do.end23.for.cond.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %54 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp34153 = icmp sgt i32 %54, 0
  br i1 %cmp34153, label %for.body.lr.ph, label %for.cond.preheader.timeout_crit_edge

for.cond.preheader.timeout_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %timeout

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %ca.i143 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %max_ib_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  br label %for.body

while.body29:                                     ; preds = %ipoib_dma_unmap_tx.exit.while.body29_crit_edge, %while.body29.lr.ph
  %55 = phi i32 [ %51, %while.body29.lr.ph ], [ %inc, %ipoib_dma_unmap_tx.exit.while.body29_crit_edge ]
  %56 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_ring, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_sendq_size to i32))
  %58 = load i32, ptr @ipoib_sendq_size, align 4
  %sub31 = add i32 %58, -1
  %and = and i32 %sub31, %55
  %arrayidx = getelementptr %struct.ipoib_tx_buf, ptr %57, i32 %and
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 8
  %mapping2.i = getelementptr %struct.ipoib_tx_buf, ptr %57, i32 %and, i32 1
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 7
  %63 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %tobool.not.i139 = icmp eq i32 %62, %64
  br i1 %tobool.not.i139, label %while.body29.if.end.i_crit_edge, label %if.then.i

while.body29.if.end.i_crit_edge:                  ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body29
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %62, %64
  %65 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ca.i, align 8
  %67 = ptrtoint ptr %mapping2.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %mapping2.i, align 8
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %66, align 8
  %conv.i.i = trunc i64 %68 to i32
  call void @dma_unmap_page_attrs(ptr noundef %70, i32 noundef %conv.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body29.if.end.i_crit_edge
  %off.0.i = phi i32 [ 1, %if.then.i ], [ 0, %while.body29.if.end.i_crit_edge ]
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %60, i32 0, i32 17
  %71 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i.i, align 4
  %nr_frags25.i = getelementptr inbounds %struct.skb_shared_info, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %nr_frags25.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %nr_frags25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp27.not.i = icmp eq i8 %74, 0
  br i1 %cmp27.not.i, label %if.end.i.ipoib_dma_unmap_tx.exit_crit_edge, label %if.end.i.for.body.i142_crit_edge

if.end.i.for.body.i142_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i142

if.end.i.ipoib_dma_unmap_tx.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_dma_unmap_tx.exit

for.body.i142:                                    ; preds = %for.body.i142.for.body.i142_crit_edge, %if.end.i.for.body.i142_crit_edge
  %75 = phi ptr [ %85, %for.body.i142.for.body.i142_crit_edge ], [ %72, %if.end.i.for.body.i142_crit_edge ]
  %i.028.i = phi i32 [ %inc.i141, %for.body.i142.for.body.i142_crit_edge ], [ 0, %if.end.i.for.body.i142_crit_edge ]
  %76 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ca.i, align 8
  %add.i = add nuw nsw i32 %i.028.i, %off.0.i
  %arrayidx9.i = getelementptr i64, ptr %mapping2.i, i32 %add.i
  %78 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx9.i, align 8
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %75, i32 0, i32 12, i32 %i.028.i, i32 1
  %80 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bv_len.i.i, align 4
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %77, align 8
  %conv.i24.i = trunc i64 %79 to i32
  call void @dma_unmap_page_attrs(ptr noundef %83, i32 noundef %conv.i24.i, i32 noundef %81, i32 noundef 1, i32 noundef 0) #8
  %inc.i141 = add nuw nsw i32 %i.028.i, 1
  %84 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %87 to i32
  %cmp.i = icmp ult i32 %inc.i141, %conv.i
  br i1 %cmp.i, label %for.body.i142.for.body.i142_crit_edge, label %for.body.i142.ipoib_dma_unmap_tx.exit_crit_edge

for.body.i142.ipoib_dma_unmap_tx.exit_crit_edge:  ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %ipoib_dma_unmap_tx.exit

for.body.i142.for.body.i142_crit_edge:            ; preds = %for.body.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i142

ipoib_dma_unmap_tx.exit:                          ; preds = %for.body.i142.ipoib_dma_unmap_tx.exit_crit_edge, %if.end.i.ipoib_dma_unmap_tx.exit_crit_edge
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx, align 8
  call void @__dev_kfree_skb_any(ptr noundef %89, i32 noundef 1) #8
  %90 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_tail, align 4
  %inc = add i32 %91, 1
  store i32 %inc, ptr %tx_tail, align 4
  %92 = ptrtoint ptr %global_tx_tail to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %global_tx_tail, align 4
  %inc33 = add i32 %93, 1
  store i32 %inc33, ptr %global_tx_tail, align 4
  %94 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_head, align 8
  %sub27 = sub i32 %inc, %95
  %cmp28 = icmp slt i32 %sub27, 0
  br i1 %cmp28, label %ipoib_dma_unmap_tx.exit.while.body29_crit_edge, label %ipoib_dma_unmap_tx.exit.for.cond.preheader_crit_edge

ipoib_dma_unmap_tx.exit.for.cond.preheader_crit_edge: ; preds = %ipoib_dma_unmap_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

ipoib_dma_unmap_tx.exit.while.body29_crit_edge:   ; preds = %ipoib_dma_unmap_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body29

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc45, %cleanup.for.body_crit_edge ]
  %96 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_ring, align 8
  %arrayidx35 = getelementptr %struct.ipoib_rx_buf, ptr %97, i32 %i.0154
  %98 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx35, align 8
  %tobool37.not = icmp eq ptr %99, null
  br i1 %tobool37.not, label %for.body.cleanup_crit_edge, label %if.end39

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mapping = getelementptr %struct.ipoib_rx_buf, ptr %97, i32 %i.0154, i32 1
  %100 = ptrtoint ptr %ca.i143 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ca.i143, align 8
  %102 = ptrtoint ptr %mapping to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %mapping, align 8
  %104 = ptrtoint ptr %max_ib_mtu.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_ib_mtu.i, align 4
  %add.i144 = add i32 %105, 40
  %106 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %101, align 8
  %conv.i.i145 = trunc i64 %103 to i32
  call void @dma_unmap_page_attrs(ptr noundef %107, i32 noundef %conv.i.i145, i32 noundef %add.i144, i32 noundef 2, i32 noundef 0) #8
  %108 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx35, align 8
  call void @__dev_kfree_skb_any(ptr noundef %109, i32 noundef 1) #8
  %110 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %arrayidx35, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %for.body.cleanup_crit_edge
  %inc45 = add nuw nsw i32 %i.0154, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %111 = load i32, ptr @ipoib_recvq_size, align 4
  %cmp34 = icmp slt i32 %inc45, %111
  br i1 %cmp34, label %cleanup.for.body_crit_edge, label %cleanup.timeout_crit_edge

cleanup.timeout_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %timeout

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end46:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @ipoib_drain_cq(ptr noundef %dev)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %while.cond

do.body48:                                        ; preds = %recvs_pending.exit.do.body48_crit_edge, %lor.rhs.do.body48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %112 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp49 = icmp sgt i32 %112, 0
  br i1 %cmp49, label %do.end53, label %do.body48.timeout_crit_edge

do.body48.timeout_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  br label %timeout

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %dev55 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %113 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev55, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %114) #12
  br label %timeout

timeout:                                          ; preds = %do.end53, %do.body48.timeout_crit_edge, %cleanup.timeout_crit_edge, %for.cond.preheader.timeout_crit_edge
  %115 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %qp_attr, align 8
  %116 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %qp, align 8
  %call64 = call i32 @ib_modify_qp(ptr noundef %117, ptr noundef nonnull %qp_attr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %timeout.if.end82_crit_edge, label %do.body67

timeout.if.end82_crit_edge:                       ; preds = %timeout
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.body67:                                        ; preds = %timeout
  %call68 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_stop_default._rs.37, ptr noundef nonnull @__func__.ipoib_ib_dev_stop_default) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.body67.if.end82_crit_edge, label %do.end73

do.body67.if.end82_crit_edge:                     ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

do.end73:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %118 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev75, align 4
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %119) #12
  br label %if.end82

if.end82:                                         ; preds = %do.end73, %do.body67.if.end82_crit_edge, %timeout.if.end82_crit_edge
  %recv_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 28
  %120 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %recv_cq, align 8
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %123, i32 0, i32 1, i32 12
  %124 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i146 = call i32 %125(ptr noundef %121, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_cm_dev_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_drain_cq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  tail call fastcc void @local_bh_disable()
  %recv_cq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 28
  %ibwc = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 48
  br label %do.body

do.body:                                          ; preds = %do.cond25.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %recv_cq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recv_cq, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 10
  %6 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 4, ptr noundef %ibwc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp51 = icmp sgt i32 %call.i, 0
  br i1 %cmp51, label %do.body.for.body_crit_edge, label %do.body.while.cond.preheader_crit_edge

do.body.while.cond.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 48, i32 %i.052
  %status = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 48, i32 %i.052, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp3 = icmp eq i32 %9, 0
  br i1 %cmp3, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5, ptr %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %and = and i64 %12, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then9

if.then9:                                         ; preds = %if.end
  %and12 = and i64 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  %add.ptr19 = getelementptr %struct.ib_wc, ptr %ibwc, i32 %i.052
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipoib_cm_handle_rx_wc(ptr noundef %dev, ptr noundef %add.ptr19) #8
  br label %for.inc

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ipoib_ib_handle_rx_wc(ptr noundef %dev, ptr noundef %add.ptr19)
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.60) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.else, %if.then14
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %do.cond25, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.cond25:                                        ; preds = %for.inc
  %cmp26 = icmp eq i32 %call.i, 4
  br i1 %cmp26, label %do.cond25.do.body_crit_edge, label %do.cond25.while.cond.preheader_crit_edge

do.cond25.while.cond.preheader_crit_edge:         ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.cond25.do.body_crit_edge:                      ; preds = %do.cond25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.cond.preheader:                             ; preds = %do.cond25.while.cond.preheader_crit_edge, %do.body.while.cond.preheader_crit_edge
  %send_cq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 29
  %send_wc.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 45
  %dev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %poll_tx.exit.while.cond_crit_edge, %while.cond.preheader
  %13 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %send_cq.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %poll_cq.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 10
  %17 = ptrtoint ptr %poll_cq.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %poll_cq.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %14, i32 noundef 64, ptr noundef %send_wc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp22.i, label %while.cond.for.body.i_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.cond.for.body.i_crit_edge:                  ; preds = %while.cond
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %while.cond.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %while.cond.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.ib_wc, ptr %send_wc.i, i32 %i.023.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr.i, align 8
  %and.i = and i64 %20, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipoib_cm_handle_tx_wc(ptr noundef %22, ptr noundef %add.ptr.i) #8
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ipoib_ib_handle_tx_wc(ptr noundef %22, ptr noundef %add.ptr.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %poll_tx.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

poll_tx.exit:                                     ; preds = %for.inc.i
  %cmp10.i.not = icmp eq i32 %call.i.i, 64
  br i1 %cmp10.i.not, label %poll_tx.exit.while.cond_crit_edge, label %poll_tx.exit.while.end_crit_edge

poll_tx.exit.while.end_crit_edge:                 ; preds = %poll_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

poll_tx.exit.while.cond_crit_edge:                ; preds = %poll_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %poll_tx.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_ib_dev_open_default(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %call1 = tail call i32 @ipoib_init_qp(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_open_default._rs, ptr noundef nonnull @__func__.ipoib_ib_dev_open_default) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %3, i32 noundef %call1) #12
  br label %cleanup

if.end10:                                         ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %6 = load i32, ptr @ipoib_recvq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp41.i = icmp sgt i32 %6, 0
  br i1 %cmp41.i, label %if.end10.for.body.i_crit_edge, label %if.end10.if.end29_crit_edge

if.end10.if.end29_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %call1.i = tail call fastcc ptr @ipoib_alloc_rx_skb(ptr noundef %dev, i32 noundef %i.042.i) #8
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %for.body.i
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_post_receives._rs, ptr noundef nonnull @__func__.ipoib_ib_post_receives) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.body14_crit_edge, label %do.body.i.do.body14.sink.split_crit_edge

do.body.i.do.body14.sink.split_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.sink.split

do.body.i.do.body14_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

if.end10.i:                                       ; preds = %for.body.i
  %call11.i = tail call fastcc i32 @ipoib_ib_post_receive(ptr noundef %dev, i32 noundef %i.042.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.inc.i, label %do.body14.i

do.body14.i:                                      ; preds = %if.end10.i
  %call15.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_post_receives._rs.116, ptr noundef nonnull @__func__.ipoib_ib_post_receives) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.do.body14_crit_edge, label %do.body14.i.do.body14.sink.split_crit_edge

do.body14.i.do.body14.sink.split_crit_edge:       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14.sink.split

do.body14.i.do.body14_crit_edge:                  ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

for.inc.i:                                        ; preds = %if.end10.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_recvq_size to i32))
  %7 = load i32, ptr @ipoib_recvq_size, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end29_crit_edge

for.inc.i.if.end29_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.body14.sink.split:                             ; preds = %do.body14.i.do.body14.sink.split_crit_edge, %do.body.i.do.body14.sink.split_crit_edge
  %.str.115.sink = phi ptr [ @.str.115, %do.body.i.do.body14.sink.split_crit_edge ], [ @.str.79, %do.body14.i.do.body14.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -12, %do.body.i.do.body14.sink.split_crit_edge ], [ -5, %do.body14.i.do.body14.sink.split_crit_edge ]
  %dev6.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.115.sink, ptr noundef %9, i32 noundef %i.042.i) #12
  br label %do.body14

do.body14:                                        ; preds = %do.body14.sink.split, %do.body14.i.do.body14_crit_edge, %do.body.i.do.body14_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %do.body14.i.do.body14_crit_edge ], [ -12, %do.body.i.do.body14_crit_edge ], [ %retval.0.i.ph.ph, %do.body14.sink.split ]
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_open_default._rs.42, ptr noundef nonnull @__func__.ipoib_ib_dev_open_default) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %do.end20

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev22, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %11, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

if.end29:                                         ; preds = %for.inc.i.if.end29_crit_edge, %if.end10.if.end29_crit_edge
  %call30 = tail call i32 @ipoib_cm_dev_open(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end48, label %do.body33

do.body33:                                        ; preds = %if.end29
  %call34 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_open_default._rs.46, ptr noundef nonnull @__func__.ipoib_ib_dev_open_default) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %do.end39

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end39:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev41, align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %13, i32 noundef %call30) #12
  br label %cleanup

if.end48:                                         ; preds = %if.end29
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool50.not = icmp eq i32 %16, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 4
  %recv_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 4
  tail call void @napi_enable(ptr noundef %recv_napi.i) #8
  %send_napi.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %18, i32 0, i32 3
  tail call void @napi_enable(ptr noundef %send_napi.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end48.cleanup_crit_edge, %do.end39, %do.body33.cleanup_crit_edge, %do.end20, %do.body14.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end48.cleanup_crit_edge ], [ -1, %do.body33.cleanup_crit_edge ], [ -1, %do.end39 ], [ -1, %do.body14.cleanup_crit_edge ], [ -1, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_init_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipoib_cm_dev_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_ib_dev_open(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey.i, align 2
  %4 = and i16 %3, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca.i, align 8
  %port.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port.i, align 4
  %conv2.i = zext i8 %8 to i32
  %pkey_index.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 26
  %call4.i = tail call i32 @ib_find_pkey(ptr noundef %6, i32 noundef %conv2.i, i16 noundef zeroext %3, ptr noundef %pkey_index.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #8
  br label %ipoib_pkey_dev_check_presence.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %set_id.i = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %set_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_id.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then7.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkey_index.i, align 8
  %conv10.i = zext i16 %12 to i32
  tail call void %10(ptr noundef %dev, i32 noundef %conv10.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.else.i.if.end.i_crit_edge
  %flags11.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags11.i) #8
  br label %ipoib_pkey_dev_check_presence.exit

ipoib_pkey_dev_check_presence.exit:               ; preds = %if.end.i, %if.then.i
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body, label %if.end13

do.body:                                          ; preds = %ipoib_pkey_dev_check_presence.exit
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_dev_open._rs, ptr noundef nonnull @__func__.ipoib_ib_dev_open) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 4
  %18 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pkey.i, align 2
  %conv = zext i16 %19 to i32
  %and = and i32 %conv, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool9.not, ptr @.str.51, ptr @.str.52
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %17, i32 noundef %conv, ptr noundef nonnull %cond) #12
  br label %cleanup

if.end13:                                         ; preds = %ipoib_pkey_dev_check_presence.exit
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags) #8
  %wq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wq.i, align 4
  %ah_reap_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 21
  %call.i = tail call i32 @round_jiffies_relative(i32 noundef 100) #8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %ah_reap_task.i, i32 noundef %call.i) #8
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %22 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rn_ops, align 8
  %ndo_open = getelementptr inbounds %struct.net_device_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ndo_open to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ndo_open, align 4
  %call14 = tail call i32 %25(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %dev) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #8
  %call.i39 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ah_reap_task.i) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end19 ], [ 0, %if.end24 ], [ -1, %do.end ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_pkey_dev_check_presence(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey, align 2
  %4 = and i16 %3, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port, align 4
  %conv2 = zext i8 %8 to i32
  %pkey_index = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 26
  %call4 = tail call i32 @ib_find_pkey(ptr noundef %6, i32 noundef %conv2, i16 noundef zeroext %3, ptr noundef %pkey_index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  br label %if.end12

if.else:                                          ; preds = %lor.lhs.false
  %set_id = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %set_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_id, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.else.if.end_crit_edge, label %if.then7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkey_index, align 8
  %conv10 = zext i16 %12 to i32
  tail call void %10(ptr noundef %dev, i32 noundef %conv10) #8
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else.if.end_crit_edge
  %flags11 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags11) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_stop(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rn_ops, align 8
  %ndo_stop = getelementptr inbounds %struct.net_device_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ndo_stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndo_stop, align 4
  %call1 = tail call i32 %5(ptr noundef %dev) #8
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags) #8
  %ah_reap_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 21
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ah_reap_task.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_up(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %pkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pkey.i, align 2
  %4 = and i16 %3, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca.i, align 8
  %port.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port.i, align 4
  %conv2.i = zext i8 %8 to i32
  %pkey_index.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 26
  %call4.i = tail call i32 @ib_find_pkey(ptr noundef %6, i32 noundef %conv2.i, i16 noundef zeroext %3, ptr noundef %pkey_index.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #8
  br label %ipoib_pkey_dev_check_presence.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  %set_id.i = getelementptr i8, ptr %dev, i32 2324
  %9 = ptrtoint ptr %set_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_id.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %if.else.i.if.end.i_crit_edge, label %if.then7.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pkey_index.i, align 8
  %conv10.i = zext i16 %12 to i32
  tail call void %10(ptr noundef %dev, i32 noundef %conv10.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.else.i.if.end.i_crit_edge
  %flags11.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags11.i) #8
  br label %ipoib_pkey_dev_check_presence.exit

ipoib_pkey_dev_check_presence.exit:               ; preds = %if.end.i, %if.then.i
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %ipoib_pkey_dev_check_presence.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %16 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp sgt i32 %16, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %18) #12
  br label %cleanup

if.end8:                                          ; preds = %ipoib_pkey_dev_check_presence.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  tail call void @ipoib_mcast_start_thread(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_start_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_down(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  tail call void @netif_carrier_off(ptr noundef %dev) #8
  tail call void @ipoib_mcast_stop_thread(ptr noundef %dev) #8
  tail call void @ipoib_mcast_dev_flush(ptr noundef %dev) #8
  tail call void @ipoib_flush_paths(ptr noundef %dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_stop_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_dev_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_flush_paths(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_flush_light(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -992
  tail call fastcc void @__ipoib_ib_dev_flush(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ipoib_ib_dev_flush(ptr noundef %priv, i32 noundef %level, i32 noundef %nesting) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %vlan_rwsem = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 6
  tail call void @down_read_nested(ptr noundef %vlan_rwsem, i32 noundef %nesting) #8
  %child_intfs = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 52
  %2 = ptrtoint ptr %child_intfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn279 = load ptr, ptr %child_intfs, align 4
  %cmp.not280 = icmp eq ptr %.pn279, %child_intfs
  br i1 %cmp.not280, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add = add i32 %nesting, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn281 = phi ptr [ %.pn279, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %cpriv.0 = getelementptr i8, ptr %.pn281, i32 -6260
  tail call fastcc void @__ipoib_ib_dev_flush(ptr noundef %cpriv.0, i32 noundef %level, i32 noundef %add)
  %3 = ptrtoint ptr %.pn281 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn281, align 4
  %cmp.not = icmp eq ptr %.pn, %child_intfs
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_read(ptr noundef %vlan_rwsem) #8
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cmp9.not = icmp eq i32 %level, 2
  %or.cond = or i1 %cmp9.not, %tobool.not
  br i1 %or.cond, label %if.end22, label %if.then

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp10 = icmp eq i32 %level, 0
  br i1 %cmp10, label %if.then11, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc zeroext i1 @ipoib_dev_addr_changed_valid(ptr noundef %priv)
  br label %do.body

do.body:                                          ; preds = %if.then11, %if.then.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %7 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp sgt i32 %7, 0
  br i1 %cmp13, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %9) #12
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool25.not = icmp eq i32 %12, 0
  br i1 %tobool25.not, label %if.then26, label %if.end56

if.then26:                                        ; preds = %if.end22
  %13 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %level, label %if.then26.do.body42_crit_edge [
    i32 2, label %if.then28
    i32 0, label %if.then38
  ]

if.then26.do.body42_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

if.then28:                                        ; preds = %if.then26
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  br i1 %tobool31.not, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then28
  %pkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 25
  %17 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey.i, align 2
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  %19 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ca.i, align 8
  %port.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 24
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port.i, align 4
  %conv.i = zext i8 %22 to i32
  %call.i = tail call i32 @ib_query_pkey(ptr noundef %20, i32 noundef %conv.i, i16 noundef zeroext 0, ptr noundef %pkey.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end11.i, label %do.body.i

do.body.i:                                        ; preds = %if.then32
  %call2.i = tail call i32 @___ratelimit(ptr noundef nonnull @update_parent_pkey._rs, ptr noundef nonnull @__func__.update_parent_pkey) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.do.body42_crit_edge, label %do.end.i

do.body.i.do.body42_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port.i, align 4
  %conv7.i = zext i8 %26 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %24, i32 noundef %conv7.i, i32 noundef %call.i) #12
  br label %do.body42

if.end11.i:                                       ; preds = %if.then32
  %27 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %pkey.i, align 2
  %29 = or i16 %28, -32768
  store i16 %29, ptr %pkey.i, align 2
  %conv15.i = zext i16 %18 to i32
  %conv17.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %29)
  %cmp.not.i = icmp eq i16 %18, %29
  br i1 %cmp.not.i, label %if.end11.i.do.body42_crit_edge, label %do.body20.i

if.end11.i.do.body42_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body42

do.body20.i:                                      ; preds = %if.end11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %30 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp21.i = icmp sgt i32 %30, 0
  br i1 %cmp21.i, label %do.end26.i, label %do.body20.i.do.end37.i_crit_edge

do.body20.i.do.end37.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end37.i

do.end26.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %32, i32 noundef %conv15.i, i32 noundef %conv17.i) #12
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end26.i, %do.body20.i.do.end37.i_crit_edge
  %33 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %pkey.i, align 2
  %35 = lshr i16 %34, 8
  %conv40.i = trunc i16 %35 to i8
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  %arrayidx.i = getelementptr %struct.net_device, ptr %37, i32 0, i32 99, i32 8
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv40.i, ptr %arrayidx.i, align 4
  %39 = load i16, ptr %pkey.i, align 2
  %conv44.i = trunc i16 %39 to i8
  %40 = load ptr, ptr %dev1, align 4
  %arrayidx47.i = getelementptr %struct.net_device, ptr %40, i32 0, i32 99, i32 9
  %41 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv44.i, ptr %arrayidx47.i, align 1
  br label %do.body42

if.else:                                          ; preds = %if.then28
  %pkey_index.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 26
  %42 = ptrtoint ptr %pkey_index.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %pkey_index.i, align 8
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %44, i32 2304
  %45 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %pkey.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pkey.i.i, align 2
  %49 = and i16 %48, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i.i, label %if.else.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.else
  %ca.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 23
  %50 = ptrtoint ptr %ca.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ca.i.i, align 8
  %port.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 24
  %52 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %port.i.i, align 4
  %conv2.i.i = zext i8 %53 to i32
  %pkey_index.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 26
  %call4.i.i = tail call i32 @ib_find_pkey(ptr noundef %51, i32 noundef %conv2.i.i, i16 noundef zeroext %48, ptr noundef %pkey_index.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.else.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.else.if.then.i.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #8
  br label %ipoib_pkey_dev_check_presence.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  %set_id.i.i = getelementptr i8, ptr %44, i32 2324
  %54 = ptrtoint ptr %set_id.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %set_id.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i.i, label %if.else.i.i.if.end.i.i_crit_edge, label %if.then7.i.i

if.else.i.i.if.end.i.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %pkey_index.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pkey_index.i.i, align 8
  %conv10.i.i = zext i16 %57 to i32
  tail call void %55(ptr noundef %44, i32 noundef %conv10.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then7.i.i, %if.else.i.i.if.end.i.i_crit_edge
  %flags11.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %46, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags11.i.i) #8
  br label %ipoib_pkey_dev_check_presence.exit.i

ipoib_pkey_dev_check_presence.exit.i:             ; preds = %if.end.i.i, %if.then.i.i
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags, align 4
  br label %do.body42

if.then38:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = tail call fastcc zeroext i1 @ipoib_dev_addr_changed_valid(ptr noundef %priv)
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %ipoib_pkey_dev_check_presence.exit.i, %do.end37.i, %if.end11.i.do.body42_crit_edge, %do.end.i, %do.body.i.do.body42_crit_edge, %if.then26.do.body42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %60 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp43 = icmp sgt i32 %60, 0
  br i1 %cmp43, label %do.end47, label %do.body42.cleanup_crit_edge

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1, align 4
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %62) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end22
  br i1 %cmp9.not, label %if.then58, label %if.end101

if.then58:                                        ; preds = %if.end56
  %63 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %flags, align 4
  %65 = and i32 %64, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool61.not = icmp eq i32 %65, 0
  br i1 %tobool61.not, label %if.else81, label %if.then62

if.then62:                                        ; preds = %if.then58
  %pkey_index.i200 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 26
  %66 = ptrtoint ptr %pkey_index.i200 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %pkey_index.i200, align 8
  store i16 0, ptr %pkey_index.i200, align 8
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 4
  %add.ptr.i.i.i.i202 = getelementptr i8, ptr %69, i32 2304
  %70 = ptrtoint ptr %add.ptr.i.i.i.i202 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i.i.i.i202, align 4
  %pkey.i.i203 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 25
  %72 = ptrtoint ptr %pkey.i.i203 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %pkey.i.i203, align 2
  %74 = and i16 %73, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i.i204 = icmp eq i16 %74, 0
  br i1 %tobool.not.i.i204, label %if.then62.if.then.i.i213_crit_edge, label %lor.lhs.false.i.i211

if.then62.if.then.i.i213_crit_edge:               ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i213

lor.lhs.false.i.i211:                             ; preds = %if.then62
  %ca.i.i205 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 23
  %75 = ptrtoint ptr %ca.i.i205 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ca.i.i205, align 8
  %port.i.i206 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 24
  %77 = ptrtoint ptr %port.i.i206 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %port.i.i206, align 4
  %conv2.i.i207 = zext i8 %78 to i32
  %pkey_index.i.i208 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 26
  %call4.i.i209 = tail call i32 @ib_find_pkey(ptr noundef %76, i32 noundef %conv2.i.i207, i16 noundef zeroext %73, ptr noundef %pkey_index.i.i208) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i209)
  %tobool5.not.i.i210 = icmp eq i32 %call4.i.i209, 0
  br i1 %tobool5.not.i.i210, label %if.else.i.i216, label %lor.lhs.false.i.i211.if.then.i.i213_crit_edge

lor.lhs.false.i.i211.if.then.i.i213_crit_edge:    ; preds = %lor.lhs.false.i.i211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i213

if.then.i.i213:                                   ; preds = %lor.lhs.false.i.i211.if.then.i.i213_crit_edge, %if.then62.if.then.i.i213_crit_edge
  %flags.i.i212 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i212) #8
  br label %ipoib_pkey_dev_check_presence.exit.i223

if.else.i.i216:                                   ; preds = %lor.lhs.false.i.i211
  %set_id.i.i214 = getelementptr i8, ptr %69, i32 2324
  %79 = ptrtoint ptr %set_id.i.i214 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %set_id.i.i214, align 4
  %tobool6.not.i.i215 = icmp eq ptr %80, null
  br i1 %tobool6.not.i.i215, label %if.else.i.i216.if.end.i.i220_crit_edge, label %if.then7.i.i218

if.else.i.i216.if.end.i.i220_crit_edge:           ; preds = %if.else.i.i216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i220

if.then7.i.i218:                                  ; preds = %if.else.i.i216
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %pkey_index.i.i208 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pkey_index.i.i208, align 8
  %conv10.i.i217 = zext i16 %82 to i32
  tail call void %80(ptr noundef %69, i32 noundef %conv10.i.i217) #8
  br label %if.end.i.i220

if.end.i.i220:                                    ; preds = %if.then7.i.i218, %if.else.i.i216.if.end.i.i220_crit_edge
  %flags11.i.i219 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %71, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags11.i.i219) #8
  br label %ipoib_pkey_dev_check_presence.exit.i223

ipoib_pkey_dev_check_presence.exit.i223:          ; preds = %if.end.i.i220, %if.then.i.i213
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %flags, align 4
  %85 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i222 = icmp eq i32 %85, 0
  br i1 %tobool.not.i222, label %ipoib_pkey_dev_check_presence.exit.i223.if.then112_crit_edge, label %land.lhs.true.i225

ipoib_pkey_dev_check_presence.exit.i223.if.then112_crit_edge: ; preds = %ipoib_pkey_dev_check_presence.exit.i223
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

land.lhs.true.i225:                               ; preds = %ipoib_pkey_dev_check_presence.exit.i223
  %86 = ptrtoint ptr %pkey_index.i200 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %pkey_index.i200, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %87)
  %cmp.i224 = icmp eq i16 %67, %87
  br i1 %cmp.i224, label %do.body66, label %land.lhs.true.i225.if.then112_crit_edge

land.lhs.true.i225.if.then112_crit_edge:          ; preds = %land.lhs.true.i225
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

do.body66:                                        ; preds = %land.lhs.true.i225
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %88 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp67 = icmp sgt i32 %88, 0
  br i1 %cmp67, label %do.end71, label %do.body66.cleanup_crit_edge

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end71:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %90) #12
  br label %cleanup

if.else81:                                        ; preds = %if.then58
  %pkey.i229 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 25
  %91 = ptrtoint ptr %pkey.i229 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pkey.i229, align 2
  %ca.i230 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  %93 = ptrtoint ptr %ca.i230 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ca.i230, align 8
  %port.i231 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 24
  %95 = ptrtoint ptr %port.i231 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %port.i231, align 4
  %conv.i232 = zext i8 %96 to i32
  %call.i233 = tail call i32 @ib_query_pkey(ptr noundef %94, i32 noundef %conv.i232, i16 noundef zeroext 0, ptr noundef %pkey.i229) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool.not.i234 = icmp eq i32 %call.i233, 0
  br i1 %tobool.not.i234, label %if.end11.i245, label %do.body.i237

do.body.i237:                                     ; preds = %if.else81
  %call2.i235 = tail call i32 @___ratelimit(ptr noundef nonnull @update_parent_pkey._rs, ptr noundef nonnull @__func__.update_parent_pkey) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i235)
  %tobool3.not.i236 = icmp eq i32 %call2.i235, 0
  br i1 %tobool3.not.i236, label %do.body.i237.do.body85_crit_edge, label %do.end.i241

do.body.i237.do.body85_crit_edge:                 ; preds = %do.body.i237
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85

do.end.i241:                                      ; preds = %do.body.i237
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev1, align 4
  %99 = ptrtoint ptr %port.i231 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %port.i231, align 4
  %conv7.i239 = zext i8 %100 to i32
  %call8.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef %98, i32 noundef %conv7.i239, i32 noundef %call.i233) #12
  br label %do.body85

if.end11.i245:                                    ; preds = %if.else81
  %101 = ptrtoint ptr %pkey.i229 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pkey.i229, align 2
  %103 = or i16 %102, -32768
  store i16 %103, ptr %pkey.i229, align 2
  %conv15.i242 = zext i16 %92 to i32
  %conv17.i243 = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %92, i16 %103)
  %cmp.not.i244 = icmp eq i16 %92, %103
  br i1 %cmp.not.i244, label %if.end11.i245.do.body85_crit_edge, label %do.body20.i247

if.end11.i245.do.body85_crit_edge:                ; preds = %if.end11.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85

do.body20.i247:                                   ; preds = %if.end11.i245
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %104 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp21.i246 = icmp sgt i32 %104, 0
  br i1 %cmp21.i246, label %do.end26.i250, label %do.body20.i247.update_parent_pkey.exit258_crit_edge

do.body20.i247.update_parent_pkey.exit258_crit_edge: ; preds = %do.body20.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_parent_pkey.exit258

do.end26.i250:                                    ; preds = %do.body20.i247
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev1, align 4
  %call34.i249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef %106, i32 noundef %conv15.i242, i32 noundef %conv17.i243) #12
  br label %update_parent_pkey.exit258

update_parent_pkey.exit258:                       ; preds = %do.end26.i250, %do.body20.i247.update_parent_pkey.exit258_crit_edge
  %107 = ptrtoint ptr %pkey.i229 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %pkey.i229, align 2
  %109 = lshr i16 %108, 8
  %conv40.i251 = trunc i16 %109 to i8
  %110 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev1, align 4
  %arrayidx.i253 = getelementptr %struct.net_device, ptr %111, i32 0, i32 99, i32 8
  %112 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv40.i251, ptr %arrayidx.i253, align 4
  %113 = load i16, ptr %pkey.i229, align 2
  %conv44.i254 = trunc i16 %113 to i8
  %114 = load ptr, ptr %dev1, align 4
  %arrayidx47.i255 = getelementptr %struct.net_device, ptr %114, i32 0, i32 99, i32 9
  %115 = ptrtoint ptr %arrayidx47.i255 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv44.i254, ptr %arrayidx47.i255, align 1
  br label %if.then112

do.body85:                                        ; preds = %if.end11.i245.do.body85_crit_edge, %do.end.i241, %do.body.i237.do.body85_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %116 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp86 = icmp sgt i32 %116, 0
  br i1 %cmp86, label %do.end90, label %do.body85.cleanup_crit_edge

do.body85.cleanup_crit_edge:                      ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end90:                                         ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev1, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %118) #12
  br label %cleanup

if.end101:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cmp102 = icmp eq i32 %level, 0
  br i1 %cmp102, label %if.then103, label %if.end101.if.then112_crit_edge

if.end101.if.then112_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then112

if.then103:                                       ; preds = %if.end101
  tail call void @ipoib_mark_paths_invalid(ptr noundef %1) #8
  %call105 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  tail call void @ipoib_mcast_dev_flush(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then103.if.end128.thread_crit_edge, label %if.then107

if.then103.if.end128.thread_crit_edge:            ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.thread

if.then107:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  br label %if.end128.thread

if.then112:                                       ; preds = %if.end101.if.then112_crit_edge, %update_parent_pkey.exit258, %land.lhs.true.i225.if.then112_crit_edge, %ipoib_pkey_dev_check_presence.exit.i223.if.then112_crit_edge
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %119 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %121 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i259 = icmp sgt i32 %121, 0
  br i1 %cmp.i259, label %do.end.i260, label %if.then112.if.end113_crit_edge

if.then112.if.end113_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

do.end.i260:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %120, i32 0, i32 1
  %122 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev2.i, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %123) #12
  br label %if.end113

if.end113:                                        ; preds = %do.end.i260, %if.then112.if.end113_crit_edge
  %flags.i261 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %120, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i261) #8
  tail call void @netif_carrier_off(ptr noundef %1) #8
  tail call void @ipoib_mcast_stop_thread(ptr noundef %1) #8
  tail call void @ipoib_mcast_dev_flush(ptr noundef %1) #8
  tail call void @ipoib_flush_paths(ptr noundef %1) #8
  br i1 %cmp9.not, label %if.then115, label %if.end113.if.end128_crit_edge

if.end113.if.end128_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then115:                                       ; preds = %if.end113
  %124 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %flags, align 4
  %126 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool118.not = icmp eq i32 %126, 0
  br i1 %tobool118.not, label %if.then115.if.end120_crit_edge, label %if.then119

if.then115.if.end120_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i.i.i, align 4
  %rn_ops.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %128, i32 0, i32 62
  %129 = ptrtoint ptr %rn_ops.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rn_ops.i, align 8
  %ndo_stop.i = getelementptr inbounds %struct.net_device_ops, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %ndo_stop.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ndo_stop.i, align 4
  %call1.i = tail call i32 %132(ptr noundef %1) #8
  %flags.i263 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %128, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i263) #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i263) #8
  %ah_reap_task.i.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %128, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %ah_reap_task.i.i) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.then115.if.end120_crit_edge
  %call121 = tail call i32 @ipoib_ib_dev_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end124:                                        ; preds = %if.end120
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %133 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %134, i32 0, i32 13
  %135 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.end124.if.end128_crit_edge, label %if.then126

if.end124.if.end128_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then126:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end124.if.end128_crit_edge, %if.end113.if.end128_crit_edge
  %137 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %flags, align 4
  %139 = and i32 %138, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool131.not = icmp eq i32 %139, 0
  br i1 %tobool131.not, label %if.end128.cleanup_crit_edge, label %if.then134

if.end128.cleanup_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end128.thread:                                 ; preds = %if.then107, %if.then103.if.end128.thread_crit_edge
  tail call fastcc void @ipoib_reap_dead_ahs(ptr noundef %priv)
  %140 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load volatile i32, ptr %flags, align 4
  %142 = and i32 %141, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool131.not283 = icmp eq i32 %142, 0
  br i1 %tobool131.not283, label %if.end128.thread.cleanup_crit_edge, label %if.end128.thread.if.end135_crit_edge

if.end128.thread.if.end135_crit_edge:             ; preds = %if.end128.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.end128.thread.cleanup_crit_edge:               ; preds = %if.end128.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ipoib_ib_dev_up(ptr noundef %1)
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end128.thread.if.end135_crit_edge
  %call136 = tail call fastcc zeroext i1 @ipoib_dev_addr_changed_valid(ptr noundef %priv)
  br i1 %call136, label %if.then137, label %if.end135.cleanup_crit_edge

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  %restart_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 20
  tail call void @ipoib_mcast_restart_task(ptr noundef %restart_task) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then137, %if.end135.cleanup_crit_edge, %if.end128.thread.cleanup_crit_edge, %if.end128.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %do.end90, %do.body85.cleanup_crit_edge, %do.end71, %do.body66.cleanup_crit_edge, %do.end47, %do.body42.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_flush_normal(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1036
  tail call fastcc void @__ipoib_ib_dev_flush(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_flush_heavy(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1080
  tail call void @rtnl_lock() #8
  tail call fastcc void @__ipoib_ib_dev_flush(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0)
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_ib_dev_cleanup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %2 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %4) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @ipoib_flush_paths(ptr noundef %dev) #8
  tail call void @ipoib_mcast_stop_thread(ptr noundef %dev) #8
  tail call void @ipoib_mcast_dev_flush(ptr noundef %dev) #8
  tail call fastcc void @ipoib_reap_dead_ahs(ptr noundef %1)
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags) #8
  %rn_ops = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 62
  %5 = ptrtoint ptr %rn_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rn_ops, align 8
  %ndo_uninit = getelementptr inbounds %struct.net_device_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ndo_uninit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ndo_uninit, align 4
  tail call void %8(ptr noundef %dev) #8
  %pd = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %do.end5.if.end9_crit_edge, label %if.then6

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %do.end5
  %call.i = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %10, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then6.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i

if.then6.ib_dealloc_pd.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dealloc_pd.exit

land.rhs.i:                                       ; preds = %if.then6
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_dealloc_pd.exit_crit_edge, label %if.then.i, !prof !263

land.rhs.i.ib_dealloc_pd.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dealloc_pd.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.105, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.134) #8
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_dealloc_pd.exit_crit_edge, %if.then6.ib_dealloc_pd.exit_crit_edge
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %pd, align 4
  br label %if.end9

if.end9:                                          ; preds = %ib_dealloc_pd.exit, %do.end5.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipoib_alloc_rx_skb(ptr nocapture noundef readonly %dev, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %max_ib_mtu = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %max_ib_mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ib_mtu, align 4
  %add1 = add i32 %3, 64
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add1, i32 noundef 2592) #8
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !265

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %7, i32 20
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ring, align 8
  %mapping6 = getelementptr %struct.ipoib_rx_buf, ptr %9, i32 %id, i32 1
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ca, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call.i.i39 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i) #8
  br i1 %call.i.i39, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !263

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %13) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %17, %if.end.i.i.i ], [ %15, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.64, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %3, 40
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %add.ptr.i, i32 noundef %add) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %add.ptr.i to i32
  %sub.i.i = add i32 %19, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i40 = getelementptr %struct.page, ptr %18, i32 %shr.i.i
  %and.i.i = and i32 %19, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i.i40, i32 noundef %and.i.i, i32 noundef %add, i32 noundef 2, i32 noundef 0) #8
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %conv2.i = zext i32 %retval.0.i.i to i64
  %20 = ptrtoint ptr %mapping6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv2.i, ptr %mapping6, align 8
  %21 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ca, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %24, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %error, label %if.end20

if.end20:                                         ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_ring, align 8
  %arrayidx22 = getelementptr %struct.ipoib_rx_buf, ptr %26, i32 %id
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %arrayidx22, align 8
  br label %cleanup

error:                                            ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %call.i.i, %if.end20 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipoib_ib_post_receive(ptr nocapture noundef readonly %dev, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %or = or i32 %id, -2147483648
  %conv = zext i32 %or to i64
  %rx_wr = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 46
  %2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %2, align 8
  %rx_ring = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 8
  %mapping = getelementptr %struct.ipoib_rx_buf, ptr %5, i32 %id, i32 1
  %6 = ptrtoint ptr %mapping to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mapping, align 8
  %rx_sge = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 47
  %8 = ptrtoint ptr %rx_sge to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_sge, align 8
  %arrayidx6 = getelementptr %struct.ipoib_rx_buf, ptr %5, i32 %id, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.ipoib_dev_priv, ptr %1, i32 0, i32 47, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx8, align 8
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qp, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %14 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !267
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %13, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %18(ptr noundef %13, ptr noundef %rx_wr, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %do.body, !prof !263

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.body:                                          ; preds = %entry
  %call14 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_ib_post_receive._rs, ptr noundef nonnull @__func__.ipoib_ib_post_receive) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.do.end21_crit_edge, label %do.end

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev18, align 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %20, i32 noundef %id, i32 noundef %call.i) #12
  br label %do.end21

do.end21:                                         ; preds = %do.end, %do.body.do.end21_crit_edge
  %21 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_ring, align 8
  %mapping24 = getelementptr %struct.ipoib_rx_buf, ptr %22, i32 %id, i32 1
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ca.i, align 8
  %25 = ptrtoint ptr %mapping24 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mapping24, align 8
  %max_ib_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 36
  %27 = ptrtoint ptr %max_ib_mtu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_ib_mtu.i, align 4
  %add.i = add i32 %28, 40
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 8
  %conv.i.i = trunc i64 %26 to i32
  call void @dma_unmap_page_attrs(ptr noundef %30, i32 noundef %conv.i.i, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #8
  %31 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_ring, align 8
  %arrayidx27 = getelementptr %struct.ipoib_rx_buf, ptr %32, i32 %id
  %33 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx27, align 8
  call void @__dev_kfree_skb_any(ptr noundef %34, i32 noundef 1) #8
  %35 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_ring, align 8
  %arrayidx29 = getelementptr %struct.ipoib_rx_buf, ptr %36, i32 %id
  %37 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %arrayidx29, align 8
  br label %if.end31

if.end31:                                         ; preds = %do.end21, %entry.if.end31_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipoib_qp_state_validate_work(ptr noundef %work) #0 align 64 {
entry:
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  %query_init_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ipoib_qp_state_validate, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #8
  %2 = call ptr @memset(ptr %qp_attr, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %query_init_attr) #8
  %3 = call ptr @memset(ptr %query_init_attr, i32 255, i32 72)
  %qp = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 30
  %4 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp, align 8
  %call = call i32 @ib_query_qp(ptr noundef %5, ptr noundef nonnull %qp_attr, i32 noundef 1, ptr noundef nonnull %query_init_attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end13, label %do.body

do.body:                                          ; preds = %entry
  %call2 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_qp_state_validate_work._rs, ptr noundef nonnull @__func__.ipoib_qp_state_validate_work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.free_res_crit_edge, label %do.end

do.body.free_res_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_res

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %7, ptr noundef nonnull @__func__.ipoib_qp_state_validate_work, i32 noundef %call) #12
  br label %free_res

do.end13:                                         ; preds = %entry
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 8
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qp_num, align 4
  %12 = ptrtoint ptr %qp_attr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qp_attr, align 8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @__func__.ipoib_qp_state_validate_work, i32 noundef %11, i32 noundef %13) #12
  %14 = ptrtoint ptr %qp_attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_attr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp = icmp eq i32 %15, 5
  br i1 %cmp, label %if.then18, label %do.end41

if.then18:                                        ; preds = %do.end13
  %16 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %qp_attr, align 8
  %17 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %qp, align 8
  %call21 = call i32 @ib_modify_qp(ptr noundef %18, ptr noundef nonnull %qp_attr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %19 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qp, align 8
  %qp_num37 = getelementptr inbounds %struct.ib_qp, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %qp_num37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qp_num37, align 4
  br i1 %tobool22.not, label %do.end34, label %do.end26

do.end26:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %call21, i32 noundef %22) #12
  br label %free_res

do.end34:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @__func__.ipoib_qp_state_validate_work, i32 noundef %22) #12
  br label %free_res

do.end41:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %qp, align 8
  %qp_num44 = getelementptr inbounds %struct.ib_qp, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %qp_num44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qp_num44, align 4
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %26, i32 noundef %15) #12
  br label %free_res

free_res:                                         ; preds = %do.end41, %do.end34, %do.end26, %do.end, %do.body.free_res_crit_edge
  call void @kfree(ptr noundef %work) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %query_init_attr) #8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ipoib_dev_addr_changed_valid(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %search_gid = alloca %union.ib_gid, align 8
  %gid0 = alloca %union.ib_gid, align 8
  %index = alloca i16, align 2
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %search_gid) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid0) #8
  %0 = call ptr @memset(ptr %gid0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %index) #8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %index, align 2, !annotation !267
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %port, align 4, !annotation !267
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 23
  %3 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ca, align 8
  %port1 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 24
  %5 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port1, align 4
  %conv = zext i8 %6 to i32
  %call = call i32 @rdma_query_gid(ptr noundef %4, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull %gid0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds %struct.anon.162, ptr %search_gid, i32 0, i32 1
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 73
  %10 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #8
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 63
  %conv.i = zext i8 %11 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #8
  %12 = ptrtoint ptr %gid0 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gid0, align 8
  %local_gid = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 32
  %14 = ptrtoint ptr %local_gid to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %local_gid, align 8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  call void @dev_addr_mod(ptr noundef %16, i32 noundef 4, ptr noundef nonnull %gid0, i32 noundef 8) #8
  %17 = ptrtoint ptr %gid0 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gid0, align 8
  %19 = ptrtoint ptr %search_gid to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %search_gid, align 8
  %interface_id = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 32, i32 0, i32 1
  %20 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %interface_id, align 8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %7, align 8
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %addr_list_lock.i85 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 63
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i85) #8
  %25 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ca, align 8
  %call11 = call i32 @ib_find_gid(ptr noundef %26, ptr noundef nonnull %search_gid, ptr noundef nonnull %port, ptr noundef nonnull %index) #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %nested_level.i86 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 73
  %29 = ptrtoint ptr %nested_level.i86 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nested_level.i86, align 1
  call fastcc void @local_bh_disable() #8
  %addr_list_lock.i87 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 63
  %conv.i88 = zext i8 %30 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i87, i32 noundef %conv.i88) #8
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %7, align 8
  %33 = ptrtoint ptr %interface_id to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %interface_id, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp.not = icmp eq i64 %32, %34
  br i1 %cmp.not, label %if.end18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 5
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not = icmp eq i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool22.not = icmp eq i32 %call11, 0
  br i1 %tobool20.not, label %if.then21, label %if.else38

if.then21:                                        ; preds = %if.end18
  br i1 %tobool22.not, label %land.lhs.true, label %if.then21.out_crit_edge

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.then21
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port, align 4
  %40 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port1, align 4
  %conv24 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv24)
  %cmp25 = icmp eq i32 %39, %conv24
  br i1 %cmp25, label %if.then27, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then27:                                        ; preds = %land.lhs.true
  call void @_set_bit(i32 noundef 13, ptr noundef %flags) #8
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp30 = icmp eq i16 %43, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 14, ptr noundef %flags) #8
  br label %out

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 14, ptr noundef %flags) #8
  br label %out

if.else38:                                        ; preds = %if.end18
  br i1 %tobool22.not, label %land.lhs.true40, label %if.else38.if.else46_crit_edge

if.else38.if.else46_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46

land.lhs.true40:                                  ; preds = %if.else38
  %44 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %port, align 4
  %46 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port1, align 4
  %conv42 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv42)
  %cmp43 = icmp eq i32 %45, %conv42
  br i1 %cmp43, label %land.lhs.true40.out_crit_edge, label %land.lhs.true40.if.else46_crit_edge

land.lhs.true40.if.else46_crit_edge:              ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else46

land.lhs.true40.out_crit_edge:                    ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else46:                                        ; preds = %land.lhs.true40.if.else46_crit_edge, %if.else38.if.else46_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %flags, align 4
  %50 = and i32 %49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool49.not = icmp eq i32 %50, 0
  br i1 %tobool49.not, label %if.then50, label %if.else46.out_crit_edge

if.else46.out_crit_edge:                          ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %51 = call ptr @memcpy(ptr %local_gid, ptr %gid0, i32 16)
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  call void @dev_addr_mod(ptr noundef %53, i32 noundef 4, ptr noundef nonnull %gid0, i32 noundef 16) #8
  br label %out

out:                                              ; preds = %if.then50, %if.else46.out_crit_edge, %land.lhs.true40.out_crit_edge, %if.else, %if.then32, %land.lhs.true.out_crit_edge, %if.then21.out_crit_edge, %if.end.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %if.end.out_crit_edge ], [ false, %if.else46.out_crit_edge ], [ true, %if.then50 ], [ true, %if.else ], [ true, %if.then32 ], [ false, %land.lhs.true.out_crit_edge ], [ false, %if.then21.out_crit_edge ], [ true, %land.lhs.true40.out_crit_edge ]
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  %addr_list_lock.i89 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 63
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i89) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %ret.0.off0, %out ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid0) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %search_gid) #8
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mark_paths_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_mcast_restart_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_gid(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_gid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !175, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !246, !247, !249, !250, !251, !253}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @__param_data_debug_level, !1, !"__param_data_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_data_debug_leveltype520, !1, !"__UNIQUE_ID_data_debug_leveltype520", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_data_debug_level521, !4, !"__UNIQUE_ID_data_debug_level521", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 51, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 75, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipoib_create_ah._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ipoib_create_ah._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 478, i32 5}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ipoib_rx_poll._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @ipoib_rx_poll._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 579, i32 4}
!18 = !{ptr @ipoib_send._rs, !17, !"_rs", i1 false, i1 false}
!19 = !{ptr @__func__.ipoib_send, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ipoib_send._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @ipoib_send._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ipoib_send._rs.7, !24, !"_rs", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 587, i32 4}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ipoib_send._entry.8, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @ipoib_send._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ipoib_send._rs.11, !29, !"_rs", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 599, i32 4}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ipoib_send._entry.12, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ipoib_send._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @ipoib_send._rs.15, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 607, i32 4}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ipoib_send._entry.16, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ipoib_send._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 615, i32 2}
!40 = !{ptr @ipoib_send._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ipoib_send._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 641, i32 3}
!44 = !{ptr @ipoib_send._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ipoib_send._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @ipoib_send._rs.25, !47, !"_rs", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 651, i32 4}
!48 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ipoib_send._entry.26, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ipoib_send._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ipoib_send._rs.29, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 656, i32 3}
!53 = !{ptr @.str.31, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ipoib_send._entry.30, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ipoib_send._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @ipoib_ib_dev_stop_default._rs, !57, !"_rs", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 798, i32 4}
!58 = !{ptr @__func__.ipoib_ib_dev_stop_default, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ipoib_ib_dev_stop_default._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @ipoib_ib_dev_stop_default._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 836, i32 2}
!64 = !{ptr @ipoib_ib_dev_stop_default._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ipoib_ib_dev_stop_default._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @ipoib_ib_dev_stop_default._rs.37, !67, !"_rs", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 841, i32 3}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ipoib_ib_dev_stop_default._entry.38, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @ipoib_ib_dev_stop_default._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ipoib_ib_dev_open_default._rs, !72, !"_rs", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 855, i32 3}
!73 = !{ptr @__func__.ipoib_ib_dev_open_default, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ipoib_ib_dev_open_default._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @ipoib_ib_dev_open_default._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ipoib_ib_dev_open_default._rs.42, !78, !"_rs", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 861, i32 3}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @ipoib_ib_dev_open_default._entry.43, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @ipoib_ib_dev_open_default._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @ipoib_ib_dev_open_default._rs.46, !83, !"_rs", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 867, i32 3}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ipoib_ib_dev_open_default._entry.47, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ipoib_ib_dev_open_default._entry_ptr.49, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ipoib_ib_dev_open._rs, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 886, i32 3}
!89 = !{ptr @__func__.ipoib_ib_dev_open, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ipoib_ib_dev_open._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @ipoib_ib_dev_open._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 893, i32 3}
!97 = !{ptr @ipoib_ib_dev_open._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ipoib_ib_dev_open._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 939, i32 3}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ipoib_ib_dev_up._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ipoib_ib_dev_up._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 952, i32 2}
!106 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ipoib_ib_dev_down._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @ipoib_ib_dev_down._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 992, i32 5}
!111 = !{ptr @ipoib_drain_cq._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @ipoib_drain_cq._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1284, i32 2}
!115 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @ipoib_ib_dev_cleanup._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @ipoib_ib_dev_cleanup._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @data_debug_level, !119, !"data_debug_level", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 48, i32 12}
!120 = !{ptr @__param_str_data_debug_level, !1, !"__param_str_data_debug_level", i1 false, i1 false}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!123 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 182, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @ipoib_ib_handle_rx_wc._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @ipoib_ib_handle_rx_wc._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @ipoib_ib_handle_rx_wc._rs, !131, !"_rs", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 186, i32 3}
!132 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @ipoib_ib_handle_rx_wc._entry.67, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @ipoib_ib_handle_rx_wc._entry_ptr.69, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @ipoib_ib_handle_rx_wc._rs.70, !136, !"_rs", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 195, i32 4}
!137 = !{ptr @.str.72, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @ipoib_ib_handle_rx_wc._entry.71, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @ipoib_ib_handle_rx_wc._entry_ptr.73, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 216, i32 2}
!142 = !{ptr @ipoib_ib_handle_rx_wc._entry.74, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ipoib_ib_handle_rx_wc._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @ipoib_ib_handle_rx_wc._rs.77, !145, !"_rs", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 271, i32 3}
!146 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @ipoib_ib_handle_rx_wc._entry.78, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @ipoib_ib_handle_rx_wc._entry_ptr.80, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @ipoib_ib_post_receive._rs, !150, !"_rs", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 113, i32 3}
!151 = !{ptr @__func__.ipoib_ib_post_receive, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.81, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @ipoib_ib_post_receive._entry, !150, !"_entry", i1 false, i1 false}
!154 = !{ptr @ipoib_ib_post_receive._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 391, i32 2}
!157 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @ipoib_ib_handle_tx_wc._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @ipoib_ib_handle_tx_wc._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @ipoib_ib_handle_tx_wc._rs, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 395, i32 3}
!162 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ipoib_ib_handle_tx_wc._entry.84, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @ipoib_ib_handle_tx_wc._entry_ptr.86, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @ipoib_ib_handle_tx_wc._rs.87, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 421, i32 3}
!167 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @ipoib_ib_handle_tx_wc._entry.88, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @ipoib_ib_handle_tx_wc._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @ipoib_ib_handle_tx_wc.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 428, i32 3}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ipoib_qp_state_validate_work._rs, !174, !"_rs", i1 false, i1 false}
!174 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 357, i32 3}
!175 = !{ptr @__func__.ipoib_qp_state_validate_work, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @ipoib_qp_state_validate_work._entry, !174, !"_entry", i1 false, i1 false}
!178 = !{ptr @ipoib_qp_state_validate_work._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 361, i32 2}
!181 = !{ptr @ipoib_qp_state_validate_work._entry.93, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @ipoib_qp_state_validate_work._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 370, i32 4}
!185 = !{ptr @ipoib_qp_state_validate_work._entry.96, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ipoib_qp_state_validate_work._entry_ptr.98, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 374, i32 3}
!189 = !{ptr @ipoib_qp_state_validate_work._entry.99, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @ipoib_qp_state_validate_work._entry_ptr.101, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 377, i32 3}
!193 = !{ptr @ipoib_qp_state_validate_work._entry.102, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @ipoib_qp_state_validate_work._entry_ptr.104, !192, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__already_done", i1 false, i1 false}
!196 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!197 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.106, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @check_qp_movement_and_print._rs, !200, !"_rs", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 745, i32 3}
!201 = !{ptr @__func__.check_qp_movement_and_print, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @check_qp_movement_and_print._entry, !200, !"_entry", i1 false, i1 false}
!204 = !{ptr @check_qp_movement_and_print._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.109, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 750, i32 3}
!207 = !{ptr @check_qp_movement_and_print._entry.108, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @check_qp_movement_and_print._entry_ptr.110, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @check_qp_movement_and_print._rs.111, !210, !"_rs", i1 false, i1 false}
!210 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 752, i32 3}
!211 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @check_qp_movement_and_print._entry.112, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @check_qp_movement_and_print._entry_ptr.114, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @ipoib_ib_post_receives._rs, !215, !"_rs", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 161, i32 4}
!216 = !{ptr @__func__.ipoib_ib_post_receives, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.115, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ipoib_ib_post_receives._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @ipoib_ib_post_receives._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @ipoib_ib_post_receives._rs.116, !221, !"_rs", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 165, i32 4}
!222 = !{ptr @ipoib_ib_post_receives._entry.117, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @ipoib_ib_post_receives._entry_ptr.118, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.119, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1174, i32 3}
!226 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @__ipoib_ib_dev_flush._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @__ipoib_ib_dev_flush._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1187, i32 3}
!231 = !{ptr @__ipoib_ib_dev_flush._entry.121, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @__ipoib_ib_dev_flush._entry_ptr.123, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.125, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1199, i32 5}
!235 = !{ptr @__ipoib_ib_dev_flush._entry.124, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @__ipoib_ib_dev_flush._entry_ptr.126, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.128, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1207, i32 5}
!239 = !{ptr @__ipoib_ib_dev_flush._entry.127, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @__ipoib_ib_dev_flush._entry_ptr.129, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @update_parent_pkey._rs, !242, !"_rs", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1015, i32 3}
!243 = !{ptr @__func__.update_parent_pkey, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.130, !242, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @update_parent_pkey._entry, !242, !"_entry", i1 false, i1 false}
!246 = !{ptr @update_parent_pkey._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_ib.c", i32 1023, i32 3}
!249 = !{ptr @update_parent_pkey._entry.131, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @update_parent_pkey._entry_ptr.133, !248, !"_entry_ptr", i1 false, i1 false}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!253 = !{ptr @.str.134, !252, !"<string literal>", i1 false, i1 false}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{!"branch_weights", i32 2000, i32 1}
!264 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!265 = !{!"branch_weights", i32 1, i32 2000}
!266 = !{i64 2154620586, i64 2154621074, i64 2154620623, i64 2154620679, i64 2154620713, i64 2154620737, i64 2154620778, i64 2154620799, i64 2154620827, i64 2154620861}
!267 = !{!"auto-init"}
