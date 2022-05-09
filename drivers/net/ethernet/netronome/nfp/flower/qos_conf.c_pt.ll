; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/qos_conf.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_flower_repr_priv = type { ptr, i32, i8, [6 x i8], i8, %struct.list_head, %struct.nfp_fl_qos, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nfp_fl_qos = type { i32, %struct.nfp_stat_pair, %struct.nfp_stat_pair, i64 }
%struct.nfp_stat_pair = type { i64, i64 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_reprs = type { i32, [0 x ptr] }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.222, ptr }
%union.anon.222 = type { %struct.anon.227 }
%struct.anon.227 = type { i32, i64, i64, i64, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.198, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.198 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.214 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.214 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.215, i16, i8, i8, i32, i16, i16 }
%union.anon.215 = type { %struct.anon.217 }
%struct.anon.217 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.211, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.186 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.186 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.211 = type { %struct.anon.213 }
%struct.anon.213 = type { i32, i32, i8, i32, ptr }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfp_flower_qos_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&fl_priv->qos_stats_lock\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_qos_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&fl_priv->qos_stats_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@nfp_flower_qos_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&fl_priv->qos_stats_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@nfp_flower_setup_qos_offload.__msg = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"nfp: unsupported offload: loaded firmware does not support qos rate limit offload\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfp_flower_stats_rlim_request_all.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/netronome/nfp/flower/qos_conf.c\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfp_flower_stats_rlim_request_all.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nfp_flower_install_rate_limiter.__msg = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: qos rate limit offload not supported on higher level port\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.11 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: unsupported offload: qos rate limit offload not supported on shared blocks\00", [48 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.12 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"nfp: unsupported offload: qos rate limit offload not supported on non-VF ports\00", [49 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: unsupported offload: qos rate limit offload only support action number 1 or 2\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nfp: unsupported offload: qos rate limit offload requires a single action\00", [54 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.15 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"nfp: unsupported offload: qos rate limit offload requires highest priority\00", [53 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.16 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"nfp: unsupported offload: qos rate limit offload requires police action\00", [56 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.17 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"nfp: unsupported offload: qos rate limit offload only support one BPS action\00", [51 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nfp: unsupported offload: FW does not support PPS action\00", [39 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"nfp: unsupported offload: qos rate limit offload only support one PPS action\00", [51 x i8] zeroinitializer }, align 32
@nfp_flower_install_rate_limiter.__msg.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nfp: unsupported offload: qos rate limit is not BPS or PPS\00", [37 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_flower_remove_rate_limiter.__msg = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: qos rate limit offload not supported on higher level port\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_remove_rate_limiter.__msg.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"nfp: unsupported offload: cannot remove qos entry that does not exist\00", [58 x i8] zeroinitializer }, align 32
@nfp_flower_stats_rate_limiter.__msg = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: qos rate limit offload not supported on higher level port\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_stats_rate_limiter.__msg.22 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"nfp: unsupported offload: cannot find qos entry for stats update\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 408, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 409, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 426, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 91, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 100, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 105, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 111, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 117, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 124, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 131, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 137, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 144, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 149, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 166, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 214, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 224, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 378, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.103 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 385, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @nfp_flower_qos_init.__key, ptr @.str, ptr @nfp_flower_qos_init.__key.1, ptr @.str.2, ptr @nfp_flower_qos_init.__key.3, ptr @.str.4, ptr @nfp_flower_setup_qos_offload.__msg, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nfp_flower_install_rate_limiter.__msg, ptr @nfp_flower_install_rate_limiter.__msg.11, ptr @nfp_flower_install_rate_limiter.__msg.12, ptr @nfp_flower_install_rate_limiter.__msg.13, ptr @nfp_flower_install_rate_limiter.__msg.14, ptr @nfp_flower_install_rate_limiter.__msg.15, ptr @nfp_flower_install_rate_limiter.__msg.16, ptr @nfp_flower_install_rate_limiter.__msg.17, ptr @nfp_flower_install_rate_limiter.__msg.18, ptr @nfp_flower_install_rate_limiter.__msg.19, ptr @nfp_flower_install_rate_limiter.__msg.20, ptr @nfp_flower_remove_rate_limiter.__msg, ptr @nfp_flower_remove_rate_limiter.__msg.21, ptr @nfp_flower_stats_rate_limiter.__msg, ptr @nfp_flower_stats_rate_limiter.__msg.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_qos_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_qos_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_qos_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_setup_qos_offload.__msg to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.11 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.12 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.15 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.17 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_install_rate_limiter.__msg.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_remove_rate_limiter.__msg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_remove_rate_limiter.__msg.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_stats_rate_limiter.__msg to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_stats_rate_limiter.__msg.22 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_stats_rlim_reply(ptr noundef %app, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %port = getelementptr i8, ptr %3, i32 8
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !55) #5
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tobool.not.i32 = icmp eq ptr %app, null
  br i1 %tobool.not.i32, label %rcu_read_lock.exit.exit_unlock_rcu_crit_edge, label %lor.rhs.i, !prof !66

rcu_read_lock.exit.exit_unlock_rcu_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i, align 4
  %dev_get.i = getelementptr inbounds %struct.nfp_app_type, ptr %11, i32 0, i32 35
  %12 = ptrtoint ptr %dev_get.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_get.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %lor.rhs.i.exit_unlock_rcu_crit_edge, label %nfp_app_dev_get.exit, !prof !66

lor.rhs.i.exit_unlock_rcu_crit_edge:              ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu

nfp_app_dev_get.exit:                             ; preds = %lor.rhs.i
  %call.i33 = tail call ptr %13(ptr noundef nonnull %app, i32 noundef %5, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call.i33, null
  br i1 %tobool.not, label %nfp_app_dev_get.exit.exit_unlock_rcu_crit_edge, label %if.end

nfp_app_dev_get.exit.exit_unlock_rcu_crit_edge:   ; preds = %nfp_app_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu

if.end:                                           ; preds = %nfp_app_dev_get.exit
  %app_priv = getelementptr i8, ptr %call.i33, i32 2324
  %14 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %app_priv, align 4
  %curr_stats3 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %15, i32 0, i32 6, i32 1
  %qos_stats_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 29
  tail call void @_raw_spin_lock_bh(ptr noundef %qos_stats_lock) #5
  %pass_pkts = getelementptr i8, ptr %3, i32 20
  %16 = ptrtoint ptr %pass_pkts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pass_pkts, align 8
  %drop_pkts = getelementptr i8, ptr %3, i32 36
  %18 = ptrtoint ptr %drop_pkts to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %drop_pkts, align 8
  %add = add i64 %19, %17
  %20 = ptrtoint ptr %curr_stats3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %curr_stats3, align 8
  %pass_bytes = getelementptr i8, ptr %3, i32 12
  %21 = ptrtoint ptr %pass_bytes to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pass_bytes, align 8
  %drop_bytes = getelementptr i8, ptr %3, i32 28
  %23 = ptrtoint ptr %drop_bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %drop_bytes, align 8
  %add6 = add i64 %24, %22
  %bytes = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %15, i32 0, i32 6, i32 1, i32 1
  %25 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add6, ptr %bytes, align 8
  %last_update = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %15, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %last_update to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %last_update, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool8.not = icmp eq i64 %27, 0
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev_stats5 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %15, i32 0, i32 6, i32 2
  %28 = ptrtoint ptr %prev_stats5 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add, ptr %prev_stats5, align 8
  %bytes13 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %15, i32 0, i32 6, i32 2, i32 1
  %29 = ptrtoint ptr %bytes13 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add6, ptr %bytes13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %30 to i64
  %31 = ptrtoint ptr %last_update to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %last_update, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %qos_stats_lock) #5
  br label %exit_unlock_rcu

exit_unlock_rcu:                                  ; preds = %if.end14, %nfp_app_dev_get.exit.exit_unlock_rcu_crit_edge, %lor.rhs.i.exit_unlock_rcu_crit_edge, %rcu_read_lock.exit.exit_unlock_rcu_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i35, label %exit_unlock_rcu.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

exit_unlock_rcu.rcu_read_unlock.exit_crit_edge:   ; preds = %exit_unlock_rcu
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %exit_unlock_rcu
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %exit_unlock_rcu.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !67
  %32 = tail call i32 @llvm.read_register.i32(metadata !55) #5
  %and.i.i.i.i.i42 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_qos_init(ptr nocapture noundef readonly %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %qos_stats_lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 29
  tail call void @__raw_spin_lock_init(ptr noundef %qos_stats_lock, ptr noundef nonnull @.str, ptr noundef nonnull @nfp_flower_qos_init.__key, i16 noundef signext 3) #5
  %qos_stats_work = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27
  tail call void @__init_work(ptr noundef %qos_stats_work, i32 noundef 0) #5
  %2 = ptrtoint ptr %qos_stats_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %qos_stats_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfp_flower_qos_init.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry9 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @update_stats_cache, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @nfp_flower_qos_init.__key.3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_stats_cache(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6044
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #5
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !65
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #5
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %arrayidx.i = getelementptr %struct.nfp_app, ptr %5, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b55.i = load i1, ptr @nfp_flower_stats_rlim_request_all.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nfp_flower_stats_rlim_request_all.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 326, ptr noundef nonnull @.str.9) #5
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i, label %do.end7.i.exit_unlock_rcu.i_crit_edge, label %for.cond.preheader.i

do.end7.i.exit_unlock_rcu.i_crit_edge:            ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu.i

for.cond.preheader.i:                             ; preds = %do.end7.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp67.not.i = icmp eq i32 %9, 0
  br i1 %cmp67.not.i, label %for.cond.preheader.i.exit_unlock_rcu.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.exit_unlock_rcu.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu.i

for.body.i:                                       ; preds = %cleanup41.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %cleanup41.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.nfp_reprs, ptr %7, i32 0, i32 1, i32 %i.068.i
  %10 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx17.i, align 4
  %call19.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %for.body.i.do.end29.i_crit_edge

for.body.i.do.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

land.lhs.true21.i:                                ; preds = %for.body.i
  %call22.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true21.i.do.end29.i_crit_edge, label %land.lhs.true24.i

land.lhs.true21.i.do.end29.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

land.lhs.true24.i:                                ; preds = %land.lhs.true21.i
  %.b5354.i = load i1, ptr @nfp_flower_stats_rlim_request_all.__warned.10, align 1
  br i1 %.b5354.i, label %land.lhs.true24.i.do.end29.i_crit_edge, label %if.then26.i

land.lhs.true24.i.do.end29.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29.i

if.then26.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nfp_flower_stats_rlim_request_all.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 333, ptr noundef nonnull @.str.9) #5
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.then26.i, %land.lhs.true24.i.do.end29.i_crit_edge, %land.lhs.true21.i.do.end29.i_crit_edge, %for.body.i.do.end29.i_crit_edge
  %tobool31.not.i = icmp eq ptr %11, null
  br i1 %tobool31.not.i, label %do.end29.i.cleanup41.i_crit_edge, label %if.then32.i

do.end29.i.cleanup41.i_crit_edge:                 ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41.i

if.then32.i:                                      ; preds = %do.end29.i
  %app_priv.i = getelementptr i8, ptr %11, i32 2324
  %12 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %app_priv.i, align 4
  %qos_table.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %qos_table.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qos_table.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool35.not.i = icmp eq i32 %15, 0
  br i1 %tobool35.not.i, label %if.then32.i.cleanup41.i_crit_edge, label %if.end37.i

if.then32.i.cleanup41.i_crit_edge:                ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41.i

if.end37.i:                                       ; preds = %if.then32.i
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %call.i56.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %17, i32 noundef 8, i32 noundef 20, i32 noundef 2592) #5
  %tobool.not.i57.i = icmp eq ptr %call.i56.i, null
  br i1 %tobool.not.i57.i, label %if.end37.i.cleanup41.i_crit_edge, label %if.end.i.i

if.end37.i.cleanup41.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup41.i

if.end.i.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i56.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %add.ptr.i.i.i, align 4
  %port.i.i = getelementptr i8, ptr %19, i32 8
  %21 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %15, ptr %port.i.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %ctrl.i.i = getelementptr inbounds %struct.nfp_app, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl.i.i, align 4
  %call3.i.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %25, ptr noundef nonnull %call.i56.i) #5
  br label %cleanup41.i

cleanup41.i:                                      ; preds = %if.end.i.i, %if.end37.i.cleanup41.i_crit_edge, %if.then32.i.cleanup41.i_crit_edge, %do.end29.i.cleanup41.i_crit_edge
  %inc.i = add nuw i32 %i.068.i, 1
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %7, align 4
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %cleanup41.i.for.body.i_crit_edge, label %cleanup41.i.exit_unlock_rcu.i_crit_edge

cleanup41.i.exit_unlock_rcu.i_crit_edge:          ; preds = %cleanup41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit_unlock_rcu.i

cleanup41.i.for.body.i_crit_edge:                 ; preds = %cleanup41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

exit_unlock_rcu.i:                                ; preds = %cleanup41.i.exit_unlock_rcu.i_crit_edge, %for.cond.preheader.i.exit_unlock_rcu.i_crit_edge, %do.end7.i.exit_unlock_rcu.i_crit_edge
  %call.i58.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i58.i, label %exit_unlock_rcu.i.nfp_flower_stats_rlim_request_all.exit_crit_edge, label %land.lhs.true.i61.i

exit_unlock_rcu.i.nfp_flower_stats_rlim_request_all.exit_crit_edge: ; preds = %exit_unlock_rcu.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_flower_stats_rlim_request_all.exit

land.lhs.true.i61.i:                              ; preds = %exit_unlock_rcu.i
  %call1.i59.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59.i)
  %tobool.not.i60.i = icmp eq i32 %call1.i59.i, 0
  br i1 %tobool.not.i60.i, label %land.lhs.true.i61.i.nfp_flower_stats_rlim_request_all.exit_crit_edge, label %land.lhs.true2.i63.i

land.lhs.true.i61.i.nfp_flower_stats_rlim_request_all.exit_crit_edge: ; preds = %land.lhs.true.i61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_flower_stats_rlim_request_all.exit

land.lhs.true2.i63.i:                             ; preds = %land.lhs.true.i61.i
  %.b4.i62.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62.i, label %land.lhs.true2.i63.i.nfp_flower_stats_rlim_request_all.exit_crit_edge, label %if.then.i64.i

land.lhs.true2.i63.i.nfp_flower_stats_rlim_request_all.exit_crit_edge: ; preds = %land.lhs.true2.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_flower_stats_rlim_request_all.exit

if.then.i64.i:                                    ; preds = %land.lhs.true2.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #5
  br label %nfp_flower_stats_rlim_request_all.exit

nfp_flower_stats_rlim_request_all.exit:           ; preds = %if.then.i64.i, %land.lhs.true2.i63.i.nfp_flower_stats_rlim_request_all.exit_crit_edge, %land.lhs.true.i61.i.nfp_flower_stats_rlim_request_all.exit_crit_edge, %exit_unlock_rcu.i.nfp_flower_stats_rlim_request_all.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !67
  %28 = tail call i32 @llvm.read_register.i32(metadata !55) #5
  %and.i.i.i.i.i65.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i65.i to ptr
  %preempt_count.i.i.i.i66.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i66.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i66.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i66.i, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %work, i32 noundef 100) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_qos_cleanup(ptr nocapture noundef readonly %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %qos_stats_work = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 27
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %qos_stats_work) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_setup_qos_offload(ptr nocapture noundef readonly %app, ptr nocapture noundef readonly %netdev, ptr nocapture noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %priv = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %flower_ext_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flower_ext_feats to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flower_ext_feats, align 8
  %and = and i64 %5, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_setup_qos_offload.__msg) #5
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nfp_flower_setup_qos_offload.__msg, ptr %1, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 1
  %7 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %command, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end4.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %rule.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 2
  %10 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rule.i, align 4
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 0, i32 1
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 1
  %12 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %action.i, align 8
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %15, @nfp_repr_netdev_ops
  br i1 %cmp.i.i, label %if.end5.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg) #5
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfp_flower_install_rate_limiter.__msg, ptr %1, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %sw.bb
  %app_priv.i = getelementptr i8, ptr %netdev, i32 2324
  %17 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app_priv.i, align 4
  %dst.i.i = getelementptr i8, ptr %netdev, i32 2308
  %19 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %20, i32 0, i32 2
  %port_id.i.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port_id.i.i, align 4
  %and.i = and i64 %5, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp eq i64 %and.i, 0
  %block_shared.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %block_shared.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %block_shared.i, align 1, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool10.not.i = icmp eq i8 %24, 0
  br i1 %tobool10.not.i, label %if.end20.i, label %do.body12.i

do.body12.i:                                      ; preds = %if.end5.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.11) #5
  %tobool14.not.i = icmp eq ptr %1, null
  br i1 %tobool14.not.i, label %do.body12.i.cleanup_crit_edge, label %if.then15.i

do.body12.i.cleanup_crit_edge:                    ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @nfp_flower_install_rate_limiter.__msg.11, ptr %1, align 4
  br label %cleanup

if.end20.i:                                       ; preds = %if.end5.i
  %port.i = getelementptr i8, ptr %netdev, i32 2312
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.i, align 4
  %type.i = getelementptr inbounds %struct.nfp_port, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.not.i = icmp eq i32 %29, 3
  br i1 %cmp.not.i, label %if.end30.i, label %do.body22.i

do.body22.i:                                      ; preds = %if.end20.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.12) #5
  %tobool24.not.i = icmp eq ptr %1, null
  br i1 %tobool24.not.i, label %do.body22.i.cleanup_crit_edge, label %if.then25.i

do.body22.i.cleanup_crit_edge:                    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @nfp_flower_install_rate_limiter.__msg.12, ptr %1, align 4
  br label %cleanup

if.end30.i:                                       ; preds = %if.end20.i
  br i1 %tobool8.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end30.i
  %31 = add i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %31)
  %32 = icmp ult i32 %31, -2
  br i1 %32, label %do.body36.i, label %if.then32.i.if.end58.i_crit_edge

if.then32.i.if.end58.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

do.body36.i:                                      ; preds = %if.then32.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.13) #5
  %tobool38.not.i = icmp eq ptr %1, null
  br i1 %tobool38.not.i, label %do.body36.i.cleanup_crit_edge, label %if.then39.i

do.body36.i.cleanup_crit_edge:                    ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then39.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @nfp_flower_install_rate_limiter.__msg.13, ptr %1, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i266.i = icmp eq i32 %13, 1
  br i1 %cmp.i266.i, label %if.else.i.if.end58.i_crit_edge, label %do.body49.i

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

do.body49.i:                                      ; preds = %if.else.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.14) #5
  %tobool51.not.i = icmp eq ptr %1, null
  br i1 %tobool51.not.i, label %do.body49.i.cleanup_crit_edge, label %if.then52.i

do.body49.i.cleanup_crit_edge:                    ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @nfp_flower_install_rate_limiter.__msg.14, ptr %1, align 4
  br label %cleanup

if.end58.i:                                       ; preds = %if.else.i.if.end58.i_crit_edge, %if.then32.i.if.end58.i_crit_edge
  %prio.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %flow, i32 0, i32 2
  %35 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prio.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp59.not.i = icmp eq i32 %36, 1
  br i1 %cmp59.not.i, label %if.end58.i.for.body.i_crit_edge, label %do.body61.i

if.end58.i.for.body.i_crit_edge:                  ; preds = %if.end58.i
  br label %for.body.i

do.body61.i:                                      ; preds = %if.end58.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.15) #5
  %tobool63.not.i = icmp eq ptr %1, null
  br i1 %tobool63.not.i, label %do.body61.i.cleanup_crit_edge, label %if.then64.i

do.body61.i.cleanup_crit_edge:                    ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then64.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nfp_flower_install_rate_limiter.__msg.15, ptr %1, align 4
  br label %cleanup

for.body125.lr.ph.i:                              ; preds = %for.inc.i
  %app151.i = getelementptr i8, ptr %netdev, i32 2316
  %tobool140.not.i = icmp eq ptr %1, null
  br label %for.body125.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end58.i.for.body.i_crit_edge
  %pps_num.0271.i = phi i32 [ %pps_num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end58.i.for.body.i_crit_edge ]
  %bps_num.0270.i = phi i32 [ %bps_num.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end58.i.for.body.i_crit_edge ]
  %i.0269.i = phi i32 [ %inc122.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end58.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.flow_action_entry, ptr %entries.i, i32 %i.0269.i
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %39)
  %cmp71.not.i = icmp eq i32 %39, 22
  br i1 %cmp71.not.i, label %if.end81.i, label %do.body73.i

do.body73.i:                                      ; preds = %for.body.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.16) #5
  %tobool75.not.i = icmp eq ptr %1, null
  br i1 %tobool75.not.i, label %do.body73.i.cleanup_crit_edge, label %if.then76.i

do.body73.i.cleanup_crit_edge:                    ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76.i:                                      ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nfp_flower_install_rate_limiter.__msg.16, ptr %1, align 4
  br label %cleanup

if.end81.i:                                       ; preds = %for.body.i
  %41 = getelementptr inbounds %struct.flow_action_entry, ptr %add.ptr.i, i32 0, i32 5
  %rate_bytes_ps.i = getelementptr inbounds %struct.anon.227, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %rate_bytes_ps.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rate_bytes_ps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %43)
  %cmp82.not.i = icmp eq i64 %43, 0
  br i1 %cmp82.not.i, label %if.end81.i.if.end95.i_crit_edge, label %if.then83.i

if.end81.i.if.end95.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

if.then83.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bps_num.0270.i)
  %tobool84.not.i = icmp eq i32 %bps_num.0270.i, 0
  br i1 %tobool84.not.i, label %if.then83.i.if.end95.i_crit_edge, label %do.body86.i

if.then83.i.if.end95.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95.i

do.body86.i:                                      ; preds = %if.then83.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.17) #5
  %tobool88.not.i = icmp eq ptr %1, null
  br i1 %tobool88.not.i, label %do.body86.i.cleanup_crit_edge, label %if.then89.i

do.body86.i.cleanup_crit_edge:                    ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then89.i:                                      ; preds = %do.body86.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @nfp_flower_install_rate_limiter.__msg.17, ptr %1, align 4
  br label %cleanup

if.end95.i:                                       ; preds = %if.then83.i.if.end95.i_crit_edge, %if.end81.i.if.end95.i_crit_edge
  %bps_num.1.i = phi i32 [ 1, %if.then83.i.if.end95.i_crit_edge ], [ %bps_num.0270.i, %if.end81.i.if.end95.i_crit_edge ]
  %rate_pkt_ps.i = getelementptr inbounds %struct.anon.227, ptr %41, i32 0, i32 3
  %45 = ptrtoint ptr %rate_pkt_ps.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %rate_pkt_ps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %cmp96.not.i = icmp eq i64 %46, 0
  br i1 %cmp96.not.i, label %if.end95.i.for.inc.i_crit_edge, label %if.then97.i

if.end95.i.for.inc.i_crit_edge:                   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then97.i:                                      ; preds = %if.end95.i
  br i1 %tobool8.not.i, label %do.body100.i, label %if.end108.i

do.body100.i:                                     ; preds = %if.then97.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.18) #5
  %tobool102.not.i = icmp eq ptr %1, null
  br i1 %tobool102.not.i, label %do.body100.i.cleanup_crit_edge, label %if.then103.i

do.body100.i.cleanup_crit_edge:                   ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then103.i:                                     ; preds = %do.body100.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @nfp_flower_install_rate_limiter.__msg.18, ptr %1, align 4
  br label %cleanup

if.end108.i:                                      ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pps_num.0271.i)
  %tobool110.not.i = icmp eq i32 %pps_num.0271.i, 0
  br i1 %tobool110.not.i, label %if.end108.i.for.inc.i_crit_edge, label %do.body112.i

if.end108.i.for.inc.i_crit_edge:                  ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.body112.i:                                     ; preds = %if.end108.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.19) #5
  %tobool114.not.i = icmp eq ptr %1, null
  br i1 %tobool114.not.i, label %do.body112.i.cleanup_crit_edge, label %if.then115.i

do.body112.i.cleanup_crit_edge:                   ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then115.i:                                     ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nfp_flower_install_rate_limiter.__msg.19, ptr %1, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %if.end108.i.for.inc.i_crit_edge, %if.end95.i.for.inc.i_crit_edge
  %pps_num.1.i = phi i32 [ 1, %if.end108.i.for.inc.i_crit_edge ], [ %pps_num.0271.i, %if.end95.i.for.inc.i_crit_edge ]
  %inc122.i = add nuw i32 %i.0269.i, 1
  %exitcond.not.i = icmp eq i32 %inc122.i, %13
  br i1 %exitcond.not.i, label %for.body125.lr.ph.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body125.i:                                    ; preds = %for.inc169.i.for.body125.i_crit_edge, %for.body125.lr.ph.i
  %i.1273.i = phi i32 [ 0, %for.body125.lr.ph.i ], [ %inc170.i, %for.inc169.i.for.body125.i_crit_edge ]
  %add.ptr126.i = getelementptr %struct.flow_action_entry, ptr %entries.i, i32 %i.1273.i
  %49 = getelementptr inbounds %struct.flow_action_entry, ptr %add.ptr126.i, i32 0, i32 5
  %rate_bytes_ps127.i = getelementptr inbounds %struct.anon.227, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %rate_bytes_ps127.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rate_bytes_ps127.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %cmp128.not.i = icmp eq i64 %51, 0
  br i1 %cmp128.not.i, label %if.else132.i, label %if.then129.i

if.then129.i:                                     ; preds = %for.body125.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %49, align 8
  %extract.t56 = trunc i64 %51 to i32
  br label %if.then150.i

if.else132.i:                                     ; preds = %for.body125.i
  %rate_pkt_ps133.i = getelementptr inbounds %struct.anon.227, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %rate_pkt_ps133.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rate_pkt_ps133.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp134.not.i = icmp eq i64 %55, 0
  br i1 %cmp134.not.i, label %do.body138.i, label %if.then135.i

if.then135.i:                                     ; preds = %if.else132.i
  call void @__sanitizer_cov_trace_pc() #7
  %burst_pkt.i = getelementptr inbounds %struct.anon.227, ptr %49, i32 0, i32 2
  %56 = ptrtoint ptr %burst_pkt.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %burst_pkt.i, align 8
  %conv.i = trunc i64 %57 to i32
  %extract.t55 = trunc i64 %55 to i32
  br label %if.then150.i

do.body138.i:                                     ; preds = %if.else132.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_install_rate_limiter.__msg.20) #5
  br i1 %tobool140.not.i, label %do.body138.i.for.inc169.i_crit_edge, label %if.then141.i

do.body138.i.for.inc169.i_crit_edge:              ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc169.i

if.then141.i:                                     ; preds = %do.body138.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @nfp_flower_install_rate_limiter.__msg.20, ptr %1, align 4
  br label %for.inc169.i

if.then150.i:                                     ; preds = %if.then135.i, %if.then129.i
  %.sink.off0 = phi i32 [ %extract.t55, %if.then135.i ], [ %extract.t56, %if.then129.i ]
  %burst.0.i = phi i32 [ %conv.i, %if.then135.i ], [ %53, %if.then129.i ]
  %59 = ptrtoint ptr %app151.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %app151.i, align 4
  %call152.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %60, i32 noundef 32, i32 noundef 18, i32 noundef 3264) #5
  %tobool153.not.i = icmp eq ptr %call152.i, null
  br i1 %tobool153.not.i, label %if.then150.i.cleanup_crit_edge, label %if.end155.i

if.then150.i.cleanup_crit_edge:                   ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end155.i:                                      ; preds = %if.then150.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call152.i, i32 0, i32 19
  %61 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i267.i = getelementptr i8, ptr %62, i32 4
  %63 = call ptr @memset(ptr %add.ptr.i267.i, i32 0, i32 32)
  %rate_pkt_ps157.i = getelementptr inbounds %struct.anon.227, ptr %49, i32 0, i32 3
  %64 = ptrtoint ptr %rate_pkt_ps157.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rate_pkt_ps157.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %cmp158.not.i = icmp eq i64 %65, 0
  br i1 %cmp158.not.i, label %if.end155.i.if.end161.i_crit_edge, label %if.then160.i

if.end155.i.if.end161.i_crit_edge:                ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161.i

if.then160.i:                                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %add.ptr.i267.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 32768, ptr %add.ptr.i267.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then160.i, %if.end155.i.if.end161.i_crit_edge
  %port163.i = getelementptr i8, ptr %62, i32 8
  %67 = ptrtoint ptr %port163.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %22, ptr %port163.i, align 4
  %bkt_tkn_p.i = getelementptr i8, ptr %62, i32 12
  %68 = ptrtoint ptr %bkt_tkn_p.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %burst.0.i, ptr %bkt_tkn_p.i, align 4
  %bkt_tkn_c.i = getelementptr i8, ptr %62, i32 16
  %69 = ptrtoint ptr %bkt_tkn_c.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %burst.0.i, ptr %bkt_tkn_c.i, align 4
  %pbs.i = getelementptr i8, ptr %62, i32 20
  %70 = ptrtoint ptr %pbs.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %burst.0.i, ptr %pbs.i, align 4
  %cbs.i = getelementptr i8, ptr %62, i32 24
  %71 = ptrtoint ptr %cbs.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %burst.0.i, ptr %cbs.i, align 4
  %pir.i = getelementptr i8, ptr %62, i32 28
  %72 = ptrtoint ptr %pir.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink.off0, ptr %pir.i, align 4
  %cir.i = getelementptr i8, ptr %62, i32 32
  %73 = ptrtoint ptr %cir.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.sink.off0, ptr %cir.i, align 4
  %74 = ptrtoint ptr %app151.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %app151.i, align 4
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl.i, align 4
  %call167.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %77, ptr noundef nonnull %call152.i) #5
  br label %for.inc169.i

for.inc169.i:                                     ; preds = %if.end161.i, %if.then141.i, %do.body138.i.for.inc169.i_crit_edge
  %inc170.i = add nuw i32 %i.1273.i, 1
  %exitcond274.not.i = icmp eq i32 %inc170.i, %13
  br i1 %exitcond274.not.i, label %for.end171.i, label %for.inc169.i.for.body125.i_crit_edge

for.inc169.i.for.body125.i_crit_edge:             ; preds = %for.inc169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body125.i

for.end171.i:                                     ; preds = %for.inc169.i
  %qos_table.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %18, i32 0, i32 6
  %78 = ptrtoint ptr %qos_table.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %22, ptr %qos_table.i, align 8
  %qos_rate_limiters.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 28
  %79 = ptrtoint ptr %qos_rate_limiters.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %qos_rate_limiters.i, align 8
  %inc173.i = add i32 %80, 1
  store i32 %inc173.i, ptr %qos_rate_limiters.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp175.i = icmp eq i32 %80, 0
  br i1 %cmp175.i, label %if.then177.i, label %for.end171.i.cleanup_crit_edge

for.end171.i.cleanup_crit_edge:                   ; preds = %for.end171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then177.i:                                     ; preds = %for.end171.i
  call void @__sanitizer_cov_trace_pc() #7
  %qos_stats_work.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %81 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %81, ptr noundef %qos_stats_work.i, i32 noundef 100) #5
  br label %cleanup

sw.bb5:                                           ; preds = %if.end4
  %netdev_ops.i.i24 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %82 = ptrtoint ptr %netdev_ops.i.i24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev_ops.i.i24, align 8
  %cmp.i.i25 = icmp eq ptr %83, @nfp_repr_netdev_ops
  br i1 %cmp.i.i25, label %if.end2.i, label %do.body.i27

do.body.i27:                                      ; preds = %sw.bb5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_remove_rate_limiter.__msg) #5
  %tobool.not.i26 = icmp eq ptr %1, null
  br i1 %tobool.not.i26, label %do.body.i27.cleanup_crit_edge, label %if.then1.i

do.body.i27.cleanup_crit_edge:                    ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1.i:                                       ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @nfp_flower_remove_rate_limiter.__msg, ptr %1, align 4
  br label %cleanup

if.end2.i:                                        ; preds = %sw.bb5
  %dst.i.i28 = getelementptr i8, ptr %netdev, i32 2308
  %85 = ptrtoint ptr %dst.i.i28 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dst.i.i28, align 4
  %u.i.i29 = getelementptr inbounds %struct.metadata_dst, ptr %86, i32 0, i32 2
  %port_id.i.i30 = getelementptr inbounds %struct.hw_port_info, ptr %u.i.i29, i32 0, i32 1
  %87 = ptrtoint ptr %port_id.i.i30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port_id.i.i30, align 4
  %app_priv.i31 = getelementptr i8, ptr %netdev, i32 2324
  %89 = ptrtoint ptr %app_priv.i31 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %app_priv.i31, align 4
  %and.i33 = and i64 %5, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i33)
  %tobool5.not.not.i = icmp eq i64 %and.i33, 0
  %qos_table.i34 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %90, i32 0, i32 6
  %91 = ptrtoint ptr %qos_table.i34 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %qos_table.i34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool8.not.i35 = icmp eq i32 %92, 0
  br i1 %tobool8.not.i35, label %do.body10.i, label %if.end18.i

do.body10.i:                                      ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_remove_rate_limiter.__msg.21) #5
  %tobool12.not.i = icmp eq ptr %1, null
  br i1 %tobool12.not.i, label %do.body10.i.cleanup_crit_edge, label %if.then13.i

do.body10.i.cleanup_crit_edge:                    ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @nfp_flower_remove_rate_limiter.__msg.21, ptr %1, align 4
  br label %cleanup

if.end18.i:                                       ; preds = %if.end2.i
  %94 = call ptr @memset(ptr %qos_table.i34, i32 0, i32 48)
  %qos_rate_limiters.i36 = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 28
  %95 = ptrtoint ptr %qos_rate_limiters.i36 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %qos_rate_limiters.i36, align 8
  %dec.i = add i32 %96, -1
  store i32 %dec.i, ptr %qos_rate_limiters.i36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool21.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end18.i.if.end28.i_crit_edge

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  %qos_stats_work.i37 = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 27
  %call23.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %qos_stats_work.i37) #5
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i, %if.end18.i.if.end28.i_crit_edge
  %app29.i = getelementptr i8, ptr %netdev, i32 2316
  %97 = ptrtoint ptr %app29.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %app29.i, align 4
  %call30.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %98, i32 noundef 32, i32 noundef 19, i32 noundef 3264) #5
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end28.i.cleanup_crit_edge, label %if.end37.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37.i:                                       ; preds = %if.end28.i
  %data.i.i38 = getelementptr inbounds %struct.sk_buff, ptr %call30.i, i32 0, i32 19
  %99 = ptrtoint ptr %data.i.i38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i38, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %100, i32 4
  %101 = call ptr @memset(ptr %add.ptr.i1.i, i32 0, i32 32)
  %port.i39 = getelementptr i8, ptr %100, i32 8
  %102 = ptrtoint ptr %port.i39 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %88, ptr %port.i39, align 4
  %103 = ptrtoint ptr %app29.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %app29.i, align 4
  %ctrl.i40 = getelementptr inbounds %struct.nfp_app, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %ctrl.i40 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ctrl.i40, align 4
  %call40.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %106, ptr noundef nonnull %call30.i) #5
  br i1 %tobool5.not.not.i, label %if.end37.i.cleanup_crit_edge, label %if.end28.1.i

if.end37.i.cleanup_crit_edge:                     ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.1.i:                                     ; preds = %if.end37.i
  %107 = ptrtoint ptr %app29.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %app29.i, align 4
  %call30.1.i = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %108, i32 noundef 32, i32 noundef 19, i32 noundef 3264) #5
  %tobool31.not.1.i = icmp eq ptr %call30.1.i, null
  br i1 %tobool31.not.1.i, label %if.end28.1.i.cleanup_crit_edge, label %if.end37.1.i

if.end28.1.i.cleanup_crit_edge:                   ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37.1.i:                                     ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.1.i = getelementptr inbounds %struct.sk_buff, ptr %call30.1.i, i32 0, i32 19
  %109 = ptrtoint ptr %data.i.1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i.1.i, align 4
  %add.ptr.i1.1.i = getelementptr i8, ptr %110, i32 4
  %111 = getelementptr i8, ptr %110, i32 12
  %112 = call ptr @memset(ptr %111, i32 0, i32 24)
  %113 = ptrtoint ptr %add.ptr.i1.1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 32768, ptr %add.ptr.i1.1.i, align 4
  %port.1.i = getelementptr i8, ptr %110, i32 8
  %114 = ptrtoint ptr %port.1.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %88, ptr %port.1.i, align 4
  %115 = ptrtoint ptr %app29.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %app29.i, align 4
  %ctrl.1.i = getelementptr inbounds %struct.nfp_app, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %ctrl.1.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ctrl.1.i, align 4
  %call40.1.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %118, ptr noundef nonnull %call30.1.i) #5
  br label %cleanup

sw.bb7:                                           ; preds = %if.end4
  %netdev_ops.i.i43 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %119 = ptrtoint ptr %netdev_ops.i.i43 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %netdev_ops.i.i43, align 8
  %cmp.i.i44 = icmp eq ptr %120, @nfp_repr_netdev_ops
  br i1 %cmp.i.i44, label %if.end2.i50, label %do.body.i46

do.body.i46:                                      ; preds = %sw.bb7
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_stats_rate_limiter.__msg) #5
  %tobool.not.i45 = icmp eq ptr %1, null
  br i1 %tobool.not.i45, label %do.body.i46.cleanup_crit_edge, label %if.then1.i47

do.body.i46.cleanup_crit_edge:                    ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1.i47:                                     ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @nfp_flower_stats_rate_limiter.__msg, ptr %1, align 4
  br label %cleanup

if.end2.i50:                                      ; preds = %sw.bb7
  %app_priv.i48 = getelementptr i8, ptr %netdev, i32 2324
  %122 = ptrtoint ptr %app_priv.i48 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %app_priv.i48, align 4
  %qos_table.i49 = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6
  %124 = ptrtoint ptr %qos_table.i49 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %qos_table.i49, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool4.not.i = icmp eq i32 %125, 0
  br i1 %tobool4.not.i, label %do.body6.i, label %if.end14.i

do.body6.i:                                       ; preds = %if.end2.i50
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_stats_rate_limiter.__msg.22) #5
  %tobool8.not.i51 = icmp eq ptr %1, null
  br i1 %tobool8.not.i51, label %do.body6.i.cleanup_crit_edge, label %if.then9.i

do.body6.i.cleanup_crit_edge:                     ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @nfp_flower_stats_rate_limiter.__msg.22, ptr %1, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %if.end2.i50
  call void @__sanitizer_cov_trace_pc() #7
  %qos_stats_lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %3, i32 0, i32 29
  tail call void @_raw_spin_lock_bh(ptr noundef %qos_stats_lock.i) #5
  %curr_stats16.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6, i32 1
  %prev_stats18.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6, i32 2
  %127 = ptrtoint ptr %curr_stats16.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %curr_stats16.i, align 8
  %129 = ptrtoint ptr %prev_stats18.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %prev_stats18.i, align 8
  %sub.i = sub i64 %128, %130
  %bytes.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6, i32 1, i32 1
  %131 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %bytes.i, align 8
  %bytes20.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6, i32 2, i32 1
  %133 = ptrtoint ptr %bytes20.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %bytes20.i, align 8
  %sub21.i = sub i64 %132, %134
  store i64 %128, ptr %prev_stats18.i, align 8
  store i64 %132, ptr %bytes20.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %qos_stats_lock.i) #5
  %stats.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 3
  %last_update.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %123, i32 0, i32 6, i32 3
  %135 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %last_update.i, align 8
  %137 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %stats.i, align 8
  %add.i.i = add i64 %sub.i, %138
  store i64 %add.i.i, ptr %stats.i, align 8
  %bytes2.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 3, i32 1
  %139 = ptrtoint ptr %bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %bytes2.i.i, align 8
  %add3.i.i = add i64 %sub21.i, %140
  store i64 %add3.i.i, ptr %bytes2.i.i, align 8
  %lastused6.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 3, i32 3
  %141 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %lastused6.i.i, align 8
  %143 = tail call i64 @llvm.umax.i64(i64 %142, i64 %136) #5
  %144 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %lastused6.i.i, align 8
  %used_hw_stats28.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 3, i32 4
  %145 = ptrtoint ptr %used_hw_stats28.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %used_hw_stats28.i.i, align 8
  %or.i.i = or i32 %146, 2
  store i32 %or.i.i, ptr %used_hw_stats28.i.i, align 8
  %used_hw_stats_valid.i.i = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %flow, i32 0, i32 3, i32 5
  %147 = ptrtoint ptr %used_hw_stats_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %used_hw_stats_valid.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14.i, %if.then9.i, %do.body6.i.cleanup_crit_edge, %if.then1.i47, %do.body.i46.cleanup_crit_edge, %if.end37.1.i, %if.end28.1.i.cleanup_crit_edge, %if.end37.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %if.then13.i, %do.body10.i.cleanup_crit_edge, %if.then1.i, %do.body.i27.cleanup_crit_edge, %if.then177.i, %for.end171.i.cleanup_crit_edge, %if.then150.i.cleanup_crit_edge, %if.then115.i, %do.body112.i.cleanup_crit_edge, %if.then103.i, %do.body100.i.cleanup_crit_edge, %if.then89.i, %do.body86.i.cleanup_crit_edge, %if.then76.i, %do.body73.i.cleanup_crit_edge, %if.then64.i, %do.body61.i.cleanup_crit_edge, %if.then52.i, %do.body49.i.cleanup_crit_edge, %if.then39.i, %do.body36.i.cleanup_crit_edge, %if.then25.i, %do.body22.i.cleanup_crit_edge, %if.then15.i, %do.body12.i.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ -95, %if.then4.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %if.then15.i ], [ -95, %do.body12.i.cleanup_crit_edge ], [ -95, %if.then25.i ], [ -95, %do.body22.i.cleanup_crit_edge ], [ -95, %if.then39.i ], [ -95, %do.body36.i.cleanup_crit_edge ], [ -95, %if.then52.i ], [ -95, %do.body49.i.cleanup_crit_edge ], [ -95, %if.then64.i ], [ -95, %do.body61.i.cleanup_crit_edge ], [ -95, %if.then76.i ], [ -95, %do.body73.i.cleanup_crit_edge ], [ -95, %if.then89.i ], [ -95, %do.body86.i.cleanup_crit_edge ], [ -95, %if.then103.i ], [ -95, %do.body100.i.cleanup_crit_edge ], [ -95, %if.then115.i ], [ -95, %do.body112.i.cleanup_crit_edge ], [ 0, %if.then177.i ], [ 0, %for.end171.i.cleanup_crit_edge ], [ -95, %if.then1.i ], [ -95, %do.body.i27.cleanup_crit_edge ], [ -95, %if.then13.i ], [ -95, %do.body10.i.cleanup_crit_edge ], [ -12, %if.end28.i.cleanup_crit_edge ], [ 0, %if.end37.i.cleanup_crit_edge ], [ -12, %if.end28.1.i.cleanup_crit_edge ], [ 0, %if.end37.1.i ], [ 0, %if.end14.i ], [ -95, %if.then1.i47 ], [ -95, %do.body.i46.cleanup_crit_edge ], [ -95, %if.then9.i ], [ -95, %do.body6.i.cleanup_crit_edge ], [ -12, %if.then150.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_cmsg_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @nfp_flower_qos_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 408, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nfp_flower_qos_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 409, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nfp_flower_qos_init.__key.3, !4, !"__key", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfp_flower_setup_qos_offload.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 426, i32 3}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 326, i32 13}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 333, i32 12}
!23 = !{ptr @nfp_flower_install_rate_limiter.__msg, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 91, i32 3}
!25 = !{ptr @nfp_flower_install_rate_limiter.__msg.11, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 100, i32 3}
!27 = !{ptr @nfp_flower_install_rate_limiter.__msg.12, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 105, i32 3}
!29 = !{ptr @nfp_flower_install_rate_limiter.__msg.13, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 111, i32 4}
!31 = !{ptr @nfp_flower_install_rate_limiter.__msg.14, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 117, i32 4}
!33 = !{ptr @nfp_flower_install_rate_limiter.__msg.15, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 124, i32 3}
!35 = !{ptr @nfp_flower_install_rate_limiter.__msg.16, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 131, i32 4}
!37 = !{ptr @nfp_flower_install_rate_limiter.__msg.17, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 137, i32 5}
!39 = !{ptr @nfp_flower_install_rate_limiter.__msg.18, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 144, i32 5}
!41 = !{ptr @nfp_flower_install_rate_limiter.__msg.19, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 149, i32 5}
!43 = !{ptr @nfp_flower_install_rate_limiter.__msg.20, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 166, i32 4}
!45 = !{ptr @nfp_flower_remove_rate_limiter.__msg, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 214, i32 3}
!47 = !{ptr @nfp_flower_remove_rate_limiter.__msg.21, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 224, i32 3}
!49 = !{ptr @nfp_flower_stats_rate_limiter.__msg, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 378, i32 3}
!51 = !{ptr @nfp_flower_stats_rate_limiter.__msg.22, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/flower/qos_conf.c", i32 385, i32 3}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2149417398}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2149417664}
!68 = !{i8 0, i8 2}
