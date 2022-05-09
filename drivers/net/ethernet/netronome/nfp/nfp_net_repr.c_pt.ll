; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_net_repr.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nfp_reprs = type { i32, [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfp_repr_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.177 }
%union.anon.177 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.178, i16, i8, i8, i32, i16, i16 }
%union.anon.178 = type { %struct.anon.180 }
%struct.anon.180 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.174, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.174 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, i32, i8, i32, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.hw_port_info = type { ptr, i32 }
%struct.nfp_repr = type { ptr, ptr, ptr, ptr, ptr, ptr }

@nfp_repr_get_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_net_repr.c\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nfp_repr_netdev_ops = dso_local constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @nfp_app_ndo_init, ptr @nfp_app_ndo_uninit, ptr @nfp_repr_open, ptr @nfp_repr_stop, ptr @nfp_repr_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_repr_change_mtu, ptr null, ptr null, ptr @nfp_repr_get_stats64, ptr @nfp_repr_has_offload_stats, ptr @nfp_repr_get_offload_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_app_set_vf_mac, ptr @nfp_app_set_vf_vlan, ptr null, ptr @nfp_app_set_vf_spoofchk, ptr @nfp_app_set_vf_trust, ptr @nfp_app_get_vf_config, ptr @nfp_app_set_vf_link_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_port_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_repr_fix_features, ptr @nfp_port_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_port_get_port_parent_id, ptr @nfp_port_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfp_devlink_get_devlink_port, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@nfp_port_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Device advertises both TSO2 and TXVLAN. Refusing to enable TXVLAN.\0A\00", [60 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nfp_repr_alloc_mqs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@nfp_repr_clean_and_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: Destroying Representor(%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_repr_clean_and_free\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_repr_clean_and_free._entry_ptr = internal global ptr @nfp_repr_clean_and_free._entry, section ".printk_index", align 4
@nfp_reprs_clean_and_free_by_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&nfp_repr_netdev_xmit_lock_key\00", [33 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 22, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"nfp_repr_netdev_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 256, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 373, i32 24 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 438, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 451, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 271, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 231, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 309, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"nfp_repr_netdev_xmit_lock_key\00", align 1
@___asan_gen_.54 = private constant [53 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 303, i32 30 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nfp_repr_clean_and_free._entry, ptr @nfp_repr_clean_and_free._entry_ptr, ptr @.str, ptr @.str.1, ptr @nfp_repr_netdev_ops, ptr @.str.2, ptr @nfp_repr_alloc_mqs.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @nfp_repr_netdev_xmit_lock_key], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_repr_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_repr_alloc_mqs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_repr_clean_and_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_repr_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_repr_get_locked(ptr nocapture noundef readonly %app, ptr nocapture noundef readonly %set, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b5 = load i1, ptr @nfp_repr_get_locked.__warned, align 1
  br i1 %.b5, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_repr_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nfp_reprs, ptr %set, i32 0, i32 1, i32 %id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_repr_inc_rx_stats(ptr nocapture noundef readonly %netdev, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %9, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %9, align 8
  %conv = zext i32 %len to i64
  %rx_bytes = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_bytes, align 8
  %add4 = add i64 %13, %conv
  store i64 %add4, ptr %rx_bytes, align 8
  %dep_map.i.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %9, i32 0, i32 5, i32 0, i32 1
  %14 = tail call ptr @llvm.returnaddress(i32 0) #12
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !39
  %16 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !40
  %5 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !41
  %14 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !42
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !43
  %33 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !44

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !45
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_ndo_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_app_ndo_uninit(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_repr_open(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @nfp_port_configure(ptr noundef %netdev, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %app = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %repr_open.i = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %repr_open.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr_open.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.err_port_disable_crit_edge, label %nfp_app_repr_open.exit

if.end.err_port_disable_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_disable

nfp_app_repr_open.exit:                           ; preds = %if.end
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %nfp_app_repr_open.exit.cleanup_crit_edge, label %nfp_app_repr_open.exit.err_port_disable_crit_edge

nfp_app_repr_open.exit.err_port_disable_crit_edge: ; preds = %nfp_app_repr_open.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_port_disable

nfp_app_repr_open.exit.cleanup_crit_edge:         ; preds = %nfp_app_repr_open.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_port_disable:                                 ; preds = %nfp_app_repr_open.exit.err_port_disable_crit_edge, %if.end.err_port_disable_crit_edge
  %retval.0.i16 = phi i32 [ %call.i, %nfp_app_repr_open.exit.err_port_disable_crit_edge ], [ -22, %if.end.err_port_disable_crit_edge ]
  %call6 = tail call i32 @nfp_port_configure(ptr noundef %netdev, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %err_port_disable, %nfp_app_repr_open.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %err_port_disable ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %nfp_app_repr_open.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_repr_stop(ptr noundef %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %repr_stop.i = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %repr_stop.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %repr_stop.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %nfp_app_repr_stop.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nfp_app_repr_stop.exit:                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call.i = tail call i32 %5(ptr noundef %1, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %nfp_app_repr_stop.exit.cleanup_crit_edge

nfp_app_repr_stop.exit.cleanup_crit_edge:         ; preds = %nfp_app_repr_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nfp_app_repr_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @nfp_port_configure(ptr noundef %netdev, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nfp_app_repr_stop.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call.i, %nfp_app_repr_stop.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_repr_xmit(ptr noundef %skb, ptr nocapture noundef readonly %netdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %5) #12
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %dst = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 4
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !46
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #12, !srcloc !47
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !48
  br label %dst_hold.exit

do.end10.i:                                       ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %dst_hold.exit

dst_hold.exit:                                    ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dst, align 4
  %tobool.not.i12 = icmp eq ptr %11, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i12, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %13 = ptrtoint ptr %11 to i32
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %2, align 8
  %15 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %u, align 8
  %18 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %18, align 8
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #12
  %20 = and i32 %call4, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %.not.i = icmp eq i32 %20, 0
  br i1 %.not.i, label %do.body49.i, label %do.body3.i, !prof !44

do.body3.i:                                       ; preds = %dst_hold.exit
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !49
  %stats16.i = getelementptr i8, ptr %netdev, i32 2320
  %22 = ptrtoint ptr %stats16.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats16.i, align 4
  %tx_drops.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %tx_drops.i to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i.i13 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i13 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %31, align 8
  %add19.i = add i64 %33, 1
  store i64 %add19.i, ptr %31, align 8
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !50
  %and.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool30.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool30.not.i, label %if.then39.i, label %do.body3.i.do.end41.i_crit_edge, !prof !51

do.body3.i.do.end41.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end41.i

if.then39.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end41.i

do.end41.i:                                       ; preds = %if.then39.i, %do.body3.i.do.end41.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #12, !srcloc !52
  br label %nfp_repr_inc_tx_stats.exit

do.body49.i:                                      ; preds = %dst_hold.exit
  call void @__sanitizer_cov_trace_pc() #14
  %stats55.i = getelementptr i8, ptr %netdev, i32 2320
  %35 = ptrtoint ptr %stats55.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stats55.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !29) #12
  %and.i70.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i70.i to ptr
  %cpu58.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu58.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu58.i, align 4
  %arrayidx59.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx59.i, align 4
  %add60.i = add i32 %43, %37
  %44 = inttoptr i32 %add60.i to ptr
  %syncp.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %44, i32 0, i32 5
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #12
  %tx_packets.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %tx_packets.i, align 8
  %inc.i = add i64 %46, 1
  store i64 %inc.i, ptr %tx_packets.i, align 8
  %conv61.i = zext i32 %1 to i64
  %tx_bytes.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tx_bytes.i, align 8
  %add62.i = add i64 %48, %conv61.i
  store i64 %add62.i, ptr %tx_bytes.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %44, i32 0, i32 5, i32 0, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #12
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !39
  %51 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %52, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  br label %nfp_repr_inc_tx_stats.exit

nfp_repr_inc_tx_stats.exit:                       ; preds = %do.body49.i, %do.end41.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_repr_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end6_crit_edge, label %lor.lhs.false.i

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.i:                                  ; preds = %entry
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %check_mtu.i = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %check_mtu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %check_mtu.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %nfp_app_check_mtu.exit

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

nfp_app_check_mtu.exit:                           ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %5(ptr noundef nonnull %1, ptr noundef %netdev, i32 noundef %new_mtu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %nfp_app_check_mtu.exit.if.end_crit_edge, label %nfp_app_check_mtu.exit.cleanup_crit_edge

nfp_app_check_mtu.exit.cleanup_crit_edge:         ; preds = %nfp_app_check_mtu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nfp_app_check_mtu.exit.if.end_crit_edge:          ; preds = %nfp_app_check_mtu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %nfp_app_check_mtu.exit.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %6 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %app, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %if.end.if.end6_crit_edge, label %lor.lhs.false.i20

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

lor.lhs.false.i20:                                ; preds = %if.end
  %type.i18 = getelementptr inbounds %struct.nfp_app, ptr %.pr, i32 0, i32 5
  %7 = ptrtoint ptr %type.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.i18, align 4
  %repr_change_mtu.i = getelementptr inbounds %struct.nfp_app_type, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %repr_change_mtu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %repr_change_mtu.i, align 4
  %tobool1.not.i19 = icmp eq ptr %10, null
  br i1 %tobool1.not.i19, label %lor.lhs.false.i20.if.end6_crit_edge, label %nfp_app_repr_change_mtu.exit

lor.lhs.false.i20.if.end6_crit_edge:              ; preds = %lor.lhs.false.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

nfp_app_repr_change_mtu.exit:                     ; preds = %lor.lhs.false.i20
  %call.i21 = tail call i32 %10(ptr noundef nonnull %.pr, ptr noundef %netdev, i32 noundef %new_mtu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool4.not = icmp eq i32 %call.i21, 0
  br i1 %tobool4.not, label %nfp_app_repr_change_mtu.exit.if.end6_crit_edge, label %nfp_app_repr_change_mtu.exit.cleanup_crit_edge

nfp_app_repr_change_mtu.exit.cleanup_crit_edge:   ; preds = %nfp_app_repr_change_mtu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nfp_app_repr_change_mtu.exit.if.end6_crit_edge:   ; preds = %nfp_app_repr_change_mtu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %nfp_app_repr_change_mtu.exit.if.end6_crit_edge, %lor.lhs.false.i20.if.end6_crit_edge, %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %nfp_app_repr_change_mtu.exit.cleanup_crit_edge, %nfp_app_check_mtu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call.i, %nfp_app_check_mtu.exit.cleanup_crit_edge ], [ %call.i21, %nfp_app_repr_change_mtu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_repr_get_stats64(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr i8, ptr %netdev, i32 2312
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !51

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end23:                                         ; preds = %entry
  %type = getelementptr inbounds %struct.nfp_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end23.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end23.sw.bb31_crit_edge
    i32 3, label %if.end23.sw.bb31_crit_edge48
  ]

if.end23.sw.bb31_crit_edge48:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

if.end23.sw.bb31_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end23
  %call26 = tail call ptr @__nfp_port_get_eth_port(ptr noundef nonnull %1) #12
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %sw.bb.cleanup_crit_edge, label %if.end29

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end29:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %eth_stats.i = getelementptr inbounds %struct.nfp_port, ptr %6, i32 0, i32 6, i32 0, i32 3
  %7 = ptrtoint ptr %eth_stats.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eth_stats.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %8, i32 392
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 396
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %11 = zext i32 %9 to i64
  %12 = zext i32 %10 to i64
  %13 = shl nuw i64 %12, 32
  %14 = or i64 %13, %11
  %15 = tail call i64 @llvm.bswap.i64(i64 %14) #12
  %tx_packets.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %16 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %tx_packets.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %8, i32 320
  %add.ptr.i21.i = getelementptr i8, ptr %8, i32 324
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %19 = zext i32 %17 to i64
  %20 = zext i32 %18 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #12
  %tx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %24 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %tx_bytes.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %8, i32 344
  %add.ptr.i22.i = getelementptr i8, ptr %8, i32 348
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %27 = zext i32 %25 to i64
  %28 = zext i32 %26 to i64
  %29 = shl nuw i64 %28, 32
  %30 = or i64 %29, %27
  %31 = tail call i64 @llvm.bswap.i64(i64 %30) #12
  %tx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %32 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %tx_dropped.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %8, i32 80
  %add.ptr.i23.i = getelementptr i8, ptr %8, i32 84
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %35 = zext i32 %33 to i64
  %36 = zext i32 %34 to i64
  %37 = shl nuw i64 %36, 32
  %38 = or i64 %37, %35
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #12
  %40 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %stats, align 8
  %add.ptr.i24.i = getelementptr i32, ptr %8, i32 1
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %43 = zext i32 %41 to i64
  %44 = zext i32 %42 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or i64 %45, %43
  %47 = tail call i64 @llvm.bswap.i64(i64 %46) #12
  %rx_bytes.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %48 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %rx_bytes.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %8, i32 40
  %add.ptr.i25.i = getelementptr i8, ptr %8, i32 44
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %51 = zext i32 %49 to i64
  %52 = zext i32 %50 to i64
  %53 = shl nuw i64 %52, 32
  %54 = or i64 %53, %51
  %55 = tail call i64 @llvm.bswap.i64(i64 %54) #12
  %rx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %56 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %rx_dropped.i, align 8
  br label %cleanup

sw.bb31:                                          ; preds = %if.end23.sw.bb31_crit_edge, %if.end23.sw.bb31_crit_edge48
  %vnic.i = getelementptr inbounds %struct.nfp_port, ptr %1, i32 0, i32 6, i32 0, i32 4
  %57 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vnic.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %58, i32 3376
  %add.ptr.i.i41 = getelementptr i8, ptr %58, i32 3380
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i41) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %61 = zext i32 %59 to i64
  %62 = zext i32 %60 to i64
  %63 = shl nuw i64 %62, 32
  %64 = or i64 %63, %61
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #12
  %tx_packets.i42 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %66 = ptrtoint ptr %tx_packets.i42 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %tx_packets.i42, align 8
  %67 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vnic.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %68, i32 3344
  %add.ptr.i26.i = getelementptr i8, ptr %68, i32 3348
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %71 = zext i32 %69 to i64
  %72 = zext i32 %70 to i64
  %73 = shl nuw i64 %72, 32
  %74 = or i64 %73, %71
  %75 = tail call i64 @llvm.bswap.i64(i64 %74) #12
  %tx_bytes.i43 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %76 = ptrtoint ptr %tx_bytes.i43 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %tx_bytes.i43, align 8
  %77 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vnic.i, align 4
  %add.ptr5.i44 = getelementptr i8, ptr %78, i32 3328
  %add.ptr.i27.i = getelementptr i8, ptr %78, i32 3332
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i44) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %81 = zext i32 %79 to i64
  %82 = zext i32 %80 to i64
  %83 = shl nuw i64 %82, 32
  %84 = or i64 %83, %81
  %85 = tail call i64 @llvm.bswap.i64(i64 %84) #12
  %tx_dropped.i45 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %86 = ptrtoint ptr %tx_dropped.i45 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %tx_dropped.i45, align 8
  %87 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %vnic.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %88, i32 3448
  %add.ptr.i28.i = getelementptr i8, ptr %88, i32 3452
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %91 = zext i32 %89 to i64
  %92 = zext i32 %90 to i64
  %93 = shl nuw i64 %92, 32
  %94 = or i64 %93, %91
  %95 = tail call i64 @llvm.bswap.i64(i64 %94) #12
  %96 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %95, ptr %stats, align 8
  %97 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vnic.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %98, i32 3416
  %add.ptr.i29.i = getelementptr i8, ptr %98, i32 3420
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %101 = zext i32 %99 to i64
  %102 = zext i32 %100 to i64
  %103 = shl nuw i64 %102, 32
  %104 = or i64 %103, %101
  %105 = tail call i64 @llvm.bswap.i64(i64 %104) #12
  %rx_bytes.i46 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %106 = ptrtoint ptr %rx_bytes.i46 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %105, ptr %rx_bytes.i46, align 8
  %107 = ptrtoint ptr %vnic.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %vnic.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %108, i32 3400
  %add.ptr.i30.i = getelementptr i8, ptr %108, i32 3404
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !54
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #12, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !55
  %111 = zext i32 %109 to i64
  %112 = zext i32 %110 to i64
  %113 = shl nuw i64 %112, 32
  %114 = or i64 %113, %111
  %115 = tail call i64 @llvm.bswap.i64(i64 %114) #12
  %rx_dropped.i47 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %116 = ptrtoint ptr %rx_dropped.i47 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %rx_dropped.i47, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %if.end29, %sw.bb.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nfp_repr_has_offload_stats(ptr nocapture noundef readnone %dev, i32 noundef %attr_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cond = icmp eq i32 %attr_id, 1
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_repr_get_offload_stats(i32 noundef %attr_id, ptr nocapture noundef readonly %dev, ptr nocapture noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr_id)
  %cond = icmp eq i32 %attr_id, 1
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %call16.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %0)
  %cmp7.i = icmp ult i32 %call16.i, %0
  br i1 %cmp7.i, label %for.body.lr.ph.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %stats2.i = getelementptr i8, ptr %dev, i32 2320
  %tx_bytes10.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %tx_packets12.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_dropped.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %rx_bytes15.i = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %do.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call18.i = phi i32 [ %call16.i, %for.body.lr.ph.i ], [ %call1.i, %do.end9.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats2.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, %3
  %6 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 5
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 5, i32 0, i32 1
  %tx_bytes.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 3
  %tx_packets.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 2
  %tx_drops.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 4
  %rx_bytes.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 1
  br label %do.body4.i

do.body4.i:                                       ; preds = %u64_stats_fetch_begin_irq.exit.i.do.body4.i_crit_edge, %for.body.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !49
  %and.i.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %8 = tail call ptr @llvm.returnaddress(i32 0) #12
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %9) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call ptr @llvm.returnaddress(i32 0) #12
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %11) #12
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !50
  %and.i.i.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !51

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !52
  %13 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp.i, align 4
  %and18.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_fetch_begin_irq.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !56
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !57
  %15 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp.i, align 4
  %and.i.i.i = and i32 %16, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_fetch_begin_irq.exit.i

u64_stats_fetch_begin_irq.exit.i:                 ; preds = %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge ], [ %16, %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !58
  %17 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %tx_bytes.i, align 8
  %19 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tx_packets.i, align 8
  %21 = ptrtoint ptr %tx_drops.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_drops.i, align 8
  %23 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rx_bytes.i, align 8
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %6, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  %27 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %28, %.lcssa.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end9.i, label %u64_stats_fetch_begin_irq.exit.i.do.body4.i_crit_edge

u64_stats_fetch_begin_irq.exit.i.do.body4.i_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.end9.i:                                        ; preds = %u64_stats_fetch_begin_irq.exit.i
  %29 = ptrtoint ptr %tx_bytes10.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_bytes10.i, align 8
  %add11.i = add i64 %30, %18
  store i64 %add11.i, ptr %tx_bytes10.i, align 8
  %31 = ptrtoint ptr %tx_packets12.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_packets12.i, align 8
  %add13.i = add i64 %32, %20
  store i64 %add13.i, ptr %tx_packets12.i, align 8
  %33 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_dropped.i, align 8
  %add14.i = add i64 %34, %22
  store i64 %add14.i, ptr %tx_dropped.i, align 8
  %35 = ptrtoint ptr %rx_bytes15.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %rx_bytes15.i, align 8
  %add16.i = add i64 %36, %24
  store i64 %add16.i, ptr %rx_bytes15.i, align 8
  %37 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %stats, align 8
  %add18.i = add i64 %38, %26
  store i64 %add18.i, ptr %stats, align 8
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call18.i, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %39
  br i1 %cmp.i, label %do.end9.i.for.body.i_crit_edge, label %do.end9.i.return_crit_edge

do.end9.i.return_crit_edge:                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end9.i.for.body.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

return:                                           ; preds = %do.end9.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %do.end9.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_set_vf_mac(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_set_vf_vlan(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_set_vf_spoofchk(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_set_vf_trust(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_get_vf_config(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_app_set_vf_link_state(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_setup_tc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nfp_repr_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 8
  %features2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %features2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features2, align 16
  %and = and i64 %5, 18
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %or = or i64 %5, 8
  %spec.select = select i1 %tobool.not, i64 %5, i64 %or
  %xor.i = xor i64 %spec.select, %features
  %and.i = and i64 %xor.i, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.netdev_intersect_features.exit_crit_edge, label %if.then.i

entry.netdev_intersect_features.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %netdev_intersect_features.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i64 %features, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i64 %features, 18
  br label %netdev_intersect_features.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %or4.i = or i64 %spec.select, 18
  br label %netdev_intersect_features.exit

netdev_intersect_features.exit:                   ; preds = %if.else.i, %if.then3.i, %entry.netdev_intersect_features.exit_crit_edge
  %f1.addr.0.i = phi i64 [ %or.i, %if.then3.i ], [ %features, %if.else.i ], [ %features, %entry.netdev_intersect_features.exit_crit_edge ]
  %f2.addr.0.i = phi i64 [ %spec.select, %if.then3.i ], [ %or4.i, %if.else.i ], [ %spec.select, %entry.netdev_intersect_features.exit_crit_edge ]
  %and6.i = and i64 %f2.addr.0.i, %f1.addr.0.i
  %and4 = and i64 %features, 562949953439744
  %or5 = or i64 %and4, %and6.i
  %or6 = or i64 %or5, 4096
  ret i64 %or6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_set_features(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_get_port_parent_id(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_get_phys_port_name(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_devlink_get_devlink_port(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_repr_transfer_features(ptr noundef %netdev, ptr noundef readonly %lower) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dst = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u, align 8
  %cmp.not = icmp eq ptr %3, %lower
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %gso_max_size = getelementptr inbounds %struct.net_device, ptr %lower, i32 0, i32 137
  %4 = ptrtoint ptr %gso_max_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gso_max_size, align 8
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 137
  %6 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %5, ptr %gso_max_size.i, align 8
  %gso_max_segs = getelementptr inbounds %struct.net_device, ptr %lower, i32 0, i32 138
  %7 = ptrtoint ptr %gso_max_segs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gso_max_segs, align 4
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 138
  %9 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store volatile i16 %8, ptr %gso_max_segs.i, align 4
  tail call void @netdev_update_features(ptr noundef %netdev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_repr_init(ptr noundef %app, ptr noundef %netdev, i32 noundef %cmsg_port_id, ptr noundef %port, ptr noundef %pf_netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %repr_cap2 = getelementptr i8, ptr %pf_netdev, i32 60896
  %0 = ptrtoint ptr %repr_cap2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %repr_cap2, align 4
  %num_tx_queues.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %2 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_tx_queues.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i.i, label %entry.nfp_repr_set_lockdep_class.exit_crit_edge, label %for.body.lr.ph.i.i

entry.nfp_repr_set_lockdep_class.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_set_lockdep_class.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %dep_map.i.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i = getelementptr %struct.netdev_queue, ptr %5, i32 %i.02.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %6 = ptrtoint ptr %wait_type_inner.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_type_inner.i.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @nfp_repr_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %8 = ptrtoint ptr %num_tx_queues.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_tx_queues.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %9
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.nfp_repr_set_lockdep_class.exit_crit_edge

for.body.i.i.nfp_repr_set_lockdep_class.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_set_lockdep_class.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

nfp_repr_set_lockdep_class.exit:                  ; preds = %for.body.i.i.nfp_repr_set_lockdep_class.exit_crit_edge, %entry.nfp_repr_set_lockdep_class.exit_crit_edge
  %port3 = getelementptr i8, ptr %netdev, i32 2312
  %10 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %port, ptr %port3, align 4
  %call4 = tail call ptr @metadata_dst_alloc(i8 noundef zeroext 0, i32 noundef 1, i32 noundef 3264) #12
  %dst = getelementptr i8, ptr %netdev, i32 2308
  %11 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %dst, align 4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %nfp_repr_set_lockdep_class.exit.cleanup_crit_edge, label %if.end

nfp_repr_set_lockdep_class.exit.cleanup_crit_edge: ; preds = %nfp_repr_set_lockdep_class.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nfp_repr_set_lockdep_class.exit
  %u = getelementptr inbounds %struct.metadata_dst, ptr %call4, i32 0, i32 2
  %port_id = getelementptr inbounds %struct.hw_port_info, ptr %u, i32 0, i32 1
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cmsg_port_id, ptr %port_id, align 4
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %u8 = getelementptr inbounds %struct.metadata_dst, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %u8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pf_netdev, ptr %u8, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %16 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nfp_repr_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %17 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nfp_port_ethtool_ops, ptr %ethtool_ops, align 16
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %pf_netdev, i32 0, i32 31
  %18 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_mtu, align 4
  %max_mtu9 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %max_mtu9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %tobool10.not = icmp sgt i32 %1, -1
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %21 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %priv_flags, align 16
  %or = or i64 %22, 32768
  store i64 %or, ptr %priv_flags, align 16
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %hw_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 24
  %and13 = and i32 %1, 1073741840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i64 32, i64 1099511627808
  %and19 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %or23 = or i64 %spec.select, 18
  %spec.select189 = select i1 %tobool20.not, i64 %spec.select, i64 %or23
  %23 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %spec.select189, ptr %hw_features, align 8
  %and25 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end12.if.end30_crit_edge, label %if.then27

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %hw_features, align 8
  %or29 = or i64 %25, 1
  store i64 %or29, ptr %hw_features, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end12.if.end30_crit_edge
  %and31 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end30
  %major = getelementptr i8, ptr %pf_netdev, i32 2373
  %26 = ptrtoint ptr %major to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %major, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp = icmp ult i8 %27, 3
  %and34 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %or.cond = select i1 %cmp, i1 %tobool35.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true.if.then36_crit_edge

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

lor.lhs.false:                                    ; preds = %if.end30
  %and34.old = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.old)
  %tobool35.not.old = icmp eq i32 %and34.old, 0
  br i1 %tobool35.not.old, label %lor.lhs.false.if.end39_crit_edge, label %lor.lhs.false.if.then36_crit_edge

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then36

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %28 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hw_features, align 8
  %or38 = or i64 %29, 1114112
  store i64 %or38, ptr %hw_features, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %lor.lhs.false.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge
  %and40 = and i32 %1, 537001984
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hw_features, align 8
  %or44 = or i64 %31, 549755813888
  store i64 %or44, ptr %hw_features, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %32 = and i32 %1, 16778240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16778240, i32 %32)
  %.not = icmp eq i32 %32, 16778240
  br i1 %.not, label %if.then51, label %if.end45.if.end55_crit_edge

if.end45.if.end55_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then51:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %hw_features, align 8
  %or53 = or i64 %34, 67108864
  store i64 %or53, ptr %hw_features, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end45.if.end55_crit_edge
  %35 = and i32 %1, 33555456
  call void @__sanitizer_cov_trace_const_cmp4(i32 33555456, i32 %35)
  %.not188 = icmp eq i32 %35, 33555456
  br i1 %.not188, label %if.then61, label %if.end55.if.end65_crit_edge

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %hw_features, align 8
  %or63 = or i64 %37, 4194304
  store i64 %or63, ptr %hw_features, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end55.if.end65_crit_edge
  %and66 = and i32 %1, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 27
  %40 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %hw_enc_features, align 16
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  %41 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 26
  %43 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %vlan_features, align 8
  %and72 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.end70.if.end77_crit_edge, label %if.then74

if.end70.if.end77_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %or76 = or i64 %42, 256
  %44 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %or76, ptr %hw_features, align 8
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end70.if.end77_crit_edge
  %and78 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end87_crit_edge, label %if.then80

if.end77.if.end87_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then80:                                        ; preds = %if.end77
  %and81 = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.else, label %if.then83

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.2) #16
  br label %if.end87

if.else:                                          ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  %45 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %hw_features, align 8
  %or85 = or i64 %46, 128
  store i64 %or85, ptr %hw_features, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then83, %if.end77.if.end87_crit_edge
  %and88 = and i32 %1, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.end87.if.end93_crit_edge, label %if.then90

if.end87.if.end93_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %hw_features, align 8
  %or92 = or i64 %48, 512
  store i64 %or92, ptr %hw_features, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then90, %if.end87.if.end93_crit_edge
  %49 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %and96 = and i64 %50, -1114113
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 138
  %51 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store volatile i16 64, ptr %gso_max_segs.i, align 4
  %priv_flags97 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %52 = ptrtoint ptr %priv_flags97 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %priv_flags97, align 16
  %or98 = or i64 %53, 524416
  store i64 %or98, ptr %priv_flags97, align 16
  %or100 = or i64 %and96, 4096
  %54 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %or100, ptr %features, align 16
  %tobool.not.i = icmp eq ptr %app, null
  br i1 %tobool.not.i, label %if.end93.if.end107_crit_edge, label %nfp_app_has_tc.exit

if.end93.if.end107_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

nfp_app_has_tc.exit:                              ; preds = %if.end93
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %55 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %type.i, align 4
  %setup_tc.i = getelementptr inbounds %struct.nfp_app_type, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %setup_tc.i, align 4
  %tobool1.i.not = icmp eq ptr %58, null
  br i1 %tobool1.i.not, label %nfp_app_has_tc.exit.if.end107_crit_edge, label %if.then102

nfp_app_has_tc.exit.if.end107_crit_edge:          ; preds = %nfp_app_has_tc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then102:                                       ; preds = %nfp_app_has_tc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or104 = or i64 %and96, 562949953425408
  %59 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %or104, ptr %features, align 16
  %or106 = or i64 %50, 562949953421312
  %60 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %or106, ptr %hw_features, align 8
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %nfp_app_has_tc.exit.if.end107_crit_edge, %if.end93.if.end107_crit_edge
  %type.i181 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %61 = ptrtoint ptr %type.i181 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %type.i181, align 4
  %repr_init.i = getelementptr inbounds %struct.nfp_app_type, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %repr_init.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %repr_init.i, align 4
  %tobool.not.i182 = icmp eq ptr %64, null
  br i1 %tobool.not.i182, label %if.end107.if.end111_crit_edge, label %nfp_app_repr_init.exit

if.end107.if.end111_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

nfp_app_repr_init.exit:                           ; preds = %if.end107
  %call.i = tail call i32 %64(ptr noundef %app, ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool109.not = icmp eq i32 %call.i, 0
  br i1 %tobool109.not, label %nfp_app_repr_init.exit.if.end111_crit_edge, label %nfp_app_repr_init.exit.err_clean_crit_edge

nfp_app_repr_init.exit.err_clean_crit_edge:       ; preds = %nfp_app_repr_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clean

nfp_app_repr_init.exit.if.end111_crit_edge:       ; preds = %nfp_app_repr_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.end111:                                        ; preds = %nfp_app_repr_init.exit.if.end111_crit_edge, %if.end107.if.end111_crit_edge
  %call112 = tail call i32 @register_netdev(ptr noundef %netdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.cleanup_crit_edge, label %err_repr_clean

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_repr_clean:                                   ; preds = %if.end111
  %65 = ptrtoint ptr %type.i181 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %type.i181, align 4
  %repr_clean.i = getelementptr inbounds %struct.nfp_app_type, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %repr_clean.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %repr_clean.i, align 4
  %tobool.not.i184 = icmp eq ptr %68, null
  br i1 %tobool.not.i184, label %err_repr_clean.err_clean_crit_edge, label %if.then.i

err_repr_clean.err_clean_crit_edge:               ; preds = %err_repr_clean
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_clean

if.then.i:                                        ; preds = %err_repr_clean
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %68(ptr noundef %app, ptr noundef %netdev) #12
  br label %err_clean

err_clean:                                        ; preds = %if.then.i, %err_repr_clean.err_clean_crit_edge, %nfp_app_repr_init.exit.err_clean_crit_edge
  %err.0 = phi i32 [ %call.i, %nfp_app_repr_init.exit.err_clean_crit_edge ], [ %call112, %err_repr_clean.err_clean_crit_edge ], [ %call112, %if.then.i ]
  %69 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dst, align 4
  tail call void @dst_release(ptr noundef %70) #12
  br label %cleanup

cleanup:                                          ; preds = %err_clean, %if.end111.cleanup_crit_edge, %nfp_repr_set_lockdep_class.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_clean ], [ -12, %nfp_repr_set_lockdep_class.exit.cleanup_crit_edge ], [ 0, %if.end111.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_repr_free(ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %stats.i = getelementptr i8, ptr %netdev, i32 2320
  %0 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats.i, align 4
  tail call void @free_percpu(ptr noundef %1) #12
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void @free_netdev(ptr noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_repr_alloc_mqs(ptr noundef %app, i32 noundef %txqs, i32 noundef %rxqs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 24, i32 noundef %txqs, i32 noundef %rxqs) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_carrier_off(ptr noundef nonnull %call) #12
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %add.ptr.i, align 4
  %app3 = getelementptr i8, ptr %call, i32 2316
  %1 = ptrtoint ptr %app3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %app, ptr %app3, align 4
  %call4 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 72, i32 noundef 8, i32 noundef 3264) #17
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %err_free_netdev, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call731 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call731, i32 %2)
  %cmp32 = icmp ult i32 %call731, %2
  br i1 %cmp32, label %for.body.lr.ph, label %cleanup.critedge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = ptrtoint ptr %call4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call733 = phi i32 [ %call731, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call733
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 5
  %dep_map.i = getelementptr inbounds %struct.nfp_repr_pcpu_stats, ptr %6, i32 0, i32 5, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @nfp_repr_alloc_mqs.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %7 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %syncp, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef %call733, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %if.end12

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %stats = getelementptr i8, ptr %call, i32 2320
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %stats, align 4
  br label %cleanup

err_free_netdev:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %stats.c = getelementptr i8, ptr %call, i32 2320
  %10 = ptrtoint ptr %stats.c to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stats.c, align 4
  tail call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup.critedge:                                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %stats.c34 = getelementptr i8, ptr %call, i32 2320
  %11 = ptrtoint ptr %stats.c34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4, ptr %stats.c34, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.critedge, %err_free_netdev, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_free_netdev ], [ null, %entry.cleanup_crit_edge ], [ %call, %if.end12 ], [ %call, %cleanup.critedge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_repr_clean_and_free(ptr nocapture noundef readonly %repr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %app = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 3
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %3) #12
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %6 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %repr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %7) #16
  %8 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %repr, align 4
  tail call void @unregister_netdev(ptr noundef %9) #12
  %10 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %app, align 4
  %type.i.i = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type.i.i, align 4
  %repr_clean.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %repr_clean.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %repr_clean.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %entry.nfp_repr_clean.exit_crit_edge, label %if.then.i.i

entry.nfp_repr_clean.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_clean.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %repr, align 4
  tail call void %15(ptr noundef %11, ptr noundef %17) #12
  br label %nfp_repr_clean.exit

nfp_repr_clean.exit:                              ; preds = %if.then.i.i, %entry.nfp_repr_clean.exit_crit_edge
  %dst.i = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 1
  %18 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i, align 4
  tail call void @dst_release(ptr noundef %19) #12
  %port.i = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 2
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i, align 4
  tail call void @nfp_port_free(ptr noundef %21) #12
  %stats.i = getelementptr inbounds %struct.nfp_repr, ptr %repr, i32 0, i32 4
  %22 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats.i, align 4
  tail call void @free_percpu(ptr noundef %23) #12
  %24 = ptrtoint ptr %repr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %repr, align 4
  tail call void @free_netdev(ptr noundef %25) #12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_reprs_clean_and_free(ptr nocapture noundef readonly %app, ptr noundef %reprs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reprs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reprs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf.i, align 4
  %dep_map.i = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 37, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.nfp_repr_get_locked.exit_crit_edge

for.body.nfp_repr_get_locked.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @nfp_repr_get_locked.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_repr_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @.str.1) #12
  br label %nfp_repr_get_locked.exit

nfp_repr_get_locked.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, %for.body.nfp_repr_get_locked.exit_crit_edge
  %arrayidx.i = getelementptr %struct.nfp_reprs, ptr %reprs, i32 0, i32 1, i32 %i.08
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %nfp_repr_get_locked.exit.for.inc_crit_edge, label %if.then

nfp_repr_get_locked.exit.for.inc_crit_edge:       ; preds = %nfp_repr_get_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %nfp_repr_get_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  tail call void @nfp_repr_clean_and_free(ptr noundef %add.ptr.i)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %nfp_repr_get_locked.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %6 = ptrtoint ptr %reprs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reprs, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %reprs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_reprs_clean_and_free_by_type(ptr noundef %app, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @nfp_reprs_clean_and_free_by_type.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_reprs_clean_and_free_by_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 479, ptr noundef nonnull @.str.1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp31.not = icmp eq i32 %5, 0
  br i1 %cmp31.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pf, align 4
  %dep_map.i = getelementptr inbounds %struct.nfp_pf, ptr %7, i32 0, i32 37, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.nfp_repr_get_locked.exit_crit_edge

for.body.nfp_repr_get_locked.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @nfp_repr_get_locked.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_repr_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @.str.1) #12
  br label %nfp_repr_get_locked.exit

nfp_repr_get_locked.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, %for.body.nfp_repr_get_locked.exit_crit_edge
  %arrayidx.i = getelementptr %struct.nfp_reprs, ptr %3, i32 0, i32 1, i32 %i.032
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %nfp_repr_get_locked.exit.for.inc_crit_edge, label %if.then11

nfp_repr_get_locked.exit.for.inc_crit_edge:       ; preds = %nfp_repr_get_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then11:                                        ; preds = %nfp_repr_get_locked.exit
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i, align 4
  %repr_preclean.i = getelementptr inbounds %struct.nfp_app_type, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %repr_preclean.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %repr_preclean.i, align 4
  %tobool.not.i29 = icmp eq ptr %13, null
  br i1 %tobool.not.i29, label %if.then11.for.inc_crit_edge, label %if.then.i30

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.i30:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %app, ptr noundef nonnull %9) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then.i30, %if.then11.for.inc_crit_edge, %nfp_repr_get_locked.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.032, 1
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call13 = tail call ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef %type, ptr noundef null) #12
  tail call void @synchronize_rcu() #12
  tail call void @nfp_reprs_clean_and_free(ptr noundef %app, ptr noundef %call13)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_app_reprs_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_reprs_alloc(i32 noundef %num_reprs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_reprs, i32 4) #12
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 4) #12
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #17
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %num_reprs, ptr %call9.i.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call9.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_reprs_resync_phys_ports(ptr noundef %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_reprs_get_locked(ptr noundef %app, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp65.not = icmp eq i32 %1, 0
  br i1 %cmp65.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf.i, align 4
  %dep_map.i = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 37, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.nfp_repr_get_locked.exit_crit_edge

for.body.nfp_repr_get_locked.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b5.i = load i1, ptr @nfp_repr_get_locked.__warned, align 1
  br i1 %.b5.i, label %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_get_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nfp_repr_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 23, ptr noundef nonnull @.str.1) #12
  br label %nfp_repr_get_locked.exit

nfp_repr_get_locked.exit:                         ; preds = %if.then.i, %land.lhs.true3.i.nfp_repr_get_locked.exit_crit_edge, %land.lhs.true.i.nfp_repr_get_locked.exit_crit_edge, %for.body.nfp_repr_get_locked.exit_crit_edge
  %arrayidx.i = getelementptr %struct.nfp_reprs, ptr %call, i32 0, i32 1, i32 %i.066
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %nfp_repr_get_locked.exit.for.inc_crit_edge, label %if.end4

nfp_repr_get_locked.exit.for.inc_crit_edge:       ; preds = %nfp_repr_get_locked.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end4:                                          ; preds = %nfp_repr_get_locked.exit
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %port = getelementptr i8, ptr %5, i32 2312
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %type = getelementptr inbounds %struct.nfp_port, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.not = icmp eq i32 %9, 0
  br i1 %cmp6.not, label %if.end8, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %if.end4
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i, align 4
  %repr_preclean.i = getelementptr inbounds %struct.nfp_app_type, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %repr_preclean.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %repr_preclean.i, align 4
  %tobool.not.i63 = icmp eq ptr %13, null
  br i1 %tobool.not.i63, label %if.end8.nfp_app_repr_preclean.exit_crit_edge, label %if.then.i64

if.end8.nfp_app_repr_preclean.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_app_repr_preclean.exit

if.then.i64:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %13(ptr noundef %app, ptr noundef nonnull %5) #12
  br label %nfp_app_repr_preclean.exit

nfp_app_repr_preclean.exit:                       ; preds = %if.then.i64, %if.end8.nfp_app_repr_preclean.exit_crit_edge
  tail call void @rtnl_lock() #12
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr null, ptr %arrayidx.i, align 4
  tail call void @rtnl_unlock() #12
  tail call void @synchronize_rcu() #12
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 4
  tail call void @unregister_netdev(ptr noundef %16) #12
  %app.i = getelementptr i8, ptr %5, i32 2316
  %17 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %app.i, align 4
  %type.i.i = getelementptr inbounds %struct.nfp_app, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %type.i.i, align 4
  %repr_clean.i.i = getelementptr inbounds %struct.nfp_app_type, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %repr_clean.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %repr_clean.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %nfp_app_repr_preclean.exit.nfp_repr_clean.exit_crit_edge, label %if.then.i.i

nfp_app_repr_preclean.exit.nfp_repr_clean.exit_crit_edge: ; preds = %nfp_app_repr_preclean.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nfp_repr_clean.exit

if.then.i.i:                                      ; preds = %nfp_app_repr_preclean.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  tail call void %22(ptr noundef %18, ptr noundef %24) #12
  br label %nfp_repr_clean.exit

nfp_repr_clean.exit:                              ; preds = %if.then.i.i, %nfp_app_repr_preclean.exit.nfp_repr_clean.exit_crit_edge
  %dst.i = getelementptr i8, ptr %5, i32 2308
  %25 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst.i, align 4
  tail call void @dst_release(ptr noundef %26) #12
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port, align 4
  tail call void @nfp_port_free(ptr noundef %28) #12
  br label %for.inc

for.inc:                                          ; preds = %nfp_repr_clean.exit, %if.end4.for.inc_crit_edge, %nfp_repr_get_locked.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.066, 1
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_reprs_get_locked(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_port_configure(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nfp_port_get_eth_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_port_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !20, !22, !23, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 22, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfp_repr_netdev_ops, !5, !"nfp_repr_netdev_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 256, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 373, i32 24}
!8 = !{ptr @nfp_repr_alloc_mqs.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 438, i32 16}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 451, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nfp_repr_clean_and_free._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_repr_clean_and_free._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 478, i32 10}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!22 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/dst.h", i32 231, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 309, i32 2}
!27 = !{ptr @nfp_repr_netdev_xmit_lock_key, !28, !"nfp_repr_netdev_xmit_lock_key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_net_repr.c", i32 303, i32 30}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2150293326}
!40 = !{i64 2150184928}
!41 = !{i64 2150189862}
!42 = !{i64 2150211580}
!43 = !{i64 2150216474}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2150293001}
!46 = !{i64 2148379089}
!47 = !{i64 863912, i64 863937, i64 863959, i64 863975, i64 863987, i64 864007, i64 864031, i64 864047, i64 864059}
!48 = !{i64 2148379277}
!49 = !{i64 772151, i64 772212}
!50 = !{i64 774883}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 775168}
!53 = !{i64 6055312}
!54 = !{i64 2155965040}
!55 = !{i64 2155965462}
!56 = !{i64 2154916500}
!57 = !{i64 2154916342}
!58 = !{i64 2154916670}
!59 = !{i64 2150292676}
