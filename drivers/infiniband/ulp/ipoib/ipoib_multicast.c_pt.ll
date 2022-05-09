; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/ipoib/ipoib_multicast.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/ipoib/ipoib_multicast.c"
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
%struct.ib_sa_client = type { %struct.atomic_t, %struct.completion }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ipoib_dev_priv = type { %struct.spinlock, ptr, ptr, %struct.napi_struct, %struct.napi_struct, i32, %struct.rw_semaphore, %struct.mutex, %struct.rb_root, %struct.list_head, %struct.ipoib_neigh_table, ptr, %struct.list_head, %struct.rb_root, ptr, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, ptr, i8, i16, i16, ptr, ptr, ptr, ptr, i32, %union.ib_gid, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, [18 x %struct.ib_sge], %struct.ib_ud_wr, [64 x %struct.ib_wc], %struct.ib_recv_wr, [2 x %struct.ib_sge], [4 x %struct.ib_wc], %struct.list_head, %struct.ib_event_handler, ptr, %struct.list_head, %struct.list_head, i32, %struct.ipoib_cm_dev_priv, %struct.list_head, ptr, ptr, i64, %struct.ipoib_ethtool_st, i32, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ipoib_neigh_table = type { ptr, %struct.atomic_t, %struct.completion, %struct.completion }
%union.ib_gid = type { %struct.anon.163 }
%struct.anon.163 = type { i64, i64 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_ud_wr = type { %struct.ib_send_wr, ptr, ptr, i32, i32, i32, i32, i16, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.164, ptr, i32, i32, i32, %union.anon.165 }
%union.anon.164 = type { i64 }
%union.anon.165 = type { i32 }
%struct.ib_wc = type { %union.anon.160, i32, i32, i32, i32, ptr, %union.anon.161, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.160 = type { i64 }
%union.anon.161 = type { i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.166, ptr, i32 }
%union.anon.166 = type { i64 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ipoib_cm_dev_priv = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.sk_buff_head, %struct.list_head, %struct.list_head, [4 x %struct.ib_wc], [16 x %struct.ib_sge], %struct.ib_recv_wr, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ipoib_ethtool_st = type { i16, i16 }
%struct.ipoib_mcast = type { %struct.ib_sa_mcmember_rec, ptr, ptr, %struct.rb_node, %struct.list_head, i32, i32, i32, i32, i8, %struct.list_head, %struct.sk_buff_head, ptr, %struct.completion }
%struct.ib_sa_mcmember_rec = type { %union.ib_gid, %union.ib_gid, i32, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.ipoib_ah = type { ptr, ptr, %struct.list_head, %struct.kref, i32, i32 }
%struct.ipoib_neigh = type { ptr, ptr, [20 x i8], %struct.sk_buff_head, ptr, %struct.list_head, ptr, %struct.callback_head, %struct.refcount_struct, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.ipoib_mcast_iter = type { ptr, %union.ib_gid, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.168 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.168 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_sa_multicast = type { %struct.ib_sa_mcmember_rec, i64, ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.176 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.167 }
%struct.anon.167 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }

@__param_str_mcast_debug_level = internal constant [27 x i8] c"ib_ipoib.mcast_debug_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mcast_debug_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mcast_debug_level = internal constant %struct.kernel_param { ptr @__param_str_mcast_debug_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @mcast_debug_level } }, section "__param", align 4
@__UNIQUE_ID_mcast_debug_leveltype520 = internal constant [40 x i8] c"ib_ipoib.parmtype=mcast_debug_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mcast_debug_level521 = internal constant [70 x i8] c"ib_ipoib.parm=mcast_debug_level:Enable multicast debug tracing if > 0\00", section ".modinfo", align 1
@ipoib_debug_level = external dso_local local_unnamed_addr global i32, align 4
@ipoib_mcast_carrier_on_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: Keeping carrier off until IB port is active\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipoib_mcast_carrier_on_task\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/infiniband/ulp/ipoib/ipoib_multicast.c\00", [49 x i8] zeroinitializer }, align 32
@ipoib_mcast_carrier_on_task._entry_ptr = internal global ptr @ipoib_mcast_carrier_on_task._entry, section ".printk_index", align 4
@ipoib_mcast_join_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: ib_query_port() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_mcast_join_task\00", [42 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_task._entry_ptr = internal global ptr @ipoib_mcast_join_task._entry, section ".printk_index", align 4
@ipoib_mcast_join_task._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: port state is not ACTIVE (state = %d) suspending join task\0A\00", [62 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_task._entry_ptr.7 = internal global ptr @ipoib_mcast_join_task._entry.5, section ".printk_index", align 4
@ipoib_mcast_join_task._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_task._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: failed to allocate broadcast group\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_task._entry_ptr.11 = internal global ptr @ipoib_mcast_join_task._entry.9, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ipoib_mcast_join_task._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: successfully started all multicast joins\0A\00", [48 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_task._entry_ptr.14 = internal global ptr @ipoib_mcast_join_task._entry.12, section ".printk_index", align 4
@ipoib_mcast_start_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: starting multicast thread\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipoib_mcast_start_thread\00", [39 x i8] zeroinitializer }, align 32
@ipoib_mcast_start_thread._entry_ptr = internal global ptr @ipoib_mcast_start_thread._entry, section ".printk_index", align 4
@ipoib_mcast_stop_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: stopping multicast thread\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipoib_mcast_stop_thread\00", [40 x i8] zeroinitializer }, align 32
@ipoib_mcast_stop_thread._entry_ptr = internal global ptr @ipoib_mcast_stop_thread._entry, section ".printk_index", align 4
@ipoib_mcast_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s: setting up send only multicast group for %pI6\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipoib_mcast_send\00", [47 x i8] zeroinitializer }, align 32
@ipoib_mcast_send._entry_ptr = internal global ptr @ipoib_mcast_send._entry, section ".printk_index", align 4
@ipoib_mcast_send._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_send._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: unable to allocate memory for multicast structure\0A\00", [39 x i8] zeroinitializer }, align 32
@ipoib_mcast_send._entry_ptr.23 = internal global ptr @ipoib_mcast_send._entry.21, section ".printk_index", align 4
@ipoib_mcast_dev_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: flushing multicast list\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipoib_mcast_dev_flush\00", [42 x i8] zeroinitializer }, align 32
@ipoib_mcast_dev_flush._entry_ptr = internal global ptr @ipoib_mcast_dev_flush._entry, section ".printk_index", align 4
@ipoib_mcast_restart_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: restarting multicast task\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipoib_mcast_restart_task\00", [39 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry_ptr = internal global ptr @ipoib_mcast_restart_task._entry, section ".printk_index", align 4
@ipoib_mcast_restart_task._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: ignoring multicast entry for mgid %pI6\0A\00", [50 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry_ptr.30 = internal global ptr @ipoib_mcast_restart_task._entry.28, section ".printk_index", align 4
@ipoib_mcast_restart_task._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: adding multicast entry for mgid %pI6\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry_ptr.33 = internal global ptr @ipoib_mcast_restart_task._entry.31, section ".printk_index", align 4
@ipoib_mcast_restart_task._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.27, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry_ptr.35 = internal global ptr @ipoib_mcast_restart_task._entry.34, section ".printk_index", align 4
@ipoib_mcast_restart_task._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.27, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: deleting multicast group %pI6\0A\00", [59 x i8] zeroinitializer }, align 32
@ipoib_mcast_restart_task._entry_ptr.38 = internal global ptr @ipoib_mcast_restart_task._entry.36, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@ipoib_mcast_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: joining MGID %pI6\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipoib_mcast_join\00", [47 x i8] zeroinitializer }, align 32
@ipoib_mcast_join._entry_ptr = internal global ptr @ipoib_mcast_join._entry, section ".printk_index", align 4
@ipoib_sa_client = external dso_local global %struct.ib_sa_client, align 4
@ipoib_mcast_join._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: ib_sa_join_multicast failed, status %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ipoib_mcast_join._entry_ptr.44 = internal global ptr @ipoib_mcast_join._entry.42, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %sjoin completion for %pI6 (status %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ipoib_mcast_join_complete\00", [38 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_complete._entry_ptr = internal global ptr @ipoib_mcast_join_complete._entry, section ".printk_index", align 4
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sendonly \00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ipoib_mcast_join_complete._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017%s: %smulticast join failed for %pI6, status %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_complete._entry_ptr.52 = internal global ptr @ipoib_mcast_join_complete._entry.50, section ".printk_index", align 4
@ipoib_mcast_join_complete._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_complete._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: %smulticast join failed for %pI6, status %d\0A\00", [45 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_complete._entry_ptr.55 = internal global ptr @ipoib_mcast_join_complete._entry.53, section ".printk_index", align 4
@ipoib_mcast_join_finish._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_mcast_join_finish = private unnamed_addr constant [24 x i8] c"ipoib_mcast_join_finish\00", align 1
@ipoib_mcast_join_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.ipoib_mcast_join_finish, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: multicast group %pI6 already attached\0A\00", [51 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry_ptr = internal global ptr @ipoib_mcast_join_finish._entry, section ".printk_index", align 4
@ipoib_mcast_join_finish._rs.57 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @__func__.ipoib_mcast_join_finish, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: couldn't attach QP to multicast group %pI6\0A\00", [46 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry_ptr.60 = internal global ptr @ipoib_mcast_join_finish._entry.58, section ".printk_index", align 4
@ipoib_mcast_join_finish._rs.61 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.ipoib_mcast_join_finish, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: ib_address_create failed %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry_ptr.64 = internal global ptr @ipoib_mcast_join_finish._entry.62, section ".printk_index", align 4
@ipoib_mcast_join_finish._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @__func__.ipoib_mcast_join_finish, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s: MGID %pI6 AV %p, LID 0x%04x, SL %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry_ptr.67 = internal global ptr @ipoib_mcast_join_finish._entry.65, section ".printk_index", align 4
@ipoib_mcast_join_finish._rs.68 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.ipoib_mcast_join_finish, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: %s:dev_queue_xmit failed to re-queue packet, ret:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ipoib_mcast_join_finish._entry_ptr.71 = internal global ptr @ipoib_mcast_join_finish._entry.69, section ".printk_index", align 4
@ipoib_mcast_leave._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.ipoib_mcast_leave = private unnamed_addr constant [18 x i8] c"ipoib_mcast_leave\00", align 1
@ipoib_mcast_leave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @__func__.ipoib_mcast_leave, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: ipoib_mcast_leave on an in-flight join\0A\00", [50 x i8] zeroinitializer }, align 32
@ipoib_mcast_leave._entry_ptr = internal global ptr @ipoib_mcast_leave._entry, section ".printk_index", align 4
@ipoib_mcast_leave._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.ipoib_mcast_leave, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: leaving MGID %pI6\0A\00", [39 x i8] zeroinitializer }, align 32
@ipoib_mcast_leave._entry_ptr.75 = internal global ptr @ipoib_mcast_leave._entry.73, section ".printk_index", align 4
@ipoib_mcast_leave._rs.76 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 1000, i32 100, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipoib_mcast_leave._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.ipoib_mcast_leave, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: ib_detach_mcast failed (result = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@ipoib_mcast_leave._entry_ptr.79 = internal global ptr @ipoib_mcast_leave._entry.77, section ".printk_index", align 4
@ipoib_mcast_leave._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @__func__.ipoib_mcast_leave, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s: leaving with no mcmember but not a SENDONLY join\0A\00", [40 x i8] zeroinitializer }, align 32
@ipoib_mcast_leave._entry_ptr.82 = internal global ptr @ipoib_mcast_leave._entry.80, section ".printk_index", align 4
@ipoib_mcast_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.83, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipoib_mcast_free\00", [47 x i8] zeroinitializer }, align 32
@ipoib_mcast_free._entry_ptr = internal global ptr @ipoib_mcast_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.ipoib_mcast_join_complete = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 252, i32 508, i32 1020, i32 2044, i32 4092, i32 8188, i32 10236], [36 x i8] zeroinitializer }, align 32
@switch.table.ipoib_mcast_join_complete.84 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 252, i32 508, i32 1020, i32 2044, i32 4092], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967194]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 4294967186, i64 4294967285]
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"mcast_debug_level\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 51, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 333, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 566, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 570, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 592, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 646, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 665, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 676, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 768, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 773, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 835, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 885, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 916, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 922, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 927, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 956, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1984, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 479, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 542, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 87, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 364, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 403, i32 5 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 407, i32 5 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 258, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 268, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 290, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 299, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 316, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 688, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 694, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 701, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 703, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [50 x i8] c"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 117, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [39 x i8] c"switch.table.ipoib_mcast_join_complete\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [42 x i8] c"switch.table.ipoib_mcast_join_complete.84\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_mcast_debug_level521, ptr @__UNIQUE_ID_mcast_debug_leveltype520, ptr @__param_mcast_debug_level, ptr @ipoib_mcast_carrier_on_task._entry, ptr @ipoib_mcast_carrier_on_task._entry_ptr, ptr @ipoib_mcast_dev_flush._entry, ptr @ipoib_mcast_dev_flush._entry_ptr, ptr @ipoib_mcast_free._entry, ptr @ipoib_mcast_free._entry_ptr, ptr @ipoib_mcast_join._entry, ptr @ipoib_mcast_join._entry.42, ptr @ipoib_mcast_join._entry_ptr, ptr @ipoib_mcast_join._entry_ptr.44, ptr @ipoib_mcast_join_complete._entry, ptr @ipoib_mcast_join_complete._entry.50, ptr @ipoib_mcast_join_complete._entry.53, ptr @ipoib_mcast_join_complete._entry_ptr, ptr @ipoib_mcast_join_complete._entry_ptr.52, ptr @ipoib_mcast_join_complete._entry_ptr.55, ptr @ipoib_mcast_join_finish._entry, ptr @ipoib_mcast_join_finish._entry.58, ptr @ipoib_mcast_join_finish._entry.62, ptr @ipoib_mcast_join_finish._entry.65, ptr @ipoib_mcast_join_finish._entry.69, ptr @ipoib_mcast_join_finish._entry_ptr, ptr @ipoib_mcast_join_finish._entry_ptr.60, ptr @ipoib_mcast_join_finish._entry_ptr.64, ptr @ipoib_mcast_join_finish._entry_ptr.67, ptr @ipoib_mcast_join_finish._entry_ptr.71, ptr @ipoib_mcast_join_task._entry, ptr @ipoib_mcast_join_task._entry.12, ptr @ipoib_mcast_join_task._entry.5, ptr @ipoib_mcast_join_task._entry.9, ptr @ipoib_mcast_join_task._entry_ptr, ptr @ipoib_mcast_join_task._entry_ptr.11, ptr @ipoib_mcast_join_task._entry_ptr.14, ptr @ipoib_mcast_join_task._entry_ptr.7, ptr @ipoib_mcast_leave._entry, ptr @ipoib_mcast_leave._entry.73, ptr @ipoib_mcast_leave._entry.77, ptr @ipoib_mcast_leave._entry.80, ptr @ipoib_mcast_leave._entry_ptr, ptr @ipoib_mcast_leave._entry_ptr.75, ptr @ipoib_mcast_leave._entry_ptr.79, ptr @ipoib_mcast_leave._entry_ptr.82, ptr @ipoib_mcast_restart_task._entry, ptr @ipoib_mcast_restart_task._entry.28, ptr @ipoib_mcast_restart_task._entry.31, ptr @ipoib_mcast_restart_task._entry.34, ptr @ipoib_mcast_restart_task._entry.36, ptr @ipoib_mcast_restart_task._entry_ptr, ptr @ipoib_mcast_restart_task._entry_ptr.30, ptr @ipoib_mcast_restart_task._entry_ptr.33, ptr @ipoib_mcast_restart_task._entry_ptr.35, ptr @ipoib_mcast_restart_task._entry_ptr.38, ptr @ipoib_mcast_send._entry, ptr @ipoib_mcast_send._entry.21, ptr @ipoib_mcast_send._entry_ptr, ptr @ipoib_mcast_send._entry_ptr.23, ptr @ipoib_mcast_start_thread._entry, ptr @ipoib_mcast_start_thread._entry_ptr, ptr @ipoib_mcast_stop_thread._entry, ptr @ipoib_mcast_stop_thread._entry_ptr, ptr @mcast_debug_level, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ipoib_mcast_join_task._rs, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ipoib_mcast_send._rs, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @ipoib_mcast_restart_task._rs, ptr @.str.37, ptr @skb_queue_head_init.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @ipoib_mcast_join._rs, ptr @.str.43, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @ipoib_mcast_join_complete._rs, ptr @.str.54, ptr @ipoib_mcast_join_finish._rs, ptr @.str.56, ptr @ipoib_mcast_join_finish._rs.57, ptr @.str.59, ptr @ipoib_mcast_join_finish._rs.61, ptr @.str.63, ptr @.str.66, ptr @ipoib_mcast_join_finish._rs.68, ptr @.str.70, ptr @ipoib_mcast_leave._rs, ptr @.str.72, ptr @.str.74, ptr @ipoib_mcast_leave._rs.76, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @switch.table.ipoib_mcast_join_complete, ptr @switch.table.ipoib_mcast_join_complete.84], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcast_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_carrier_on_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_task._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_task._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_task._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_task._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_start_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_stop_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_send._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_send._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_dev_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_restart_task._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_complete._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_complete._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_complete._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._rs.57 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._rs.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._rs.68 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_join_finish._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._rs.76 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_leave._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipoib_mcast_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipoib_mcast_join_complete to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ipoib_mcast_join_complete.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_carrier_on_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %ca = getelementptr i8, ptr %work, i32 420
  %1 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ca, align 8
  %port = getelementptr i8, ptr %work, i32 424
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 4
  %conv = zext i8 %4 to i32
  %call = call i32 @ib_query_port(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.not = icmp eq i32 %6, 4
  br i1 %cmp.not, label %while.cond.preheader, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call1141 = call i32 @rtnl_trylock() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1141)
  %tobool12.not42 = icmp eq i32 %call1141, 0
  br i1 %tobool12.not42, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags = getelementptr i8, ptr %work, i32 -444
  br label %while.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %7 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr i8, ptr %work, i32 -904
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %9) #14
  br label %cleanup

while.body:                                       ; preds = %if.else.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool14.not = icmp eq i32 %and1.i, 0
  br i1 %tobool14.not, label %while.body.cleanup_crit_edge, label %if.else

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @msleep(i32 noundef 20) #11
  %call11 = call i32 @rtnl_trylock() #11
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else.while.body_crit_edge, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.else.while.body_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.else.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %dev17 = getelementptr i8, ptr %work, i32 -904
  %12 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev17, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 86
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %tobool.not.i = icmp sgt i8 %17, -1
  br i1 %tobool.not.i, label %while.end.if.then20_crit_edge, label %ipoib_cm_admin_enabled.exit

while.end.if.then20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

ipoib_cm_admin_enabled.exit:                      ; preds = %while.end
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 2304
  %18 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i.i, align 4
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags.i, align 4
  %22 = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %ipoib_cm_admin_enabled.exit.if.then20_crit_edge, label %ipoib_cm_admin_enabled.exit.if.end26_crit_edge

ipoib_cm_admin_enabled.exit.if.end26_crit_edge:   ; preds = %ipoib_cm_admin_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

ipoib_cm_admin_enabled.exit.if.then20_crit_edge:  ; preds = %ipoib_cm_admin_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %ipoib_cm_admin_enabled.exit.if.then20_crit_edge, %while.end.if.then20_crit_edge
  %mcast_mtu = getelementptr i8, ptr %work, i32 476
  %23 = ptrtoint ptr %mcast_mtu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mcast_mtu, align 8
  %admin_mtu = getelementptr i8, ptr %work, i32 472
  %25 = ptrtoint ptr %admin_mtu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %admin_mtu, align 4
  %27 = call i32 @llvm.umin.i32(i32 %24, i32 %26)
  %call25 = call i32 @dev_set_mtu(ptr noundef %13, i32 noundef %27) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %ipoib_cm_admin_enabled.exit.if.end26_crit_edge
  %28 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev17, align 4
  call void @netif_carrier_on(ptr noundef %29) #11
  call void @rtnl_unlock() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %while.body.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_trylock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_join_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %port_attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -848
  %dev1 = getelementptr i8, ptr %work, i32 -804
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %port_attr) #11
  %2 = call ptr @memset(ptr %port_attr, i32 255, i32 72)
  %flags = getelementptr i8, ptr %work, i32 -344
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup178_crit_edge, label %if.end

entry.cleanup178_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178

if.end:                                           ; preds = %entry
  %ca = getelementptr i8, ptr %work, i32 520
  %5 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ca, align 8
  %port = getelementptr i8, ptr %work, i32 524
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port, align 4
  %conv = zext i8 %8 to i32
  %call2 = call i32 @ib_query_port(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %port_attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %9 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %do.end, label %do.body.cleanup178_crit_edge

do.body.cleanup178_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %11) #14
  br label %cleanup178

if.end14:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %port_attr, i32 0, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp15.not = icmp eq i32 %13, 4
  br i1 %cmp15.not, label %if.end34, label %do.body18

do.body18:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %14 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp19 = icmp sgt i32 %14, 0
  br i1 %cmp19, label %do.end24, label %do.body18.cleanup178_crit_edge

do.body18.cleanup178_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178

do.end24:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev1, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %16, i32 noundef %13) #14
  br label %cleanup178

if.end34:                                         ; preds = %if.end14
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %port_attr, i32 0, i32 13
  %17 = ptrtoint ptr %lid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lid, align 8
  %local_lid = getelementptr i8, ptr %work, i32 568
  %19 = ptrtoint ptr %local_lid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %local_lid, align 8
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %20 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #11
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i = zext i8 %21 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #11
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool37.not = icmp eq i32 %24, 0
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #11
  br i1 %tobool37.not, label %if.end34.cleanup178_crit_edge, label %if.end39

if.end34.cleanup178_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup178

if.end39:                                         ; preds = %if.end34
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #11
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %and1.i240 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i240)
  %tobool42.not = icmp eq i32 %and1.i240, 0
  br i1 %tobool42.not, label %if.end39.if.end176_crit_edge, label %if.end44

if.end39.if.end176_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.end44:                                         ; preds = %if.end39
  %broadcast = getelementptr i8, ptr %work, i32 -20
  %27 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %broadcast, align 4
  %tobool45.not = icmp eq ptr %28, null
  br i1 %tobool45.not, label %if.then46, label %if.end44.if.end75_crit_edge

if.end44.if.end75_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then46:                                        ; preds = %if.end44
  %call48 = call fastcc ptr @ipoib_mcast_alloc(ptr noundef %1)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body51, label %cleanup.thread

do.body51:                                        ; preds = %if.then46
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_task._rs, ptr noundef nonnull @.str.4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body51.cleanup_crit_edge, label %do.end57

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end57:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %30) #14
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  %add.ptr71 = getelementptr %struct.net_device, ptr %32, i32 0, i32 99, i32 4
  %33 = call ptr @memcpy(ptr %call48, ptr %add.ptr71, i32 16)
  %34 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call48, ptr %broadcast, align 4
  call fastcc void @__ipoib_mcast_add(ptr noundef %1, ptr noundef nonnull %call48)
  br label %if.end75

cleanup:                                          ; preds = %do.end57, %do.body51.cleanup_crit_edge
  call fastcc void @__ipoib_mcast_schedule_join_thread(ptr noundef %add.ptr, ptr noundef null, i1 noundef zeroext true)
  br label %if.end176

if.end75:                                         ; preds = %cleanup.thread, %if.end44.if.end75_crit_edge
  %35 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %broadcast, align 4
  %flags77 = getelementptr inbounds %struct.ipoib_mcast, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %flags77, align 4
  %39 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool79.not = icmp eq i32 %39, 0
  br i1 %tobool79.not, label %if.then80, label %if.end100

if.then80:                                        ; preds = %if.end75
  %mc = getelementptr inbounds %struct.ipoib_mcast, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mc, align 8
  %tobool.not.i = icmp eq ptr %41, null
  %cmp.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true, label %if.then80.if.end176_crit_edge

if.then80.if.end176_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

land.lhs.true:                                    ; preds = %if.then80
  %42 = ptrtoint ptr %flags77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %flags77, align 4
  %44 = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool87.not = icmp eq i32 %44, 0
  br i1 %tobool87.not, label %if.then88, label %land.lhs.true.if.end176_crit_edge

land.lhs.true.if.end176_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then88:                                        ; preds = %land.lhs.true
  %backoff = getelementptr inbounds %struct.ipoib_mcast, ptr %36, i32 0, i32 6
  %45 = ptrtoint ptr %backoff to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %backoff, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp90 = icmp ugt i32 %46, 1
  br i1 %cmp90, label %land.lhs.true92, label %if.then88.if.end172_crit_edge

if.then88.if.end172_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

land.lhs.true92:                                  ; preds = %if.then88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %delay_until93 = getelementptr inbounds %struct.ipoib_mcast, ptr %36, i32 0, i32 7
  %48 = ptrtoint ptr %delay_until93 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %delay_until93, align 4
  %sub = sub i32 %47, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp94 = icmp slt i32 %sub, 0
  br i1 %cmp94, label %land.lhs.true92.out_crit_edge, label %land.lhs.true92.if.end172_crit_edge

land.lhs.true92.if.end172_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

land.lhs.true92.out_crit_edge:                    ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end100:                                        ; preds = %if.end75
  %multicast_list = getelementptr i8, ptr %work, i32 -16
  %50 = ptrtoint ptr %multicast_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn265 = load ptr, ptr %multicast_list, align 4
  %cmp105.not267 = icmp eq ptr %.pn265, %multicast_list
  br i1 %cmp105.not267, label %if.end100.for.end_crit_edge, label %if.end100.for.body_crit_edge

if.end100.for.body_crit_edge:                     ; preds = %if.end100
  br label %for.body

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end100.for.body_crit_edge
  %.pn270 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn265, %if.end100.for.body_crit_edge ]
  %delay_until.0268 = phi i32 [ %delay_until.1, %for.inc.for.body_crit_edge ], [ 0, %if.end100.for.body_crit_edge ]
  %mcast.0271 = getelementptr i8, ptr %.pn270, i32 -84
  %mc107 = getelementptr i8, ptr %.pn270, i32 -20
  %51 = ptrtoint ptr %mc107 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mc107, align 8
  %tobool.not.i251 = icmp eq ptr %52, null
  %cmp.i252 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  %spec.select.i253 = or i1 %tobool.not.i251, %cmp.i252
  br i1 %spec.select.i253, label %land.lhs.true110, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true110:                                 ; preds = %for.body
  %flags111 = getelementptr i8, ptr %.pn270, i32 20
  %53 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %flags111, align 4
  %55 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool113.not = icmp eq i32 %55, 0
  br i1 %tobool113.not, label %land.lhs.true114, label %land.lhs.true110.for.inc_crit_edge

land.lhs.true110.for.inc_crit_edge:               ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %56 = ptrtoint ptr %flags111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %flags111, align 4
  %58 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool117.not = icmp eq i32 %58, 0
  br i1 %tobool117.not, label %land.lhs.true114.if.then120_crit_edge, label %lor.lhs.false

land.lhs.true114.if.then120_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

lor.lhs.false:                                    ; preds = %land.lhs.true114
  %pkt_queue = getelementptr i8, ptr %.pn270, i32 36
  %59 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pkt_queue, align 4
  %cmp.i254.not = icmp eq ptr %60, %pkt_queue
  br i1 %cmp.i254.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then120_crit_edge

lor.lhs.false.if.then120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then120:                                       ; preds = %lor.lhs.false.if.then120_crit_edge, %land.lhs.true114.if.then120_crit_edge
  %backoff121 = getelementptr i8, ptr %.pn270, i32 12
  %61 = ptrtoint ptr %backoff121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %backoff121, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp122 = icmp eq i32 %62, 1
  br i1 %cmp122, label %if.then120.if.then129_crit_edge, label %lor.lhs.false124

if.then120.if.then129_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then129

lor.lhs.false124:                                 ; preds = %if.then120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %delay_until125 = getelementptr i8, ptr %.pn270, i32 16
  %64 = ptrtoint ptr %delay_until125 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay_until125, align 4
  %sub126 = sub i32 %63, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub126)
  %cmp127 = icmp sgt i32 %sub126, -1
  br i1 %cmp127, label %lor.lhs.false124.if.then129_crit_edge, label %if.else

lor.lhs.false124.if.then129_crit_edge:            ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then129

if.then129:                                       ; preds = %lor.lhs.false124.if.then129_crit_edge, %if.then120.if.then129_crit_edge
  %call130 = call fastcc i32 @ipoib_mcast_join(ptr noundef %1, ptr noundef %mcast.0271)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.then129.for.inc_crit_edge, label %if.then132

if.then129.for.inc_crit_edge:                     ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then132:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #11
  br label %cleanup178

if.else:                                          ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_until.0268)
  %tobool135.not = icmp eq i32 %delay_until.0268, 0
  %sub138 = sub i32 %65, %delay_until.0268
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub138)
  %cmp139 = icmp slt i32 %sub138, 0
  %or.cond = select i1 %tobool135.not, i1 true, i1 %cmp139
  %spec.select263 = select i1 %or.cond, i32 %65, i32 %delay_until.0268
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then129.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true110.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %delay_until.1 = phi i32 [ %delay_until.0268, %land.lhs.true110.for.inc_crit_edge ], [ %delay_until.0268, %lor.lhs.false.for.inc_crit_edge ], [ %delay_until.0268, %if.then129.for.inc_crit_edge ], [ %delay_until.0268, %for.body.for.inc_crit_edge ], [ %spec.select263, %if.else ]
  %66 = ptrtoint ptr %.pn270 to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn = load ptr, ptr %.pn270, align 4
  %cmp105.not = icmp eq ptr %.pn, %multicast_list
  br i1 %cmp105.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end100.for.end_crit_edge
  %delay_until.0.lcssa = phi i32 [ 0, %if.end100.for.end_crit_edge ], [ %delay_until.1, %for.inc.for.end_crit_edge ]
  %67 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp152 = icmp sgt i32 %67, 0
  br i1 %cmp152, label %do.end157, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end157:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 4
  %call162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %69) #14
  br label %out

out:                                              ; preds = %do.end157, %for.end.out_crit_edge, %land.lhs.true92.out_crit_edge
  %delay_until.2 = phi i32 [ %delay_until.0.lcssa, %do.end157 ], [ %delay_until.0.lcssa, %for.end.out_crit_edge ], [ %49, %land.lhs.true92.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay_until.2)
  %tobool166.not = icmp eq i32 %delay_until.2, 0
  br i1 %tobool166.not, label %out.if.end176_crit_edge, label %if.then167

out.if.end176_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then167:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %call168 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #11
  %wq = getelementptr i8, ptr %work, i32 -4
  %70 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wq, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub170 = sub i32 %delay_until.2, %72
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %work, i32 noundef %sub170) #11
  br label %if.end176

if.end172:                                        ; preds = %land.lhs.true92.if.end172_crit_edge, %if.then88.if.end172_crit_edge
  %tobool173.not = icmp eq ptr %36, null
  br i1 %tobool173.not, label %if.end172.if.end176_crit_edge, label %if.then174

if.end172.if.end176_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end176

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  %call175 = call fastcc i32 @ipoib_mcast_join(ptr noundef %1, ptr noundef nonnull %36)
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end172.if.end176_crit_edge, %if.then167, %out.if.end176_crit_edge, %land.lhs.true.if.end176_crit_edge, %if.then80.if.end176_crit_edge, %cleanup, %if.end39.if.end176_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #11
  br label %cleanup178

cleanup178:                                       ; preds = %if.end176, %if.then132, %if.end34.cleanup178_crit_edge, %do.end24, %do.body18.cleanup178_crit_edge, %do.end, %do.body.cleanup178_crit_edge, %entry.cleanup178_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %port_attr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipoib_mcast_alloc(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 240) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev1 = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %created = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %created to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %created, align 4
  %4 = load volatile i32, ptr @jiffies, align 128
  %delay_until = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %delay_until to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %delay_until, align 4
  %backoff = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %backoff to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %backoff, align 8
  %list = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev.i, align 8
  %neigh_list = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %neigh_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %neigh_list, ptr %neigh_list, align 8
  %prev.i10 = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %neigh_list, ptr %prev.i10, align 4
  %pkt_queue = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 11
  %lock.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %11 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pkt_queue, ptr %pkt_queue, align 8
  %prev.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pkt_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ipoib_mcast_schedule_join_thread(ptr noundef %priv, ptr noundef %mcast, i1 noundef zeroext %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.end

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.end:                                           ; preds = %entry
  %mcast_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 15
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task) #11
  %tobool2.not = icmp ne ptr %mcast, null
  %2 = and i1 %tobool2.not, %delay
  br i1 %2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %backoff = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 6
  %3 = ptrtoint ptr %backoff to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %backoff, align 8
  %mul = shl i32 %4, 1
  %5 = tail call i32 @llvm.umin.i32(i32 %mul, i32 16)
  %6 = ptrtoint ptr %backoff to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %backoff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %mul10 = mul nuw nsw i32 %5, 100
  %add = add i32 %mul10, %7
  %delay_until = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 7
  %8 = ptrtoint ptr %delay_until to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %delay_until, align 4
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 14
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %mcast_task, i32 noundef 0) #11
  br label %if.end23

if.else:                                          ; preds = %if.end
  %wq15 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 14
  %11 = ptrtoint ptr %wq15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq15, align 4
  br i1 %delay, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i37 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %mcast_task, i32 noundef 100) #11
  br label %if.end23

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call.i38 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %mcast_task, i32 noundef 0) #11
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.then14, %if.then4, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ipoib_mcast_add(ptr nocapture noundef readonly %dev, ptr noundef %mcast) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %multicast_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %multicast_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %multicast_tree, align 4
  %tobool.not4 = icmp eq ptr %3, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.cond:                                       ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  %spec.select = select i1 %cmp5.not, ptr %n.05, ptr %rb_right
  %n.2 = select i1 %cmp, ptr %rb_left, ptr %spec.select
  %4 = ptrtoint ptr %n.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %n.2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %entry.while.body_crit_edge
  %6 = phi ptr [ %5, %while.cond.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %n.05 = phi ptr [ %n.2, %while.cond.while.body_crit_edge ], [ %multicast_tree, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %6, i32 -72
  %call4 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %mcast, ptr noundef dereferenceable(16) %add.ptr, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  %not.cmp5.not = xor i1 %cmp5.not, true
  %cond = or i1 %cmp, %not.cmp5.not
  br i1 %cond, label %while.cond, label %while.body.cleanup13_crit_edge

while.body.cleanup13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup13

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %pn.0.lcssa = phi ptr [ null, %entry.while.end_crit_edge ], [ %6, %while.cond.while.end_crit_edge ]
  %n.0.lcssa = phi ptr [ %multicast_tree, %entry.while.end_crit_edge ], [ %n.2, %while.cond.while.end_crit_edge ]
  %rb_node10 = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 3
  %7 = ptrtoint ptr %pn.0.lcssa to i32
  %8 = ptrtoint ptr %rb_node10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rb_node10, align 4
  %rb_right.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %rb_left.i, align 4
  %11 = ptrtoint ptr %n.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rb_node10, ptr %n.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node10, ptr noundef %multicast_tree) #11
  br label %cleanup13

cleanup13:                                        ; preds = %while.end, %while.body.cleanup13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipoib_mcast_join(ptr nocapture noundef readonly %dev, ptr noundef %mcast) unnamed_addr #0 align 64 {
entry:
  %rec = alloca %struct.ib_sa_mcmember_rec, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rec) #11
  %2 = getelementptr inbounds i8, ptr %rec, i32 32
  %3 = call ptr @memset(ptr %2, i32 0, i32 32)
  %4 = getelementptr inbounds { %union.ib_gid, %union.ib_gid, i32, i16, i8, i8, i8, [1 x i8], i16, i8, i8, i8, i8, i8, [3 x i8], i32, i8, i8, i8, i8, [4 x i8] }, ptr %rec, i32 0, i32 18
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %4, align 2
  %broadcast = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %broadcast, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %done = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 13
  %10 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 13, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #11
  %flags3 = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags3) #11
  %11 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %do.end, label %if.end.do.end11_crit_edge

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %13, ptr noundef %mcast) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %if.end.do.end11_crit_edge
  %14 = call ptr @memcpy(ptr %rec, ptr %mcast, i32 16)
  %port_gid = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 1
  %local_gid = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 32
  %15 = call ptr @memcpy(ptr %port_gid, ptr %local_gid, i32 16)
  %pkey = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 25
  %16 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pkey, align 2
  %pkey15 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 7
  %18 = ptrtoint ptr %pkey15 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %pkey15, align 2
  %19 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %broadcast, align 4
  %cmp17.not = icmp eq ptr %20, %mcast
  br i1 %cmp17.not, label %do.end11.if.end45_crit_edge, label %if.then18

do.end11.if.end45_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then18:                                        ; preds = %do.end11
  %qkey = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qkey, align 8
  %qkey21 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 2
  %23 = ptrtoint ptr %qkey21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %qkey21, align 8
  %mtu_selector = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 4
  %24 = ptrtoint ptr %mtu_selector to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %mtu_selector, align 2
  %mtu = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %mtu to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mtu, align 1
  %mtu24 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 5
  %27 = ptrtoint ptr %mtu24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mtu24, align 1
  %traffic_class = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 6
  %28 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %traffic_class, align 8
  %traffic_class27 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 6
  %30 = ptrtoint ptr %traffic_class27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %traffic_class27, align 8
  %rate_selector = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 8
  %31 = ptrtoint ptr %rate_selector to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %rate_selector, align 4
  %rate = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 9
  %32 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rate, align 1
  %rate30 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 9
  %34 = ptrtoint ptr %rate30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %rate30, align 1
  %sl = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 12
  %35 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sl, align 8
  %sl33 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 12
  %37 = ptrtoint ptr %sl33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %sl33, align 8
  %flow_label = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 13
  %38 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flow_label, align 4
  %flow_label36 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 13
  %40 = ptrtoint ptr %flow_label36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %flow_label36, align 4
  %hop_limit = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %20, i32 0, i32 14
  %41 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hop_limit, align 8
  %hop_limit39 = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %rec, i32 0, i32 14
  %43 = ptrtoint ptr %hop_limit39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %hop_limit39, align 8
  %44 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags3, align 4
  %46 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool42.not = icmp eq i32 %46, 0
  br i1 %tobool42.not, label %if.then18.if.end45_crit_edge, label %if.then43

if.then18.if.end45_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then43:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 8, ptr %4, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then18.if.end45_crit_edge, %do.end11.if.end45_crit_edge
  %comp_mask.0 = phi i64 [ 95223, %if.then43 ], [ 95223, %if.then18.if.end45_crit_edge ], [ 65667, %do.end11.if.end45_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  %ca = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 23
  %48 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ca, align 8
  %port = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 24
  %50 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %port, align 4
  %conv = zext i8 %51 to i32
  %call46 = call ptr @ib_sa_join_multicast(ptr noundef nonnull @ipoib_sa_client, ptr noundef %49, i32 noundef %conv, ptr noundef nonnull %rec, i64 noundef %comp_mask.0, i32 noundef 3264, ptr noundef nonnull @ipoib_mcast_join_complete, ptr noundef %mcast) #11
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  %call52 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join._rs, ptr noundef nonnull @.str.41) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then49.do.end65_crit_edge, label %do.end57

if.then49.do.end65_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end57:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %call46 to i32
  %dev59 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev59, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %54, i32 noundef %52) #14
  br label %do.end65

do.end65:                                         ; preds = %do.end57, %if.then49.do.end65_crit_edge
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.end65.__ipoib_mcast_schedule_join_thread.exit_crit_edge, label %if.end.i

do.end65.__ipoib_mcast_schedule_join_thread.exit_crit_edge: ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_schedule_join_thread.exit

if.end.i:                                         ; preds = %do.end65
  %mcast_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 15
  %call1.i = call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i) #11
  %tobool2.not.i.not = icmp eq ptr %mcast, null
  br i1 %tobool2.not.i.not, label %if.end.i.__ipoib_mcast_schedule_join_thread.exit.sink.split_crit_edge, label %if.then4.i

if.end.i.__ipoib_mcast_schedule_join_thread.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_schedule_join_thread.exit.sink.split

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %backoff.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 6
  %57 = ptrtoint ptr %backoff.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %backoff.i, align 8
  %mul.i = shl i32 %58, 1
  %59 = call i32 @llvm.umin.i32(i32 %mul.i, i32 16) #11
  %60 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %backoff.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %mul10.i = mul nuw nsw i32 %59, 100
  %add.i = add i32 %mul10.i, %61
  %delay_until.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast, i32 0, i32 7
  %62 = ptrtoint ptr %delay_until.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i, ptr %delay_until.i, align 4
  br label %__ipoib_mcast_schedule_join_thread.exit.sink.split

__ipoib_mcast_schedule_join_thread.exit.sink.split: ; preds = %if.then4.i, %if.end.i.__ipoib_mcast_schedule_join_thread.exit.sink.split_crit_edge
  %.sink107 = phi i32 [ 0, %if.then4.i ], [ 100, %if.end.i.__ipoib_mcast_schedule_join_thread.exit.sink.split_crit_edge ]
  %wq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %63 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wq.i, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %mcast_task.i, i32 noundef %.sink107) #11
  br label %__ipoib_mcast_schedule_join_thread.exit

__ipoib_mcast_schedule_join_thread.exit:          ; preds = %__ipoib_mcast_schedule_join_thread.exit.sink.split, %do.end65.__ipoib_mcast_schedule_join_thread.exit_crit_edge
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags3) #11
  call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  call void @complete(ptr noundef %done) #11
  call void @_raw_spin_lock_irq(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %__ipoib_mcast_schedule_join_thread.exit, %if.end45.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %__ipoib_mcast_schedule_join_thread.exit ], [ 0, %if.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rec) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_start_thread(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %4) #14
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %flags.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body7.__ipoib_mcast_schedule_join_thread.exit_crit_edge, label %if.end.i

do.body7.__ipoib_mcast_schedule_join_thread.exit_crit_edge: ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_schedule_join_thread.exit

if.end.i:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i) #11
  %wq15.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %wq15.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wq15.i, align 4
  %call.i38.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %mcast_task.i, i32 noundef 0) #11
  br label %__ipoib_mcast_schedule_join_thread.exit

__ipoib_mcast_schedule_join_thread.exit:          ; preds = %if.end.i, %do.body7.__ipoib_mcast_schedule_join_thread.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call11) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_stop_thread(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %2 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %4) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %mcast_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 15
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %mcast_task) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_check_and_add_mcast_sendonly(ptr noundef %priv, ptr nocapture noundef readonly %mgid, ptr noundef %remove_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mgid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mgid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i.i, align 4
  %multicast_tree.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %multicast_tree.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.018.i = load ptr, ptr %multicast_tree.i, align 4
  %tobool.not19.i = icmp eq ptr %n.018.i, null
  br i1 %tobool.not19.i, label %if.then.if.end6_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.018.i, %if.then.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %n.020.i, i32 -72
  %call2.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %mgid, ptr noundef dereferenceable(16) %add.ptr.i, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %__ipoib_mcast_find.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %7 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end6_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.if.end6_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

__ipoib_mcast_find.exit:                          ; preds = %if.else.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %__ipoib_mcast_find.exit.if.end6_crit_edge, label %land.lhs.true

__ipoib_mcast_find.exit.if.end6_crit_edge:        ; preds = %__ipoib_mcast_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %__ipoib_mcast_find.exit
  %flags = getelementptr i8, ptr %n.020.i, i32 32
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then4

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %land.lhs.true
  %list = getelementptr i8, ptr %n.020.i, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %n.020.i, i32 16
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then4.list_del.exit_crit_edge
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %n.020.i, i32 16
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %multicast_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %priv, i32 0, i32 13
  tail call void @rb_erase(ptr noundef nonnull %n.020.i, ptr noundef %multicast_tree) #11
  %prev.i13 = getelementptr inbounds %struct.list_head, ptr %remove_list, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i13, align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %20, ptr noundef %remove_list) #11
  br i1 %call.i.i14, label %if.end.i.i15, label %list_del.exit.if.end6_crit_edge

list_del.exit.if.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end.i.i15:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i13, align 4
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %remove_list, ptr %list, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %list, ptr %20, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i15, %list_del.exit.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %__ipoib_mcast_find.exit.if.end6_crit_edge, %cleanup.i.if.end6_crit_edge, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_remove_list(ptr noundef readonly %remove_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remove_list, align 4
  %cmp.not56 = icmp eq ptr %1, %remove_list
  br i1 %cmp.not56, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in57 = phi ptr [ %.pn58, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn58 = load ptr, ptr %.pn.in57, align 4
  %flags = getelementptr i8, ptr %.pn.in57, i32 20
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %done = getelementptr i8, ptr %.pn.in57, i32 96
  tail call void @wait_for_completion(ptr noundef %done) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn58, %remove_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %remove_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remove_list, align 4
  %cmp22.not59 = icmp eq ptr %7, %remove_list
  br i1 %cmp22.not59, label %for.end.for.end32_crit_edge, label %for.end.for.body24_crit_edge

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.end.for.end32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.body24:                                       ; preds = %ipoib_mcast_free.exit.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %.pn47.in60 = phi ptr [ %.pn47, %ipoib_mcast_free.exit.for.body24_crit_edge ], [ %7, %for.end.for.body24_crit_edge ]
  %mcast.1 = getelementptr i8, ptr %.pn47.in60, i32 -84
  %8 = ptrtoint ptr %.pn47.in60 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn47 = load ptr, ptr %.pn47.in60, align 4
  %dev = getelementptr i8, ptr %.pn47.in60, i32 92
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 2304
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i.i, align 4
  %flags.i = getelementptr i8, ptr %.pn47.in60, i32 20
  %call2.i = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.body24.if.end11.i_crit_edge, label %do.body.i

for.body24.if.end11.i_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

do.body.i:                                        ; preds = %for.body24
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_leave._rs, ptr noundef nonnull @__func__.ipoib_mcast_leave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.if.end11.i_crit_edge, label %do.end.i

do.body.i.if.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev7.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %14) #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i, %do.body.i.if.end11.i_crit_edge, %for.body24.if.end11.i_crit_edge
  %mc.i = getelementptr i8, ptr %.pn47.in60, i32 -20
  %15 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc.i, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  %cmp.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end11.i.if.end15.i_crit_edge, label %if.then13.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @ib_sa_free_multicast(ptr noundef nonnull %16) #11
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end15.i_crit_edge
  %call17.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.else.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.end15.i
  %17 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i = icmp sgt i32 %17, 0
  br i1 %cmp.i, label %do.end24.i, label %do.body20.i.do.end33.i_crit_edge

do.body20.i.do.end33.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

do.end24.i:                                       ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev26.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev26.i, align 4
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %19, ptr noundef %mcast.1) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %do.end24.i, %do.body20.i.do.end33.i_crit_edge
  %detach_mcast.i = getelementptr i8, ptr %10, i32 2336
  %20 = ptrtoint ptr %detach_mcast.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %detach_mcast.i, align 4
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 23
  %22 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ca.i, align 8
  %mlid.i = getelementptr i8, ptr %.pn47.in60, i32 -48
  %24 = ptrtoint ptr %mlid.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mlid.i, align 4
  %call37.i = tail call i32 %21(ptr noundef %10, ptr noundef %23, ptr noundef %mcast.1, i16 noundef zeroext %25) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %do.end33.i.ipoib_mcast_leave.exit_crit_edge, label %do.body40.i

do.end33.i.ipoib_mcast_leave.exit_crit_edge:      ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_leave.exit

do.body40.i:                                      ; preds = %do.end33.i
  %call41.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_leave._rs.76, ptr noundef nonnull @__func__.ipoib_mcast_leave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %do.body40.i.ipoib_mcast_leave.exit_crit_edge, label %do.end46.i

do.body40.i.ipoib_mcast_leave.exit_crit_edge:     ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_leave.exit

do.end46.i:                                       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev48.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 1
  %26 = ptrtoint ptr %dev48.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev48.i, align 4
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %27, i32 noundef %call37.i) #14
  br label %ipoib_mcast_leave.exit

if.else.i:                                        ; preds = %if.end15.i
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool58.not.i = icmp eq i32 %30, 0
  br i1 %tobool58.not.i, label %do.body60.i, label %if.else.i.ipoib_mcast_leave.exit_crit_edge

if.else.i.ipoib_mcast_leave.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_leave.exit

do.body60.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipoib_debug_level to i32))
  %31 = load i32, ptr @ipoib_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp61.i = icmp sgt i32 %31, 0
  br i1 %cmp61.i, label %do.end65.i, label %do.body60.i.ipoib_mcast_leave.exit_crit_edge

do.body60.i.ipoib_mcast_leave.exit_crit_edge:     ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_leave.exit

do.end65.i:                                       ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev67.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 1
  %32 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev67.i, align 4
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %33) #14
  br label %ipoib_mcast_leave.exit

ipoib_mcast_leave.exit:                           ; preds = %do.end65.i, %do.body60.i.ipoib_mcast_leave.exit_crit_edge, %if.else.i.ipoib_mcast_leave.exit_crit_edge, %do.end46.i, %do.body40.i.ipoib_mcast_leave.exit_crit_edge, %do.end33.i.ipoib_mcast_leave.exit_crit_edge
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i50 = icmp sgt i32 %36, 0
  br i1 %cmp.i50, label %do.end.i52, label %ipoib_mcast_leave.exit.do.end7.i_crit_edge

ipoib_mcast_leave.exit.do.end7.i_crit_edge:       ; preds = %ipoib_mcast_leave.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

do.end.i52:                                       ; preds = %ipoib_mcast_leave.exit
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i.i51 = getelementptr i8, ptr %35, i32 2304
  %37 = ptrtoint ptr %add.ptr.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i.i.i51, align 4
  %dev3.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev3.i, align 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %40, ptr noundef %mcast.1) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i52, %ipoib_mcast_leave.exit.do.end7.i_crit_edge
  tail call void @ipoib_del_neighs_by_gid(ptr noundef %35, ptr noundef %mcast.1) #11
  %ah.i = getelementptr i8, ptr %.pn47.in60, i32 -16
  %41 = ptrtoint ptr %ah.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ah.i, align 4
  %tobool.not.i53 = icmp eq ptr %42, null
  br i1 %tobool.not.i53, label %do.end7.i.if.end13.i_crit_edge, label %if.then11.i

do.end7.i.if.end13.i_crit_edge:                   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end7.i
  %ref.i.i = getelementptr inbounds %struct.ipoib_ah, ptr %42, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %ref.i.i, i32 1, i32 3, i32 1) #11
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i, ptr %ref.i.i, i32 1, ptr elementtype(i32) %ref.i.i) #11, !srcloc !169
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end13.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !170

if.end5.i.i.i.i.i.i.if.end13.i_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i, i32 noundef 3) #11
  br label %if.end13.i

if.then.i.i.i:                                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @ipoib_free_ah(ptr noundef %ref.i.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end13.i_crit_edge, %do.end7.i.if.end13.i_crit_edge
  %pkt_queue.i = getelementptr i8, ptr %.pn47.in60, i32 36
  %44 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pkt_queue.i, align 4
  %cmp.i.not31.i = icmp eq ptr %45, %pkt_queue.i
  br i1 %cmp.i.not31.i, label %if.end13.i.ipoib_mcast_free.exit_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  br label %while.body.i

if.end13.i.ipoib_mcast_free.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_free.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end13.i.while.body.i_crit_edge
  %tx_dropped.032.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end13.i.while.body.i_crit_edge ]
  %inc.i = add i32 %tx_dropped.032.i, 1
  %call17.i54 = tail call ptr @skb_dequeue(ptr noundef %pkt_queue.i) #11
  tail call void @__dev_kfree_skb_any(ptr noundef %call17.i54, i32 noundef 1) #11
  %46 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pkt_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %47, %pkt_queue.i
  br i1 %cmp.i.not.i, label %while.body.i.ipoib_mcast_free.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.ipoib_mcast_free.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipoib_mcast_free.exit

ipoib_mcast_free.exit:                            ; preds = %while.body.i.ipoib_mcast_free.exit_crit_edge, %if.end13.i.ipoib_mcast_free.exit_crit_edge
  %tx_dropped.0.lcssa.i = phi i32 [ 0, %if.end13.i.ipoib_mcast_free.exit_crit_edge ], [ %inc.i, %while.body.i.ipoib_mcast_free.exit_crit_edge ]
  tail call fastcc void @local_bh_disable() #11
  tail call void @netif_tx_lock(ptr noundef %35) #11
  %tx_dropped18.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 36, i32 7
  %48 = ptrtoint ptr %tx_dropped18.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_dropped18.i, align 4
  %add.i = add i32 %49, %tx_dropped.0.lcssa.i
  store i32 %add.i, ptr %tx_dropped18.i, align 4
  tail call void @netif_tx_unlock(ptr noundef %35) #11
  tail call fastcc void @local_bh_enable() #11
  tail call void @kfree(ptr noundef %mcast.1) #11
  %cmp22.not = icmp eq ptr %.pn47, %remove_list
  br i1 %cmp22.not, label %ipoib_mcast_free.exit.for.end32_crit_edge, label %ipoib_mcast_free.exit.for.body24_crit_edge

ipoib_mcast_free.exit.for.body24_crit_edge:       ; preds = %ipoib_mcast_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24

ipoib_mcast_free.exit.for.end32_crit_edge:        ; preds = %ipoib_mcast_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

for.end32:                                        ; preds = %ipoib_mcast_free.exit.for.end32_crit_edge, %for.end.for.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_send(ptr noundef %dev, ptr noundef %daddr, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  %add.ptr = getelementptr i8, ptr %daddr, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %flags7 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags7, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %broadcast = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %broadcast, align 4
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false10

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %flags12 = getelementptr inbounds %struct.ipoib_mcast, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags12, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool14.not = icmp eq i32 %8, 0
  br i1 %tobool14.not, label %lor.lhs.false10.if.then_crit_edge, label %if.end

lor.lhs.false10.if.then_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false10.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %unlock

if.end:                                           ; preds = %lor.lhs.false10
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i.i, align 4
  %multicast_tree.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %multicast_tree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %n.018.i = load ptr, ptr %multicast_tree.i, align 4
  %tobool.not19.i = icmp eq ptr %n.018.i, null
  br i1 %tobool.not19.i, label %if.end.do.body22.critedge_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.do.body22.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.critedge

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.018.i, %if.end.while.body.i_crit_edge ]
  %add.ptr.i180 = getelementptr i8, ptr %n.020.i, i32 -72
  %call2.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %add.ptr, ptr noundef dereferenceable(16) %add.ptr.i180, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %__ipoib_mcast_find.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %14 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.do.body22.critedge_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.do.body22.critedge_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.critedge

__ipoib_mcast_find.exit:                          ; preds = %if.else.i
  %tobool16.not = icmp eq ptr %add.ptr.i180, null
  br i1 %tobool16.not, label %__ipoib_mcast_find.exit.do.body22.critedge_crit_edge, label %lor.lhs.false17

__ipoib_mcast_find.exit.do.body22.critedge_crit_edge: ; preds = %__ipoib_mcast_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body22.critedge

lor.lhs.false17:                                  ; preds = %__ipoib_mcast_find.exit
  %ah = getelementptr i8, ptr %n.020.i, i32 -4
  %15 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ah, align 4
  %tobool18.not = icmp eq ptr %16, null
  br i1 %tobool18.not, label %lor.lhs.false17.if.end61_crit_edge, label %if.else77

lor.lhs.false17.if.end61_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.body22.critedge:                               ; preds = %__ipoib_mcast_find.exit.do.body22.critedge_crit_edge, %cleanup.i.do.body22.critedge_crit_edge, %if.end.do.body22.critedge_crit_edge
  %17 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23 = icmp sgt i32 %17, 0
  br i1 %cmp23, label %do.end28, label %do.body22.critedge.do.end34_crit_edge

do.body22.critedge.do.end34_crit_edge:            ; preds = %do.body22.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

do.end28:                                         ; preds = %do.body22.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %dev30 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %19, ptr noundef %add.ptr) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end28, %do.body22.critedge.do.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2848, i32 noundef 240) #15
  %tobool.not.i181 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i181, label %do.body38, label %if.end56

do.body38:                                        ; preds = %do.end34
  %call39 = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_send._rs, ptr noundef nonnull @.str.20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body38.do.end52_crit_edge, label %do.end44

do.body38.do.end52_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end52

do.end44:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %dev46 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev46, align 4
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %22) #14
  br label %do.end52

do.end52:                                         ; preds = %do.end44, %do.body38.do.end52_crit_edge
  %tx_dropped54 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped54, align 4
  %inc55 = add i32 %24, 1
  store i32 %inc55, ptr %tx_dropped54, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %unlock

if.end56:                                         ; preds = %do.end34
  %dev1.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %created.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %created.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %created.i, align 4
  %28 = load volatile i32, ptr @jiffies, align 128
  %delay_until.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %delay_until.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %delay_until.i, align 4
  %backoff.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 6
  %30 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %backoff.i, align 8
  %list.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list.i, ptr %prev.i.i, align 8
  %neigh_list.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %neigh_list.i, ptr %neigh_list.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %neigh_list.i, ptr %prev.i10.i, align 4
  %pkt_queue.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11
  %lock.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %35 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %pkt_queue.i, ptr %pkt_queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pkt_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %37 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %qlen.i.i.i, align 8
  %flags57 = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags57) #11
  %38 = call ptr @memcpy(ptr %call7.i.i.i, ptr %add.ptr, i32 16)
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i.i, align 4
  %multicast_tree.i184 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %multicast_tree.i184 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %multicast_tree.i184, align 4
  %tobool.not4.i = icmp eq ptr %42, null
  br i1 %tobool.not4.i, label %if.end56.while.end.i_crit_edge, label %if.end56.while.body.i190_crit_edge

if.end56.while.body.i190_crit_edge:               ; preds = %if.end56
  br label %while.body.i190

if.end56.while.end.i_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i:                                     ; preds = %while.body.i190
  %rb_left.i185 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  %rb_right.i186 = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 1
  %spec.select.i = select i1 %cmp5.not.i, ptr %n.05.i, ptr %rb_right.i186
  %n.2.i = select i1 %cmp.i189, ptr %rb_left.i185, ptr %spec.select.i
  %43 = ptrtoint ptr %n.2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %n.2.i, align 4
  %tobool.not.i187 = icmp eq ptr %44, null
  br i1 %tobool.not.i187, label %while.cond.i.while.end.i_crit_edge, label %while.cond.i.while.body.i190_crit_edge

while.cond.i.while.body.i190_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i190

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i190:                                  ; preds = %while.cond.i.while.body.i190_crit_edge, %if.end56.while.body.i190_crit_edge
  %45 = phi ptr [ %44, %while.cond.i.while.body.i190_crit_edge ], [ %42, %if.end56.while.body.i190_crit_edge ]
  %n.05.i = phi ptr [ %n.2.i, %while.cond.i.while.body.i190_crit_edge ], [ %multicast_tree.i184, %if.end56.while.body.i190_crit_edge ]
  %add.ptr.i188 = getelementptr i8, ptr %45, i32 -72
  %call4.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %call7.i.i.i, ptr noundef dereferenceable(16) %add.ptr.i188, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i189 = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  %not.cmp5.not.i = xor i1 %cmp5.not.i, true
  %cond.i = or i1 %cmp.i189, %not.cmp5.not.i
  br i1 %cond.i, label %while.cond.i, label %while.body.i190.__ipoib_mcast_add.exit_crit_edge

while.body.i190.__ipoib_mcast_add.exit_crit_edge: ; preds = %while.body.i190
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_add.exit

while.end.i:                                      ; preds = %while.cond.i.while.end.i_crit_edge, %if.end56.while.end.i_crit_edge
  %pn.0.lcssa.i = phi ptr [ null, %if.end56.while.end.i_crit_edge ], [ %45, %while.cond.i.while.end.i_crit_edge ]
  %n.0.lcssa.i = phi ptr [ %multicast_tree.i184, %if.end56.while.end.i_crit_edge ], [ %n.2.i, %while.cond.i.while.end.i_crit_edge ]
  %rb_node10.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %pn.0.lcssa.i to i32
  %47 = ptrtoint ptr %rb_node10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rb_node10.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_left.i.i, align 8
  %50 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rb_node10.i, ptr %n.0.lcssa.i, align 4
  tail call void @rb_insert_color(ptr noundef %rb_node10.i, ptr noundef %multicast_tree.i184) #11
  br label %__ipoib_mcast_add.exit

__ipoib_mcast_add.exit:                           ; preds = %while.end.i, %while.body.i190.__ipoib_mcast_add.exit_crit_edge
  %multicast_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 12, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %52, ptr noundef %multicast_list) #11
  br i1 %call.i.i, label %if.end.i.i, label %__ipoib_mcast_add.exit.if.end61_crit_edge

__ipoib_mcast_add.exit.if.end61_crit_edge:        ; preds = %__ipoib_mcast_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end.i.i:                                       ; preds = %__ipoib_mcast_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.i, ptr %prev.i, align 4
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %multicast_list, ptr %list.i, align 4
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev.i.i, align 8
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list.i, ptr %52, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end.i.i, %__ipoib_mcast_add.exit.if.end61_crit_edge, %lor.lhs.false17.if.end61_crit_edge
  %mcast.0 = phi ptr [ %add.ptr.i180, %lor.lhs.false17.if.end61_crit_edge ], [ %call7.i.i.i, %__ipoib_mcast_add.exit.if.end61_crit_edge ], [ %call7.i.i.i, %if.end.i.i ]
  %qlen.i = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast.0, i32 0, i32 11, i32 1
  %57 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %58)
  %cmp63 = icmp ult i32 %58, 64
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %pkt_queue = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast.0, i32 0, i32 11
  %call66 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #11
  tail call void @skb_queue_tail(ptr noundef %pkt_queue, ptr noundef %skb) #11
  br label %if.end71

if.else:                                          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %tx_dropped69 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %59 = ptrtoint ptr %tx_dropped69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_dropped69, align 4
  %inc70 = add i32 %60, 1
  store i32 %inc70, ptr %tx_dropped69, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #11
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then65
  %flags72 = getelementptr inbounds %struct.ipoib_mcast, ptr %mcast.0, i32 0, i32 8
  %61 = ptrtoint ptr %flags72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags72, align 4
  %63 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool74.not = icmp eq i32 %63, 0
  br i1 %tobool74.not, label %if.then75, label %if.end71.unlock_crit_edge

if.end71.unlock_crit_edge:                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.then75:                                        ; preds = %if.end71
  %64 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags7, align 4
  %and1.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i191 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i191, label %if.then75.unlock_crit_edge, label %if.end.i192

if.then75.unlock_crit_edge:                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.i192:                                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 15
  %call1.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i) #11
  %wq15.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 14
  %66 = ptrtoint ptr %wq15.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %wq15.i, align 4
  %call.i38.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %67, ptr noundef %mcast_task.i, i32 noundef 0) #11
  br label %unlock

if.else77:                                        ; preds = %lor.lhs.false17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #11
  %call79 = tail call ptr @ipoib_neigh_get(ptr noundef %dev, ptr noundef %daddr) #11
  %call89 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %tobool94.not = icmp eq ptr %call79, null
  br i1 %tobool94.not, label %if.then95, label %if.else77.if.end108_crit_edge

if.else77.if.end108_crit_edge:                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then95:                                        ; preds = %if.else77
  %call96 = tail call ptr @ipoib_neigh_alloc(ptr noundef %daddr, ptr noundef %dev) #11
  %tobool97.not = icmp eq ptr %call96, null
  br i1 %tobool97.not, label %if.then95.if.end108_crit_edge, label %land.lhs.true

if.then95.if.end108_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

land.lhs.true:                                    ; preds = %if.then95
  %list98 = getelementptr inbounds %struct.ipoib_neigh, ptr %call96, i32 0, i32 5
  %68 = ptrtoint ptr %list98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %list98, align 4
  %cmp.i194.not = icmp eq ptr %69, %list98
  br i1 %cmp.i194.not, label %if.then101, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then101:                                       ; preds = %land.lhs.true
  %70 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ah, align 4
  %ref = getelementptr inbounds %struct.ipoib_ah, ptr %71, i32 0, i32 3
  tail call fastcc void @kref_get(ptr noundef %ref)
  %72 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ah, align 4
  %74 = ptrtoint ptr %call96 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %call96, align 4
  %valid = getelementptr inbounds %struct.ipoib_ah, ptr %73, i32 0, i32 5
  %75 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %valid, align 4
  %neigh_list = getelementptr i8, ptr %n.020.i, i32 40
  %prev.i195 = getelementptr i8, ptr %n.020.i, i32 44
  %76 = ptrtoint ptr %prev.i195 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i195, align 4
  %call.i.i196 = tail call zeroext i1 @__list_add_valid(ptr noundef %list98, ptr noundef %77, ptr noundef %neigh_list) #11
  br i1 %call.i.i196, label %if.end.i.i198, label %if.then101.if.end108_crit_edge

if.then101.if.end108_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.end.i.i198:                                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %prev.i195 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %list98, ptr %prev.i195, align 4
  %79 = ptrtoint ptr %list98 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %neigh_list, ptr %list98, align 4
  %prev3.i.i197 = getelementptr inbounds %struct.ipoib_neigh, ptr %call96, i32 0, i32 5, i32 1
  %80 = ptrtoint ptr %prev3.i.i197 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev3.i.i197, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %list98, ptr %77, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end.i.i198, %if.then101.if.end108_crit_edge, %land.lhs.true.if.end108_crit_edge, %if.then95.if.end108_crit_edge, %if.else77.if.end108_crit_edge
  %neigh.0 = phi ptr [ %call79, %if.else77.if.end108_crit_edge ], [ %call96, %land.lhs.true.if.end108_crit_edge ], [ null, %if.then95.if.end108_crit_edge ], [ %call96, %if.then101.if.end108_crit_edge ], [ %call96, %if.end.i.i198 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call89) #11
  %send = getelementptr i8, ptr %dev, i32 2328
  %82 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %send, align 4
  %84 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ah, align 4
  %ah111 = getelementptr inbounds %struct.ipoib_ah, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %ah111 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ah111, align 4
  %call112 = tail call i32 %83(ptr noundef %dev, ptr noundef %skb, ptr noundef %87, i32 noundef 16777215) #11
  %88 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ah, align 4
  %last_send = getelementptr inbounds %struct.ipoib_ah, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %last_send to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call112, ptr %last_send, align 4
  %tobool114.not = icmp eq ptr %neigh.0, null
  br i1 %tobool114.not, label %if.end108.cleanup_crit_edge, label %if.then115

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then115:                                       ; preds = %if.end108
  %refcnt.i = getelementptr inbounds %struct.ipoib_neigh, ptr %neigh.0, i32 0, i32 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !168
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !169
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i200, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !170

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.then.i200:                                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !171
  tail call void @ipoib_neigh_dtor(ptr noundef nonnull %neigh.0) #11
  br label %cleanup

unlock:                                           ; preds = %if.end.i192, %if.then75.unlock_crit_edge, %if.end71.unlock_crit_edge, %do.end52, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.then.i200, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end108.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_neigh_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_neigh_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #11, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !173

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !170

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_dev_flush(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %remove_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %remove_list, i32 0, i32 1
  %3 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %remove_list, ptr %remove_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %remove_list, ptr %2, align 4
  %mcast_mutex = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 7
  call void @mutex_lock_nested(ptr noundef %mcast_mutex, i32 noundef 0) #11
  %5 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %7) #14
  br label %do.body7

do.body7:                                         ; preds = %do.end, %entry.do.body7_crit_edge
  %call11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #11
  %multicast_list = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %multicast_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %multicast_list, align 8
  %cmp24.not69 = icmp eq ptr %9, %multicast_list
  br i1 %cmp24.not69, label %do.body7.for.end_crit_edge, label %for.body.lr.ph

do.body7.for.end_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body7
  %multicast_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in70 = phi ptr [ %9, %for.body.lr.ph ], [ %.pn, %list_add_tail.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in70, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in70) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in70, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in70, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in70, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rb_node = getelementptr i8, ptr %.pn.in70, i32 -12
  call void @rb_erase(ptr noundef %rb_node, ptr noundef %multicast_tree) #11
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call.i.i62 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in70, ptr noundef %20, ptr noundef nonnull %remove_list) #11
  br i1 %call.i.i62, label %if.end.i.i63, label %list_del.exit.list_add_tail.exit_crit_edge

list_del.exit.list_add_tail.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i63:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn.in70, ptr %2, align 4
  %22 = ptrtoint ptr %.pn.in70 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %remove_list, ptr %.pn.in70, align 4
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn.in70, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i63, %list_del.exit.list_add_tail.exit_crit_edge
  %cmp24.not = icmp eq ptr %.pn, %multicast_list
  br i1 %cmp24.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.body7.for.end_crit_edge
  %broadcast = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %broadcast, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %for.end.if.end40_crit_edge, label %if.then33

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then33:                                        ; preds = %for.end
  %rb_node35 = getelementptr inbounds %struct.ipoib_mcast, ptr %26, i32 0, i32 3
  %multicast_tree36 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %1, i32 0, i32 13
  call void @rb_erase(ptr noundef %rb_node35, ptr noundef %multicast_tree36) #11
  %27 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %broadcast, align 4
  %list38 = getelementptr inbounds %struct.ipoib_mcast, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %call.i.i65 = call zeroext i1 @__list_add_valid(ptr noundef %list38, ptr noundef %30, ptr noundef nonnull %remove_list) #11
  br i1 %call.i.i65, label %if.end.i.i67, label %if.then33.list_add_tail.exit68_crit_edge

if.then33.list_add_tail.exit68_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit68

if.end.i.i67:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list38, ptr %2, align 4
  %32 = ptrtoint ptr %list38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %remove_list, ptr %list38, align 4
  %prev3.i.i66 = getelementptr inbounds %struct.ipoib_mcast, ptr %28, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev3.i.i66 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i66, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list38, ptr %30, align 4
  br label %list_add_tail.exit68

list_add_tail.exit68:                             ; preds = %if.end.i.i67, %if.then33.list_add_tail.exit68_crit_edge
  %35 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %broadcast, align 4
  br label %if.end40

if.end40:                                         ; preds = %list_add_tail.exit68, %for.end.if.end40_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call11) #11
  call void @ipoib_mcast_remove_list(ptr noundef nonnull %remove_list)
  call void @mutex_unlock(ptr noundef %mcast_mutex) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipoib_mcast_restart_task(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %remove_list = alloca %struct.list_head, align 4
  %rec = alloca %struct.ib_sa_mcmember_rec, align 8
  %mgid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1124
  %dev1 = getelementptr i8, ptr %work, i32 -1080
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %remove_list) #11
  %2 = getelementptr inbounds %struct.list_head, ptr %remove_list, i32 0, i32 1
  %3 = ptrtoint ptr %remove_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %remove_list, ptr %remove_list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %remove_list, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rec) #11
  %5 = call ptr @memset(ptr %rec, i32 255, i32 64)
  %flags = getelementptr i8, ptr %work, i32 -620
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup195_crit_edge, label %do.body

entry.cleanup195_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %1) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %nested_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 73
  %9 = ptrtoint ptr %nested_level.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nested_level.i, align 1
  call fastcc void @local_bh_disable() #11
  %addr_list_lock.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 63
  %conv.i = zext i8 %10 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i, i32 noundef %conv.i) #11
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #11
  %multicast_list = getelementptr i8, ptr %work, i32 -292
  %11 = ptrtoint ptr %multicast_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn313 = load ptr, ptr %multicast_list, align 4
  %cmp15.not314 = icmp eq ptr %.pn313, %multicast_list
  br i1 %cmp15.not314, label %do.end9.for.end_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end9.for.body_crit_edge
  %.pn315 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn313, %do.end9.for.body_crit_edge ]
  %flags16 = getelementptr i8, ptr %.pn315, i32 20
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags16) #11
  %12 = ptrtoint ptr %.pn315 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn315, align 4
  %cmp15.not = icmp eq ptr %.pn, %multicast_list
  br i1 %cmp15.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end9.for.end_crit_edge
  %mc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %13 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %13)
  %ha.0316 = load ptr, ptr %mc, align 4
  %cmp31.not317 = icmp eq ptr %ha.0316, %mc
  br i1 %cmp31.not317, label %for.end.for.end132_crit_edge, label %for.body33.lr.ph

for.end.for.end132_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end132

for.body33.lr.ph:                                 ; preds = %for.end
  %broadcast = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %add.ptr1.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 99, i32 7
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %ca = getelementptr i8, ptr %work, i32 244
  %port = getelementptr i8, ptr %work, i32 248
  %multicast_tree = getelementptr i8, ptr %work, i32 -284
  %prev.i = getelementptr i8, ptr %work, i32 -288
  br label %for.body33

for.body33:                                       ; preds = %cleanup123.for.body33_crit_edge, %for.body33.lr.ph
  %ha.0318 = phi ptr [ %ha.0316, %for.body33.lr.ph ], [ %ha.0, %cleanup123.for.body33_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mgid) #11
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0318, i32 0, i32 2
  %14 = call ptr @memset(ptr %mgid, i32 255, i32 16)
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(6) %addr, ptr noundef dereferenceable(6) %broadcast, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %ipoib_mcast_addr_is_valid.exit, label %for.body33.cleanup123_crit_edge

for.body33.cleanup123_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

ipoib_mcast_addr_is_valid.exit:                   ; preds = %for.body33
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0318, i32 0, i32 2, i32 7
  %bcmp8.i = call i32 @bcmp(ptr noundef dereferenceable(3) %add.ptr.i, ptr noundef dereferenceable(3) %add.ptr1.i, i32 3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp8.i)
  %tobool3.not.i.not = icmp eq i32 %bcmp8.i, 0
  br i1 %tobool3.not.i.not, label %if.end39, label %ipoib_mcast_addr_is_valid.exit.cleanup123_crit_edge

ipoib_mcast_addr_is_valid.exit.cleanup123_crit_edge: ; preds = %ipoib_mcast_addr_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end39:                                         ; preds = %ipoib_mcast_addr_is_valid.exit
  %add.ptr43 = getelementptr %struct.netdev_hw_addr, ptr %ha.0318, i32 0, i32 2, i32 4
  %15 = call ptr @memcpy(ptr %mgid, ptr %add.ptr43, i32 16)
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i.i.i, align 4
  %multicast_tree.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %multicast_tree.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %n.018.i = load ptr, ptr %multicast_tree.i, align 4
  %tobool.not19.i = icmp eq ptr %n.018.i, null
  br i1 %tobool.not19.i, label %if.end39.if.then49_crit_edge, label %if.end39.while.body.i_crit_edge

if.end39.while.body.i_crit_edge:                  ; preds = %if.end39
  br label %while.body.i

if.end39.if.then49_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end39.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %cleanup.i.while.body.i_crit_edge ], [ %n.018.i, %if.end39.while.body.i_crit_edge ]
  %add.ptr.i268 = getelementptr i8, ptr %n.020.i, i32 -72
  %call2.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %mgid, ptr noundef dereferenceable(16) %add.ptr.i268, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %__ipoib_mcast_find.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %19 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i269 = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i269, label %cleanup.i.if.then49_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cleanup.i.if.then49_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

__ipoib_mcast_find.exit:                          ; preds = %if.else.i
  %tobool45.not = icmp eq ptr %add.ptr.i268, null
  br i1 %tobool45.not, label %__ipoib_mcast_find.exit.if.then49_crit_edge, label %lor.lhs.false

__ipoib_mcast_find.exit.if.then49_crit_edge:      ; preds = %__ipoib_mcast_find.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false:                                    ; preds = %__ipoib_mcast_find.exit
  %flags46 = getelementptr i8, ptr %n.020.i, i32 32
  %20 = ptrtoint ptr %flags46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags46, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not = icmp eq i32 %22, 0
  br i1 %tobool48.not, label %lor.lhs.false.if.then120_crit_edge, label %lor.lhs.false.if.then49_crit_edge

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then49

lor.lhs.false.if.then120_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %__ipoib_mcast_find.exit.if.then49_crit_edge, %cleanup.i.if.then49_crit_edge, %if.end39.if.then49_crit_edge
  %tobool45.not309 = phi i1 [ false, %lor.lhs.false.if.then49_crit_edge ], [ true, %__ipoib_mcast_find.exit.if.then49_crit_edge ], [ true, %if.end39.if.then49_crit_edge ], [ true, %cleanup.i.if.then49_crit_edge ]
  %retval.2.i308 = phi ptr [ %add.ptr.i268, %lor.lhs.false.if.then49_crit_edge ], [ null, %__ipoib_mcast_find.exit.if.then49_crit_edge ], [ null, %if.end39.if.then49_crit_edge ], [ null, %cleanup.i.if.then49_crit_edge ]
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags, align 4
  %25 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %if.then49.do.body73_crit_edge, label %land.lhs.true

if.then49.do.body73_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body73

land.lhs.true:                                    ; preds = %if.then49
  %26 = ptrtoint ptr %ca to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ca, align 8
  %28 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port, align 4
  %conv = zext i8 %29 to i32
  %call53 = call i32 @ib_sa_get_mcmember_rec(ptr noundef %27, i32 noundef %conv, ptr noundef nonnull %mgid, ptr noundef nonnull %rec) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body56, label %land.lhs.true.do.body73_crit_edge

land.lhs.true.do.body73_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body73

do.body56:                                        ; preds = %land.lhs.true
  %30 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp57 = icmp sgt i32 %30, 0
  br i1 %cmp57, label %do.end62, label %do.body56.cleanup123_crit_edge

do.body56.cleanup123_crit_edge:                   ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

do.end62:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 4
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %32, ptr noundef nonnull %mgid) #14
  br label %cleanup123

do.body73:                                        ; preds = %land.lhs.true.do.body73_crit_edge, %if.then49.do.body73_crit_edge
  %33 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp74 = icmp sgt i32 %33, 0
  br i1 %cmp74, label %do.end79, label %do.body73.do.end88_crit_edge

do.body73.do.end88_crit_edge:                     ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end88

do.end79:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 4
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %35, ptr noundef nonnull %mgid) #14
  br label %do.end88

do.end88:                                         ; preds = %do.end79, %do.body73.do.end88_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 2848, i32 noundef 240) #15
  %tobool.not.i270 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i270, label %do.body92, label %if.end107

do.body92:                                        ; preds = %do.end88
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_restart_task._rs, ptr noundef nonnull @.str.27) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.cleanup123_crit_edge, label %do.end98

do.body92.cleanup123_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %38) #14
  br label %cleanup123

if.end107:                                        ; preds = %do.end88
  %dev1.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 12
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %1, ptr %dev1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %created.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %created.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %created.i, align 4
  %42 = load volatile i32, ptr @jiffies, align 128
  %delay_until.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %delay_until.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %delay_until.i, align 4
  %backoff.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %backoff.i, align 8
  %list.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %list.i, ptr %prev.i.i, align 8
  %neigh_list.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %neigh_list.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %neigh_list.i, ptr %neigh_list.i, align 8
  %prev.i10.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %neigh_list.i, ptr %prev.i10.i, align 4
  %pkt_queue.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11
  %lock.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.39, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %49 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %pkt_queue.i, ptr %pkt_queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pkt_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %51 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %qlen.i.i.i, align 8
  %flags108 = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags108) #11
  %52 = call ptr @memcpy(ptr %call7.i.i.i, ptr %mgid, i32 16)
  br i1 %tobool45.not309, label %if.else, label %if.then111

if.then111:                                       ; preds = %if.end107
  %list112 = getelementptr inbounds %struct.ipoib_mcast, ptr %retval.2.i308, i32 0, i32 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list112) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then111.__list_del_entry.exit.i_crit_edge

if.then111.__list_del_entry.exit.i_crit_edge:     ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i273 = getelementptr inbounds %struct.ipoib_mcast, ptr %retval.2.i308, i32 0, i32 4, i32 1
  %53 = ptrtoint ptr %prev.i.i273 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i273, align 4
  %55 = ptrtoint ptr %list112 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %list112, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then111.__list_del_entry.exit.i_crit_edge
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list112, ptr noundef %60, ptr noundef nonnull %remove_list) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list112, ptr %2, align 4
  %62 = ptrtoint ptr %list112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %remove_list, ptr %list112, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %retval.2.i308, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %list112, ptr %60, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %rb_node = getelementptr inbounds %struct.ipoib_mcast, ptr %retval.2.i308, i32 0, i32 3
  %rb_node113 = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3
  call void @rb_replace_node(ptr noundef %rb_node, ptr noundef %rb_node113, ptr noundef %multicast_tree) #11
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i, align 4
  %call.i.i274 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %66, ptr noundef %multicast_list) #11
  br i1 %call.i.i274, label %if.end.i.i275, label %list_move_tail.exit.if.then120_crit_edge

list_move_tail.exit.if.then120_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then120

if.end.i.i275:                                    ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list.i, ptr %prev.i, align 4
  %68 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %multicast_list, ptr %list.i, align 4
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i.i, align 8
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %list.i, ptr %66, align 4
  br label %if.then120

if.else:                                          ; preds = %if.end107
  %71 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i.i.i, align 4
  %multicast_tree.i277 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %72, i32 0, i32 13
  %73 = ptrtoint ptr %multicast_tree.i277 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %multicast_tree.i277, align 4
  %tobool.not4.i = icmp eq ptr %74, null
  br i1 %tobool.not4.i, label %if.else.while.end.i_crit_edge, label %if.else.while.body.i283_crit_edge

if.else.while.body.i283_crit_edge:                ; preds = %if.else
  br label %while.body.i283

if.else.while.end.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.cond.i:                                     ; preds = %while.body.i283
  %rb_left.i278 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  %rb_right.i279 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  %spec.select.i = select i1 %cmp5.not.i, ptr %n.05.i, ptr %rb_right.i279
  %n.2.i = select i1 %cmp.i282, ptr %rb_left.i278, ptr %spec.select.i
  %75 = ptrtoint ptr %n.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %n.2.i, align 4
  %tobool.not.i280 = icmp eq ptr %76, null
  br i1 %tobool.not.i280, label %while.cond.i.while.end.i_crit_edge, label %while.cond.i.while.body.i283_crit_edge

while.cond.i.while.body.i283_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i283

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i283:                                  ; preds = %while.cond.i.while.body.i283_crit_edge, %if.else.while.body.i283_crit_edge
  %77 = phi ptr [ %76, %while.cond.i.while.body.i283_crit_edge ], [ %74, %if.else.while.body.i283_crit_edge ]
  %n.05.i = phi ptr [ %n.2.i, %while.cond.i.while.body.i283_crit_edge ], [ %multicast_tree.i277, %if.else.while.body.i283_crit_edge ]
  %add.ptr.i281 = getelementptr i8, ptr %77, i32 -72
  %call4.i = call i32 @memcmp(ptr noundef nonnull dereferenceable(16) %call7.i.i.i, ptr noundef dereferenceable(16) %add.ptr.i281, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i282 = icmp slt i32 %call4.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp eq i32 %call4.i, 0
  %not.cmp5.not.i = xor i1 %cmp5.not.i, true
  %cond.i = or i1 %cmp.i282, %not.cmp5.not.i
  br i1 %cond.i, label %while.cond.i, label %while.body.i283.__ipoib_mcast_add.exit_crit_edge

while.body.i283.__ipoib_mcast_add.exit_crit_edge: ; preds = %while.body.i283
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_add.exit

while.end.i:                                      ; preds = %while.cond.i.while.end.i_crit_edge, %if.else.while.end.i_crit_edge
  %pn.0.lcssa.i = phi ptr [ null, %if.else.while.end.i_crit_edge ], [ %77, %while.cond.i.while.end.i_crit_edge ]
  %n.0.lcssa.i = phi ptr [ %multicast_tree.i277, %if.else.while.end.i_crit_edge ], [ %n.2.i, %while.cond.i.while.end.i_crit_edge ]
  %rb_node10.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %pn.0.lcssa.i to i32
  %79 = ptrtoint ptr %rb_node10.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %rb_node10.i, align 8
  %rb_right.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %80 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.ipoib_mcast, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %rb_left.i.i, align 8
  %82 = ptrtoint ptr %n.0.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %rb_node10.i, ptr %n.0.lcssa.i, align 4
  call void @rb_insert_color(ptr noundef %rb_node10.i, ptr noundef %multicast_tree.i277) #11
  br label %__ipoib_mcast_add.exit

__ipoib_mcast_add.exit:                           ; preds = %while.end.i, %while.body.i283.__ipoib_mcast_add.exit_crit_edge
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %call.i.i285 = call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %84, ptr noundef %multicast_list) #11
  br i1 %call.i.i285, label %if.end.i.i287, label %__ipoib_mcast_add.exit.cleanup123_crit_edge

__ipoib_mcast_add.exit.cleanup123_crit_edge:      ; preds = %__ipoib_mcast_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup123

if.end.i.i287:                                    ; preds = %__ipoib_mcast_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %list.i, ptr %prev.i, align 4
  %86 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %multicast_list, ptr %list.i, align 4
  %87 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev.i.i, align 8
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %list.i, ptr %84, align 4
  br label %cleanup123

if.then120:                                       ; preds = %if.end.i.i275, %list_move_tail.exit.if.then120_crit_edge, %lor.lhs.false.if.then120_crit_edge
  %retval.2.i307 = phi ptr [ %add.ptr.i268, %lor.lhs.false.if.then120_crit_edge ], [ %retval.2.i308, %list_move_tail.exit.if.then120_crit_edge ], [ %retval.2.i308, %if.end.i.i275 ]
  %flags121 = getelementptr inbounds %struct.ipoib_mcast, ptr %retval.2.i307, i32 0, i32 8
  call void @_set_bit(i32 noundef 0, ptr noundef %flags121) #11
  br label %cleanup123

cleanup123:                                       ; preds = %if.then120, %if.end.i.i287, %__ipoib_mcast_add.exit.cleanup123_crit_edge, %do.end98, %do.body92.cleanup123_crit_edge, %do.end62, %do.body56.cleanup123_crit_edge, %ipoib_mcast_addr_is_valid.exit.cleanup123_crit_edge, %for.body33.cleanup123_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mgid) #11
  %89 = ptrtoint ptr %ha.0318 to i32
  call void @__asan_load4_noabort(i32 %89)
  %ha.0 = load ptr, ptr %ha.0318, align 4
  %cmp31.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp31.not, label %cleanup123.for.end132_crit_edge, label %cleanup123.for.body33_crit_edge

cleanup123.for.body33_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body33

cleanup123.for.end132_crit_edge:                  ; preds = %cleanup123
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end132

for.end132:                                       ; preds = %cleanup123.for.end132_crit_edge, %for.end.for.end132_crit_edge
  %90 = ptrtoint ptr %multicast_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %multicast_list, align 8
  %cmp146.not321 = icmp eq ptr %91, %multicast_list
  br i1 %cmp146.not321, label %for.end132.for.end186_crit_edge, label %for.body149.lr.ph

for.end132.for.end186_crit_edge:                  ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end186

for.body149.lr.ph:                                ; preds = %for.end132
  %multicast_tree177 = getelementptr i8, ptr %work, i32 -284
  br label %for.body149

for.body149:                                      ; preds = %for.inc180.for.body149_crit_edge, %for.body149.lr.ph
  %.pn258.in322 = phi ptr [ %91, %for.body149.lr.ph ], [ %.pn258325, %for.inc180.for.body149_crit_edge ]
  %mcast.1324 = getelementptr i8, ptr %.pn258.in322, i32 -84
  %92 = ptrtoint ptr %.pn258.in322 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pn258325 = load ptr, ptr %.pn258.in322, align 4
  %flags150 = getelementptr i8, ptr %.pn258.in322, i32 20
  %93 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %flags150, align 4
  %and1.i264 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i264)
  %tobool152.not = icmp eq i32 %and1.i264, 0
  br i1 %tobool152.not, label %land.lhs.true153, label %for.body149.for.inc180_crit_edge

for.body149.for.inc180_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc180

land.lhs.true153:                                 ; preds = %for.body149
  %95 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %flags150, align 4
  %97 = and i32 %96, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool156.not = icmp eq i32 %97, 0
  br i1 %tobool156.not, label %do.body158, label %land.lhs.true153.for.inc180_crit_edge

land.lhs.true153.for.inc180_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc180

do.body158:                                       ; preds = %land.lhs.true153
  %98 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp159 = icmp sgt i32 %98, 0
  br i1 %cmp159, label %do.end164, label %do.body158.do.end175_crit_edge

do.body158.do.end175_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end175

do.end164:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev1, align 4
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %100, ptr noundef %mcast.1324) #14
  br label %do.end175

do.end175:                                        ; preds = %do.end164, %do.body158.do.end175_crit_edge
  %rb_node176 = getelementptr i8, ptr %.pn258.in322, i32 -12
  call void @rb_erase(ptr noundef %rb_node176, ptr noundef %multicast_tree177) #11
  %call.i.i289 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn258.in322) #11
  br i1 %call.i.i289, label %if.end.i.i292, label %do.end175.__list_del_entry.exit.i295_crit_edge

do.end175.__list_del_entry.exit.i295_crit_edge:   ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i295

if.end.i.i292:                                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i290 = getelementptr inbounds %struct.list_head, ptr %.pn258.in322, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i290 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %prev.i.i290, align 4
  %103 = ptrtoint ptr %.pn258.in322 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %.pn258.in322, align 4
  %prev1.i.i.i291 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %prev1.i.i.i291 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev1.i.i.i291, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %104, ptr %102, align 4
  br label %__list_del_entry.exit.i295

__list_del_entry.exit.i295:                       ; preds = %if.end.i.i292, %do.end175.__list_del_entry.exit.i295_crit_edge
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %2, align 4
  %call.i.i.i294 = call zeroext i1 @__list_add_valid(ptr noundef %.pn258.in322, ptr noundef %108, ptr noundef nonnull %remove_list) #11
  br i1 %call.i.i.i294, label %if.end.i.i.i297, label %__list_del_entry.exit.i295.for.inc180_crit_edge

__list_del_entry.exit.i295.for.inc180_crit_edge:  ; preds = %__list_del_entry.exit.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc180

if.end.i.i.i297:                                  ; preds = %__list_del_entry.exit.i295
  call void @__sanitizer_cov_trace_pc() #13
  %109 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %.pn258.in322, ptr %2, align 4
  %110 = ptrtoint ptr %.pn258.in322 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %remove_list, ptr %.pn258.in322, align 4
  %prev3.i.i.i296 = getelementptr inbounds %struct.list_head, ptr %.pn258.in322, i32 0, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i296 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i296, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %.pn258.in322, ptr %108, align 4
  br label %for.inc180

for.inc180:                                       ; preds = %if.end.i.i.i297, %__list_del_entry.exit.i295.for.inc180_crit_edge, %land.lhs.true153.for.inc180_crit_edge, %for.body149.for.inc180_crit_edge
  %cmp146.not = icmp eq ptr %.pn258325, %multicast_list
  br i1 %cmp146.not, label %for.inc180.for.end186_crit_edge, label %for.inc180.for.body149_crit_edge

for.inc180.for.body149_crit_edge:                 ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body149

for.inc180.for.end186_crit_edge:                  ; preds = %for.inc180
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end186

for.end186:                                       ; preds = %for.inc180.for.end186_crit_edge, %for.end132.for.end186_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #11
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i) #11
  call void @ipoib_mcast_remove_list(ptr noundef nonnull %remove_list)
  %113 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flags, align 4
  %and1.i267 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i267)
  %tobool190.not = icmp eq i32 %and1.i267, 0
  br i1 %tobool190.not, label %for.end186.cleanup195_crit_edge, label %if.then191

for.end186.cleanup195_crit_edge:                  ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup195

if.then191:                                       ; preds = %for.end186
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr) #11
  %115 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %flags, align 4
  %and1.i.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i300 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i300, label %if.then191.__ipoib_mcast_schedule_join_thread.exit_crit_edge, label %if.end.i301

if.then191.__ipoib_mcast_schedule_join_thread.exit_crit_edge: ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  br label %__ipoib_mcast_schedule_join_thread.exit

if.end.i301:                                      ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_task.i = getelementptr i8, ptr %work, i32 -276
  %call1.i = call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i) #11
  %wq15.i = getelementptr i8, ptr %work, i32 -280
  %117 = ptrtoint ptr %wq15.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %wq15.i, align 4
  %call.i38.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %mcast_task.i, i32 noundef 0) #11
  br label %__ipoib_mcast_schedule_join_thread.exit

__ipoib_mcast_schedule_join_thread.exit:          ; preds = %if.end.i301, %if.then191.__ipoib_mcast_schedule_join_thread.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr) #11
  br label %cleanup195

cleanup195:                                       ; preds = %__ipoib_mcast_schedule_join_thread.exit, %for.end186.cleanup195_crit_edge, %entry.cleanup195_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rec) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %remove_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sa_get_mcmember_rec(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipoib_mcast_iter_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 40) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call7.i, align 8
  %mgid = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %call7.i, i32 0, i32 1
  %2 = call ptr @memset(ptr %mgid, i32 0, i32 16)
  %call2 = tail call i32 @ipoib_mcast_iter_next(ptr noundef nonnull %call7.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipoib_mcast_iter_next(ptr nocapture noundef %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #11
  %multicast_tree = getelementptr inbounds %struct.ipoib_dev_priv, ptr %3, i32 0, i32 13
  %call1 = tail call ptr @rb_first(ptr noundef %multicast_tree) #11
  %tobool.not35 = icmp eq ptr %call1, null
  br i1 %tobool.not35, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mgid = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %n.036 = phi ptr [ %call1, %while.body.lr.ph ], [ %call17, %if.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %n.036, i32 -72
  %call4 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %mgid, ptr noundef dereferenceable(16) %add.ptr, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = call ptr @memcpy(ptr %mgid, ptr %add.ptr, i32 16)
  %created = getelementptr i8, ptr %n.036, i32 20
  %5 = ptrtoint ptr %created to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %created, align 4
  %created8 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 2
  %7 = ptrtoint ptr %created8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %created8, align 8
  %qlen.i = getelementptr i8, ptr %n.036, i32 56
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  %queuelen = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 3
  %10 = ptrtoint ptr %queuelen to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %queuelen, align 4
  %ah = getelementptr i8, ptr %n.036, i32 -4
  %11 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ah, align 4
  %tobool10 = icmp ne ptr %12, null
  %lnot.ext = zext i1 %tobool10 to i32
  %complete = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 4
  %13 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %lnot.ext, ptr %complete, align 8
  %flags = getelementptr i8, ptr %n.036, i32 32
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %and = lshr i32 %15, 1
  %and.lobit = and i32 %and, 1
  %send_only = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 5
  %16 = ptrtoint ptr %send_only to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and.lobit, ptr %send_only, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %call17 = tail call ptr @rb_next(ptr noundef nonnull %n.036) #11
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %if.then, %entry.while.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ 1, %entry.while.end_crit_edge ], [ 1, %if.end.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %3) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ipoib_mcast_iter_read(ptr nocapture noundef readonly %iter, ptr nocapture noundef writeonly %mgid, ptr nocapture noundef writeonly %created, ptr nocapture noundef writeonly %queuelen, ptr nocapture noundef writeonly %complete, ptr nocapture noundef writeonly %send_only) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mgid1 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %mgid, ptr %mgid1, i32 16)
  %created2 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 2
  %1 = ptrtoint ptr %created2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %created2, align 8
  %3 = ptrtoint ptr %created to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %created, align 4
  %queuelen3 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 3
  %4 = ptrtoint ptr %queuelen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queuelen3, align 4
  %6 = ptrtoint ptr %queuelen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %queuelen, align 4
  %complete4 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 4
  %7 = ptrtoint ptr %complete4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %complete4, align 8
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %complete, align 4
  %send_only5 = getelementptr inbounds %struct.ipoib_mcast_iter, ptr %iter, i32 0, i32 5
  %10 = ptrtoint ptr %send_only5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %send_only5, align 4
  %12 = ptrtoint ptr %send_only to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %send_only, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_sa_join_multicast(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipoib_mcast_join_complete(i32 noundef %status, ptr noundef %multicast) #0 align 64 {
entry:
  %av.i = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.ib_sa_multicast, ptr %multicast, i32 0, i32 3
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev1 = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 4
  %6 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev3 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev3, align 4
  %flags = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.49, ptr @.str.48
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %8, ptr noundef nonnull %cond, ptr noundef %1, i32 noundef %status) #14
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %12 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %do.end8.if.else_crit_edge [
    i32 -102, label %do.end8.out_locked.thread208_crit_edge
    i32 0, label %if.then13
  ]

do.end8.out_locked.thread208_crit_edge:           ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_locked.thread208

do.end8.if.else_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then13:                                        ; preds = %do.end8
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 2304
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %av.i) #11
  %17 = call ptr @memcpy(ptr %1, ptr %multicast, i32 64)
  %dev5.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev5.i, align 4
  %add.ptr.i = getelementptr %struct.net_device, ptr %19, i32 0, i32 99, i32 4
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %1, ptr noundef dereferenceable(16) %add.ptr.i, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then13.if.end53.i_crit_edge

if.then13.if.end53.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then.i:                                        ; preds = %if.then13
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #11
  %broadcast8.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 11
  %20 = ptrtoint ptr %broadcast8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %broadcast8.i, align 4
  %tobool9.not.i = icmp eq ptr %21, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end.i

if.then10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irq(ptr noundef %16) #11
  br label %if.end15.thread195

if.end.i:                                         ; preds = %if.then.i
  %qkey.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 2
  %22 = ptrtoint ptr %qkey.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qkey.i, align 8
  %qkey14.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %qkey14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %qkey14.i, align 8
  %mtu15.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 5
  %25 = ptrtoint ptr %mtu15.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mtu15.i, align 1
  %27 = ptrtoint ptr %broadcast8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %broadcast8.i, align 4
  %mtu18.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %mtu18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %mtu18.i, align 1
  %traffic_class.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 6
  %30 = ptrtoint ptr %traffic_class.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %traffic_class.i, align 8
  %32 = load ptr, ptr %broadcast8.i, align 4
  %traffic_class21.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %traffic_class21.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %traffic_class21.i, align 8
  %rate.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 9
  %34 = ptrtoint ptr %rate.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rate.i, align 1
  %36 = load ptr, ptr %broadcast8.i, align 4
  %rate24.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %rate24.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %35, ptr %rate24.i, align 1
  %sl.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 12
  %38 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %sl.i, align 8
  %40 = load ptr, ptr %broadcast8.i, align 4
  %sl27.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %sl27.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %39, ptr %sl27.i, align 8
  %flow_label.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 13
  %42 = ptrtoint ptr %flow_label.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flow_label.i, align 4
  %44 = load ptr, ptr %broadcast8.i, align 4
  %flow_label30.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %flow_label30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %flow_label30.i, align 4
  %hop_limit.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %multicast, i32 0, i32 14
  %46 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hop_limit.i, align 8
  %48 = load ptr, ptr %broadcast8.i, align 4
  %hop_limit33.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %48, i32 0, i32 14
  %49 = ptrtoint ptr %hop_limit33.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %hop_limit33.i, align 8
  %ca.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 23
  %50 = ptrtoint ptr %ca.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ca.i, align 8
  %port.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 24
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %port.i, align 4
  %conv.i = zext i8 %53 to i32
  %54 = load ptr, ptr %broadcast8.i, align 4
  %mtu36.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %mtu36.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mtu36.i, align 1
  %port_data.i.i.i = getelementptr inbounds %struct.ib_device, ptr %51, i32 0, i32 11
  %57 = ptrtoint ptr %port_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port_data.i.i.i, align 8
  %core_cap_flags.i.i.i = getelementptr %struct.ib_port_data, ptr %58, i32 %conv.i, i32 1, i32 2
  %59 = ptrtoint ptr %core_cap_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_cap_flags.i.i.i, align 4
  %and.i.i.i = and i32 %60, 1052727
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052727, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 1052727
  %switch.tableidx = add i8 %56, -1
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %61 = icmp ult i8 %switch.tableidx, 7
  br i1 %61, label %switch.lookup, label %if.then.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge

if.then.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_mtu_enum_to_int.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %62 = icmp ult i8 %switch.tableidx, 5
  br i1 %62, label %switch.lookup213, label %if.else.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge

if.else.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_mtu_enum_to_int.exit.i

switch.lookup:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %63 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ipoib_mcast_join_complete, i32 0, i32 %63
  br label %rdma_mtu_enum_to_int.exit.i.sink.split

switch.lookup213:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = sext i8 %switch.tableidx to i32
  %switch.gep215 = getelementptr inbounds [5 x i32], ptr @switch.table.ipoib_mcast_join_complete.84, i32 0, i32 %64
  br label %rdma_mtu_enum_to_int.exit.i.sink.split

rdma_mtu_enum_to_int.exit.i.sink.split:           ; preds = %switch.lookup213, %switch.lookup
  %switch.gep215.sink = phi ptr [ %switch.gep215, %switch.lookup213 ], [ %switch.gep, %switch.lookup ]
  %65 = ptrtoint ptr %switch.gep215.sink to i32
  call void @__asan_load4_noabort(i32 %65)
  %switch.load216 = load i32, ptr %switch.gep215.sink, align 4
  br label %rdma_mtu_enum_to_int.exit.i

rdma_mtu_enum_to_int.exit.i:                      ; preds = %rdma_mtu_enum_to_int.exit.i.sink.split, %if.else.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge, %if.then.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -5, %if.then.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge ], [ -5, %if.else.i.i.rdma_mtu_enum_to_int.exit.i_crit_edge ], [ %switch.load216, %rdma_mtu_enum_to_int.exit.i.sink.split ]
  %mcast_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 35
  %66 = ptrtoint ptr %mcast_mtu.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mcast_mtu.i, align 8
  %admin_mtu.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 34
  %68 = ptrtoint ptr %admin_mtu.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %admin_mtu.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.i = icmp eq i32 %67, %69
  br i1 %cmp.i, label %if.then40.i, label %rdma_mtu_enum_to_int.exit.i.if.end42.i_crit_edge

rdma_mtu_enum_to_int.exit.i.if.end42.i_crit_edge: ; preds = %rdma_mtu_enum_to_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then40.i:                                      ; preds = %rdma_mtu_enum_to_int.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %admin_mtu.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i.i, ptr %admin_mtu.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %rdma_mtu_enum_to_int.exit.i.if.end42.i_crit_edge
  %71 = ptrtoint ptr %mcast_mtu.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i.i, ptr %mcast_mtu.i, align 8
  %mtu46.i = getelementptr i8, ptr %14, i32 2316
  %72 = ptrtoint ptr %mtu46.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i.i, ptr %mtu46.i, align 4
  %73 = ptrtoint ptr %broadcast8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %broadcast8.i, align 4
  %qkey49.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %qkey49.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %qkey49.i, align 8
  %qkey50.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 31
  %77 = ptrtoint ptr %qkey50.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %qkey50.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %16) #11
  %78 = ptrtoint ptr %qkey50.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %qkey50.i, align 4
  %remote_qkey.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 44, i32 6
  %80 = ptrtoint ptr %remote_qkey.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %remote_qkey.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.end42.i, %if.then13.if.end53.i_crit_edge
  %set_qkey.0.i = phi i32 [ 0, %if.then13.if.end53.i_crit_edge ], [ 1, %if.end42.i ]
  %flags.i = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 8
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %flags.i, align 4
  %83 = and i32 %82, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool55.not.i = icmp eq i32 %83, 0
  br i1 %tobool55.not.i, label %if.then56.i, label %if.end53.i.if.end104.i_crit_edge

if.end53.i.if.end104.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104.i

if.then56.i:                                      ; preds = %if.end53.i
  %call58.i = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end74.i, label %do.body.i

do.body.i:                                        ; preds = %if.then56.i
  %call61.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_finish._rs, ptr noundef nonnull @__func__.ipoib_mcast_join_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %do.body.i.if.end15.thread191_crit_edge, label %do.end.i

do.body.i.if.end15.thread191_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.thread191

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev5.i, align 4
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %85, ptr noundef %1) #14
  br label %if.end15.thread191

if.end74.i:                                       ; preds = %if.then56.i
  %attach_mcast.i = getelementptr i8, ptr %14, i32 2332
  %86 = ptrtoint ptr %attach_mcast.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %attach_mcast.i, align 4
  %ca75.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 23
  %88 = ptrtoint ptr %ca75.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ca75.i, align 8
  %mlid.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %mlid.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %mlid.i, align 4
  %qkey79.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 31
  %92 = ptrtoint ptr %qkey79.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %qkey79.i, align 4
  %call80.i = tail call i32 %87(ptr noundef %14, ptr noundef %89, ptr noundef %1, i16 noundef zeroext %91, i32 noundef %set_qkey.0.i, i32 noundef %93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 0
  br i1 %cmp81.i, label %do.body84.i, label %if.end74.i.if.end104.i_crit_edge

if.end74.i.if.end104.i_crit_edge:                 ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104.i

do.body84.i:                                      ; preds = %if.end74.i
  %call85.i = tail call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_finish._rs.57, ptr noundef nonnull @__func__.ipoib_mcast_join_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %do.body84.i.do.end101.i_crit_edge, label %do.end90.i

do.body84.i.do.end101.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end101.i

do.end90.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev5.i, align 4
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %95, ptr noundef %1) #14
  br label %do.end101.i

do.end101.i:                                      ; preds = %do.end90.i, %do.body84.i.do.end101.i_crit_edge
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #11
  br label %if.end15.thread195

if.end104.i:                                      ; preds = %if.end74.i.if.end104.i_crit_edge, %if.end53.i.if.end104.i_crit_edge
  %96 = call ptr @memset(ptr %av.i, i32 0, i32 56)
  %ca105.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 23
  %97 = ptrtoint ptr %ca105.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ca105.i, align 8
  %port106.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 24
  %99 = ptrtoint ptr %port106.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %port106.i, align 4
  %conv107.i = zext i8 %100 to i32
  %port_data.i.i290.i = getelementptr inbounds %struct.ib_device, ptr %98, i32 0, i32 11
  %101 = ptrtoint ptr %port_data.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %port_data.i.i290.i, align 8
  %core_cap_flags.i.i291.i = getelementptr %struct.ib_port_data, ptr %102, i32 %conv107.i, i32 1, i32 2
  %103 = ptrtoint ptr %core_cap_flags.i.i291.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %core_cap_flags.i.i291.i, align 4
  %and.i.i292.i = and i32 %104, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i292.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i292.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i.i, label %if.end104.i.rdma_ah_find_type.exit.thread.i_crit_edge

if.end104.i.rdma_ah_find_type.exit.thread.i_crit_edge: ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit.thread.i

if.end.i.i:                                       ; preds = %if.end104.i
  %and.i13.i.i = and i32 %104, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i)
  %tobool.i14.not.i.i = icmp eq i32 %and.i13.i.i, 0
  br i1 %tobool.i14.not.i.i, label %if.end.i.i.rdma_ah_find_type.exit.thread.i_crit_edge, label %if.then2.i.i

if.end.i.i.rdma_ah_find_type.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_find_type.exit.thread.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %and.i17.i.i = and i32 %104, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i17.i.i, 0
  %type305.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 5
  br i1 %cmp.i.not.i.i, label %if.then.i294.i, label %if.then5.i.i

rdma_ah_find_type.exit.thread.i:                  ; preds = %if.end.i.i.rdma_ah_find_type.exit.thread.i_crit_edge, %if.end104.i.rdma_ah_find_type.exit.thread.i_crit_edge
  %retval.0.i293.ph.i = phi i32 [ 0, %if.end.i.i.rdma_ah_find_type.exit.thread.i_crit_edge ], [ 2, %if.end104.i.rdma_ah_find_type.exit.thread.i_crit_edge ]
  %type299.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 5
  %105 = ptrtoint ptr %type299.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i293.ph.i, ptr %type299.i, align 4
  %mlid110300.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 3
  br label %rdma_ah_set_dlid.exit.i

if.then.i294.i:                                   ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %type305.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %type305.i, align 4
  %mlid110306.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 3
  %107 = ptrtoint ptr %mlid110306.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mlid110306.i, align 4
  %109 = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 6
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %108, ptr %109, align 8
  br label %rdma_ah_set_dlid.exit.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %type305.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 3, ptr %type305.i, align 4
  %mlid110.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 3
  %112 = ptrtoint ptr %mlid110.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %mlid110.i, align 4
  %conv111.i = zext i16 %113 to i32
  %114 = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 6
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %conv111.i, ptr %114, align 8
  br label %rdma_ah_set_dlid.exit.i

rdma_ah_set_dlid.exit.i:                          ; preds = %if.then5.i.i, %if.then.i294.i, %rdma_ah_find_type.exit.thread.i
  %mlid110302.i = phi ptr [ %mlid110300.i, %rdma_ah_find_type.exit.thread.i ], [ %mlid110306.i, %if.then.i294.i ], [ %mlid110.i, %if.then5.i.i ]
  %116 = ptrtoint ptr %port106.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port106.i, align 4
  %conv113.i = zext i8 %117 to i32
  %port_num1.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 3
  %118 = ptrtoint ptr %port_num1.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv113.i, ptr %port_num1.i.i, align 4
  %sl115.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 12
  %119 = ptrtoint ptr %sl115.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %sl115.i, align 8
  %sl1.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 1
  %121 = ptrtoint ptr %sl1.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %sl1.i.i, align 8
  %rate117.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 9
  %122 = ptrtoint ptr %rate117.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %rate117.i, align 1
  %static_rate1.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 2
  %124 = ptrtoint ptr %static_rate1.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %static_rate1.i.i, align 1
  %flow_label121.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 13
  %125 = ptrtoint ptr %flow_label121.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %flow_label121.i, align 4
  %hop_limit123.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 14
  %127 = ptrtoint ptr %hop_limit123.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %hop_limit123.i, align 8
  %traffic_class125.i = getelementptr inbounds %struct.ib_sa_mcmember_rec, ptr %1, i32 0, i32 6
  %129 = ptrtoint ptr %traffic_class125.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %traffic_class125.i, align 8
  %ah_flags.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %av.i, i32 0, i32 4
  %131 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %ah_flags.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %rdma_ah_set_dlid.exit.i.rdma_ah_set_grh.exit.i_crit_edge, label %if.then.i295.i

rdma_ah_set_dlid.exit.i.rdma_ah_set_grh.exit.i_crit_edge: ; preds = %rdma_ah_set_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_ah_set_grh.exit.i

if.then.i295.i:                                   ; preds = %rdma_ah_set_dlid.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dgid1.i.i = getelementptr inbounds %struct.ib_global_route, ptr %av.i, i32 0, i32 1
  %132 = call ptr @memcpy(ptr %dgid1.i.i, ptr %1, i32 16)
  br label %rdma_ah_set_grh.exit.i

rdma_ah_set_grh.exit.i:                           ; preds = %if.then.i295.i, %rdma_ah_set_dlid.exit.i.rdma_ah_set_grh.exit.i_crit_edge
  %flow_label2.i.i = getelementptr inbounds %struct.ib_global_route, ptr %av.i, i32 0, i32 2
  %133 = ptrtoint ptr %flow_label2.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %126, ptr %flow_label2.i.i, align 8
  %sgid_index3.i.i = getelementptr inbounds %struct.ib_global_route, ptr %av.i, i32 0, i32 3
  %134 = ptrtoint ptr %sgid_index3.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %sgid_index3.i.i, align 4
  %hop_limit4.i.i = getelementptr inbounds %struct.ib_global_route, ptr %av.i, i32 0, i32 4
  %135 = ptrtoint ptr %hop_limit4.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %128, ptr %hop_limit4.i.i, align 1
  %traffic_class5.i.i = getelementptr inbounds %struct.ib_global_route, ptr %av.i, i32 0, i32 5
  %136 = ptrtoint ptr %traffic_class5.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %130, ptr %traffic_class5.i.i, align 2
  %137 = ptrtoint ptr %av.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %av.i, align 8
  %pd.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %16, i32 0, i32 27
  %138 = ptrtoint ptr %pd.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pd.i, align 4
  %call126.i = call ptr @ipoib_create_ah(ptr noundef %14, ptr noundef %139, ptr noundef nonnull %av.i) #11
  %cmp.i.i = icmp ugt ptr %call126.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body129.i, label %if.end147.i

do.body129.i:                                     ; preds = %rdma_ah_set_grh.exit.i
  %call130.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_finish._rs.61, ptr noundef nonnull @__func__.ipoib_mcast_join_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %tobool131.not.i = icmp eq i32 %call130.i, 0
  br i1 %tobool131.not.i, label %do.body129.do.end145_crit_edge.i, label %do.end135.i

do.body129.do.end145_crit_edge.i:                 ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i = ptrtoint ptr %call126.i to i32
  br label %if.end15

do.end135.i:                                      ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev5.i, align 4
  %142 = ptrtoint ptr %call126.i to i32
  %sub141.i = sub i32 0, %142
  %call142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %141, i32 noundef %sub141.i) #14
  br label %if.end15

if.end147.i:                                      ; preds = %rdma_ah_set_grh.exit.i
  call void @_raw_spin_lock_irq(ptr noundef %16) #11
  %ah149.i = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 2
  %143 = ptrtoint ptr %ah149.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call126.i, ptr %ah149.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %16) #11
  %144 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp152.i = icmp sgt i32 %144, 0
  br i1 %cmp152.i, label %do.end157.i, label %if.end147.i.do.end176.i_crit_edge

if.end147.i.do.end176.i_crit_edge:                ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end176.i

do.end157.i:                                      ; preds = %if.end147.i
  call void @__sanitizer_cov_trace_pc() #13
  %145 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev5.i, align 4
  %147 = ptrtoint ptr %ah149.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ah149.i, align 4
  %ah166.i = getelementptr inbounds %struct.ipoib_ah, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %ah166.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ah166.i, align 4
  %151 = ptrtoint ptr %mlid110302.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %mlid110302.i, align 4
  %conv169.i = zext i16 %152 to i32
  %153 = ptrtoint ptr %sl115.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %sl115.i, align 8
  %conv172.i = zext i8 %154 to i32
  %call173.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %146, ptr noundef %1, ptr noundef %150, i32 noundef %conv169.i, i32 noundef %conv172.i) #14
  br label %do.end176.i

do.end176.i:                                      ; preds = %do.end157.i, %if.end147.i.do.end176.i_crit_edge
  call fastcc void @local_bh_disable() #11
  call void @netif_tx_lock(ptr noundef %14) #11
  %pkt_queue.i = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 11
  %155 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pkt_queue.i, align 4
  %cmp.i297.not309.i = icmp eq ptr %156, %pkt_queue.i
  br i1 %cmp.i297.not309.i, label %do.end176.i.while.end.i_crit_edge, label %do.end176.i.while.body.i_crit_edge

do.end176.i.while.body.i_crit_edge:               ; preds = %do.end176.i
  br label %while.body.i

do.end176.i.while.end.i_crit_edge:                ; preds = %do.end176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.i:                                     ; preds = %if.end199.i.while.body.i_crit_edge, %do.end176.i.while.body.i_crit_edge
  %call180.i = call ptr @skb_dequeue(ptr noundef %pkt_queue.i) #11
  call void @netif_tx_unlock(ptr noundef %14) #11
  call fastcc void @local_bh_enable() #11
  %157 = getelementptr inbounds %struct.anon.51, ptr %call180.i, i32 0, i32 2
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %14, ptr %157, align 8
  %call181.i = call i32 @dev_queue_xmit(ptr noundef %call180.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181.i)
  %tobool182.not.i = icmp eq i32 %call181.i, 0
  br i1 %tobool182.not.i, label %while.body.i.if.end199.i_crit_edge, label %do.body184.i

while.body.i.if.end199.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199.i

do.body184.i:                                     ; preds = %while.body.i
  %call185.i = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_finish._rs.68, ptr noundef nonnull @__func__.ipoib_mcast_join_finish) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185.i)
  %tobool186.not.i = icmp eq i32 %call185.i, 0
  br i1 %tobool186.not.i, label %do.body184.i.if.end199.i_crit_edge, label %do.end190.i

do.body184.i.if.end199.i_crit_edge:               ; preds = %do.body184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199.i

do.end190.i:                                      ; preds = %do.body184.i
  call void @__sanitizer_cov_trace_pc() #13
  %159 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev5.i, align 4
  %call195.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %160, ptr noundef nonnull @__func__.ipoib_mcast_join_finish, i32 noundef %call181.i) #14
  br label %if.end199.i

if.end199.i:                                      ; preds = %do.end190.i, %do.body184.i.if.end199.i_crit_edge, %while.body.i.if.end199.i_crit_edge
  call fastcc void @local_bh_disable() #11
  call void @netif_tx_lock(ptr noundef %14) #11
  %161 = ptrtoint ptr %pkt_queue.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pkt_queue.i, align 4
  %cmp.i297.not.i = icmp eq ptr %162, %pkt_queue.i
  br i1 %cmp.i297.not.i, label %if.end199.i.while.end.i_crit_edge, label %if.end199.i.while.body.i_crit_edge

if.end199.i.while.body.i_crit_edge:               ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end199.i.while.end.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end199.i.while.end.i_crit_edge, %do.end176.i.while.end.i_crit_edge
  call void @netif_tx_unlock(ptr noundef %14) #11
  call fastcc void @local_bh_enable() #11
  br label %if.end15.thread191

if.end15.thread191:                               ; preds = %while.end.i, %do.end.i, %do.body.i.if.end15.thread191_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %av.i) #11
  %backoff = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 6
  %163 = ptrtoint ptr %backoff to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %backoff, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %164 = load volatile i32, ptr @jiffies, align 128
  %delay_until = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 7
  %165 = ptrtoint ptr %delay_until to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %delay_until, align 4
  %broadcast = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 11
  %166 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %broadcast, align 4
  %cmp18 = icmp eq ptr %1, %167
  br i1 %cmp18, label %if.then19, label %if.end15.thread191.out_locked.thread208_crit_edge

if.end15.thread191.out_locked.thread208_crit_edge: ; preds = %if.end15.thread191
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_locked.thread208

if.end15.thread195:                               ; preds = %do.end101.i, %if.then10.i
  %retval.0.i.ph = phi i32 [ -11, %if.then10.i ], [ %call80.i, %do.end101.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %av.i) #11
  br label %if.else

if.end15:                                         ; preds = %do.end135.i, %do.body129.do.end145_crit_edge.i
  %retval.0.i = phi i32 [ %.pre.i, %do.body129.do.end145_crit_edge.i ], [ %142, %do.end135.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %av.i) #11
  br label %if.else

if.then19:                                        ; preds = %if.end15.thread191
  call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %wq = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 14
  %168 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wq, align 4
  %carrier_on_task = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 16
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %169, ptr noundef %carrier_on_task) #11
  %flags.i175 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 5
  %170 = ptrtoint ptr %flags.i175 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %flags.i175, align 4
  %and1.i.i = and i32 %171, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i176 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i176, label %if.then19.if.else108_crit_edge, label %if.end.i177

if.then19.if.else108_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else108

if.end.i177:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %mcast_task.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 15
  %call1.i = call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i) #11
  %172 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %wq, align 4
  %call.i38.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %173, ptr noundef %mcast_task.i, i32 noundef 0) #11
  br label %if.else108

if.else:                                          ; preds = %if.end15, %if.end15.thread195, %do.end8.if.else_crit_edge
  %status.addr.0190 = phi i32 [ %retval.0.i, %if.end15 ], [ %retval.0.i.ph, %if.end15.thread195 ], [ %status, %do.end8.if.else_crit_edge ]
  %flags22 = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 8
  %174 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %flags22, align 4
  %176 = and i32 %175, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool24.not = icmp ne i32 %176, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %status.addr.0190)
  %cmp25 = icmp eq i32 %status.addr.0190, -22
  %spec.select = select i1 %tobool24.not, i1 %cmp25, i1 false
  %logcount = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 9
  %177 = ptrtoint ptr %logcount to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %logcount, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %178)
  %cmp26 = icmp ult i8 %178, 20
  br i1 %cmp26, label %if.then28, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then28:                                        ; preds = %if.else
  %179 = zext i32 %status.addr.0190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %status.addr.0190, label %lor.lhs.false33 [
    i32 -110, label %if.then28.do.body37_crit_edge
    i32 -11, label %if.then28.do.body37_crit_edge217
  ]

if.then28.do.body37_crit_edge217:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

if.then28.do.body37_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

lor.lhs.false33:                                  ; preds = %if.then28
  br i1 %spec.select, label %lor.lhs.false33.do.body37_crit_edge, label %do.body60

lor.lhs.false33.do.body37_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body37

do.body37:                                        ; preds = %lor.lhs.false33.do.body37_crit_edge, %if.then28.do.body37_crit_edge, %if.then28.do.body37_crit_edge217
  %180 = load i32, ptr @mcast_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp38 = icmp sgt i32 %180, 0
  br i1 %cmp38, label %do.end43, label %do.body37.if.end82_crit_edge

do.body37.if.end82_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

do.end43:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  %dev45 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %181 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev45, align 4
  %183 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags22, align 4
  %185 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool50.not = icmp eq i32 %185, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.49, ptr @.str.48
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %182, ptr noundef nonnull %cond51, ptr noundef %1, i32 noundef %status.addr.0190) #14
  br label %if.end82

do.body60:                                        ; preds = %lor.lhs.false33
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @ipoib_mcast_join_complete._rs, ptr noundef nonnull @.str.47) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.if.then84_crit_edge, label %do.end66

do.body60.if.then84_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %dev68 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 1
  %186 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dev68, align 4
  %188 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile i32, ptr %flags22, align 4
  %190 = and i32 %189, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool73.not = icmp eq i32 %190, 0
  %cond74 = select i1 %tobool73.not, ptr @.str.49, ptr @.str.48
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %187, ptr noundef nonnull %cond74, ptr noundef %1, i32 noundef %status.addr.0190) #14
  br label %if.then84

if.end82:                                         ; preds = %do.end43, %do.body37.if.end82_crit_edge
  br i1 %spec.select, label %if.end82.if.end87_crit_edge, label %if.end82.if.then84_crit_edge

if.end82.if.then84_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then84

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then84:                                        ; preds = %if.end82.if.then84_crit_edge, %do.end66, %do.body60.if.then84_crit_edge
  %191 = ptrtoint ptr %logcount to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %logcount, align 4
  %inc = add i8 %192, 1
  store i8 %inc, ptr %logcount, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82.if.end87_crit_edge, %if.else.if.end87_crit_edge
  %193 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load volatile i32, ptr %flags22, align 4
  %195 = and i32 %194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool90.not = icmp eq i32 %195, 0
  br i1 %tobool90.not, label %if.end87.if.else101_crit_edge, label %land.lhs.true

if.end87.if.else101_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

land.lhs.true:                                    ; preds = %if.end87
  %backoff91 = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 6
  %196 = ptrtoint ptr %backoff91 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %backoff91, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp92 = icmp ugt i32 %197, 1
  br i1 %cmp92, label %if.then94, label %land.lhs.true.if.else101_crit_edge

land.lhs.true.if.else101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else101

if.then94:                                        ; preds = %land.lhs.true
  %198 = ptrtoint ptr %backoff91 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %backoff91, align 8
  call fastcc void @local_bh_disable() #11
  call void @netif_tx_lock(ptr noundef %3) #11
  %pkt_queue = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 11
  %199 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pkt_queue, align 4
  %cmp.i178.not211 = icmp eq ptr %200, %pkt_queue
  br i1 %cmp.i178.not211, label %if.then94.out_locked_crit_edge, label %while.body.lr.ph

if.then94.out_locked_crit_edge:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_locked

while.body.lr.ph:                                 ; preds = %if.then94
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %201 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tx_dropped, align 4
  %inc98 = add i32 %202, 1
  store i32 %inc98, ptr %tx_dropped, align 4
  %call100 = call ptr @skb_dequeue(ptr noundef %pkt_queue) #11
  call void @__dev_kfree_skb_any(ptr noundef %call100, i32 noundef 1) #11
  %203 = ptrtoint ptr %pkt_queue to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pkt_queue, align 4
  %cmp.i178.not = icmp eq ptr %204, %pkt_queue
  br i1 %cmp.i178.not, label %while.body.out_locked_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.out_locked_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_locked

if.else101:                                       ; preds = %land.lhs.true.if.else101_crit_edge, %if.end87.if.else101_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %5) #11
  %flags.i180 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 5
  %205 = ptrtoint ptr %flags.i180 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %flags.i180, align 4
  %and1.i.i181 = and i32 %206, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i181)
  %tobool.not.i182 = icmp eq i32 %and1.i.i181, 0
  br i1 %tobool.not.i182, label %if.else101.cleanup113_crit_edge, label %if.end.i185

if.else101.cleanup113_crit_edge:                  ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

if.end.i185:                                      ; preds = %if.else101
  %mcast_task.i183 = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 15
  %call1.i184 = call zeroext i1 @cancel_delayed_work(ptr noundef %mcast_task.i183) #11
  %tobool2.not.i.not = icmp eq ptr %1, null
  br i1 %tobool2.not.i.not, label %if.end.i185.if.then107.sink.split_crit_edge, label %if.then4.i

if.end.i185.if.then107.sink.split_crit_edge:      ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then107.sink.split

if.then4.i:                                       ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #13
  %backoff.i = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 6
  %207 = ptrtoint ptr %backoff.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %backoff.i, align 8
  %mul.i = shl i32 %208, 1
  %209 = call i32 @llvm.umin.i32(i32 %mul.i, i32 16) #11
  %210 = ptrtoint ptr %backoff.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %backoff.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %211 = load volatile i32, ptr @jiffies, align 128
  %mul10.i = mul nuw nsw i32 %209, 100
  %add.i = add i32 %mul10.i, %211
  %delay_until.i = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 7
  %212 = ptrtoint ptr %delay_until.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %add.i, ptr %delay_until.i, align 4
  br label %if.then107.sink.split

out_locked.thread208:                             ; preds = %if.end15.thread191.out_locked.thread208_crit_edge, %do.end8.out_locked.thread208_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %5) #11
  br label %if.else108

out_locked:                                       ; preds = %while.body.out_locked_crit_edge, %if.then94.out_locked_crit_edge
  call void @netif_tx_unlock(ptr noundef %3) #11
  call fastcc void @local_bh_enable() #11
  call void @_raw_spin_lock_irq(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.addr.0190)
  %tobool106.not = icmp eq i32 %status.addr.0190, 0
  br i1 %tobool106.not, label %out_locked.if.else108_crit_edge, label %out_locked.cleanup113_crit_edge

out_locked.cleanup113_crit_edge:                  ; preds = %out_locked
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup113

out_locked.if.else108_crit_edge:                  ; preds = %out_locked
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else108

if.then107.sink.split:                            ; preds = %if.then4.i, %if.end.i185.if.then107.sink.split_crit_edge
  %.sink212 = phi i32 [ 0, %if.then4.i ], [ 100, %if.end.i185.if.then107.sink.split_crit_edge ]
  %wq.i = getelementptr inbounds %struct.ipoib_dev_priv, ptr %5, i32 0, i32 14
  %213 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %wq.i, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %214, ptr noundef %mcast_task.i183, i32 noundef %.sink212) #11
  br label %cleanup113

if.else108:                                       ; preds = %out_locked.if.else108_crit_edge, %out_locked.thread208, %if.end.i177, %if.then19.if.else108_crit_edge
  br label %cleanup113

cleanup113:                                       ; preds = %if.else108, %if.then107.sink.split, %out_locked.cleanup113_crit_edge, %if.else101.cleanup113_crit_edge
  %.sink = phi ptr [ %multicast, %if.else108 ], [ null, %if.then107.sink.split ], [ null, %if.else101.cleanup113_crit_edge ], [ null, %out_locked.cleanup113_crit_edge ]
  %status.addr.2201 = phi i32 [ 0, %if.else108 ], [ %status.addr.0190, %if.then107.sink.split ], [ %status.addr.0190, %if.else101.cleanup113_crit_edge ], [ %status.addr.0190, %out_locked.cleanup113_crit_edge ]
  %mc = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 1
  %215 = ptrtoint ptr %mc to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %.sink, ptr %mc, align 8
  %flags111 = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 8
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags111) #11
  call void @_raw_spin_unlock_irq(ptr noundef %5) #11
  %done = getelementptr inbounds %struct.ipoib_mcast, ptr %1, i32 0, i32 13
  call void @complete(ptr noundef %done) #11
  ret i32 %status.addr.2201
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipoib_create_ah(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_free_multicast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_del_neighs_by_gid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_free_ah(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipoib_neigh_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !97, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__param_mcast_debug_level, !1, !"__param_mcast_debug_level", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_mcast_debug_leveltype520, !1, !"__UNIQUE_ID_mcast_debug_leveltype520", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mcast_debug_level521, !4, !"__UNIQUE_ID_mcast_debug_level521", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 54, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 333, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipoib_mcast_carrier_on_task._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @ipoib_mcast_carrier_on_task._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 566, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ipoib_mcast_join_task._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @ipoib_mcast_join_task._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 570, i32 3}
!18 = !{ptr @ipoib_mcast_join_task._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipoib_mcast_join_task._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 592, i32 4}
!22 = !{ptr @ipoib_mcast_join_task._rs, !21, !"_rs", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ipoib_mcast_join_task._entry.9, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ipoib_mcast_join_task._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 646, i32 2}
!28 = !{ptr @ipoib_mcast_join_task._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ipoib_mcast_join_task._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 665, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ipoib_mcast_start_thread._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ipoib_mcast_start_thread._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 676, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ipoib_mcast_stop_thread._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipoib_mcast_stop_thread._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 768, i32 4}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ipoib_mcast_send._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ipoib_mcast_send._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @ipoib_mcast_send._rs, !46, !"_rs", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 773, i32 5}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ipoib_mcast_send._entry.21, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ipoib_mcast_send._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 835, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ipoib_mcast_dev_flush._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ipoib_mcast_dev_flush._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 885, i32 2}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ipoib_mcast_restart_task._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ipoib_mcast_restart_task._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 916, i32 5}
!62 = !{ptr @ipoib_mcast_restart_task._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ipoib_mcast_restart_task._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 922, i32 4}
!66 = !{ptr @ipoib_mcast_restart_task._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ipoib_mcast_restart_task._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ipoib_mcast_restart_task._rs, !69, !"_rs", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 927, i32 5}
!70 = !{ptr @ipoib_mcast_restart_task._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ipoib_mcast_restart_task._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 956, i32 4}
!74 = !{ptr @ipoib_mcast_restart_task._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ipoib_mcast_restart_task._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mcast_debug_level, !77, !"mcast_debug_level", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 51, i32 12}
!78 = !{ptr @__param_str_mcast_debug_level, !1, !"__param_str_mcast_debug_level", i1 false, i1 false}
!79 = !{ptr @skb_queue_head_init.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 479, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ipoib_mcast_join._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @ipoib_mcast_join._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @ipoib_mcast_join._rs, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 542, i32 3}
!89 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ipoib_mcast_join._entry.42, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ipoib_mcast_join._entry_ptr.44, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 364, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ipoib_mcast_join_complete._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ipoib_mcast_join_complete._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.49, !96, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 403, i32 5}
!104 = !{ptr @ipoib_mcast_join_complete._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ipoib_mcast_join_complete._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ipoib_mcast_join_complete._rs, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 407, i32 5}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ipoib_mcast_join_complete._entry.53, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @ipoib_mcast_join_complete._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @ipoib_mcast_join_finish._rs, !112, !"_rs", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 258, i32 4}
!113 = !{ptr @__func__.ipoib_mcast_join_finish, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ipoib_mcast_join_finish._entry, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @ipoib_mcast_join_finish._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @ipoib_mcast_join_finish._rs.57, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 268, i32 4}
!119 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ipoib_mcast_join_finish._entry.58, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @ipoib_mcast_join_finish._entry_ptr.60, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @ipoib_mcast_join_finish._rs.61, !123, !"_rs", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 290, i32 3}
!124 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @ipoib_mcast_join_finish._entry.62, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @ipoib_mcast_join_finish._entry_ptr.64, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 299, i32 2}
!129 = !{ptr @ipoib_mcast_join_finish._entry.65, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @ipoib_mcast_join_finish._entry_ptr.67, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @ipoib_mcast_join_finish._rs.68, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 316, i32 4}
!133 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ipoib_mcast_join_finish._entry.69, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @ipoib_mcast_join_finish._entry_ptr.71, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @ipoib_mcast_leave._rs, !137, !"_rs", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 688, i32 3}
!138 = !{ptr @__func__.ipoib_mcast_leave, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ipoib_mcast_leave._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @ipoib_mcast_leave._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 694, i32 3}
!144 = !{ptr @ipoib_mcast_leave._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ipoib_mcast_leave._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @ipoib_mcast_leave._rs.76, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 701, i32 4}
!148 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @ipoib_mcast_leave._entry.77, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @ipoib_mcast_leave._entry_ptr.79, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 703, i32 3}
!153 = !{ptr @ipoib_mcast_leave._entry.80, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ipoib_mcast_leave._entry_ptr.82, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/infiniband/ulp/ipoib/ipoib_multicast.c", i32 117, i32 2}
!157 = !{ptr @ipoib_mcast_free._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @ipoib_mcast_free._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{i64 2148466052}
!169 = !{i64 2148380516, i64 2148380548, i64 2148380577, i64 2148380611, i64 2148380642, i64 2148380665}
!170 = !{!"branch_weights", i32 2000, i32 1}
!171 = !{i64 2150547705}
!172 = !{i64 2148378051, i64 2148378083, i64 2148378112, i64 2148378146, i64 2148378177, i64 2148378200}
!173 = !{!"branch_weights", i32 1, i32 2000}
