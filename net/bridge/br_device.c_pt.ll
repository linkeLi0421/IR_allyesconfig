; ModuleID = '/llk/IR_all_yes/net/bridge/br_device.c_pt.bc'
source_filename = "../net/bridge/br_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_br_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_br_ops\09\09\09\09"
module asm "\09.long\09__crc_nf_br_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_br_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_br_ops\22\09\09\09\09\09"
module asm "__kstrtabns_nf_br_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.157 }
%union.anon.157 = type { [1 x i32] }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.sk_buff = type { %union.anon, %union.anon.130, %union.anon.131, [48 x i8], %union.anon.132, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.134, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.130 = type { ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, ptr }
%union.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.136, i32, i32, i32, i16, i16, %union.anon.138, i32, %union.anon.139, %union.anon.140, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.136 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i32 }
%union.anon.140 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.129, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.129 = type { ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.153, %union.anon.154, i16, i16 }
%union.anon.153 = type { %struct.in6_addr }
%union.anon.154 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.152, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.152 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_bridge_mdb_entry = type { %struct.rhash_head, ptr, ptr, %struct.br_ip, i8, %struct.timer_list, %struct.hlist_node, %struct.net_bridge_mcast_gc, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.net_bridge_mcast_gc = type { %struct.hlist_node, ptr }
%struct.net_bridge_fdb_entry = type { %struct.rhash_head, ptr, %struct.net_bridge_fdb_key, %struct.hlist_node, i32, [100 x i8], i32, i32, %struct.callback_head, [112 x i8] }
%struct.net_bridge_fdb_key = type { %struct.mac_addr, i16 }
%struct.mac_addr = type { [6 x i8] }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.net_device_path_ctx = type { ptr, ptr, i32, [2 x %struct.anon.121] }
%struct.anon.121 = type { i16, i16 }
%struct.net_device_path = type { i32, ptr, %union.anon.122 }
%union.anon.122 = type { %struct.anon.124, [4 x i8] }
%struct.anon.124 = type { i32, i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.128, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.128 = type { [3 x i32], [3 x i32], [3 x i32] }

@nf_br_ops = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nf_br_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_br_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_br_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_br_ops to i32), ptr @__kstrtab_nf_br_ops, ptr @__kstrtabns_nf_br_ops }, section "___ksymtab_gpl+nf_br_ops", align 4
@br_dev_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/bridge/br_device.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @br_dev_init, ptr @br_dev_uninit, ptr @br_dev_open, ptr @br_dev_stop, ptr @br_dev_xmit, ptr @passthru_features_check, ptr null, ptr @br_dev_change_rx_flags, ptr @br_dev_set_multicast_list, ptr @br_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @br_dev_siocdevprivate, ptr null, ptr @br_change_mtu, ptr null, ptr null, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @br_poll_controller, ptr @br_netpoll_setup, ptr @br_netpoll_cleanup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @br_add_slave, ptr @br_del_slave, ptr null, ptr null, ptr @br_fix_features, ptr null, ptr null, ptr null, ptr @br_fdb_add, ptr @br_fdb_delete, ptr @br_fdb_dump, ptr @br_fdb_get, ptr @br_setlink, ptr @br_getlink, ptr @br_dellink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @br_fill_forward_path }, [80 x i8] zeroinitializer }, align 32
@br_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @br_getinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @br_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@br_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@br_dev_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&br->lock\00", [22 x i8] zeroinitializer }, align 32
@br_dev_setup.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&br->hash_lock\00", [17 x i8] zeroinitializer }, align 32
@br_dev_setup.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&br->gc_work)->work)\00", [55 x i8] zeroinitializer }, align 32
@br_dev_setup.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&br->gc_work)->timer\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@br_vlan_group_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@br_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&bridge_netdev_addr_lock_key\00", [35 x i8] zeroinitializer }, align 32
@bridge_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2054, i64 32821]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 44, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"br_netdev_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 446, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"br_ethtool_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 440, i32 33 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"br_type\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 477, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 501, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 511, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 532, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 695, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 271, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1483, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 122, i32 16 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 114, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"bridge_netdev_addr_lock_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 110, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 254, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 255, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [26 x i8] c"../net/bridge/br_device.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 256, i32 28 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_nf_br_ops, ptr @.str, ptr @.str.1, ptr @br_netdev_ops, ptr @br_ethtool_ops, ptr @br_type, ptr @br_dev_setup.__key, ptr @.str.2, ptr @br_dev_setup.__key.3, ptr @.str.4, ptr @br_dev_setup.__key.5, ptr @.str.6, ptr @br_dev_setup.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @br_dev_init.__key, ptr @.str.14, ptr @.str.15, ptr @bridge_netdev_addr_lock_key, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_dev_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_dev_setup.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_dev_setup.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_dev_setup.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_dev_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  %pmctx_null = alloca ptr, align 4
  %brmctx = alloca ptr, align 4
  %state = alloca i8, align 1
  %vlan = alloca ptr, align 4
  %vid = alloca i16, align 2
  %_msg = alloca %struct.nd_msg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmctx_null) #12
  %0 = ptrtoint ptr %pmctx_null to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pmctx_null, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brmctx) #12
  %multicast_ctx = getelementptr i8, ptr %dev, i32 2880
  %1 = ptrtoint ptr %brmctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %multicast_ctx, ptr %brmctx, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlan) #12
  %3 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %vlan, align 4, !annotation !63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid) #12
  %4 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vid, align 2
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %5 = call ptr @memset(ptr %cb, i32 0, i32 16)
  %6 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 696, ptr noundef nonnull @.str.10) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %10 = load volatile ptr, ptr @nf_br_ops, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b154 = load i1, ptr @br_dev_xmit.__warned, align 1
  br i1 %.b154, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_dev_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @.str.1) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %do.end8.if.end15_crit_edge, label %land.lhs.true11

do.end8.if.end15_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true11:                                  ; preds = %do.end8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call12 = tail call i32 %12(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.if.end15_crit_edge, label %if.then14

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true11
  %call.i155 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i155, label %if.then14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i158

if.then14.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i158:                               ; preds = %if.then14
  %call1.i156 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i156)
  %tobool.not.i157 = icmp eq i32 %call1.i156, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i160

land.lhs.true.i158.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i160:                              ; preds = %land.lhs.true.i158
  %.b4.i159 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i159, label %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, label %if.then.i161

land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i161:                                     ; preds = %land.lhs.true2.i160
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i161, %land.lhs.true2.i160.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i158.rcu_read_unlock.exit_crit_edge, %if.then14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %13 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i.i.i162 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i162 to ptr
  %preempt_count.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i163, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i163, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %do.end8.if.end15_crit_edge
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 64
  %22 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i, label %if.end15.dev_sw_netstats_tx_add.exit_crit_edge, label %land.lhs.true.i.i.i

if.end15.dev_sw_netstats_tx_add.exit_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_sw_netstats_tx_add.exit

land.lhs.true.i.i.i:                              ; preds = %if.end15
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !66
  %31 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i164 = add i32 %36, ptrtoint (ptr @lockdep_recursion to i32)
  %37 = inttoptr i32 %add.i.i.i164 to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !67
  %40 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i7.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool20.not.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge

land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_sw_netstats_tx_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %44 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i.i.i165 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i165 to ptr
  %preempt_count.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge

land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_sw_netstats_tx_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %48 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i9.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %51, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !68
  %52 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %55, ptrtoint (ptr @hardirqs_enabled to i32)
  %56 = inttoptr i32 %add47.i.i.i to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !69
  %59 = tail call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i12.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %62, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool54.not.i.i.i = icmp eq i32 %58, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_sw_netstats_tx_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, label %if.then.i.i.i, !prof !70

land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge: ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_sw_netstats_tx_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %dev_sw_netstats_tx_add.exit

dev_sw_netstats_tx_add.exit:                      ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.rhs22.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.rhs.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_sw_netstats_tx_add.exit_crit_edge, %if.end15.dev_sw_netstats_tx_add.exit_crit_edge
  %63 = ptrtoint ptr %21 to i32
  %add.i = add i32 %27, %63
  %64 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !71
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %64, i32 0, i32 4, i32 0, i32 1
  %67 = tail call ptr @llvm.returnaddress(i32 0) #12
  %68 = ptrtoint ptr %67 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %68) #12
  %conv.i = zext i32 %18 to i64
  %tx_bytes.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %64, i32 0, i32 3
  %69 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tx_bytes.i, align 8
  %add2.i = add i64 %70, %conv.i
  store i64 %add2.i, ptr %tx_bytes.i, align 8
  %tx_packets.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %64, i32 0, i32 2
  %71 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tx_packets.i, align 16
  %add4.i = add i64 %72, 1
  store i64 %add4.i, ptr %tx_packets.i, align 16
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %68) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !72
  %73 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %74, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.clear.i = and i32 %bf.load.i, -1048577
  store i32 %bf.clear.i, ptr %offload_fwd_mark.i, align 2
  %76 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev, ptr %cb, align 8
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %77 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %frag_max_size, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %80 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %79 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i167 = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %82 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i167, ptr %mac_header.i, align 2
  %call20 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #12
  %vlgrp.i = getelementptr i8, ptr %dev, i32 2408
  %83 = ptrtoint ptr %vlgrp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %vlgrp.i, align 4
  %call.i168 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %land.lhs.true.i170, label %dev_sw_netstats_tx_add.exit.br_vlan_group_rcu.exit_crit_edge

dev_sw_netstats_tx_add.exit.br_vlan_group_rcu.exit_crit_edge: ; preds = %dev_sw_netstats_tx_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_vlan_group_rcu.exit

land.lhs.true.i170:                               ; preds = %dev_sw_netstats_tx_add.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i170.br_vlan_group_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i170.br_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_vlan_group_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i170
  %.b9.i = load i1, ptr @br_vlan_group_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge, label %if.then.i171

land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_vlan_group_rcu.exit

if.then.i171:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_vlan_group_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 1483, ptr noundef nonnull @.str.1) #12
  br label %br_vlan_group_rcu.exit

br_vlan_group_rcu.exit:                           ; preds = %if.then.i171, %land.lhs.true4.i.br_vlan_group_rcu.exit_crit_edge, %land.lhs.true.i170.br_vlan_group_rcu.exit_crit_edge, %dev_sw_netstats_tx_add.exit.br_vlan_group_rcu.exit_crit_edge
  %call22 = call zeroext i1 @br_allowed_ingress(ptr noundef %add.ptr.i, ptr noundef %84, ptr noundef %skb, ptr noundef nonnull %vid, ptr noundef nonnull %state, ptr noundef nonnull %vlan) #12
  br i1 %call22, label %if.end24, label %br_vlan_group_rcu.exit.out_crit_edge

br_vlan_group_rcu.exit.out_crit_edge:             ; preds = %br_vlan_group_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end24:                                         ; preds = %br_vlan_group_rcu.exit
  %85 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i, align 8
  %87 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %88 to i32
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 %conv.i.i
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %89, i32 2)
  %90 = load i16, ptr %h_proto, align 1
  %91 = zext i16 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i16 %90, label %if.end24.if.else_crit_edge [
    i16 2054, label %if.end24.land.lhs.true32_crit_edge
    i16 -32715, label %if.end24.land.lhs.true32_crit_edge211
  ]

if.end24.land.lhs.true32_crit_edge211:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

if.end24.land.lhs.true32_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true32

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true32:                                  ; preds = %if.end24.land.lhs.true32_crit_edge, %if.end24.land.lhs.true32_crit_edge211
  %options.i = getelementptr i8, ptr %dev, i32 2400
  %92 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %options.i, align 4
  %94 = and i32 %93, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool34.not = icmp eq i32 %94, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.else_crit_edge, label %if.then35

land.lhs.true32.if.else_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vid, align 2
  call void @br_do_proxy_suppress_arp(ptr noundef %skb, ptr noundef %add.ptr.i, i16 noundef zeroext %96, ptr noundef null) #12
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true32.if.else_crit_edge, %if.end24.if.else_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %97 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %98)
  %cmp37 = icmp eq i16 %98, -31011
  br i1 %cmp37, label %land.lhs.true39, label %if.else.if.end56_crit_edge

if.else.if.end56_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true39:                                  ; preds = %if.else
  %options.i176 = getelementptr i8, ptr %dev, i32 2400
  %99 = ptrtoint ptr %options.i176 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %options.i176, align 4
  %101 = and i32 %100, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool41.not = icmp eq i32 %101, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end56_crit_edge, label %land.lhs.true42

land.lhs.true39.if.end56_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %102 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %len, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %104 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %103, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 63
  br i1 %cmp.i, label %land.lhs.true42.land.lhs.true45_crit_edge, label %if.end.i, !prof !70

land.lhs.true42.land.lhs.true45_crit_edge:        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true45

if.end.i:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %103)
  %cmp3.i = icmp ult i32 %103, 64
  br i1 %cmp3.i, label %if.end.i.if.end56_crit_edge, label %pskb_may_pull.exit, !prof !73

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 64, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.end56_crit_edge, label %pskb_may_pull.exit.land.lhs.true45_crit_edge

pskb_may_pull.exit.land.lhs.true45_crit_edge:     ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true45

pskb_may_pull.exit.if.end56_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

land.lhs.true45:                                  ; preds = %pskb_may_pull.exit.land.lhs.true45_crit_edge, %land.lhs.true42.land.lhs.true45_crit_edge
  %106 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %108 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i180 = zext i16 %109 to i32
  %add.ptr.i.i181 = getelementptr i8, ptr %107, i32 %conv.i.i180
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i181, i32 0, i32 3
  %110 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %111)
  %cmp48 = icmp eq i8 %111, 58
  br i1 %cmp48, label %if.then50, label %land.lhs.true45.if.end56_crit_edge

land.lhs.true45.if.end56_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then50:                                        ; preds = %land.lhs.true45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_msg) #12
  %112 = call ptr @memset(ptr %_msg, i32 255, i32 24)
  %call51 = call ptr @br_is_nd_neigh_msg(ptr noundef %skb, ptr noundef nonnull %_msg) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %if.then50.if.end54_crit_edge, label %if.then53

if.then50.if.end54_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %vid, align 2
  call void @br_do_suppress_nd(ptr noundef %skb, ptr noundef %add.ptr.i, i16 noundef zeroext %114, ptr noundef null, ptr noundef nonnull %call51) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.then50.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_msg) #12
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %land.lhs.true45.if.end56_crit_edge, %pskb_may_pull.exit.if.end56_crit_edge, %if.end.i.if.end56_crit_edge, %land.lhs.true39.if.end56_crit_edge, %if.else.if.end56_crit_edge, %if.then35
  %115 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %head.i, align 8
  %117 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %mac_header.i, align 2
  %conv.i.i184 = zext i16 %118 to i32
  %add.ptr.i.i185 = getelementptr i8, ptr %116, i32 %conv.i.i184
  %119 = ptrtoint ptr %add.ptr.i.i185 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %add.ptr.i.i185, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i185, i32 2
  %121 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr1.i, align 2
  %and9.i = and i16 %122, %120
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i.i185, i32 4
  %123 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %add.ptr3.i, align 2
  %and510.i = and i16 %and9.i, %124
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %and510.i)
  %cmp.i186 = icmp eq i16 %and510.i, -1
  br i1 %cmp.i186, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  call void @br_flood(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

if.else61:                                        ; preds = %if.end56
  %125 = ptrtoint ptr %add.ptr.i.i185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %add.ptr.i.i185, align 4
  %127 = and i32 %126, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool.i.not = icmp eq i32 %127, 0
  br i1 %tobool.i.not, label %if.else87, label %if.then63

if.then63:                                        ; preds = %if.else61
  %128 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !74
  %and.i.i187 = and i32 %128, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i187)
  %tobool.i188.not = icmp eq i32 %and.i.i187, 0
  br i1 %tobool.i188.not, label %if.end68, label %if.then67, !prof !70

if.then67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #14
  call void @br_flood(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

if.end68:                                         ; preds = %if.then63
  %129 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %vlan, align 4
  %131 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %vid, align 2
  %call69 = call i32 @br_multicast_rcv(ptr noundef nonnull %brmctx, ptr noundef nonnull %pmctx_null, ptr noundef %130, ptr noundef %skb, i16 noundef zeroext %132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then71

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %out

if.end72:                                         ; preds = %if.end68
  %133 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %brmctx, align 4
  %135 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %vid, align 2
  %call73 = call ptr @br_mdb_get(ptr noundef %134, ptr noundef %skb, i16 noundef zeroext %136) #12
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.end72.land.lhs.true80_crit_edge

if.end72.land.lhs.true80_crit_edge:               ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80

lor.lhs.false75:                                  ; preds = %if.end72
  %mrouters_only = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %137 = ptrtoint ptr %mrouters_only to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load = load i8, ptr %mrouters_only, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool79.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool79.not, label %lor.lhs.false75.if.else85_crit_edge, label %lor.lhs.false75.land.lhs.true80_crit_edge

lor.lhs.false75.land.lhs.true80_crit_edge:        ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80

lor.lhs.false75.if.else85_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

land.lhs.true80:                                  ; preds = %lor.lhs.false75.land.lhs.true80_crit_edge, %if.end72.land.lhs.true80_crit_edge
  %138 = ptrtoint ptr %brmctx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %brmctx, align 4
  %140 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i, align 8
  %142 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %mac_header.i, align 2
  %conv.i.i191 = zext i16 %143 to i32
  %add.ptr.i.i192 = getelementptr i8, ptr %141, i32 %conv.i.i191
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i192, i32 0, i32 2
  %144 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 2)
  %145 = load i16, ptr %h_proto.i, align 1
  %146 = zext i16 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %145, label %sw.default.i [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %land.lhs.true80
  %multicast_querier.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 4
  %147 = ptrtoint ptr %multicast_querier.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %multicast_querier.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i.i = icmp eq i8 %148, 0
  %delay_time.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 16, i32 1
  %149 = ptrtoint ptr %delay_time.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %delay_time.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i193 = sub i32 %150, %151
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i193)
  %cmp14.i.i = icmp slt i32 %sub.i.i193, 0
  br i1 %cmp14.i.i, label %if.then.i.i.if.then84_crit_edge, label %if.then.i.i.if.else85_crit_edge

if.then.i.i.if.else85_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

if.then.i.i.if.then84_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

if.end5.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i193)
  %cmp.i.i = icmp sgt i32 %sub.i.i193, -1
  br i1 %cmp.i.i, label %if.end5.i.i.if.else85_crit_edge, label %lor.rhs.i.i

if.end5.i.i.if.else85_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

lor.rhs.i.i:                                      ; preds = %if.end5.i.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 16, i32 0, i32 0, i32 1
  %152 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not = icmp eq ptr %153, null
  br i1 %tobool.not.i.i.i.i.not, label %lor.rhs.i.i.if.else85_crit_edge, label %lor.rhs.i.i.if.then84_crit_edge

lor.rhs.i.i.if.then84_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

lor.rhs.i.i.if.else85_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

sw.bb1.i:                                         ; preds = %land.lhs.true80
  %multicast_querier.i9.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 4
  %154 = ptrtoint ptr %multicast_querier.i9.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %multicast_querier.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i10.i = icmp eq i8 %155, 0
  br i1 %tobool.not.i10.i, label %sw.bb1.i.if.end5.i19.i_crit_edge, label %if.then.i11.i

sw.bb1.i.if.end5.i19.i_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i19.i

if.then.i11.i:                                    ; preds = %sw.bb1.i
  %156 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %139, align 4
  %options.i.i.i = getelementptr inbounds %struct.net_bridge, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %options.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %options.i.i.i, align 4
  %160 = and i32 %159, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool2.not.i.i = icmp eq i32 %160, 0
  br i1 %tobool2.not.i.i, label %if.then.i11.i.if.end5.i19.i_crit_edge, label %br_multicast_querier_exists.exit

if.then.i11.i.if.end5.i19.i_crit_edge:            ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i19.i

if.end5.i19.i:                                    ; preds = %if.then.i11.i.if.end5.i19.i_crit_edge, %sw.bb1.i.if.end5.i19.i_crit_edge
  %delay_time.i15.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 21, i32 1
  %161 = ptrtoint ptr %delay_time.i15.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %delay_time.i15.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %sub.i16.i = sub i32 %162, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i16.i)
  %cmp.i17.i = icmp sgt i32 %sub.i16.i, -1
  br i1 %cmp.i17.i, label %if.end5.i19.i.if.else85_crit_edge, label %lor.rhs.i22.i

if.end5.i19.i.if.else85_crit_edge:                ; preds = %if.end5.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

lor.rhs.i22.i:                                    ; preds = %if.end5.i19.i
  %pprev.i.i.i20.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 21, i32 0, i32 0, i32 1
  %164 = ptrtoint ptr %pprev.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile ptr, ptr %pprev.i.i.i20.i, align 4
  %tobool.not.i.i.i21.i.not = icmp eq ptr %165, null
  br i1 %tobool.not.i.i.i21.i.not, label %lor.rhs.i22.i.if.else85_crit_edge, label %lor.rhs.i22.i.if.then84_crit_edge

lor.rhs.i22.i.if.then84_crit_edge:                ; preds = %lor.rhs.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

lor.rhs.i22.i.if.else85_crit_edge:                ; preds = %lor.rhs.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

sw.default.i:                                     ; preds = %land.lhs.true80
  br i1 %tobool74.not, label %sw.default.i.if.else85_crit_edge, label %land.rhs.i

sw.default.i.if.else85_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

land.rhs.i:                                       ; preds = %sw.default.i
  %proto.i.i = getelementptr inbounds %struct.net_bridge_mdb_entry, ptr %call73, i32 0, i32 3, i32 2
  %166 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %proto.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %cmp.i24.i = icmp eq i16 %167, 0
  br i1 %cmp.i24.i, label %land.rhs.i.if.then84_crit_edge, label %land.rhs.i.if.else85_crit_edge

land.rhs.i.if.else85_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

land.rhs.i.if.then84_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

br_multicast_querier_exists.exit:                 ; preds = %if.then.i11.i
  %delay_time12.i12.i = getelementptr inbounds %struct.net_bridge_mcast, ptr %139, i32 0, i32 21, i32 1
  %168 = ptrtoint ptr %delay_time12.i12.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay_time12.i12.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %170 = load volatile i32, ptr @jiffies, align 128
  %sub13.i13.i = sub i32 %169, %170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13.i13.i)
  %cmp14.i14.i = icmp slt i32 %sub13.i13.i, 0
  br i1 %cmp14.i14.i, label %br_multicast_querier_exists.exit.if.then84_crit_edge, label %br_multicast_querier_exists.exit.if.else85_crit_edge

br_multicast_querier_exists.exit.if.else85_crit_edge: ; preds = %br_multicast_querier_exists.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else85

br_multicast_querier_exists.exit.if.then84_crit_edge: ; preds = %br_multicast_querier_exists.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

if.then84:                                        ; preds = %br_multicast_querier_exists.exit.if.then84_crit_edge, %land.rhs.i.if.then84_crit_edge, %lor.rhs.i22.i.if.then84_crit_edge, %lor.rhs.i.i.if.then84_crit_edge, %if.then.i.i.if.then84_crit_edge
  call void @br_multicast_flood(ptr noundef %call73, ptr noundef %skb, ptr noundef %139, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

if.else85:                                        ; preds = %br_multicast_querier_exists.exit.if.else85_crit_edge, %land.rhs.i.if.else85_crit_edge, %sw.default.i.if.else85_crit_edge, %lor.rhs.i22.i.if.else85_crit_edge, %if.end5.i19.i.if.else85_crit_edge, %lor.rhs.i.i.if.else85_crit_edge, %if.end5.i.i.if.else85_crit_edge, %if.then.i.i.if.else85_crit_edge, %lor.lhs.false75.if.else85_crit_edge
  call void @br_flood(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

if.else87:                                        ; preds = %if.else61
  %171 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %vid, align 2
  %call88 = call ptr @br_fdb_find_rcu(ptr noundef %add.ptr.i, ptr noundef %add.ptr.i.i185, i16 noundef zeroext %172) #12
  %cmp89.not = icmp eq ptr %call88, null
  br i1 %cmp89.not, label %if.else93, label %if.then91

if.then91:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #14
  %dst92 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call88, i32 0, i32 1
  %173 = ptrtoint ptr %dst92 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dst92, align 4
  call void @br_forward(ptr noundef %174, ptr noundef %skb, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

if.else93:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #14
  call void @br_flood(ptr noundef %add.ptr.i, ptr noundef %skb, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %out

out:                                              ; preds = %if.else93, %if.then91, %if.else85, %if.then84, %if.then71, %if.then67, %if.then60, %br_vlan_group_rcu.exit.out_crit_edge
  %call.i196 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i196, label %out.rcu_read_unlock.exit206_crit_edge, label %land.lhs.true.i199

out.rcu_read_unlock.exit206_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit206

land.lhs.true.i199:                               ; preds = %out
  %call1.i197 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i197)
  %tobool.not.i198 = icmp eq i32 %call1.i197, 0
  br i1 %tobool.not.i198, label %land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge, label %land.lhs.true2.i201

land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge: ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit206

land.lhs.true2.i201:                              ; preds = %land.lhs.true.i199
  %.b4.i200 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i200, label %land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge, label %if.then.i202

land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge: ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit206

if.then.i202:                                     ; preds = %land.lhs.true2.i201
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 724, ptr noundef nonnull @.str.11) #12
  br label %rcu_read_unlock.exit206

rcu_read_unlock.exit206:                          ; preds = %if.then.i202, %land.lhs.true2.i201.rcu_read_unlock.exit206_crit_edge, %land.lhs.true.i199.rcu_read_unlock.exit206_crit_edge, %out.rcu_read_unlock.exit206_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %175 = call i32 @llvm.read_register.i32(metadata !53) #12
  %and.i.i.i.i.i203 = and i32 %175, -16384
  %176 = inttoptr i32 %and.i.i.i.i.i203 to ptr
  %preempt_count.i.i.i.i204 = getelementptr inbounds %struct.thread_info, ptr %176, i32 0, i32 1
  %177 = ptrtoint ptr %preempt_count.i.i.i.i204 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load volatile i32, ptr %preempt_count.i.i.i.i204, align 4
  %sub.i.i.i205 = add i32 %178, -1
  store volatile i32 %sub.i.i.i205, ptr %preempt_count.i.i.i.i204, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit206, %rcu_read_unlock.exit
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brmctx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmctx_null) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_allowed_ingress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_do_proxy_suppress_arp(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_is_nd_neigh_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_do_suppress_nd(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_flood(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_rcv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_mdb_get(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_flood(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @br_fdb_find_rcu(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_forward(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_netpoll_enable(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %dev = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %npinfo = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 126
  %4 = ptrtoint ptr %npinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %npinfo, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %call1.i = tail call i32 @__netpoll_setup(ptr noundef nonnull %call7.i.i.i, ptr noundef %8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %return

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %np5.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 30
  %9 = ptrtoint ptr %np5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %np5.i, align 4
  br label %return

return:                                           ; preds = %if.end4.i, %if.then3.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end4.i ], [ -12, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_netpoll_disable(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %np1 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 30
  %0 = ptrtoint ptr %np1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %np1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %np1, align 4
  tail call void @__netpoll_free(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netpoll_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_dev_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %0 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %1 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr.i, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  call void @ether_setup(ptr noundef %dev) #12
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @br_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %7 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %needs_free_netdev, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @br_ethtool_ops, ptr %ethtool_ops, align 16
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @br_type, ptr %type, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 524290, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 35218731774185, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 35218731761897, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 26
  %13 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 34359672937, ptr %vlan_features, align 8
  %dev2 = getelementptr i8, ptr %dev, i32 2396
  %14 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev2, align 4
  call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @br_dev_setup.__key, i16 noundef signext 3) #12
  %port_list = getelementptr i8, ptr %dev, i32 2640
  %15 = ptrtoint ptr %port_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %port_list, ptr %port_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2644
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %port_list, ptr %prev.i, align 4
  %fdb_list = getelementptr i8, ptr %dev, i32 4208
  %17 = ptrtoint ptr %fdb_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fdb_list, align 4
  %frame_type_list = getelementptr i8, ptr %dev, i32 2392
  %18 = ptrtoint ptr %frame_type_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %frame_type_list, align 4
  %mrp_list = getelementptr i8, ptr %dev, i32 4212
  %19 = ptrtoint ptr %mrp_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %mrp_list, align 4
  %mep_list = getelementptr i8, ptr %dev, i32 4216
  %20 = ptrtoint ptr %mep_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mep_list, align 4
  %hash_lock = getelementptr i8, ptr %dev, i32 2348
  call void @__raw_spin_lock_init(ptr noundef %hash_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @br_dev_setup.__key.3, i16 noundef signext 3) #12
  %bridge_id = getelementptr i8, ptr %dev, i32 2820
  %21 = ptrtoint ptr %bridge_id to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %bridge_id, align 4
  %arrayidx13 = getelementptr i8, ptr %dev, i32 2821
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx13, align 1
  %group_addr = getelementptr i8, ptr %dev, i32 2868
  %23 = ptrtoint ptr %group_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 25215488, ptr %group_addr, align 4
  %add.ptr1.i = getelementptr i8, ptr %dev, i32 2872
  %24 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %add.ptr1.i, align 2
  %stp_enabled = getelementptr i8, ptr %dev, i32 2876
  %25 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %stp_enabled, align 4
  %group_fwd_mask = getelementptr i8, ptr %dev, i32 2808
  %26 = ptrtoint ptr %group_fwd_mask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %group_fwd_mask, align 4
  %group_fwd_mask_required = getelementptr i8, ptr %dev, i32 2810
  %27 = ptrtoint ptr %group_fwd_mask_required to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %group_fwd_mask_required, align 2
  %designated_root = getelementptr i8, ptr %dev, i32 2812
  %28 = load i64, ptr %bridge_id, align 4
  %29 = ptrtoint ptr %designated_root to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %designated_root, align 4
  %max_age = getelementptr i8, ptr %dev, i32 2832
  %30 = ptrtoint ptr %max_age to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2000, ptr %max_age, align 4
  %bridge_max_age = getelementptr i8, ptr %dev, i32 2848
  %31 = ptrtoint ptr %bridge_max_age to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2000, ptr %bridge_max_age, align 4
  %hello_time = getelementptr i8, ptr %dev, i32 2836
  %32 = ptrtoint ptr %hello_time to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 200, ptr %hello_time, align 4
  %bridge_hello_time = getelementptr i8, ptr %dev, i32 2852
  %33 = ptrtoint ptr %bridge_hello_time to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 200, ptr %bridge_hello_time, align 4
  %forward_delay = getelementptr i8, ptr %dev, i32 2840
  %34 = ptrtoint ptr %forward_delay to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1500, ptr %forward_delay, align 4
  %bridge_forward_delay = getelementptr i8, ptr %dev, i32 2856
  %35 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1500, ptr %bridge_forward_delay, align 4
  %ageing_time = getelementptr i8, ptr %dev, i32 2844
  %36 = ptrtoint ptr %ageing_time to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 30000, ptr %ageing_time, align 4
  %bridge_ageing_time = getelementptr i8, ptr %dev, i32 2860
  %37 = ptrtoint ptr %bridge_ageing_time to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 30000, ptr %bridge_ageing_time, align 4
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %38 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 65535, ptr %max_mtu, align 4
  call void @br_netfilter_rtable_init(ptr noundef %add.ptr.i) #12
  call void @br_stp_timer_init(ptr noundef %add.ptr.i) #12
  call void @br_multicast_init(ptr noundef %add.ptr.i) #12
  %gc_work = getelementptr i8, ptr %dev, i32 4092
  call void @__init_work(ptr noundef %gc_work, i32 noundef 0) #12
  %39 = ptrtoint ptr %gc_work to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -64, ptr %gc_work, align 4
  %lockdep_map = getelementptr i8, ptr %dev, i32 4108
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @br_dev_setup.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry23 = getelementptr i8, ptr %dev, i32 4096
  %40 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i78 = getelementptr i8, ptr %dev, i32 4100
  %41 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry23, ptr %prev.i78, align 4
  %func = getelementptr i8, ptr %dev, i32 4104
  %42 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @br_fdb_cleanup, ptr %func, align 4
  %timer = getelementptr i8, ptr %dev, i32 4136
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @br_dev_setup.__key.7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_netfilter_rtable_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_timer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netpoll_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_dev_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %call256 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call256, i32 %0)
  %cmp57 = icmp ult i32 %call256, %0
  br i1 %cmp57, label %for.body.lr.ph, label %for.cond.preheader.if.end10_crit_edge

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call1 to i32
  br label %for.body

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %2, align 64
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call258 = phi i32 [ %call256, %for.body.lr.ph ], [ %call2, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call258
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %1
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %6, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @br_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %7 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %syncp, align 4
  %call2 = tail call i32 @cpumask_next(i32 noundef %call258, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end10:                                         ; preds = %for.body.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge
  %9 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %9, align 64
  %call11 = tail call i32 @br_fdb_hash_init(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %12) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @br_mdb_hash_init(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %14) #12
  tail call void @br_fdb_hash_fini(ptr noundef %add.ptr.i) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @br_vlan_init(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %16) #12
  tail call void @br_mdb_hash_fini(ptr noundef %add.ptr.i) #12
  tail call void @br_fdb_hash_fini(ptr noundef %add.ptr.i) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @br_multicast_init_stats(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.if.end26_crit_edge, label %if.then25

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 64
  tail call void @free_percpu(ptr noundef %18) #12
  tail call void @br_vlan_flush(ptr noundef %add.ptr.i) #12
  tail call void @br_mdb_hash_fini(ptr noundef %add.ptr.i) #12
  tail call void @br_fdb_hash_fini(ptr noundef %add.ptr.i) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end22.if.end26_crit_edge
  %dep_map.i55 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i55, ptr noundef nonnull @.str.15, ptr noundef nonnull @bridge_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %20, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then21, %if.then17, %if.then13, %if.end.thread
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ %call15, %if.then17 ], [ %call19, %if.then21 ], [ %call23, %if.end26 ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_dev_uninit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @br_multicast_dev_del(ptr noundef %add.ptr.i) #12
  tail call void @br_multicast_uninit_stats(ptr noundef %add.ptr.i) #12
  tail call void @br_vlan_flush(ptr noundef %add.ptr.i) #12
  tail call void @br_mdb_hash_fini(ptr noundef %add.ptr.i) #12
  tail call void @br_fdb_hash_fini(ptr noundef %add.ptr.i) #12
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_dev_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netdev_update_features(ptr noundef %dev) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  tail call void @br_stp_enable_bridge(ptr noundef %add.ptr.i) #12
  tail call void @br_multicast_open(ptr noundef %add.ptr.i) #12
  %options.i = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %options.i, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @br_multicast_join_snoopers(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_dev_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @br_stp_disable_bridge(ptr noundef %add.ptr.i) #12
  tail call void @br_multicast_stop(ptr noundef %add.ptr.i) #12
  %options.i = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @br_multicast_leave_snoopers(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %3 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %4, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @passthru_features_check(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_dev_change_rx_flags(ptr noundef %dev, i32 noundef %change) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %change, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @br_manage_promisc(ptr noundef %add.ptr.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @br_dev_set_multicast_list(ptr nocapture noundef %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %5 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sa_data, align 4
  %xor.i = xor i32 %11, %9
  %add.ptr.i19 = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i19, align 2
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i = xor i16 %15, %13
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end3.if.end10_crit_edge, label %if.then7

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @br_stp_change_bridge_id(ptr noundef %add.ptr.i, ptr noundef %sa_data) #12
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end3.if.end10_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_dev_siocdevprivate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  tail call void @br_opt_toggle(ptr noundef %add.ptr.i, i32 noundef 11, i1 noundef zeroext true) #12
  %1 = getelementptr i8, ptr %dev, i32 2648
  %_metrics.i.i = getelementptr i8, ptr %dev, i32 2656
  %2 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_metrics.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %do.end9.i.i, !prof !73

do.body4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/dst.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #12, !srcloc !75
  unreachable

do.end9.i.i:                                      ; preds = %entry
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool10.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i.i = getelementptr i8, ptr %dev, i32 2652
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %cow_metrics.i.i = getelementptr inbounds %struct.dst_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cow_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cow_metrics.i.i, align 8
  %call.i.i = tail call ptr %7(ptr noundef %1, i32 noundef %3) #12
  br label %dst_metrics_write_ptr.exit.i

if.end12.i.i:                                     ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and13.i.i = and i32 %3, -4
  %8 = inttoptr i32 %and13.i.i to ptr
  br label %dst_metrics_write_ptr.exit.i

dst_metrics_write_ptr.exit.i:                     ; preds = %if.end12.i.i, %if.then11.i.i
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then11.i.i ], [ %8, %if.end12.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge, label %if.then.i

dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge: ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_metric_set.exit

if.then.i:                                        ; preds = %dst_metrics_write_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i = getelementptr i32, ptr %retval.0.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %new_mtu, ptr %arrayidx.i, align 4
  br label %dst_metric_set.exit

dst_metric_set.exit:                              ; preds = %if.then.i, %dst_metrics_write_ptr.exit.i.dst_metric_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @br_poll_controller(ptr nocapture noundef %br_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_netpoll_setup(ptr noundef readonly %dev, ptr nocapture noundef readnone %ni) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn23 = load ptr, ptr %port_list, align 4
  %cmp.not24 = icmp eq ptr %.pn23, %port_list
  br i1 %cmp.not24, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn23, %entry.for.body_crit_edge ]
  %dev2 = getelementptr i8, ptr %.pn25, i32 -8
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev2, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 72) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.fail_crit_edge, label %if.end.i

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call1.i = tail call i32 @__netpoll_setup(ptr noundef nonnull %call7.i.i.i, ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %__br_netpoll_enable.exit, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %fail

__br_netpoll_enable.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %np5.i = getelementptr i8, ptr %.pn25, i32 608
  %6 = ptrtoint ptr %np5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %np5.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %__br_netpoll_enable.exit, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %br_netpoll_disable.exit.i.out_crit_edge, %fail.out_crit_edge, %for.inc.out_crit_edge, %entry.out_crit_edge
  %err.2 = phi i32 [ %retval.0.i.ph, %fail.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ %retval.0.i.ph, %br_netpoll_disable.exit.i.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  ret i32 %err.2

fail:                                             ; preds = %if.then3.i, %if.end.fail_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ -12, %if.end.fail_crit_edge ]
  %8 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn10.i = load ptr, ptr %port_list, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %port_list
  br i1 %cmp.not11.i, label %fail.out_crit_edge, label %fail.for.body.i_crit_edge

fail.for.body.i_crit_edge:                        ; preds = %fail
  br label %for.body.i

fail.out_crit_edge:                               ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.i:                                       ; preds = %br_netpoll_disable.exit.i.for.body.i_crit_edge, %fail.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %br_netpoll_disable.exit.i.for.body.i_crit_edge ], [ %.pn10.i, %fail.for.body.i_crit_edge ]
  %np1.i.i = getelementptr i8, ptr %.pn12.i, i32 608
  %9 = ptrtoint ptr %np1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %for.body.i.br_netpoll_disable.exit.i_crit_edge, label %if.end.i.i

for.body.i.br_netpoll_disable.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_netpoll_disable.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %np1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %np1.i.i, align 4
  tail call void @__netpoll_free(ptr noundef nonnull %10) #12
  br label %br_netpoll_disable.exit.i

br_netpoll_disable.exit.i:                        ; preds = %if.end.i.i, %for.body.i.br_netpoll_disable.exit.i_crit_edge
  %12 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list
  br i1 %cmp.not.i, label %br_netpoll_disable.exit.i.out_crit_edge, label %br_netpoll_disable.exit.i.for.body.i_crit_edge

br_netpoll_disable.exit.i.for.body.i_crit_edge:   ; preds = %br_netpoll_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

br_netpoll_disable.exit.i.out_crit_edge:          ; preds = %br_netpoll_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_netpoll_cleanup(ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %port_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %port_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %br_netpoll_disable.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %br_netpoll_disable.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %np1.i = getelementptr i8, ptr %.pn12, i32 608
  %1 = ptrtoint ptr %np1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np1.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %for.body.br_netpoll_disable.exit_crit_edge, label %if.end.i

for.body.br_netpoll_disable.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_netpoll_disable.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %np1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %np1.i, align 4
  tail call void @__netpoll_free(ptr noundef nonnull %2) #12
  br label %br_netpoll_disable.exit

br_netpoll_disable.exit:                          ; preds = %if.end.i, %for.body.br_netpoll_disable.exit_crit_edge
  %4 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %br_netpoll_disable.exit.for.end_crit_edge, label %br_netpoll_disable.exit.for.body_crit_edge

br_netpoll_disable.exit.for.body_crit_edge:       ; preds = %br_netpoll_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

br_netpoll_disable.exit.for.end_crit_edge:        ; preds = %br_netpoll_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %br_netpoll_disable.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_add_slave(ptr noundef %dev, ptr noundef %slave_dev, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @br_add_if(ptr noundef %add.ptr.i, ptr noundef %slave_dev, ptr noundef %extack) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_del_slave(ptr noundef %dev, ptr noundef %slave_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @br_del_if(ptr noundef %add.ptr.i, ptr noundef %slave_dev) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @br_fix_features(ptr noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i64 @br_features_recompute(ptr noundef %add.ptr.i, i64 noundef %features) #12
  ret i64 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_delete(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_dump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_setlink(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_getlink(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_dellink(ptr noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_fill_forward_path(ptr noundef %ctx, ptr noundef %path) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @br_vlan_fill_forward_path_pvid(ptr noundef %add.ptr.i, ptr noundef %ctx, ptr noundef %path) #12
  %daddr = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %daddr, align 4
  %6 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2
  %vlan_id = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vlan_id, align 4
  %call3 = tail call ptr @br_fdb_find_rcu(ptr noundef %add.ptr.i, ptr noundef %5, i16 noundef zeroext %8) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %dst4 = getelementptr inbounds %struct.net_bridge_fdb_entry, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dst4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %dst4, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call i32 @br_vlan_fill_forward_path_mode(ptr noundef %add.ptr.i, ptr noundef nonnull %12, ptr noundef %path) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %path, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %12, align 8
  %dev17 = getelementptr inbounds %struct.net_bridge, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  %dev18 = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 1
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev18, align 4
  %dev19 = getelementptr inbounds %struct.net_bridge_port, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev19, align 4
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ctx, align 4
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %23, label %if.end15.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.end15.sw.bb29_crit_edge
    i32 2, label %if.end15.sw.bb29_crit_edge61
  ]

if.end15.sw.bb29_crit_edge61:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end15.sw.bb29_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb29

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  %num_vlans = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 2
  %25 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_vlans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp ugt i32 %26, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end22

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vlan_id, align 4
  %arrayidx = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %26
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx, align 4
  %vlan_proto = getelementptr inbounds %struct.net_device_path, ptr %path, i32 0, i32 2, i32 0, i32 2
  %30 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_proto, align 2
  %32 = ptrtoint ptr %num_vlans to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_vlans, align 4
  %proto = getelementptr %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 3, i32 %33, i32 1
  %34 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %31, ptr %proto, align 2
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %if.end15.sw.bb29_crit_edge, %if.end15.sw.bb29_crit_edge61
  %num_vlans30 = getelementptr inbounds %struct.net_device_path_ctx, ptr %ctx, i32 0, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb29, %if.end22
  %num_vlans.sink60 = phi ptr [ %num_vlans, %if.end22 ], [ %num_vlans30, %sw.bb29 ]
  %.sink59 = phi i32 [ 1, %if.end22 ], [ -1, %sw.bb29 ]
  %35 = ptrtoint ptr %num_vlans.sink60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_vlans.sink60, align 4
  %inc = add i32 %36, %.sink59
  store i32 %inc, ptr %num_vlans.sink60, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.end11.cleanup_crit_edge ], [ -28, %sw.bb.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_hash_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_mdb_hash_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_hash_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_mdb_hash_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_init_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_dev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_uninit_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_enable_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_join_snoopers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_disable_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_leave_snoopers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_manage_promisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_change_bridge_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_opt_toggle(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_add_if(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_del_if(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @br_features_recompute(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_fill_forward_path_pvid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_fill_forward_path_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_getinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.16, i32 noundef 32) #12
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.17, i32 noundef 32) #12
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 3
  %call4 = tail call i32 @strlcpy(ptr noundef %fw_version, ptr noundef nonnull @.str.18, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef nonnull @.str.18, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_get_link_ksettings(ptr noundef readonly %dev, ptr nocapture noundef %cmd) #0 align 64 {
entry:
  %ecmd = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %port, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %speed, align 4
  %port_list = getelementptr i8, ptr %dev, i32 2640
  %3 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn49 = load ptr, ptr %port_list, align 4
  %cmp.not50 = icmp eq ptr %.pn49, %port_list
  br i1 %cmp.not50, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %speed11 = getelementptr inbounds %struct.ethtool_link_settings, ptr %ecmd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn51 = phi ptr [ %.pn49, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ecmd) #12
  %4 = call ptr @memset(ptr %ecmd, i32 255, i32 88)
  %dev4 = getelementptr i8, ptr %.pn51, i32 -8
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 50
  %9 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %operstate.i, align 8
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %10, label %lor.lhs.false.cleanup_crit_edge [
    i8 6, label %lor.lhs.false.if.end_crit_edge
    i8 0, label %lor.lhs.false.if.end_crit_edge52
  ]

lor.lhs.false.if.end_crit_edge52:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge52
  %call7 = call i32 @__ethtool_get_link_ksettings(ptr noundef %6, ptr noundef nonnull %ecmd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %speed11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp12 = icmp eq i32 %13, -1
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp17 = icmp eq i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp23 = icmp ult i32 %15, %13
  %or.cond = select i1 %cmp17, i1 true, i1 %cmp23
  br i1 %or.cond, label %if.then24, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %speed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ecmd) #12
  %17 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !31, !32, !34, !36, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__ksymtab_nf_br_ops, !1, !"__ksymtab_nf_br_ops", i1 false, i1 false}
!1 = !{!"../net/bridge/br_device.c", i32 25, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/bridge/br_device.c", i32 44, i32 11}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @br_dev_setup.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../net/bridge/br_device.c", i32 501, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @br_dev_setup.__key.3, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/bridge/br_device.c", i32 511, i32 2}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @br_dev_setup.__key.5, !13, !"__key", i1 false, i1 false}
!13 = !{!"../net/bridge/br_device.c", i32 532, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @br_dev_setup.__key.7, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nf_br_ops, !18, !"nf_br_ops", i1 false, i1 false}
!18 = !{!"../net/bridge/br_device.c", i32 24, i32 31}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/bridge/br_private.h", i32 1483, i32 9}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @br_netdev_ops, !33, !"br_netdev_ops", i1 false, i1 false}
!33 = !{!"../net/bridge/br_device.c", i32 446, i32 36}
!34 = !{ptr @br_dev_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/bridge/br_device.c", i32 122, i32 16}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/bridge/br_device.c", i32 114, i32 2}
!39 = !{ptr @bridge_netdev_addr_lock_key, !40, !"bridge_netdev_addr_lock_key", i1 false, i1 false}
!40 = !{!"../net/bridge/br_device.c", i32 110, i32 30}
!41 = !{ptr @br_ethtool_ops, !42, !"br_ethtool_ops", i1 false, i1 false}
!42 = !{!"../net/bridge/br_device.c", i32 440, i32 33}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/bridge/br_device.c", i32 254, i32 24}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/bridge/br_device.c", i32 255, i32 25}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/bridge/br_device.c", i32 256, i32 28}
!49 = !{ptr @br_type, !50, !"br_type", i1 false, i1 false}
!50 = !{!"../net/bridge/br_device.c", i32 477, i32 27}
!51 = distinct !{null, !52, !"eth_reserved_addr_base", i1 false, i1 false}
!52 = !{!"../include/linux/etherdevice.h", i32 70, i32 17}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{i64 2149599073}
!65 = !{i64 2149599339}
!66 = !{i64 2150243370}
!67 = !{i64 2150248304}
!68 = !{i64 2150270022}
!69 = !{i64 2150274916}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2150351443}
!72 = !{i64 2150351768}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 615902}
!75 = !{i64 2156875472, i64 2156875954, i64 2156875509, i64 2156875565, i64 2156875599, i64 2156875623, i64 2156875664, i64 2156875685, i64 2156875713, i64 2156875747}
