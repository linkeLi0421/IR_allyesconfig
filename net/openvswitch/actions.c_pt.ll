; ModuleID = '/llk/IR_all_yes/net/openvswitch/actions.c_pt.bc'
source_filename = "../net/openvswitch/actions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ovs_frag_data = type { i32, ptr, %struct.ovs_skb_cb, i16, i16, i16, i16, i32, i8, [30 x i8] }
%struct.ovs_skb_cb = type { ptr, i16, i16, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.132 }
%struct.atomic_t = type { i32 }
%union.anon.132 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sw_flow_actions = type { %struct.callback_head, i32, i32, [0 x %struct.nlattr] }
%struct.callback_head = type { ptr, ptr }
%struct.nlattr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.44, %union.anon.47, %union.anon.48, [48 x i8], %union.anon.49, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.51, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, ptr, %union.anon.46 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i32, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.53, i32, i32, i32, i16, i16, %union.anon.55, i32, %union.anon.56, %union.anon.57, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.53 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.action_fifo = type { i32, i32, [10 x %struct.deferred_action] }
%struct.deferred_action = type { ptr, ptr, i32, %struct.sw_flow_key }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.3, i8, i8, i32, i32, %struct.anon.4, i8, i8, %union.anon.5, i16, %struct.anon.7, %union.anon.8, %struct.anon.20 }
%struct.ip_tunnel_key = type { i64, %union.anon.0, i16, i8, i8, i32, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%struct.anon.3 = type <{ i32, i32, i16 }>
%struct.anon.4 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i8, i8, i8, i8 }
%struct.anon.7 = type { i16, i16, i16 }
%union.anon.8 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.anon.15, i32, %union.anon.16 }
%struct.anon.15 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.20 = type { %struct.anon.21, i32, %struct.ovs_key_ct_labels }
%struct.anon.21 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.22 }
%union.anon.22 = type { [4 x i32] }
%struct.ovs_key_nsh = type { %struct.ovs_nsh_key_base, [4 x i32] }
%struct.ovs_nsh_key_base = type { i8, i8, i8, i8, i32 }
%struct.dp_upcall_info = type { ptr, ptr, ptr, i32, i32, i8, i16 }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.183 }
%union.anon.183 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.nshhdr = type { i16, i8, i8, i32, %union.anon.182 }
%union.anon.182 = type { %struct.nsh_md1_ctx }
%struct.nsh_md1_ctx = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.163, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.177, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.163 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.177 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.140, i32, %struct.list_head, ptr }
%union.anon.140 = type { %struct.in6_addr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.184 }
%union.anon.184 = type { [1 x i32] }

@exec_actions_level = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ovs_execute_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\012openvswitch: ovs: recursion limit reached on datapath %s, probable configuration error\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ovs_execute_actions\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/openvswitch/actions.c\00", [38 x i8] zeroinitializer }, align 32
@ovs_execute_actions._entry_ptr = internal global ptr @ovs_execute_actions._entry, section ".printk_index", align 4
@action_fifos = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@flow_keys = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__pcpu_unique_ovs_frag_data_storage = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@ovs_frag_data_storage = weak dso_local global %struct.ovs_frag_data zeroinitializer, section ".data..percpu", align 4
@__pcpu_unique_exec_actions_level = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__tracepoint_ovs_do_execute_action = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/openvswitch/openvswitch_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_ovs_do_execute_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@ovs_vport_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/openvswitch/datapath.h\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@ovs_fragment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016openvswitch: netlink: L2 header too long to fragment\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ovs_fragment\00", [19 x i8] zeroinitializer }, align 32
@ovs_fragment._entry_ptr = internal global ptr @ovs_fragment._entry, section ".printk_index", align 4
@ovs_dst_ops = internal global %struct.dst_ops { i16 0, i32 0, ptr null, ptr null, ptr null, ptr @ovs_dst_get_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [60 x i8] undef, %struct.percpu_counter zeroinitializer, [56 x i8] undef }, align 128
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@ovs_fragment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed fragment ->%s: eth=%04x, MRU=%d, MTU=%d.\00", [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@clone_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014openvswitch: %s: deferred action limit reached, drop sample action\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clone_execute\00", [18 x i8] zeroinitializer }, align 32
@clone_execute._entry_ptr = internal global ptr @clone_execute._entry, section ".printk_index", align 4
@clone_execute._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 1543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\014openvswitch: %s: deferred action limit reached, drop recirc action\0A\00", [58 x i8] zeroinitializer }, align 32
@clone_execute._entry_ptr.18 = internal global ptr @clone_execute._entry.16, section ".printk_index", align 4
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 25]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [19 x i64] [i64 17, i64 32, i64 2, i64 4, i64 7, i64 8, i64 9, i64 10, i64 15, i64 17, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 2, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967181]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 58]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1585, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"action_fifos\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 74, i32 37 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"flow_keys\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 75, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant [39 x i8] c"../net/openvswitch/openvswitch_trace.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 12, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 108, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [30 x i8] c"../net/openvswitch/datapath.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 207, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 2789, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 856, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 894, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 231, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1539, i32 5 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [29 x i8] c"../net/openvswitch/actions.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 1542, i32 5 }
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 46, i32 38 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @clone_execute._entry, ptr @clone_execute._entry.16, ptr @clone_execute._entry_ptr, ptr @clone_execute._entry_ptr.18, ptr @ovs_execute_actions._entry, ptr @ovs_execute_actions._entry_ptr, ptr @ovs_fragment._entry, ptr @ovs_fragment._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @action_fifos, ptr @flow_keys, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @sctp_csum_ops], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_execute_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @action_fifos to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_keys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_fragment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_execute._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_execute_actions(ptr noundef %dp, ptr noundef %skb, ptr noundef %acts, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @exec_actions_level to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add7 = add i32 %8, 1
  store i32 %add7, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add7)
  %cmp = icmp sgt i32 %add7, 5
  br i1 %cmp, label %do.body11, label %if.end23, !prof !66

do.body11:                                        ; preds = %entry
  %call12 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.do.end22_crit_edge, label %do.end17

do.body11.do.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  %call19 = tail call ptr @ovs_dp_name(ptr noundef %dp) #13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call19) #16
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.body11.do.end22_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %out

if.end23:                                         ; preds = %entry
  %orig_len = getelementptr inbounds %struct.sw_flow_actions, ptr %acts, i32 0, i32 1
  %9 = ptrtoint ptr %orig_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_len, align 4
  %conv = trunc i32 %10 to i16
  %acts_origlen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %11 = ptrtoint ptr %acts_origlen to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %acts_origlen, align 2
  %actions = getelementptr inbounds %struct.sw_flow_actions, ptr %acts, i32 0, i32 3
  %actions_len = getelementptr inbounds %struct.sw_flow_actions, ptr %acts, i32 0, i32 2
  %12 = ptrtoint ptr %actions_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actions_len, align 4
  %call25 = tail call fastcc i32 @do_execute_actions(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %actions, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp26 = icmp eq i32 %8, 0
  br i1 %cmp26, label %if.then28, label %if.end23.out_crit_edge

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then28:                                        ; preds = %if.end23
  %14 = load ptr, ptr @action_fifos, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %tail.i.i = getelementptr inbounds %struct.action_fifo, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i.i = icmp eq i32 %24, %26
  br i1 %cmp.i.i, label %if.then28.out_crit_edge, label %if.then28.do.body3.i_crit_edge

if.then28.do.body3.i_crit_edge:                   ; preds = %if.then28
  br label %do.body3.i

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.body3.i:                                       ; preds = %if.end10.i.do.body3.i_crit_edge, %if.then28.do.body3.i_crit_edge
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %22, align 8
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tail.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i.i.i = icmp eq i32 %28, %30
  br i1 %cmp.i.i.i, label %do.body3.i.action_fifo_get.exit.i_crit_edge, label %if.end.i.i

do.body3.i.action_fifo_get.exit.i_crit_edge:      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %action_fifo_get.exit.i

if.end.i.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  %inc.i.i = add i32 %30, 1
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i.i, ptr %tail.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.action_fifo, ptr %22, i32 0, i32 2, i32 %30
  br label %action_fifo_get.exit.i

action_fifo_get.exit.i:                           ; preds = %if.end.i.i, %do.body3.i.action_fifo_get.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i ], [ null, %do.body3.i.action_fifo_get.exit.i_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retval.0.i.i, align 8
  %pkt_key.i = getelementptr inbounds %struct.deferred_action, ptr %retval.0.i.i, i32 0, i32 3
  %actions6.i = getelementptr inbounds %struct.deferred_action, ptr %retval.0.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %actions6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %actions6.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %action_fifo_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %actions_len7.i = getelementptr inbounds %struct.deferred_action, ptr %retval.0.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %actions_len7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actions_len7.i, align 8
  %call9.i = tail call fastcc i32 @do_execute_actions(ptr noundef %dp, ptr noundef %33, ptr noundef %pkt_key.i, ptr noundef nonnull %35, i32 noundef %37) #13
  br label %if.end10.i

if.else.i:                                        ; preds = %action_fifo_get.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ovs_dp_process_packet(ptr noundef %33, ptr noundef %pkt_key.i) #13
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then8.i
  %38 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %22, align 8
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tail.i.i, align 4
  %cmp.i24.i = icmp eq i32 %39, %41
  br i1 %cmp.i24.i, label %do.end13.i, label %if.end10.i.do.body3.i_crit_edge

if.end10.i.do.body3.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body3.i

do.end13.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %22, align 8
  %43 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %tail.i.i, align 4
  br label %out

out:                                              ; preds = %do.end13.i, %if.then28.out_crit_edge, %if.end23.out_crit_edge, %do.end22
  %err.0 = phi i32 [ -100, %do.end22 ], [ %call25, %if.end23.out_crit_edge ], [ %call25, %if.then28.out_crit_edge ], [ %call25, %do.end13.i ]
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx45, align 4
  %add46 = add i32 %47, ptrtoint (ptr @exec_actions_level to i32)
  %48 = inttoptr i32 %add46 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add47 = add i32 %50, -1
  store i32 %add47, ptr %48, align 4
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_dp_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_execute_actions(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %attr, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %masked.i.i = alloca [4 x i32], align 4
  %offset.i.i = alloca i32, align 4
  %flags.i.i = alloca i32, align 4
  %masked31.i.i = alloca [4 x i32], align 4
  %key.i.i = alloca %struct.ovs_key_nsh, align 4
  %mask.i.i = alloca %struct.ovs_key_nsh, align 4
  %upcall.i = alloca %struct.dp_upcall_info, align 4
  %buffer = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp565 = icmp sgt i32 %len, 0
  br i1 %cmp565, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %protocol.i439 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %head.i.i77.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i.i78.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %data.i81.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %ttl.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 2
  %mru.i430 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %mac_len.i433 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %len6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 5
  %data_len.i.i.i286.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %lse6.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %transport_header.i.i.i250.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %hash.i.i267.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %sw_hash.i.i268.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %tp.i271.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13
  %dst.i272.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %masked.i.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i32], ptr %masked.i.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i32], ptr %masked.i.i, i32 0, i32 3
  %4 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11
  %5 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14
  %6 = getelementptr inbounds [4 x i32], ptr %masked31.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i32], ptr %masked31.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i32], ptr %masked31.i.i, i32 0, i32 3
  %dst.i179.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %tos.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 11, i32 0, i32 1
  %label.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 1
  %10 = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %key.i.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %key.i.i, i32 0, i32 4
  %12 = getelementptr inbounds %struct.ovs_key_nsh, ptr %key.i.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ovs_key_nsh, ptr %key.i.i, i32 0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.ovs_key_nsh, ptr %key.i.i, i32 0, i32 1, i32 2
  %15 = getelementptr inbounds %struct.ovs_key_nsh, ptr %key.i.i, i32 0, i32 1, i32 3
  %16 = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %mask.i.i, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %mask.i.i, i32 0, i32 4
  %18 = getelementptr inbounds %struct.ovs_key_nsh, ptr %mask.i.i, i32 0, i32 1
  %19 = getelementptr inbounds %struct.ovs_key_nsh, ptr %mask.i.i, i32 0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.ovs_key_nsh, ptr %mask.i.i, i32 0, i32 1, i32 2
  %21 = getelementptr inbounds %struct.ovs_key_nsh, ptr %mask.i.i, i32 0, i32 1, i32 3
  %ttl39.i.i = getelementptr inbounds %struct.ovs_nsh_key_base, ptr %5, i32 0, i32 1
  %context66.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %eth.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8
  %add.ptr1.i.i.i = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 0, i32 4
  %dst.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 1
  %add.ptr1.i72.i.i = getelementptr %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 1, i32 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %skb_mark.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 3, i32 1
  %priority.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %phy.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 3
  %23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %vlan.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 2
  %tci.i339 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 2, i32 1
  %ovs_flow_hash.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 6
  %cutlen25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %cmd.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 5
  %mru1.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 6
  %actions21.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 2
  %actions_len22.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 3
  %user_features.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 6
  %portid.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 4
  %userdata.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %a.0569 = phi ptr [ %attr, %for.body.lr.ph ], [ %add.ptr.i466, %for.inc.for.body_crit_edge ]
  %rem.0566 = phi i32 [ %len, %for.body.lr.ph ], [ %sub1.i, %for.inc.for.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_do_execute_action, i32 0, i32 1), ptr blockaddress(@do_execute_actions, %if.then)) #13
          to label %if.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @trace_ovs_do_execute_action(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a.0569, i32 noundef %rem.0566)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %a.0569, i32 0, i32 1
  %24 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nla_type.i, align 2
  %26 = and i16 %25, 16383
  %and.i = zext i16 %26 to i32
  %27 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 13, label %sw.bb10
    i32 2, label %sw.bb22
    i32 8, label %sw.bb30
    i32 9, label %sw.bb31
    i32 22, label %sw.bb35
    i32 10, label %sw.bb48
    i32 4, label %sw.bb51
    i32 5, label %sw.bb54
    i32 7, label %sw.bb56
    i32 3, label %sw.bb65
    i32 11, label %if.end.sw.bb68_crit_edge
    i32 25, label %if.end.sw.bb68_crit_edge661
    i32 6, label %sw.bb71
    i32 12, label %sw.bb82
    i32 16, label %sw.bb98
    i32 14, label %sw.bb100
    i32 15, label %sw.bb103
    i32 17, label %sw.bb105
    i32 18, label %sw.bb117
    i32 19, label %sw.bb119
    i32 20, label %sw.bb124
    i32 21, label %sw.bb135
    i32 23, label %sw.bb146
  ]

if.end.sw.bb68_crit_edge661:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb68

if.end.sw.bb68_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb68

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb:                                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %a.0569, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %30 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %a.0569, align 2
  %conv.i = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0566, i32 %conv.i)
  %cmp.i = icmp eq i32 %rem.0566, %conv.i
  br i1 %cmp.i, label %cleanup.thread, label %if.end5

cleanup.thread:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_output(ptr noundef %dp, ptr noundef %skb, i32 noundef %29, ptr noundef %key)
  br label %cleanup165

if.end5:                                          ; preds = %sw.bb
  %call6 = call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @do_output(ptr noundef %dp, ptr noundef nonnull %call6, i32 noundef %29, ptr noundef %key)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge
  %32 = ptrtoint ptr %cutlen25 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %cutlen25, align 8
  br label %for.inc

sw.bb10:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %a.0569, i32 4
  %33 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len6.i, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp13 = icmp ugt i32 %34, %36
  br i1 %cmp13, label %if.then14, label %sw.bb10.for.inc_crit_edge

sw.bb10.for.inc_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %34, %36
  %37 = ptrtoint ptr %cutlen25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub, ptr %cutlen25, align 8
  br label %for.inc

sw.bb22:                                          ; preds = %if.end
  %38 = ptrtoint ptr %cutlen25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cutlen25, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %upcall.i) #13
  %40 = call ptr @memset(ptr %upcall.i, i32 0, i32 24)
  %41 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %cmd.i, align 4
  %42 = ptrtoint ptr %mru.i430 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mru.i430, align 4
  %44 = ptrtoint ptr %mru1.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %mru1.i, align 2
  %45 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %a.0569, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %46)
  %cmp10.i = icmp ugt i16 %46, 4
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %sw.bb22.output_userspace.exit_crit_edge

sw.bb22.output_userspace.exit_crit_edge:          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #15
  br label %output_userspace.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb22
  %conv.i.i = zext i16 %46 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i.i302 = getelementptr i8, ptr %a.0569, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %a.012.i = phi ptr [ %add.ptr.i.i302, %for.body.lr.ph.i ], [ %add.ptr.i8.i, %for.inc.i.for.body.i_crit_edge ]
  %rem.011.i = phi i32 [ %sub.i.i, %for.body.lr.ph.i ], [ %sub1.i.i, %for.inc.i.for.body.i_crit_edge ]
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %a.012.i, i32 0, i32 1
  %47 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %nla_type.i.i, align 2
  %49 = and i16 %48, 16383
  %and.i.i = zext i16 %49 to i32
  %50 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i.i, label %for.body.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 3, label %sw.bb9.i
    i32 4, label %sw.bb20.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %51 = ptrtoint ptr %userdata.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %a.012.i, ptr %userdata.i, align 4
  br label %for.inc.i

sw.bb4.i:                                         ; preds = %for.body.i
  %52 = ptrtoint ptr %user_features.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %user_features.i, align 4
  %and.i303 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i303)
  %tobool.not.i = icmp eq i32 %and.i303, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  %54 = call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i1.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i1.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cpu.i, align 4
  %call6.i = call i32 @ovs_dp_get_upcall_portid(ptr noundef %dp, i32 noundef %57) #13
  %58 = ptrtoint ptr %portid.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call6.i, ptr %portid.i, align 4
  br label %for.inc.i

if.else.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %a.012.i, i32 4
  %59 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i.i.i, align 4
  %61 = ptrtoint ptr %portid.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %portid.i, align 4
  br label %for.inc.i

sw.bb9.i:                                         ; preds = %for.body.i
  %add.ptr.i.i2.i = getelementptr i8, ptr %a.012.i, i32 4
  %62 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i2.i, align 4
  %call.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %sw.bb9.i.ovs_vport_rcu.exit.i_crit_edge

sw.bb9.i.ovs_vport_rcu.exit.i_crit_edge:          ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_vport_rcu.exit.i

land.rhs.i.i:                                     ; preds = %sw.bb9.i
  %.b40.i.i = load i1, ptr @ovs_vport_rcu.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.ovs_vport_rcu.exit.i_crit_edge, label %if.then.i.i, !prof !68

land.rhs.i.i.ovs_vport_rcu.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_vport_rcu.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_vport_rcu.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 207, i32 noundef 9, ptr noundef null) #13
  br label %ovs_vport_rcu.exit.i

ovs_vport_rcu.exit.i:                             ; preds = %if.then.i.i, %land.rhs.i.i.ovs_vport_rcu.exit.i_crit_edge, %sw.bb9.i.ovs_vport_rcu.exit.i_crit_edge
  %conv.i3.i = trunc i32 %63 to i16
  %call37.i.i = call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext %conv.i3.i) #13
  %tobool12.not.i = icmp eq ptr %call37.i.i, null
  br i1 %tobool12.not.i, label %ovs_vport_rcu.exit.i.for.inc.i_crit_edge, label %if.then13.i

ovs_vport_rcu.exit.i.for.inc.i_crit_edge:         ; preds = %ovs_vport_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then13.i:                                      ; preds = %ovs_vport_rcu.exit.i
  %64 = ptrtoint ptr %call37.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call37.i.i, align 4
  %call14.i = call i32 @dev_fill_metadata_dst(ptr noundef %65, ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.then13.i.for.inc.i_crit_edge

if.then13.i.for.inc.i_crit_edge:                  ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.then13.i
  %66 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %23, align 8
  %and.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then16.i.skb_dst.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then16.i.skb_dst.exit.i.i.i_crit_edge:         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then16.i
  %call.i.i.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, !prof !66

land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit.i.i.i

skb_dst.exit.i.i.i:                               ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst.exit.i.i.i_crit_edge, %if.then16.i.skb_dst.exit.i.i.i_crit_edge
  %68 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %23, align 8
  %and25.i.i.i.i = and i32 %69, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and25.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %skb_dst.exit.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

skb_dst.exit.i.i.i.if.end.i.i_crit_edge:          ; preds = %skb_dst.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %skb_dst.exit.i.i.i
  %70 = inttoptr i32 %and25.i.i.i.i to ptr
  %flags.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %70, i32 0, i32 7
  %71 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %flags.i.i.i, align 4
  %73 = and i16 %72, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool1.not.i.i.i = icmp eq i16 %73, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i.i.i
  %type.i.i = getelementptr inbounds %struct.metadata_dst, ptr %70, i32 0, i32 1
  %74 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.i = icmp eq i32 %75, 0
  br i1 %cmp.i.i, label %if.then.i4.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

if.then.i4.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %70, i32 0, i32 2
  br label %skb_tunnel_info.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %skb_dst.exit.i.i.i.if.end.i.i_crit_edge
  %and.i.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i27.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i27.i.i, label %if.end.i.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i29.i.i

if.end.i.i.skb_dst.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i

land.lhs.true.i29.i.i:                            ; preds = %if.end.i.i
  %call.i.i.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i28.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i28.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge: ; preds = %land.lhs.true.i29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i29.i.i
  %call2.i.i.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !66

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i29.i.i.skb_dst.exit.i.i_crit_edge, %if.end.i.i.skb_dst.exit.i.i_crit_edge
  %76 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %23, align 8
  %and25.i.i.i = and i32 %77, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool2.not.i.i, label %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge, label %land.lhs.true3.i.i

skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tunnel_info.exit.i

land.lhs.true3.i.i:                               ; preds = %skb_dst.exit.i.i
  %78 = inttoptr i32 %and25.i.i.i to ptr
  %lwtstate.i.i = getelementptr inbounds %struct.dst_entry, ptr %78, i32 0, i32 13
  %79 = ptrtoint ptr %lwtstate.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lwtstate.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %80, null
  br i1 %tobool4.not.i.i, label %land.lhs.true3.i.i.skb_tunnel_info.exit.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true3.i.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tunnel_info.exit.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true3.i.i
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %80, align 4
  %83 = zext i16 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %82, label %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge [
    i16 2, label %land.lhs.true5.i.i.if.then15.i.i_crit_edge
    i16 4, label %land.lhs.true5.i.i.if.then15.i.i_crit_edge662
  ]

land.lhs.true5.i.i.if.then15.i.i_crit_edge662:    ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i.i

land.lhs.true5.i.i.if.then15.i.i_crit_edge:       ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15.i.i

land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_tunnel_info.exit.i

if.then15.i.i:                                    ; preds = %land.lhs.true5.i.i.if.then15.i.i_crit_edge, %land.lhs.true5.i.i.if.then15.i.i_crit_edge662
  %data.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %80, i32 0, i32 7
  br label %skb_tunnel_info.exit.i

skb_tunnel_info.exit.i:                           ; preds = %if.then15.i.i, %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge, %land.lhs.true3.i.i.skb_tunnel_info.exit.i_crit_edge, %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge, %if.then.i4.i
  %retval.0.i.i = phi ptr [ %u.i.i, %if.then.i4.i ], [ %data.i.i.i, %if.then15.i.i ], [ null, %land.lhs.true5.i.i.skb_tunnel_info.exit.i_crit_edge ], [ null, %land.lhs.true3.i.i.skb_tunnel_info.exit.i_crit_edge ], [ null, %skb_dst.exit.i.i.skb_tunnel_info.exit.i_crit_edge ]
  %84 = ptrtoint ptr %upcall.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %retval.0.i.i, ptr %upcall.i, align 4
  br label %for.inc.i

sw.bb20.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %actions21.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %attr, ptr %actions21.i, align 4
  %86 = ptrtoint ptr %actions_len22.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %len, ptr %actions_len22.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb20.i, %skb_tunnel_info.exit.i, %if.then13.i.for.inc.i_crit_edge, %ovs_vport_rcu.exit.i.for.inc.i_crit_edge, %if.else.i, %if.then.i, %sw.bb.i, %for.body.i.for.inc.i_crit_edge
  %87 = ptrtoint ptr %a.012.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %a.012.i, align 2
  %conv.i5.i = zext i16 %88 to i32
  %sub.i6.i = add nuw nsw i32 %conv.i5.i, 3
  %and.i7.i = and i32 %sub.i6.i, 131068
  %sub1.i.i = sub nsw i32 %rem.011.i, %and.i7.i
  %add.ptr.i8.i = getelementptr i8, ptr %a.012.i, i32 %and.i7.i
  %cmp.i304 = icmp sgt i32 %sub1.i.i, 0
  br i1 %cmp.i304, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.output_userspace.exit_crit_edge

for.inc.i.output_userspace.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %output_userspace.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

output_userspace.exit:                            ; preds = %for.inc.i.output_userspace.exit_crit_edge, %sw.bb22.output_userspace.exit_crit_edge
  %call24.i = call i32 @ovs_dp_upcall(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef nonnull %upcall.i, i32 noundef %39) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %upcall.i) #13
  %89 = ptrtoint ptr %cutlen25 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %cutlen25, align 8
  br label %for.inc

sw.bb30:                                          ; preds = %if.end
  %90 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %91 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %if.then.i.i305, label %sw.bb30.execute_hash.exit_crit_edge

sw.bb30.execute_hash.exit_crit_edge:              ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %execute_hash.exit

if.then.i.i305:                                   ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  call void @__skb_get_hash(ptr noundef %skb) #13
  br label %execute_hash.exit

execute_hash.exit:                                ; preds = %if.then.i.i305, %sw.bb30.execute_hash.exit_crit_edge
  %93 = ptrtoint ptr %hash.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hash.i.i267.i, align 4
  %hash_basis.i = getelementptr i8, ptr %a.0569, i32 8
  %95 = ptrtoint ptr %hash_basis.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %hash_basis.i, align 4
  %add1.i.i = add i32 %96, -559038733
  %add.i.i.i = add i32 %add1.i.i, %94
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #13
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i1.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #13
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i1.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i2.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #13
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i2.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i3.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #13
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i3.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i4.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #13
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i4.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i5.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #13
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i5.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i6.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #13
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i6.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %xor18.i.i.i, i32 %or.i6.i.i.i)
  %tobool.not.i306 = icmp eq i32 %xor18.i.i.i, %or.i6.i.i.i
  %spec.store.select.i = select i1 %tobool.not.i306, i32 1, i32 %sub20.i.i.i
  %97 = ptrtoint ptr %ovs_flow_hash.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %spec.store.select.i, ptr %ovs_flow_hash.i, align 4
  br label %for.inc

sw.bb31:                                          ; preds = %if.end
  %add.ptr.i307 = getelementptr i8, ptr %a.0569, i32 4
  %98 = ptrtoint ptr %add.ptr.i307 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i307, align 4
  %mpls_ethertype = getelementptr i8, ptr %a.0569, i32 8
  %100 = ptrtoint ptr %mpls_ethertype to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %mpls_ethertype, align 4
  %102 = ptrtoint ptr %mac_len.i433 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %mac_len.i433, align 4
  %conv.i308 = zext i16 %103 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %103)
  %tobool.i = icmp ne i16 %103, 0
  %call.i = call i32 @skb_mpls_push(ptr noundef %skb, i32 noundef %99, i16 noundef zeroext %101, i32 noundef %conv.i308, i1 noundef zeroext %tobool.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %sw.bb31.if.then160_crit_edge

sw.bb31.if.then160_crit_edge:                     ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i:                                         ; preds = %sw.bb31
  br i1 %tobool.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %0, align 2
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %0, align 2
  %107 = or i8 %106, -128
  store i8 %107, ptr %0, align 2
  br label %for.inc

sw.bb35:                                          ; preds = %if.end
  %add.ptr.i309 = getelementptr i8, ptr %a.0569, i32 4
  %tun_flags = getelementptr i8, ptr %a.0569, i32 10
  %108 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tun_flags, align 2
  %110 = and i16 %109, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool39.not = icmp eq i16 %110, 0
  br i1 %tobool39.not, label %sw.bb35.if.end42_crit_edge, label %if.then40

sw.bb35.if.end42_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then40:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #15
  %111 = ptrtoint ptr %mac_len.i433 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %mac_len.i433, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %sw.bb35.if.end42_crit_edge
  %mac_len38.0 = phi i16 [ %112, %if.then40 ], [ 0, %sw.bb35.if.end42_crit_edge ]
  %113 = ptrtoint ptr %add.ptr.i309 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i309, align 4
  %mpls_ethertype44 = getelementptr i8, ptr %a.0569, i32 8
  %115 = ptrtoint ptr %mpls_ethertype44 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %mpls_ethertype44, align 4
  %conv.i310 = zext i16 %mac_len38.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mac_len38.0)
  %tobool.i311 = icmp ne i16 %mac_len38.0, 0
  %call.i312 = call i32 @skb_mpls_push(ptr noundef %skb, i32 noundef %114, i16 noundef zeroext %116, i32 noundef %conv.i310, i1 noundef zeroext %tobool.i311) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool2.not.i313 = icmp eq i32 %call.i312, 0
  br i1 %tobool2.not.i313, label %if.end.i314, label %if.end42.if.then160_crit_edge

if.end42.if.then160_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i314:                                      ; preds = %if.end42
  br i1 %tobool.i311, label %if.end.i314.if.end5.i318_crit_edge, label %if.then4.i316

if.end.i314.if.end5.i318_crit_edge:               ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i318

if.then4.i316:                                    ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %0, align 2
  br label %if.end5.i318

if.end5.i318:                                     ; preds = %if.then4.i316, %if.end.i314.if.end5.i318_crit_edge
  %118 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %0, align 2
  %120 = or i8 %119, -128
  store i8 %120, ptr %0, align 2
  br label %for.inc

sw.bb48:                                          ; preds = %if.end
  %add.ptr.i.i320 = getelementptr i8, ptr %a.0569, i32 4
  %121 = ptrtoint ptr %add.ptr.i.i320 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %add.ptr.i.i320, align 2
  %123 = ptrtoint ptr %mac_len.i433 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %mac_len.i433, align 4
  %conv.i321 = zext i16 %124 to i32
  %125 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %0, align 2
  %127 = and i8 %126, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %127)
  %cmp.i323 = icmp eq i8 %127, 1
  %call3.i = call i32 @skb_mpls_pop(ptr noundef %skb, i16 noundef zeroext %122, i32 noundef %conv.i321, i1 noundef zeroext %cmp.i323) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i324 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i324, label %if.end.i325, label %sw.bb48.if.then160_crit_edge

sw.bb48.if.then160_crit_edge:                     ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i325:                                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %122)
  %cmp5.i = icmp eq i16 %122, 25944
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i325.if.end8.i_crit_edge

if.end.i325.if.end8.i_crit_edge:                  ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i325
  call void @__sanitizer_cov_trace_pc() #15
  %128 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %0, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i325.if.end8.i_crit_edge
  %129 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %0, align 2
  %131 = or i8 %130, -128
  store i8 %131, ptr %0, align 2
  br label %for.inc

sw.bb51:                                          ; preds = %if.end
  %add.ptr.i326 = getelementptr i8, ptr %a.0569, i32 4
  %132 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i327 = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i327, label %if.else.i330, label %if.then.i329

if.then.i329:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %133 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %0, align 2
  %135 = or i8 %134, -128
  store i8 %135, ptr %0, align 2
  br label %push_vlan.exit

if.else.i330:                                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci.i = getelementptr i8, ptr %a.0569, i32 6
  %136 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %vlan_tci.i, align 2
  %138 = ptrtoint ptr %tci.i339 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %137, ptr %tci.i339, align 2
  %139 = ptrtoint ptr %add.ptr.i326 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %add.ptr.i326, align 2
  %141 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %vlan.i, align 4
  br label %push_vlan.exit

push_vlan.exit:                                   ; preds = %if.else.i330, %if.then.i329
  %142 = ptrtoint ptr %add.ptr.i326 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %add.ptr.i326, align 2
  %vlan_tci5.i = getelementptr i8, ptr %a.0569, i32 6
  %144 = ptrtoint ptr %vlan_tci5.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vlan_tci5.i, align 2
  %146 = and i16 %145, -4097
  %call.i331 = call i32 @skb_vlan_push(ptr noundef %skb, i16 noundef zeroext %143, i16 noundef zeroext %146) #13
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  %call.i333 = call i32 @skb_vlan_pop(ptr noundef %skb) #13
  %147 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %147, i32 4)
  %bf.load.i335 = load i32, ptr %slow_gro.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i335)
  %tobool.not.i336 = icmp sgt i32 %bf.load.i335, -1
  br i1 %tobool.not.i336, label %if.else.i340, label %if.then.i338

if.then.i338:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  %148 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %0, align 2
  %150 = or i8 %149, -128
  store i8 %150, ptr %0, align 2
  br label %sw.epilog

if.else.i340:                                     ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #15
  %151 = ptrtoint ptr %tci.i339 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %tci.i339, align 2
  %152 = ptrtoint ptr %vlan.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %vlan.i, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end
  %153 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %a.0569, align 2
  %conv.i342 = zext i16 %154 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0566, i32 %conv.i342)
  %cmp.i343 = icmp eq i32 %rem.0566, %conv.i342
  %155 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %156)
  %tobool.not.i471 = icmp sgt i8 %156, -1
  br i1 %tobool.not.i471, label %sw.bb56.do.end15.i_crit_edge, label %if.then.i346

sw.bb56.do.end15.i_crit_edge:                     ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i

if.then.i346:                                     ; preds = %sw.bb56
  %call1.i = call i32 @ovs_flow_key_update(ptr noundef %skb, ptr noundef %key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i345 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i345, label %do.body.i, label %if.then.i346.execute_recirc.exit_crit_edge

if.then.i346.execute_recirc.exit_crit_edge:       ; preds = %if.then.i346
  call void @__sanitizer_cov_trace_pc() #15
  br label %execute_recirc.exit

do.body.i:                                        ; preds = %if.then.i346
  %157 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %157)
  %.pr = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %.pr)
  %tobool.not.i469 = icmp sgt i8 %.pr, -1
  br i1 %tobool.not.i469, label %do.body.i.do.end15.i_crit_edge, label %do.body9.i, !prof !68

do.body.i.do.end15.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end15.i

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/actions.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1186, 0\0A.popsection", ""() #13, !srcloc !69
  unreachable

do.end15.i:                                       ; preds = %do.body.i.do.end15.i_crit_edge, %sw.bb56.do.end15.i_crit_edge
  %add.ptr.i.i467 = getelementptr i8, ptr %a.0569, i32 4
  %158 = ptrtoint ptr %add.ptr.i.i467 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %add.ptr.i.i467, align 4
  %call18.i = call fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef %159, ptr noundef null, i32 noundef 0, i1 noundef zeroext %cmp.i343, i1 noundef zeroext true) #13
  br label %execute_recirc.exit

execute_recirc.exit:                              ; preds = %do.end15.i, %if.then.i346.execute_recirc.exit_crit_edge
  %retval.1.i = phi i32 [ %call18.i, %do.end15.i ], [ %call1.i, %if.then.i346.execute_recirc.exit_crit_edge ]
  br i1 %cmp.i343, label %execute_recirc.exit.cleanup165_crit_edge, label %execute_recirc.exit.sw.epilog_crit_edge

execute_recirc.exit.sw.epilog_crit_edge:          ; preds = %execute_recirc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

execute_recirc.exit.cleanup165_crit_edge:         ; preds = %execute_recirc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

sw.bb65:                                          ; preds = %if.end
  %nla_type.i.i348 = getelementptr i8, ptr %a.0569, i32 6
  %160 = ptrtoint ptr %nla_type.i.i348 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %nla_type.i.i348, align 2
  %162 = and i16 %161, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 29, i16 %162)
  %cmp.i349 = icmp eq i16 %162, 29
  br i1 %cmp.i349, label %if.then.i352, label %sw.bb65.if.then160_crit_edge

sw.bb65.if.then160_crit_edge:                     ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.then.i352:                                     ; preds = %sw.bb65
  %add.ptr.i.i350 = getelementptr i8, ptr %a.0569, i32 8
  %163 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i351 = icmp eq i32 %164, 0
  br i1 %tobool.not.i.i351, label %if.then.i352.skb_dst_drop.exit.i_crit_edge, label %if.then.i.i355

if.then.i352.skb_dst_drop.exit.i_crit_edge:       ; preds = %if.then.i352
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_drop.exit.i

if.then.i.i355:                                   ; preds = %if.then.i352
  %and.i.i.i353 = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i353)
  %tobool.not.i.i.i354 = icmp eq i32 %and.i.i.i353, 0
  br i1 %tobool.not.i.i.i354, label %if.then.i.i.i, label %if.then.i.i355.refdst_drop.exit.i.i_crit_edge

if.then.i.i355.refdst_drop.exit.i.i_crit_edge:    ; preds = %if.then.i.i355
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i355
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i.i.i = and i32 %164, -2
  %165 = inttoptr i32 %and1.i.i.i to ptr
  call void @dst_release(ptr noundef %165) #13
  br label %refdst_drop.exit.i.i

refdst_drop.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.i355.refdst_drop.exit.i.i_crit_edge
  %166 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %23, align 8
  br label %skb_dst_drop.exit.i

skb_dst_drop.exit.i:                              ; preds = %refdst_drop.exit.i.i, %if.then.i352.skb_dst_drop.exit.i_crit_edge
  %167 = ptrtoint ptr %add.ptr.i.i350 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i.i350, align 4
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %168, i32 0, i32 18
  %call.i.i.i.i356 = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #13
  %169 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #13, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %169, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %skb_dst_drop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %dst_hold.exit.i

do.end10.i.i:                                     ; preds = %skb_dst_drop.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %dst_hold.exit.i

dst_hold.exit.i:                                  ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i
  %170 = ptrtoint ptr %add.ptr.i.i350 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i.i350, align 4
  %tobool.not.i1.i = icmp eq ptr %171, null
  %172 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %bf.load.i.i357 = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i357, 4096
  %bf.shl.i.i = select i1 %tobool.not.i1.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i357, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %173 = ptrtoint ptr %171 to i32
  %174 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %23, align 8
  br label %for.inc

sw.bb68:                                          ; preds = %if.end.sw.bb68_crit_edge, %if.end.sw.bb68_crit_edge661
  %nla_type.i.i359 = getelementptr i8, ptr %a.0569, i32 6
  %175 = ptrtoint ptr %nla_type.i.i359 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %nla_type.i.i359, align 2
  %177 = and i16 %176, 16383
  %and.i.i360 = zext i16 %177 to i32
  %178 = zext i32 %and.i.i360 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i.i360, label %sw.bb68.for.inc_crit_edge [
    i32 2, label %sw.bb.i364
    i32 15, label %sw.bb6.i
    i32 29, label %sw.bb68.if.then160_crit_edge
    i32 4, label %sw.bb15.i
    i32 28, label %sw.bb20.i374
    i32 7, label %sw.bb22.i
    i32 8, label %sw.bb27.i
    i32 9, label %sw.bb32.i
    i32 10, label %sw.bb37.i
    i32 17, label %sw.bb42.i
    i32 21, label %sw.bb47.i
    i32 22, label %sw.bb68.if.then160_crit_edge663
    i32 23, label %sw.bb68.if.then160_crit_edge664
    i32 24, label %sw.bb68.if.then160_crit_edge665
    i32 25, label %sw.bb68.if.then160_crit_edge666
    i32 26, label %sw.bb68.if.then160_crit_edge667
    i32 27, label %sw.bb68.if.then160_crit_edge668
  ]

sw.bb68.if.then160_crit_edge668:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge667:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge666:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge665:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge664:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge663:                  ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.if.then160_crit_edge:                     ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.bb68.for.inc_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb.i364:                                       ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i.i361 = getelementptr i8, ptr %a.0569, i32 8
  %179 = ptrtoint ptr %add.ptr.i.i.i361 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr.i.i.i361, align 4
  %181 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %priority.i, align 4
  %add.ptr.i362 = getelementptr i8, ptr %a.0569, i32 12
  %183 = ptrtoint ptr %add.ptr.i362 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr.i362, align 4
  %neg.i = xor i32 %184, -1
  %and.i363 = and i32 %182, %neg.i
  %or.i = or i32 %and.i363, %180
  store i32 %or.i, ptr %priority.i, align 4
  %185 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %or.i, ptr %phy.i, align 8
  br label %for.inc

sw.bb6.i:                                         ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i.i94.i = getelementptr i8, ptr %a.0569, i32 8
  %186 = ptrtoint ptr %add.ptr.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr.i.i94.i, align 4
  %188 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %22, align 4
  %add.ptr9.i = getelementptr i8, ptr %a.0569, i32 12
  %190 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr9.i, align 4
  %neg10.i = xor i32 %191, -1
  %and11.i = and i32 %189, %neg10.i
  %or12.i = or i32 %and11.i, %187
  store i32 %or12.i, ptr %22, align 4
  %192 = ptrtoint ptr %skb_mark.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %or12.i, ptr %skb_mark.i, align 4
  br label %for.inc

sw.bb15.i:                                        ; preds = %sw.bb68
  %add.ptr.i96.i = getelementptr i8, ptr %a.0569, i32 8
  %add.ptr18.i = getelementptr i8, ptr %a.0569, i32 20
  %call.i.i365 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i365)
  %tobool.not.i.i366 = icmp eq i32 %call.i.i365, 0
  br i1 %tobool.not.i.i366, label %if.end.i.i367, label %sw.bb15.i.if.then160_crit_edge, !prof !68

sw.bb15.i.if.then160_crit_edge:                   ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i.i367:                                    ; preds = %sw.bb15.i
  %193 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %head.i.i77.i, align 8
  %195 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %bf.load.i.i.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %bf.lshr.i.i.i = lshr i16 %bf.load.i.i.i, 9
  %trunc.i.i.i = trunc i16 %bf.lshr.i.i.i to i2
  %196 = zext i2 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.22)
  switch i2 %trunc.i.i.i, label %if.end.i.i367.skb_postpull_rcsum.exit.i.i_crit_edge [
    i2 -2, label %if.then.i.i.i369
    i2 -1, label %land.lhs.true.i.i.i370
  ]

if.end.i.i367.skb_postpull_rcsum.exit.i.i_crit_edge: ; preds = %if.end.i.i367
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit.i.i

if.then.i.i.i369:                                 ; preds = %if.end.i.i367
  call void @__sanitizer_cov_trace_pc() #15
  %197 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %198 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %194, i32 %conv.i.i.i.i
  %199 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %9, align 8
  %sub.i.i.i.i = sub i32 0, %200
  %call2.i.i.i368 = call i32 @csum_partial(ptr noundef %add.ptr.i.i.i.i, i32 noundef 12, i32 noundef %sub.i.i.i.i) #13
  %sub.i25.i.i.i = sub i32 0, %call2.i.i.i368
  %201 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %sub.i25.i.i.i, ptr %9, align 8
  br label %skb_postpull_rcsum.exit.i.i

land.lhs.true.i.i.i370:                           ; preds = %if.end.i.i367
  %202 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %9, align 8
  %conv.i.i35.i.i = zext i16 %203 to i32
  %204 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %205 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %194 to i32
  %sub.ptr.sub.i.neg.i.i.i.i = add i32 %conv.i.i35.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  %sub.i26.i.i.i = sub i32 %sub.ptr.sub.i.neg.i.i.i.i, %sub.ptr.lhs.cast.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %sub.i26.i.i.i, 0
  br i1 %cmp13.i.i.i, label %if.then15.i.i.i, label %land.lhs.true.i.i.i370.skb_postpull_rcsum.exit.i.i_crit_edge

land.lhs.true.i.i.i370.skb_postpull_rcsum.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i370
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit.i.i

if.then15.i.i.i:                                  ; preds = %land.lhs.true.i.i.i370
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear18.i.i.i = and i16 %bf.load.i.i.i, -1537
  %206 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %bf.clear18.i.i.i, ptr %sw_hash.i.i268.i, align 8
  br label %skb_postpull_rcsum.exit.i.i

skb_postpull_rcsum.exit.i.i:                      ; preds = %if.then15.i.i.i, %land.lhs.true.i.i.i370.skb_postpull_rcsum.exit.i.i_crit_edge, %if.then.i.i.i369, %if.end.i.i367.skb_postpull_rcsum.exit.i.i_crit_edge
  %207 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %head.i.i77.i, align 8
  %209 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i38.i.i = zext i16 %210 to i32
  %add.ptr.i.i39.i.i = getelementptr i8, ptr %208, i32 %conv.i.i38.i.i
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i39.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %add.ptr.i96.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %add.ptr.i96.i, align 2
  %213 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %h_source.i.i, align 2
  %215 = ptrtoint ptr %add.ptr18.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %add.ptr18.i, align 2
  %neg.i.i.i = xor i16 %216, -1
  %and.i.i.i371 = and i16 %214, %neg.i.i.i
  %or.i.i.i = or i16 %and.i.i.i371, %212
  store i16 %or.i.i.i, ptr %h_source.i.i, align 2
  %arrayidx7.i.i.i = getelementptr i8, ptr %a.0569, i32 10
  %217 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %arrayidx7.i.i.i, align 2
  %arrayidx9.i.i.i = getelementptr i16, ptr %h_source.i.i, i32 1
  %219 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx9.i.i.i, align 2
  %arrayidx11.i.i.i = getelementptr i8, ptr %a.0569, i32 22
  %221 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %arrayidx11.i.i.i, align 2
  %neg13.i.i.i = xor i16 %222, -1
  %and14.i.i.i = and i16 %220, %neg13.i.i.i
  %or15.i.i.i = or i16 %and14.i.i.i, %218
  store i16 %or15.i.i.i, ptr %arrayidx9.i.i.i, align 2
  %arrayidx18.i.i.i = getelementptr i8, ptr %a.0569, i32 12
  %223 = ptrtoint ptr %arrayidx18.i.i.i to i32
  call void @__asan_load2_noabort(i32 %223)
  %224 = load i16, ptr %arrayidx18.i.i.i, align 2
  %arrayidx20.i.i.i = getelementptr i16, ptr %h_source.i.i, i32 2
  %225 = ptrtoint ptr %arrayidx20.i.i.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %arrayidx20.i.i.i, align 2
  %arrayidx22.i.i.i = getelementptr i8, ptr %a.0569, i32 24
  %227 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %arrayidx22.i.i.i, align 2
  %neg24.i.i.i = xor i16 %228, -1
  %and25.i.i.i372 = and i16 %226, %neg24.i.i.i
  %or26.i.i.i = or i16 %and25.i.i.i372, %224
  store i16 %or26.i.i.i, ptr %arrayidx20.i.i.i, align 2
  %229 = load ptr, ptr %head.i.i77.i, align 8
  %230 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i42.i.i = zext i16 %230 to i32
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %229, i32 %conv.i.i42.i.i
  %eth_dst.i.i = getelementptr i8, ptr %a.0569, i32 14
  %eth_dst11.i.i = getelementptr i8, ptr %a.0569, i32 26
  %231 = ptrtoint ptr %eth_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %eth_dst.i.i, align 2
  %233 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %add.ptr.i.i43.i.i, align 2
  %235 = ptrtoint ptr %eth_dst11.i.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %eth_dst11.i.i, align 2
  %neg.i44.i.i = xor i16 %236, -1
  %and.i45.i.i = and i16 %234, %neg.i44.i.i
  %or.i46.i.i = or i16 %and.i45.i.i, %232
  store i16 %or.i46.i.i, ptr %add.ptr.i.i43.i.i, align 2
  %arrayidx7.i47.i.i = getelementptr i8, ptr %a.0569, i32 16
  %237 = ptrtoint ptr %arrayidx7.i47.i.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %arrayidx7.i47.i.i, align 2
  %arrayidx9.i48.i.i = getelementptr i16, ptr %add.ptr.i.i43.i.i, i32 1
  %239 = ptrtoint ptr %arrayidx9.i48.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %arrayidx9.i48.i.i, align 2
  %arrayidx11.i49.i.i = getelementptr i8, ptr %a.0569, i32 28
  %241 = ptrtoint ptr %arrayidx11.i49.i.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %arrayidx11.i49.i.i, align 2
  %neg13.i50.i.i = xor i16 %242, -1
  %and14.i51.i.i = and i16 %240, %neg13.i50.i.i
  %or15.i52.i.i = or i16 %and14.i51.i.i, %238
  store i16 %or15.i52.i.i, ptr %arrayidx9.i48.i.i, align 2
  %arrayidx18.i53.i.i = getelementptr i8, ptr %a.0569, i32 18
  %243 = ptrtoint ptr %arrayidx18.i53.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %arrayidx18.i53.i.i, align 2
  %arrayidx20.i54.i.i = getelementptr i16, ptr %add.ptr.i.i43.i.i, i32 2
  %245 = ptrtoint ptr %arrayidx20.i54.i.i to i32
  call void @__asan_load2_noabort(i32 %245)
  %246 = load i16, ptr %arrayidx20.i54.i.i, align 2
  %arrayidx22.i55.i.i = getelementptr i8, ptr %a.0569, i32 30
  %247 = ptrtoint ptr %arrayidx22.i55.i.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %arrayidx22.i55.i.i, align 2
  %neg24.i56.i.i = xor i16 %248, -1
  %and25.i57.i.i = and i16 %246, %neg24.i56.i.i
  %or26.i58.i.i = or i16 %and25.i57.i.i, %244
  store i16 %or26.i58.i.i, ptr %arrayidx20.i54.i.i, align 2
  %249 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %bf.load.i.i.i.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %250 = and i16 %bf.load.i.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %250)
  %cmp.i.i.i.i = icmp eq i16 %250, 1024
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %skb_postpull_rcsum.exit.i.i.skb_postpush_rcsum.exit.i.i_crit_edge

skb_postpull_rcsum.exit.i.i.skb_postpush_rcsum.exit.i.i_crit_edge: ; preds = %skb_postpull_rcsum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpush_rcsum.exit.i.i

if.then.i.i.i.i:                                  ; preds = %skb_postpull_rcsum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %251 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %head.i.i77.i, align 8
  %253 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i61.i.i = zext i16 %254 to i32
  %add.ptr.i.i62.i.i = getelementptr i8, ptr %252, i32 %conv.i.i61.i.i
  %255 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %9, align 8
  %call.i.i.i.i373 = call i32 @csum_partial(ptr noundef %add.ptr.i.i62.i.i, i32 noundef 12, i32 noundef 0) #13
  %add.i.i.i.i.i.i = add i32 %call.i.i.i.i373, %256
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i.i, i32 %call.i.i.i.i373)
  %cmp.i.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i.i, %call.i.i.i.i373
  %conv.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  %add1.i.i.i.i.i.i = add i32 %add.i.i.i.i.i.i, %conv.i.i.i.i.i.i
  %257 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %add1.i.i.i.i.i.i, ptr %9, align 8
  br label %skb_postpush_rcsum.exit.i.i

skb_postpush_rcsum.exit.i.i:                      ; preds = %if.then.i.i.i.i, %skb_postpull_rcsum.exit.i.i.skb_postpush_rcsum.exit.i.i_crit_edge
  %258 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %head.i.i77.i, align 8
  %260 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i65.i.i = zext i16 %261 to i32
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %259, i32 %conv.i.i65.i.i
  %h_source16.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i66.i.i, i32 0, i32 1
  %262 = ptrtoint ptr %h_source16.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %h_source16.i.i, align 4
  %264 = ptrtoint ptr %eth.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %eth.i.i, align 4
  %add.ptr.i.i98.i = getelementptr i8, ptr %h_source16.i.i, i32 4
  %265 = ptrtoint ptr %add.ptr.i.i98.i to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %add.ptr.i.i98.i, align 2
  %267 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %266, ptr %add.ptr1.i.i.i, align 2
  %268 = load ptr, ptr %head.i.i77.i, align 8
  %269 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i69.i.i = zext i16 %269 to i32
  %add.ptr.i.i70.i.i = getelementptr i8, ptr %268, i32 %conv.i.i69.i.i
  %270 = ptrtoint ptr %add.ptr.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %add.ptr.i.i70.i.i, align 4
  %272 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 %271, ptr %dst.i.i, align 4
  %add.ptr.i71.i.i = getelementptr i8, ptr %add.ptr.i.i70.i.i, i32 4
  %273 = ptrtoint ptr %add.ptr.i71.i.i to i32
  call void @__asan_load2_noabort(i32 %273)
  %274 = load i16, ptr %add.ptr.i71.i.i, align 2
  %275 = ptrtoint ptr %add.ptr1.i72.i.i to i32
  call void @__asan_store2_noabort(i32 %275)
  store i16 %274, ptr %add.ptr1.i72.i.i, align 2
  br label %for.inc

sw.bb20.i374:                                     ; preds = %sw.bb68
  %add.ptr.i358 = getelementptr i8, ptr %a.0569, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key.i.i) #13
  %276 = call ptr @memset(ptr %key.i.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mask.i.i) #13
  %277 = call ptr @memset(ptr %mask.i.i, i32 255, i32 24)
  %call.i99.i = call i32 @nsh_key_from_nlattr(ptr noundef %add.ptr.i358, ptr noundef nonnull %key.i.i, ptr noundef nonnull %mask.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool.not.i100.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool.not.i100.i, label %if.end.i105.i, label %sw.bb20.i374.set_nsh.exit.i_crit_edge

sw.bb20.i374.set_nsh.exit.i_crit_edge:            ; preds = %sw.bb20.i374
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

if.end.i105.i:                                    ; preds = %sw.bb20.i374
  %278 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %head.i.i77.i, align 8
  %280 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i.i102.i = zext i16 %281 to i32
  %add.ptr.i.i.i103.i = getelementptr i8, ptr %279, i32 %conv.i.i.i102.i
  %282 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i103.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %283 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, 8
  %284 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %len6.i, align 4
  %286 = ptrtoint ptr %data_len.i.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %data_len.i.i.i286.i, align 8
  %sub.i.i.i104.i = sub i32 %285, %287
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub.i.i.i104.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i.i, %sub.i.i.i104.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.i105.i.if.end4.i.i_crit_edge, !prof !66

if.end.i105.i.if.end4.i.i_crit_edge:              ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

if.end.i.i.i:                                     ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_cmp4(i32 %285, i32 %add.i.i)
  %cmp3.i.i.i = icmp ult i32 %285, %add.i.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.set_nsh.exit.i_crit_edge, label %pskb_may_pull.exit.i.i, !prof !66

if.end.i.i.i.set_nsh.exit.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i376 = sub i32 %add.i.i, %sub.i.i.i104.i
  %call13.i.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i376) #13
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.set_nsh.exit.i_crit_edge, label %pskb_may_pull.exit.i.i.if.end4.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end4.i.i_crit_edge:     ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i

pskb_may_pull.exit.i.i.set_nsh.exit.i_crit_edge:  ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

if.end4.i.i:                                      ; preds = %pskb_may_pull.exit.i.i.if.end4.i.i_crit_edge, %if.end.i105.i.if.end4.i.i_crit_edge
  %288 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %head.i.i77.i, align 8
  %290 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i114.i.i = zext i16 %291 to i32
  %add.ptr.i.i115.i.i = getelementptr i8, ptr %289, i32 %conv.i.i114.i.i
  %292 = ptrtoint ptr %add.ptr.i.i115.i.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %add.ptr.i.i115.i.i, align 4
  %294 = shl i16 %293, 2
  %295 = and i16 %294, 252
  %conv.i.i377 = zext i16 %295 to i32
  %296 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i121.i.i = ptrtoint ptr %add.ptr.i.i115.i.i to i32
  %sub.ptr.rhs.cast.i122.i.i = ptrtoint ptr %297 to i32
  %sub.ptr.sub.i123.i.i = sub i32 %sub.ptr.lhs.cast.i121.i.i, %sub.ptr.rhs.cast.i122.i.i
  %add8.i.i = add i32 %sub.ptr.sub.i123.i.i, %conv.i.i377
  %call9.i.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add8.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end14.i.i, label %if.end4.i.i.set_nsh.exit.i_crit_edge, !prof !68

if.end4.i.i.set_nsh.exit.i_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

if.end14.i.i:                                     ; preds = %if.end4.i.i
  %298 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %head.i.i77.i, align 8
  %300 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i126.i.i = zext i16 %301 to i32
  %add.ptr.i.i127.i.i = getelementptr i8, ptr %299, i32 %conv.i.i126.i.i
  %302 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %bf.load.i.i107.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %bf.lshr.i.i108.i = lshr i16 %bf.load.i.i107.i, 9
  %trunc.i.i109.i = trunc i16 %bf.lshr.i.i108.i to i2
  %303 = zext i2 %trunc.i.i109.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %303, ptr @__sancov_gen_cov_switch_values.23)
  switch i2 %trunc.i.i109.i, label %if.end14.i.i.skb_postpull_rcsum.exit.i124.i_crit_edge [
    i2 -2, label %if.then.i.i112.i
    i2 -1, label %land.lhs.true.i.i118.i
  ]

if.end14.i.i.skb_postpull_rcsum.exit.i124.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit.i124.i

if.then.i.i112.i:                                 ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %304 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %9, align 8
  %sub.i.i128.i.i = sub i32 0, %305
  %call2.i.i110.i = call i32 @csum_partial(ptr noundef %add.ptr.i.i127.i.i, i32 noundef %conv.i.i377, i32 noundef %sub.i.i128.i.i) #13
  %sub.i25.i.i111.i = sub i32 0, %call2.i.i110.i
  %306 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 %sub.i25.i.i111.i, ptr %9, align 8
  br label %skb_postpull_rcsum.exit.i124.i

land.lhs.true.i.i118.i:                           ; preds = %if.end14.i.i
  %307 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %9, align 8
  %conv.i.i129.i.i = zext i16 %308 to i32
  %309 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i113.i = ptrtoint ptr %310 to i32
  %sub.ptr.rhs.cast.i.i.i.i114.i = ptrtoint ptr %299 to i32
  %sub.ptr.sub.i.neg.i.i.i115.i = add i32 %conv.i.i129.i.i, %sub.ptr.rhs.cast.i.i.i.i114.i
  %sub.i26.i.i116.i = sub i32 %sub.ptr.sub.i.neg.i.i.i115.i, %sub.ptr.lhs.cast.i.i.i.i113.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i26.i.i116.i)
  %cmp13.i.i117.i = icmp slt i32 %sub.i26.i.i116.i, 0
  br i1 %cmp13.i.i117.i, label %if.then15.i.i120.i, label %land.lhs.true.i.i118.i.skb_postpull_rcsum.exit.i124.i_crit_edge

land.lhs.true.i.i118.i.skb_postpull_rcsum.exit.i124.i_crit_edge: ; preds = %land.lhs.true.i.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpull_rcsum.exit.i124.i

if.then15.i.i120.i:                               ; preds = %land.lhs.true.i.i118.i
  call void @__sanitizer_cov_trace_pc() #15
  %bf.clear18.i.i119.i = and i16 %bf.load.i.i107.i, -1537
  %311 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %bf.clear18.i.i119.i, ptr %sw_hash.i.i268.i, align 8
  br label %skb_postpull_rcsum.exit.i124.i

skb_postpull_rcsum.exit.i124.i:                   ; preds = %if.then15.i.i120.i, %land.lhs.true.i.i118.i.skb_postpull_rcsum.exit.i124.i_crit_edge, %if.then.i.i112.i, %if.end14.i.i.skb_postpull_rcsum.exit.i124.i_crit_edge
  %312 = ptrtoint ptr %add.ptr.i.i127.i.i to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %add.ptr.i.i127.i.i, align 4
  %314 = lshr i16 %313, 12
  %315 = trunc i16 %314 to i8
  %conv1.i.i.i = and i8 %315, 3
  %316 = ptrtoint ptr %key.i.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %key.i.i, align 4
  %318 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %mask.i.i, align 4
  %neg.i.i = xor i8 %319, -1
  %and.i121.i = and i8 %conv1.i.i.i, %neg.i.i
  %or.i.i = or i8 %and.i121.i, %317
  %320 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %or.i.i, ptr %5, align 8
  %321 = load i16, ptr %add.ptr.i.i127.i.i, align 4
  %322 = lshr i16 %321, 6
  %323 = trunc i16 %322 to i8
  %conv1.i130.i.i = and i8 %323, 63
  %324 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %10, align 1
  %326 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %16, align 1
  %neg34.i.i = xor i8 %327, -1
  %and35.i.i = and i8 %conv1.i130.i.i, %neg34.i.i
  %or36.i.i = or i8 %and35.i.i, %325
  %328 = ptrtoint ptr %ttl39.i.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %or36.i.i, ptr %ttl39.i.i, align 1
  %conv.i.i.i = zext i8 %or.i.i to i16
  %shl.i.i.i = shl i16 %conv.i.i.i, 12
  %and.i.i122.i = and i16 %shl.i.i.i, 12288
  %conv1.i131.i.i = zext i8 %or36.i.i to i16
  %shl2.i.i.i = shl nuw nsw i16 %conv1.i131.i.i, 6
  %and3.i.i.i = and i16 %shl2.i.i.i, 4032
  %329 = load i16, ptr %add.ptr.i.i127.i.i, align 4
  %330 = and i16 %329, -16321
  %or.i.i123.i = or i16 %330, %and.i.i122.i
  %or1.i.i.i.i = or i16 %or.i.i123.i, %and3.i.i.i
  store i16 %or1.i.i.i.i, ptr %add.ptr.i.i127.i.i, align 4
  %331 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %11, align 4
  %path_hdr41.i.i = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i127.i.i, i32 0, i32 3
  %333 = ptrtoint ptr %path_hdr41.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %path_hdr41.i.i, align 4
  %335 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %17, align 4
  %neg44.i.i = xor i32 %336, -1
  %and45.i.i = and i32 %334, %neg44.i.i
  %or46.i.i = or i32 %and45.i.i, %332
  store i32 %or46.i.i, ptr %path_hdr41.i.i, align 4
  %337 = ptrtoint ptr %lse6.i.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %or46.i.i, ptr %lse6.i.i, align 4
  %mdtype.i.i = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i127.i.i, i32 0, i32 1
  %338 = ptrtoint ptr %mdtype.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %mdtype.i.i, align 2
  %340 = zext i8 %339 to i64
  call void @__sanitizer_cov_trace_switch(i64 %340, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %339, label %skb_postpull_rcsum.exit.i124.i.set_nsh.exit.i_crit_edge [
    i8 1, label %for.cond.preheader.i.i
    i8 2, label %sw.bb65.i.i
  ]

skb_postpull_rcsum.exit.i124.i.set_nsh.exit.i_crit_edge: ; preds = %skb_postpull_rcsum.exit.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

for.cond.preheader.i.i:                           ; preds = %skb_postpull_rcsum.exit.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  %341 = getelementptr inbounds %struct.nshhdr, ptr %add.ptr.i.i127.i.i, i32 0, i32 4
  %342 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %12, align 4
  %344 = ptrtoint ptr %341 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %341, align 4
  %346 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %18, align 4
  %neg57.i.i = xor i32 %347, -1
  %and58.i.i = and i32 %345, %neg57.i.i
  %or59.i.i = or i32 %and58.i.i, %343
  store i32 %or59.i.i, ptr %341, align 4
  %348 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %13, align 4
  %arrayidx54.1.i.i = getelementptr [4 x i32], ptr %341, i32 0, i32 1
  %350 = ptrtoint ptr %arrayidx54.1.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %arrayidx54.1.i.i, align 4
  %352 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %19, align 4
  %neg57.1.i.i = xor i32 %353, -1
  %and58.1.i.i = and i32 %351, %neg57.1.i.i
  %or59.1.i.i = or i32 %and58.1.i.i, %349
  store i32 %or59.1.i.i, ptr %arrayidx54.1.i.i, align 4
  %354 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %14, align 4
  %arrayidx54.2.i.i = getelementptr [4 x i32], ptr %341, i32 0, i32 2
  %356 = ptrtoint ptr %arrayidx54.2.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx54.2.i.i, align 4
  %358 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %20, align 4
  %neg57.2.i.i = xor i32 %359, -1
  %and58.2.i.i = and i32 %357, %neg57.2.i.i
  %or59.2.i.i = or i32 %and58.2.i.i, %355
  store i32 %or59.2.i.i, ptr %arrayidx54.2.i.i, align 4
  %360 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %15, align 4
  %arrayidx54.3.i.i = getelementptr [4 x i32], ptr %341, i32 0, i32 3
  %362 = ptrtoint ptr %arrayidx54.3.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %arrayidx54.3.i.i, align 4
  %364 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %21, align 4
  %neg57.3.i.i = xor i32 %365, -1
  %and58.3.i.i = and i32 %363, %neg57.3.i.i
  %or59.3.i.i = or i32 %and58.3.i.i, %361
  store i32 %or59.3.i.i, ptr %arrayidx54.3.i.i, align 4
  %366 = call ptr @memcpy(ptr %context66.i.i, ptr %341, i32 16)
  br label %sw.epilog.i.i

sw.bb65.i.i:                                      ; preds = %skb_postpull_rcsum.exit.i124.i
  call void @__sanitizer_cov_trace_pc() #15
  %367 = call ptr @memset(ptr %context66.i.i, i32 0, i32 16)
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb65.i.i, %for.cond.preheader.i.i
  %368 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %368)
  %bf.load.i.i.i125.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %369 = and i16 %bf.load.i.i.i125.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %369)
  %cmp.i.i.i126.i = icmp eq i16 %369, 1024
  br i1 %cmp.i.i.i126.i, label %if.then.i.i.i132.i, label %sw.epilog.i.i.set_nsh.exit.i_crit_edge

sw.epilog.i.i.set_nsh.exit.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_nsh.exit.i

if.then.i.i.i132.i:                               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %370 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %9, align 8
  %call.i.i.i127.i = call i32 @csum_partial(ptr noundef %add.ptr.i.i127.i.i, i32 noundef %conv.i.i377, i32 noundef 0) #13
  %add.i.i.i.i.i128.i = add i32 %call.i.i.i127.i, %371
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i128.i, i32 %call.i.i.i127.i)
  %cmp.i.i.i.i.i129.i = icmp ult i32 %add.i.i.i.i.i128.i, %call.i.i.i127.i
  %conv.i.i.i.i.i130.i = zext i1 %cmp.i.i.i.i.i129.i to i32
  %add1.i.i.i.i.i131.i = add i32 %add.i.i.i.i.i128.i, %conv.i.i.i.i.i130.i
  %372 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %add1.i.i.i.i.i131.i, ptr %9, align 8
  br label %set_nsh.exit.i

set_nsh.exit.i:                                   ; preds = %if.then.i.i.i132.i, %sw.epilog.i.i.set_nsh.exit.i_crit_edge, %skb_postpull_rcsum.exit.i124.i.set_nsh.exit.i_crit_edge, %if.end4.i.i.set_nsh.exit.i_crit_edge, %pskb_may_pull.exit.i.i.set_nsh.exit.i_crit_edge, %if.end.i.i.i.set_nsh.exit.i_crit_edge, %sw.bb20.i374.set_nsh.exit.i_crit_edge
  %retval.0.i.i378 = phi i32 [ %call.i99.i, %sw.bb20.i374.set_nsh.exit.i_crit_edge ], [ -12, %pskb_may_pull.exit.i.i.set_nsh.exit.i_crit_edge ], [ %call9.i.i, %if.end4.i.i.set_nsh.exit.i_crit_edge ], [ -22, %skb_postpull_rcsum.exit.i124.i.set_nsh.exit.i_crit_edge ], [ 0, %sw.epilog.i.i.set_nsh.exit.i_crit_edge ], [ 0, %if.then.i.i.i132.i ], [ -12, %if.end.i.i.i.set_nsh.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mask.i.i) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key.i.i) #13
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %sw.bb68
  %add.ptr.i133.i = getelementptr i8, ptr %a.0569, i32 8
  %373 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %head.i.i77.i, align 8
  %375 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %375)
  %376 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i.i137.i = zext i16 %376 to i32
  %add.ptr.i.i.i138.i = getelementptr i8, ptr %374, i32 %conv.i.i.i137.i
  %377 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i140.i = ptrtoint ptr %add.ptr.i.i.i138.i to i32
  %sub.ptr.rhs.cast.i.i141.i = ptrtoint ptr %378 to i32
  %sub.ptr.sub.i.i142.i = sub i32 20, %sub.ptr.rhs.cast.i.i141.i
  %add.i143.i = add i32 %sub.ptr.sub.i.i142.i, %sub.ptr.lhs.cast.i.i140.i
  %call1.i.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i143.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i144.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i144.i, label %if.end.i145.i, label %sw.bb22.i.if.then160_crit_edge, !prof !68

sw.bb22.i.if.then160_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i145.i:                                    ; preds = %sw.bb22.i
  %add.ptr25.i = getelementptr i8, ptr %a.0569, i32 20
  %379 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %head.i.i77.i, align 8
  %381 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i96.i.i = zext i16 %382 to i32
  %add.ptr.i.i97.i.i = getelementptr i8, ptr %380, i32 %conv.i.i96.i.i
  %383 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %add.ptr25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %384)
  %tobool5.not.i.i = icmp eq i32 %384, 0
  br i1 %tobool5.not.i.i, label %if.end.i145.i.if.end19.i.i_crit_edge, label %if.then6.i.i

if.end.i145.i.if.end19.i.i_crit_edge:             ; preds = %if.end.i145.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.then6.i.i:                                     ; preds = %if.end.i145.i
  %385 = ptrtoint ptr %add.ptr.i133.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %add.ptr.i133.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 8
  %387 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %saddr.i.i, align 4
  %neg.i146.i = xor i32 %384, -1
  %and.i147.i = and i32 %388, %neg.i146.i
  %or.i148.i = or i32 %and.i147.i, %386
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i148.i, i32 %388)
  %cmp.not.i.i = icmp eq i32 %or.i148.i, %388
  br i1 %cmp.not.i.i, label %if.then6.i.i.if.end19.i.i_crit_edge, label %if.then16.i.i, !prof !68

if.then6.i.i.if.end19.i.i_crit_edge:              ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19.i.i

if.then16.i.i:                                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @set_ip_addr(ptr noundef %skb, ptr noundef %add.ptr.i.i97.i.i, ptr noundef %saddr.i.i, i32 noundef %or.i148.i) #13
  %389 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %or.i148.i, ptr %5, align 8
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then16.i.i, %if.then6.i.i.if.end19.i.i_crit_edge, %if.end.i145.i.if.end19.i.i_crit_edge
  %ipv4_dst.i.i = getelementptr i8, ptr %a.0569, i32 24
  %390 = ptrtoint ptr %ipv4_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %ipv4_dst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool20.not.i.i = icmp eq i32 %391, 0
  br i1 %tobool20.not.i.i, label %if.end19.i.i.if.end39.i.i_crit_edge, label %if.then21.i.i

if.end19.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  %ipv4_dst22.i.i = getelementptr i8, ptr %a.0569, i32 12
  %392 = ptrtoint ptr %ipv4_dst22.i.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %ipv4_dst22.i.i, align 4
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 9
  %394 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %daddr.i.i, align 4
  %neg24.i.i = xor i32 %391, -1
  %and25.i.i = and i32 %395, %neg24.i.i
  %or26.i.i = or i32 %and25.i.i, %393
  call void @__sanitizer_cov_trace_cmp4(i32 %or26.i.i, i32 %395)
  %cmp28.not.i.i = icmp eq i32 %or26.i.i, %395
  br i1 %cmp28.not.i.i, label %if.then21.i.i.if.end39.i.i_crit_edge, label %if.then35.i.i, !prof !68

if.then21.i.i.if.end39.i.i_crit_edge:             ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i.i

if.then35.i.i:                                    ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @set_ip_addr(ptr noundef %skb, ptr noundef %add.ptr.i.i97.i.i, ptr noundef %daddr.i.i, i32 noundef %or26.i.i) #13
  %396 = ptrtoint ptr %lse6.i.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %or26.i.i, ptr %lse6.i.i, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then35.i.i, %if.then21.i.i.if.end39.i.i_crit_edge, %if.end19.i.i.if.end39.i.i_crit_edge
  %ipv4_tos.i.i = getelementptr i8, ptr %a.0569, i32 29
  %397 = ptrtoint ptr %ipv4_tos.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %ipv4_tos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %398)
  %tobool40.not.i.i = icmp eq i8 %398, 0
  br i1 %tobool40.not.i.i, label %if.end39.i.i.if.end47.i.i_crit_edge, label %if.then41.i.i

if.end39.i.i.if.end47.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i.i

if.then41.i.i:                                    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %neg43.i.i = xor i8 %398, -1
  %ipv4_tos45.i.i = getelementptr i8, ptr %a.0569, i32 17
  %399 = ptrtoint ptr %ipv4_tos45.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %ipv4_tos45.i.i, align 1
  %check1.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 7
  %401 = ptrtoint ptr %check1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %401)
  %402 = load i16, ptr %check1.i.i.i, align 2
  %conv.i.i150.i = zext i16 %402 to i32
  %tos.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 1
  %403 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %tos.i.i.i, align 1
  %conv2.i.i.i = zext i8 %404 to i32
  %add.i.i.i379 = add nuw nsw i32 %conv2.i.i.i, %conv.i.i150.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i.i379)
  %tobool.not.i.i.i380 = icmp ult i32 %add.i.i.i379, 65535
  %add8.i.i.i = add nuw nsw i32 %add.i.i.i379, 1
  %and10.i.i.i = and i32 %add8.i.i.i, 65535
  %check.0.i.i.i = select i1 %tobool.not.i.i.i380, i32 %add.i.i.i379, i32 %and10.i.i.i
  %and28.i.i.i = and i8 %404, %neg43.i.i
  %or29.i.i.i = or i8 %and28.i.i.i, %400
  %conv11.i.i.i = zext i8 %or29.i.i.i to i32
  %sub.i.i151.i = sub nsw i32 %check.0.i.i.i, %conv11.i.i.i
  %shr12.i.i.i = lshr i32 %sub.i.i151.i, 16
  %add13.i.i.i = add nsw i32 %shr12.i.i.i, %sub.i.i151.i
  %conv14.i.i.i = trunc i32 %add13.i.i.i to i16
  %405 = ptrtoint ptr %check1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %conv14.i.i.i, ptr %check1.i.i.i, align 2
  %406 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 %or29.i.i.i, ptr %tos.i.i.i, align 1
  %407 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 %or29.i.i.i, ptr %tos.i.i, align 1
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %if.then41.i.i, %if.end39.i.i.if.end47.i.i_crit_edge
  %ipv4_ttl.i.i = getelementptr i8, ptr %a.0569, i32 30
  %408 = ptrtoint ptr %ipv4_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %ipv4_ttl.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %409)
  %tobool48.not.i.i = icmp eq i8 %409, 0
  br i1 %tobool48.not.i.i, label %if.end47.i.i.for.inc_crit_edge, label %if.then49.i.i

if.end47.i.i.for.inc_crit_edge:                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then49.i.i:                                    ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ipv4_ttl50.i.i = getelementptr i8, ptr %a.0569, i32 18
  %410 = ptrtoint ptr %ipv4_ttl50.i.i to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %ipv4_ttl50.i.i, align 2
  %ttl.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 5
  %412 = ptrtoint ptr %ttl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %ttl.i.i.i, align 4
  %conv1.i.i152.i = zext i8 %413 to i16
  %neg.i.i153.i = xor i8 %409, -1
  %and.i.i154.i = and i8 %413, %neg.i.i153.i
  %or.i.i155.i = or i8 %and.i.i154.i, %411
  %check.i.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i97.i.i, i32 0, i32 7
  %shl.i.i156.i = shl nuw i16 %conv1.i.i152.i, 8
  %conv7.i.i.i = zext i8 %or.i.i155.i to i16
  %shl8.i.i.i = shl nuw i16 %conv7.i.i.i, 8
  %414 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_load2_noabort(i32 %414)
  %415 = load i16, ptr %check.i.i.i, align 2
  %neg.i.i.i.i = xor i16 %415, -1
  %neg.i.i.i.i.i = xor i16 %shl.i.i156.i, -1
  %add.i.i.i.i.i157.i = add i16 %neg.i.i.i.i.i, %neg.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i.i157.i, i16 %neg.i.i.i.i.i)
  %cmp.i.i.i.i.i158.i = icmp ult i16 %add.i.i.i.i.i157.i, %neg.i.i.i.i.i
  %conv6.i.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i158.i to i16
  %add7.i.i.i.i.i.i = add i16 %shl8.i.i.i, %add.i.i.i.i.i157.i
  %add.i.i.i.i.i = add i16 %add7.i.i.i.i.i.i, %conv6.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i.i, i16 %shl8.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i16 %add.i.i.i.i.i, %shl8.i.i.i
  %conv6.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i16
  %add7.i.i.i.i.i = add i16 %add.i.i.i.i.i, %conv6.i.i.i.i.i
  %neg4.i.i.i.i = xor i16 %add7.i.i.i.i.i, -1
  %416 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 %neg4.i.i.i.i, ptr %check.i.i.i, align 2
  %417 = ptrtoint ptr %ttl.i.i.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %or.i.i155.i, ptr %ttl.i.i.i, align 4
  %418 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 %or.i.i155.i, ptr %ttl.i, align 2
  br label %for.inc

sw.bb27.i:                                        ; preds = %sw.bb68
  %add.ptr.i159.i = getelementptr i8, ptr %a.0569, i32 8
  %419 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %head.i.i77.i, align 8
  %421 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i.i163.i = zext i16 %422 to i32
  %add.ptr.i.i.i164.i = getelementptr i8, ptr %420, i32 %conv.i.i.i163.i
  %423 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i166.i = ptrtoint ptr %add.ptr.i.i.i164.i to i32
  %sub.ptr.rhs.cast.i.i167.i = ptrtoint ptr %424 to i32
  %sub.ptr.sub.i.i168.i = sub i32 40, %sub.ptr.rhs.cast.i.i167.i
  %add.i169.i = add i32 %sub.ptr.sub.i.i168.i, %sub.ptr.lhs.cast.i.i166.i
  %call1.i170.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i169.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i170.i)
  %tobool.not.i171.i = icmp eq i32 %call1.i170.i, 0
  br i1 %tobool.not.i171.i, label %if.end.i173.i, label %sw.bb27.i.if.then160_crit_edge, !prof !68

sw.bb27.i.if.then160_crit_edge:                   ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i173.i:                                    ; preds = %sw.bb27.i
  %add.ptr30.i = getelementptr i8, ptr %a.0569, i32 48
  %425 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %head.i.i77.i, align 8
  %427 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i120.i.i = zext i16 %428 to i32
  %add.ptr.i.i121.i.i = getelementptr i8, ptr %426, i32 %conv.i.i120.i.i
  %429 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %add.ptr30.i, align 4
  %arrayidx1.i.i.i = getelementptr i8, ptr %a.0569, i32 52
  %431 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %arrayidx1.i.i.i, align 4
  %or.i.i172.i = or i32 %432, %430
  %arrayidx2.i.i.i = getelementptr i8, ptr %a.0569, i32 56
  %433 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or3.i.i.i = or i32 %or.i.i172.i, %434
  %arrayidx4.i.i.i = getelementptr i8, ptr %a.0569, i32 60
  %435 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %arrayidx4.i.i.i, align 4
  %or5.i.i.i = or i32 %or3.i.i.i, %436
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %or5.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.end.i173.i.if.end26.i.i_crit_edge, label %if.then6.i178.i

if.end.i173.i.if.end26.i.i_crit_edge:             ; preds = %if.end.i173.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.i.i

if.then6.i178.i:                                  ; preds = %if.end.i173.i
  %saddr7.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %masked.i.i) #13
  %437 = ptrtoint ptr %add.ptr.i159.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %add.ptr.i159.i, align 4
  %439 = ptrtoint ptr %saddr7.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %saddr7.i.i, align 4
  %neg.i.i174.i = xor i32 %430, -1
  %and.i.i175.i = and i32 %440, %neg.i.i174.i
  %or.i122.i.i = or i32 %and.i.i175.i, %438
  %441 = ptrtoint ptr %masked.i.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %or.i122.i.i, ptr %masked.i.i, align 4
  %arrayidx4.i123.i.i = getelementptr i8, ptr %a.0569, i32 12
  %442 = ptrtoint ptr %arrayidx4.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx4.i123.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i32, ptr %saddr7.i.i, i32 1
  %444 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %arrayidx5.i.i.i, align 4
  %neg7.i.i.i = xor i32 %432, -1
  %and8.i.i.i = and i32 %445, %neg7.i.i.i
  %or9.i.i.i = or i32 %and8.i.i.i, %443
  %446 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %or9.i.i.i, ptr %1, align 4
  %arrayidx11.i.i176.i = getelementptr i8, ptr %a.0569, i32 16
  %447 = ptrtoint ptr %arrayidx11.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %arrayidx11.i.i176.i, align 4
  %arrayidx12.i.i.i = getelementptr i32, ptr %saddr7.i.i, i32 2
  %449 = ptrtoint ptr %arrayidx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %arrayidx12.i.i.i, align 4
  %neg14.i.i.i = xor i32 %434, -1
  %and15.i.i.i = and i32 %450, %neg14.i.i.i
  %or16.i.i.i = or i32 %and15.i.i.i, %448
  %451 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 %or16.i.i.i, ptr %2, align 4
  %arrayidx18.i.i177.i = getelementptr i8, ptr %a.0569, i32 20
  %452 = ptrtoint ptr %arrayidx18.i.i177.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %arrayidx18.i.i177.i, align 4
  %arrayidx19.i.i.i = getelementptr i32, ptr %saddr7.i.i, i32 3
  %454 = ptrtoint ptr %arrayidx19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %arrayidx19.i.i.i, align 4
  %neg21.i.i.i = xor i32 %436, -1
  %and22.i.i.i = and i32 %455, %neg21.i.i.i
  %or23.i.i.i = or i32 %and22.i.i.i, %453
  %456 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %or23.i.i.i, ptr %3, align 4
  %bcmp117.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %saddr7.i.i, ptr noundef nonnull dereferenceable(16) %masked.i.i, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp117.i.i)
  %tobool15.not.i.i = icmp eq i32 %bcmp117.i.i, 0
  br i1 %tobool15.not.i.i, label %if.then6.i178.i.if.end25.i.i_crit_edge, label %if.then22.i.i, !prof !68

if.then6.i178.i.if.end25.i.i_crit_edge:           ; preds = %if.then6.i178.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i.i

if.then22.i.i:                                    ; preds = %if.then6.i178.i
  call void @__sanitizer_cov_trace_pc() #15
  %457 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %4, align 4
  call fastcc void @set_ipv6_addr(ptr noundef %skb, i8 noundef zeroext %458, ptr noundef %saddr7.i.i, ptr noundef nonnull %masked.i.i, i1 noundef zeroext true) #13
  %459 = call ptr @memcpy(ptr %5, ptr %masked.i.i, i32 16)
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then22.i.i, %if.then6.i178.i.if.end25.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %masked.i.i) #13
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.end.i173.i.if.end26.i.i_crit_edge
  %ipv6_dst.i.i = getelementptr i8, ptr %a.0569, i32 64
  %460 = ptrtoint ptr %ipv6_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %ipv6_dst.i.i, align 4
  %arrayidx1.i124.i.i = getelementptr i8, ptr %a.0569, i32 68
  %462 = ptrtoint ptr %arrayidx1.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %arrayidx1.i124.i.i, align 4
  %or.i125.i.i = or i32 %463, %461
  %arrayidx2.i126.i.i = getelementptr i8, ptr %a.0569, i32 72
  %464 = ptrtoint ptr %arrayidx2.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %arrayidx2.i126.i.i, align 4
  %or3.i127.i.i = or i32 %or.i125.i.i, %465
  %arrayidx4.i128.i.i = getelementptr i8, ptr %a.0569, i32 76
  %466 = ptrtoint ptr %arrayidx4.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %arrayidx4.i128.i.i, align 4
  %or5.i129.i.i = or i32 %or3.i127.i.i, %467
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i129.i.i)
  %tobool.i130.not.i.i = icmp eq i32 %or5.i129.i.i, 0
  br i1 %tobool.i130.not.i.i, label %if.end26.i.i.if.end57.i.i_crit_edge, label %if.then29.i.i

if.end26.i.i.if.end57.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i.i) #13
  %468 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %468)
  store i32 0, ptr %offset.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags.i.i) #13
  %469 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 4, ptr %flags.i.i, align 4
  %daddr30.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %masked31.i.i) #13
  %ipv6_dst32.i.i = getelementptr i8, ptr %a.0569, i32 24
  %470 = ptrtoint ptr %ipv6_dst32.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %ipv6_dst32.i.i, align 4
  %472 = ptrtoint ptr %daddr30.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %daddr30.i.i, align 4
  %neg.i131.i.i = xor i32 %461, -1
  %and.i132.i.i = and i32 %473, %neg.i131.i.i
  %or.i133.i.i = or i32 %and.i132.i.i, %471
  %474 = ptrtoint ptr %masked31.i.i to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %or.i133.i.i, ptr %masked31.i.i, align 4
  %arrayidx4.i134.i.i = getelementptr i8, ptr %a.0569, i32 28
  %475 = ptrtoint ptr %arrayidx4.i134.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %arrayidx4.i134.i.i, align 4
  %arrayidx5.i135.i.i = getelementptr i32, ptr %daddr30.i.i, i32 1
  %477 = ptrtoint ptr %arrayidx5.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %arrayidx5.i135.i.i, align 4
  %neg7.i137.i.i = xor i32 %463, -1
  %and8.i138.i.i = and i32 %478, %neg7.i137.i.i
  %or9.i139.i.i = or i32 %and8.i138.i.i, %476
  %479 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %or9.i139.i.i, ptr %6, align 4
  %arrayidx11.i141.i.i = getelementptr i8, ptr %a.0569, i32 32
  %480 = ptrtoint ptr %arrayidx11.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %arrayidx11.i141.i.i, align 4
  %arrayidx12.i142.i.i = getelementptr i32, ptr %daddr30.i.i, i32 2
  %482 = ptrtoint ptr %arrayidx12.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %arrayidx12.i142.i.i, align 4
  %neg14.i144.i.i = xor i32 %465, -1
  %and15.i145.i.i = and i32 %483, %neg14.i144.i.i
  %or16.i146.i.i = or i32 %and15.i145.i.i, %481
  %484 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 %or16.i146.i.i, ptr %7, align 4
  %arrayidx18.i148.i.i = getelementptr i8, ptr %a.0569, i32 36
  %485 = ptrtoint ptr %arrayidx18.i148.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %arrayidx18.i148.i.i, align 4
  %arrayidx19.i149.i.i = getelementptr i32, ptr %daddr30.i.i, i32 3
  %487 = ptrtoint ptr %arrayidx19.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %arrayidx19.i149.i.i, align 4
  %neg21.i151.i.i = xor i32 %467, -1
  %and22.i152.i.i = and i32 %488, %neg21.i151.i.i
  %or23.i153.i.i = or i32 %and22.i152.i.i, %486
  %489 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 %or23.i153.i.i, ptr %8, align 4
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %daddr30.i.i, ptr noundef nonnull dereferenceable(16) %masked31.i.i, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool39.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool39.not.i.i, label %if.then29.i.i.if.end56.i.i_crit_edge, label %if.then46.i.i, !prof !68

if.then29.i.i.if.end56.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56.i.i

if.then46.i.i:                                    ; preds = %if.then29.i.i
  %nexthdr.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 3
  %490 = ptrtoint ptr %nexthdr.i.i to i32
  call void @__asan_load1_noabort(i32 %490)
  %491 = load i8, ptr %nexthdr.i.i, align 2
  %call47.i.i = call zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext %491) #13
  br i1 %call47.i.i, label %if.then48.i.i, label %if.then46.i.i.if.end50.i.i_crit_edge

if.then46.i.i.if.end50.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50.i.i

if.then48.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call49.i.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %offset.i.i, i32 noundef 43, ptr noundef null, ptr noundef nonnull %flags.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %call49.i.i)
  %cmp.i.i381 = icmp ne i32 %call49.i.i, 43
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.then48.i.i, %if.then46.i.i.if.end50.i.i_crit_edge
  %recalc_csum.0.off0.i.i = phi i1 [ %cmp.i.i381, %if.then48.i.i ], [ true, %if.then46.i.i.if.end50.i.i_crit_edge ]
  %492 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %4, align 4
  call fastcc void @set_ipv6_addr(ptr noundef %skb, i8 noundef zeroext %493, ptr noundef %daddr30.i.i, ptr noundef nonnull %masked31.i.i, i1 noundef zeroext %recalc_csum.0.off0.i.i) #13
  %494 = call ptr @memcpy(ptr %dst.i179.i, ptr %masked31.i.i, i32 16)
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.end50.i.i, %if.then29.i.i.if.end56.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %masked31.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags.i.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i.i) #13
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.end56.i.i, %if.end26.i.i.if.end57.i.i_crit_edge
  %ipv6_tclass.i.i = getelementptr i8, ptr %a.0569, i32 85
  %495 = ptrtoint ptr %ipv6_tclass.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %ipv6_tclass.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %496)
  %tobool58.not.i.i = icmp eq i8 %496, 0
  br i1 %tobool58.not.i.i, label %if.end57.i.i.if.end63.i.i_crit_edge, label %if.then59.i.i

if.end57.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i

if.then59.i.i:                                    ; preds = %if.end57.i.i
  %ipv6_tclass60.i.i = getelementptr i8, ptr %a.0569, i32 45
  %497 = ptrtoint ptr %ipv6_tclass60.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %ipv6_tclass60.i.i, align 1
  %499 = ptrtoint ptr %add.ptr.i.i121.i.i to i32
  call void @__asan_load2_noabort(i32 %499)
  %500 = load i16, ptr %add.ptr.i.i121.i.i, align 2
  %501 = lshr i16 %500, 4
  %conv1.i.i.i.i = trunc i16 %501 to i8
  %neg.i155.i.i = xor i8 %496, -1
  %502 = and i8 %conv1.i.i.i.i, %neg.i155.i.i
  %conv3.i.i.i = or i8 %502, %498
  %503 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %503)
  %bf.load.i.i181.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %504 = and i16 %bf.load.i.i181.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %504)
  %cmp.i.i.i = icmp eq i16 %504, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i193.i, label %if.then59.i.i.set_ipv6_dsfield.exit.i.i_crit_edge

if.then59.i.i.set_ipv6_dsfield.exit.i.i_crit_edge: ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_ipv6_dsfield.exit.i.i

if.then.i.i193.i:                                 ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i.mask.i.i.i = and i16 %501, 255
  %conv1.i.i182.i = zext i16 %conv1.i.mask.i.i.i to i32
  %shl.i.i183.i = shl nuw nsw i32 %conv1.i.i182.i, 12
  %conv7.i.i184.i = zext i8 %conv3.i.i.i to i32
  %shl8.i.i185.i = shl nuw nsw i32 %conv7.i.i184.i, 12
  %505 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %9, align 4
  %neg.i.i.i.i186.i = xor i32 %shl.i.i183.i, -1
  %add.i.i.i.i.i187.i = add i32 %506, %neg.i.i.i.i186.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i187.i, i32 %neg.i.i.i.i186.i)
  %cmp.i.i.i.i.i188.i = icmp ult i32 %add.i.i.i.i.i187.i, %neg.i.i.i.i186.i
  %conv.i.i.i.i.i189.i = zext i1 %cmp.i.i.i.i.i188.i to i32
  %add1.i.i.i.i.i190.i = add i32 %add.i.i.i.i.i187.i, %shl8.i.i185.i
  %add.i.i.i.i191.i = add i32 %add1.i.i.i.i.i190.i, %conv.i.i.i.i.i189.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i191.i, i32 %shl8.i.i185.i)
  %cmp.i.i.i.i192.i = icmp ult i32 %add.i.i.i.i191.i, %shl8.i.i185.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i192.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i191.i, %conv.i.i.i.i.i
  %507 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %add1.i.i.i.i.i, ptr %9, align 4
  br label %set_ipv6_dsfield.exit.i.i

set_ipv6_dsfield.exit.i.i:                        ; preds = %if.then.i.i193.i, %if.then59.i.i.set_ipv6_dsfield.exit.i.i_crit_edge
  %508 = ptrtoint ptr %add.ptr.i.i121.i.i to i32
  call void @__asan_load2_noabort(i32 %508)
  %509 = load i16, ptr %add.ptr.i.i121.i.i, align 2
  %conv2.i.i.i.i = zext i8 %neg.i155.i.i to i16
  %shl.i.i.i.i = shl nuw nsw i16 %conv2.i.i.i.i, 4
  %or.i.i.i.i382 = or i16 %shl.i.i.i.i, -4081
  %and.i.i.i.i383 = and i16 %509, %or.i.i.i.i382
  %conv6.i.i.i.i = zext i8 %conv3.i.i.i to i16
  %shl7.i.i.i.i = shl nuw nsw i16 %conv6.i.i.i.i, 4
  %or10.i.i.i.i = or i16 %and.i.i.i.i383, %shl7.i.i.i.i
  store i16 %or10.i.i.i.i, ptr %add.ptr.i.i121.i.i, align 2
  %510 = lshr i16 %or10.i.i.i.i, 4
  %conv1.i156.i.i = trunc i16 %510 to i8
  %511 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 %conv1.i156.i.i, ptr %tos.i.i, align 1
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %set_ipv6_dsfield.exit.i.i, %if.end57.i.i.if.end63.i.i_crit_edge
  %ipv6_label.i.i = getelementptr i8, ptr %a.0569, i32 80
  %512 = ptrtoint ptr %ipv6_label.i.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %ipv6_label.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %513)
  %tobool64.not.i.i = icmp eq i32 %513, 0
  br i1 %tobool64.not.i.i, label %if.end63.i.i.if.end68.i.i_crit_edge, label %if.then65.i.i

if.end63.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68.i.i

if.then65.i.i:                                    ; preds = %if.end63.i.i
  %ipv6_label66.i.i = getelementptr i8, ptr %a.0569, i32 40
  %514 = ptrtoint ptr %ipv6_label66.i.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %ipv6_label66.i.i, align 4
  %flow_lbl.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 1
  %516 = ptrtoint ptr %flow_lbl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %516)
  %517 = load i8, ptr %flow_lbl.i.i.i, align 1
  %conv.i.i194.i = zext i8 %517 to i32
  %shl.i157.i.i = shl nuw nsw i32 %conv.i.i194.i, 16
  %arrayidx2.i158.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 1, i32 1
  %518 = ptrtoint ptr %arrayidx2.i158.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %arrayidx2.i158.i.i, align 1
  %conv3.i159.i.i = zext i8 %519 to i32
  %shl4.i.i.i = shl nuw nsw i32 %conv3.i159.i.i, 8
  %or.i160.i.i = or i32 %shl4.i.i.i, %shl.i157.i.i
  %arrayidx6.i161.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 1, i32 2
  %520 = ptrtoint ptr %arrayidx6.i161.i.i to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %arrayidx6.i161.i.i, align 1
  %conv7.i162.i.i = zext i8 %521 to i32
  %or8.i.i.i = or i32 %or.i160.i.i, %conv7.i162.i.i
  %neg.i163.i.i = xor i32 %513, -1
  %and.i164.i.i = and i32 %or8.i.i.i, %neg.i163.i.i
  %or9.i165.i.i = or i32 %and.i164.i.i, %515
  %shr.i.i.i = lshr i32 %or9.i165.i.i, 16
  %conv10.i.i.i = trunc i32 %shr.i.i.i to i8
  store i8 %conv10.i.i.i, ptr %flow_lbl.i.i.i, align 1
  %shr13.i.i.i = lshr i32 %or9.i165.i.i, 8
  %conv14.i.i195.i = trunc i32 %shr13.i.i.i to i8
  store i8 %conv14.i.i195.i, ptr %arrayidx2.i158.i.i, align 1
  %conv17.i.i.i = trunc i32 %or9.i165.i.i to i8
  store i8 %conv17.i.i.i, ptr %arrayidx6.i161.i.i, align 1
  %522 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %bf.load.i167.i.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %523 = and i16 %bf.load.i167.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %523)
  %cmp.i168.i.i = icmp eq i16 %523, 1024
  br i1 %cmp.i168.i.i, label %if.then.i178.i.i, label %if.then65.i.i.set_ipv6_fl.exit.i.i_crit_edge

if.then65.i.i.set_ipv6_fl.exit.i.i_crit_edge:     ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_ipv6_fl.exit.i.i

if.then.i178.i.i:                                 ; preds = %if.then65.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %524 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %9, align 4
  %neg.i.i.i169.i.i = xor i32 %or8.i.i.i, -1
  %add.i.i.i.i170.i.i = add i32 %525, %neg.i.i.i169.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i170.i.i, i32 %neg.i.i.i169.i.i)
  %cmp.i.i.i.i171.i.i = icmp ult i32 %add.i.i.i.i170.i.i, %neg.i.i.i169.i.i
  %conv.i.i.i.i172.i.i = zext i1 %cmp.i.i.i.i171.i.i to i32
  %add1.i.i.i.i173.i.i = add i32 %add.i.i.i.i170.i.i, %or9.i165.i.i
  %add.i.i.i174.i.i = add i32 %add1.i.i.i.i173.i.i, %conv.i.i.i.i172.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i174.i.i, i32 %or9.i165.i.i)
  %cmp.i.i.i175.i.i = icmp ult i32 %add.i.i.i174.i.i, %or9.i165.i.i
  %conv.i.i.i176.i.i = zext i1 %cmp.i.i.i175.i.i to i32
  %add1.i.i.i177.i.i = add i32 %add.i.i.i174.i.i, %conv.i.i.i176.i.i
  %526 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %add1.i.i.i177.i.i, ptr %9, align 4
  br label %set_ipv6_fl.exit.i.i

set_ipv6_fl.exit.i.i:                             ; preds = %if.then.i178.i.i, %if.then65.i.i.set_ipv6_fl.exit.i.i_crit_edge
  %527 = ptrtoint ptr %add.ptr.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %add.ptr.i.i121.i.i, align 4
  %and.i196.i = and i32 %528, 1048575
  %529 = ptrtoint ptr %label.i.i to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 %and.i196.i, ptr %label.i.i, align 8
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %set_ipv6_fl.exit.i.i, %if.end63.i.i.if.end68.i.i_crit_edge
  %ipv6_hlimit.i.i = getelementptr i8, ptr %a.0569, i32 86
  %530 = ptrtoint ptr %ipv6_hlimit.i.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %ipv6_hlimit.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %531)
  %tobool69.not.i.i = icmp eq i8 %531, 0
  br i1 %tobool69.not.i.i, label %if.end68.i.i.for.inc_crit_edge, label %if.then70.i.i

if.end68.i.i.for.inc_crit_edge:                   ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then70.i.i:                                    ; preds = %if.end68.i.i
  %ipv6_hlimit71.i.i = getelementptr i8, ptr %a.0569, i32 46
  %532 = ptrtoint ptr %ipv6_hlimit71.i.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %ipv6_hlimit71.i.i, align 2
  %hop_limit.i.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i121.i.i, i32 0, i32 4
  %534 = ptrtoint ptr %hop_limit.i.i.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %hop_limit.i.i.i, align 1
  %neg.i179.i.i = xor i8 %531, -1
  %and.i180.i.i = and i8 %535, %neg.i179.i.i
  %or.i181.i.i = or i8 %and.i180.i.i, %533
  %536 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %536)
  %bf.load.i183.i.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %537 = and i16 %bf.load.i183.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %537)
  %cmp.i184.i.i = icmp eq i16 %537, 1024
  br i1 %cmp.i184.i.i, label %if.then.i196.i.i, label %if.then70.i.i.set_ipv6_ttl.exit.i.i_crit_edge

if.then70.i.i.set_ipv6_ttl.exit.i.i_crit_edge:    ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %set_ipv6_ttl.exit.i.i

if.then.i196.i.i:                                 ; preds = %if.then70.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i185.i.i = zext i8 %535 to i32
  %shl.i186.i.i = shl nuw nsw i32 %conv1.i185.i.i, 8
  %conv8.i.i.i = zext i8 %or.i181.i.i to i32
  %shl9.i.i.i = shl nuw nsw i32 %conv8.i.i.i, 8
  %538 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %9, align 4
  %neg.i.i.i187.i.i = xor i32 %shl.i186.i.i, -1
  %add.i.i.i.i188.i.i = add i32 %539, %neg.i.i.i187.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i188.i.i, i32 %neg.i.i.i187.i.i)
  %cmp.i.i.i.i189.i.i = icmp ult i32 %add.i.i.i.i188.i.i, %neg.i.i.i187.i.i
  %conv.i.i.i.i190.i.i = zext i1 %cmp.i.i.i.i189.i.i to i32
  %add1.i.i.i.i191.i.i = add i32 %add.i.i.i.i188.i.i, %shl9.i.i.i
  %add.i.i.i192.i.i = add i32 %add1.i.i.i.i191.i.i, %conv.i.i.i.i190.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i192.i.i, i32 %shl9.i.i.i)
  %cmp.i.i.i193.i.i = icmp ult i32 %add.i.i.i192.i.i, %shl9.i.i.i
  %conv.i.i.i194.i.i = zext i1 %cmp.i.i.i193.i.i to i32
  %add1.i.i.i195.i.i = add i32 %add.i.i.i192.i.i, %conv.i.i.i194.i.i
  %540 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 %add1.i.i.i195.i.i, ptr %9, align 4
  br label %set_ipv6_ttl.exit.i.i

set_ipv6_ttl.exit.i.i:                            ; preds = %if.then.i196.i.i, %if.then70.i.i.set_ipv6_ttl.exit.i.i_crit_edge
  %541 = ptrtoint ptr %hop_limit.i.i.i to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 %or.i181.i.i, ptr %hop_limit.i.i.i, align 1
  %542 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %542)
  store i8 %or.i181.i.i, ptr %ttl.i, align 2
  br label %for.inc

sw.bb32.i:                                        ; preds = %sw.bb68
  %543 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %head.i.i77.i, align 8
  %545 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %545)
  %546 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i.i200.i = zext i16 %546 to i32
  %add.ptr.i.i.i201.i = getelementptr i8, ptr %544, i32 %conv.i.i.i200.i
  %547 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i203.i = ptrtoint ptr %add.ptr.i.i.i201.i to i32
  %sub.ptr.rhs.cast.i.i204.i = ptrtoint ptr %548 to i32
  %sub.ptr.sub.i.i205.i = sub i32 20, %sub.ptr.rhs.cast.i.i204.i
  %add.i206.i = add i32 %sub.ptr.sub.i.i205.i, %sub.ptr.lhs.cast.i.i203.i
  %call1.i207.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i206.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i207.i)
  %tobool.not.i208.i = icmp eq i32 %call1.i207.i, 0
  br i1 %tobool.not.i208.i, label %if.end.i213.i, label %sw.bb32.i.if.then160_crit_edge, !prof !68

sw.bb32.i.if.then160_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i213.i:                                    ; preds = %sw.bb32.i
  %add.ptr35.i = getelementptr i8, ptr %a.0569, i32 12
  %add.ptr.i197.i = getelementptr i8, ptr %a.0569, i32 8
  %549 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %head.i.i77.i, align 8
  %551 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %551)
  %552 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i73.i.i = zext i16 %552 to i32
  %add.ptr.i.i74.i.i = getelementptr i8, ptr %550, i32 %conv.i.i73.i.i
  %553 = ptrtoint ptr %add.ptr.i197.i to i32
  call void @__asan_load2_noabort(i32 %553)
  %554 = load i16, ptr %add.ptr.i197.i, align 2
  %555 = ptrtoint ptr %add.ptr.i.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %555)
  %556 = load i16, ptr %add.ptr.i.i74.i.i, align 4
  %557 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %add.ptr35.i, align 2
  %neg.i209.i = xor i16 %558, -1
  %and.i210.i = and i16 %556, %neg.i209.i
  %or.i211.i = or i16 %and.i210.i, %554
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i211.i, i16 %556)
  %cmp.not.i212.i = icmp eq i16 %or.i211.i, %556
  br i1 %cmp.not.i212.i, label %if.end.i213.i.if.end22.i.i_crit_edge, label %if.then19.i.i, !prof !66

if.end.i213.i.if.end22.i.i_crit_edge:             ; preds = %if.end.i213.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22.i.i

if.then19.i.i:                                    ; preds = %if.end.i213.i
  call void @__sanitizer_cov_trace_pc() #15
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i74.i.i, i32 0, i32 6
  %conv.i.i75.i.i = zext i16 %556 to i32
  %conv1.i.i.i214.i = zext i16 %or.i211.i to i32
  call void @inet_proto_csum_replace4(ptr noundef %check.i.i, ptr noundef %skb, i32 noundef %conv.i.i75.i.i, i32 noundef %conv1.i.i.i214.i, i1 noundef zeroext false) #13
  %559 = ptrtoint ptr %add.ptr.i.i74.i.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 %or.i211.i, ptr %add.ptr.i.i74.i.i, align 2
  %560 = ptrtoint ptr %tp.i271.i to i32
  call void @__asan_store2_noabort(i32 %560)
  store i16 %or.i211.i, ptr %tp.i271.i, align 2
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then19.i.i, %if.end.i213.i.if.end22.i.i_crit_edge
  %tcp_dst.i.i = getelementptr i8, ptr %a.0569, i32 10
  %561 = ptrtoint ptr %tcp_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %561)
  %562 = load i16, ptr %tcp_dst.i.i, align 2
  %dest.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i74.i.i, i32 0, i32 1
  %563 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_load2_noabort(i32 %563)
  %564 = load i16, ptr %dest.i.i, align 2
  %tcp_dst25.i.i = getelementptr i8, ptr %a.0569, i32 14
  %565 = ptrtoint ptr %tcp_dst25.i.i to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %tcp_dst25.i.i, align 2
  %neg27.i.i = xor i16 %566, -1
  %and28.i.i = and i16 %564, %neg27.i.i
  %or29.i.i = or i16 %and28.i.i, %562
  call void @__sanitizer_cov_trace_cmp2(i16 %or29.i.i, i16 %564)
  %cmp34.not.i.i = icmp eq i16 %or29.i.i, %564
  br i1 %cmp34.not.i.i, label %if.end22.i.i.if.end47.i216.i_crit_edge, label %if.then42.i.i, !prof !66

if.end22.i.i.if.end47.i216.i_crit_edge:           ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47.i216.i

if.then42.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %check44.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i74.i.i, i32 0, i32 6
  %conv.i.i76.i.i = zext i16 %564 to i32
  %conv1.i.i77.i.i = zext i16 %or29.i.i to i32
  call void @inet_proto_csum_replace4(ptr noundef %check44.i.i, ptr noundef %skb, i32 noundef %conv.i.i76.i.i, i32 noundef %conv1.i.i77.i.i, i1 noundef zeroext false) #13
  %567 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %or29.i.i, ptr %dest.i.i, align 2
  %568 = ptrtoint ptr %dst.i272.i to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 %or29.i.i, ptr %dst.i272.i, align 2
  br label %if.end47.i216.i

if.end47.i216.i:                                  ; preds = %if.then42.i.i, %if.end22.i.i.if.end47.i216.i_crit_edge
  %569 = ptrtoint ptr %hash.i.i267.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 0, ptr %hash.i.i267.i, align 4
  %570 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %570)
  %bf.load.i.i215.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %bf.clear2.i.i.i = and i16 %bf.load.i.i215.i, -193
  store i16 %bf.clear2.i.i.i, ptr %sw_hash.i.i268.i, align 8
  br label %for.inc

sw.bb37.i:                                        ; preds = %sw.bb68
  %571 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %head.i.i77.i, align 8
  %573 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %573)
  %574 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i.i221.i = zext i16 %574 to i32
  %add.ptr.i.i.i222.i = getelementptr i8, ptr %572, i32 %conv.i.i.i221.i
  %575 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i224.i = ptrtoint ptr %add.ptr.i.i.i222.i to i32
  %sub.ptr.rhs.cast.i.i225.i = ptrtoint ptr %576 to i32
  %sub.ptr.sub.i.i226.i = sub i32 8, %sub.ptr.rhs.cast.i.i225.i
  %add.i227.i = add i32 %sub.ptr.sub.i.i226.i, %sub.ptr.lhs.cast.i.i224.i
  %call1.i228.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i227.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i228.i)
  %tobool.not.i229.i = icmp eq i32 %call1.i228.i, 0
  br i1 %tobool.not.i229.i, label %if.end.i235.i, label %sw.bb37.i.if.then160_crit_edge, !prof !68

sw.bb37.i.if.then160_crit_edge:                   ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i235.i:                                    ; preds = %sw.bb37.i
  %add.ptr.i217.i = getelementptr i8, ptr %a.0569, i32 8
  %add.ptr40.i = getelementptr i8, ptr %a.0569, i32 12
  %577 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %head.i.i77.i, align 8
  %579 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %579)
  %580 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i112.i.i = zext i16 %580 to i32
  %add.ptr.i.i113.i.i = getelementptr i8, ptr %578, i32 %conv.i.i112.i.i
  %581 = ptrtoint ptr %add.ptr.i217.i to i32
  call void @__asan_load2_noabort(i32 %581)
  %582 = load i16, ptr %add.ptr.i217.i, align 2
  %583 = ptrtoint ptr %add.ptr.i.i113.i.i to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %add.ptr.i.i113.i.i, align 2
  %585 = ptrtoint ptr %add.ptr40.i to i32
  call void @__asan_load2_noabort(i32 %585)
  %586 = load i16, ptr %add.ptr40.i, align 2
  %neg.i230.i = xor i16 %586, -1
  %and.i231.i = and i16 %584, %neg.i230.i
  %or.i232.i = or i16 %and.i231.i, %582
  %udp_dst.i.i = getelementptr i8, ptr %a.0569, i32 10
  %587 = ptrtoint ptr %udp_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %587)
  %588 = load i16, ptr %udp_dst.i.i, align 2
  %dest.i233.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i113.i.i, i32 0, i32 1
  %589 = ptrtoint ptr %dest.i233.i to i32
  call void @__asan_load2_noabort(i32 %589)
  %590 = load i16, ptr %dest.i233.i, align 2
  %udp_dst11.i.i = getelementptr i8, ptr %a.0569, i32 14
  %591 = ptrtoint ptr %udp_dst11.i.i to i32
  call void @__asan_load2_noabort(i32 %591)
  %592 = load i16, ptr %udp_dst11.i.i, align 2
  %neg13.i.i = xor i16 %592, -1
  %and14.i.i = and i16 %590, %neg13.i.i
  %or15.i.i = or i16 %and14.i.i, %588
  %check.i234.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i113.i.i, i32 0, i32 3
  %593 = ptrtoint ptr %check.i234.i to i32
  call void @__asan_load2_noabort(i32 %593)
  %594 = load i16, ptr %check.i234.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %594)
  %tobool18.not.i.i = icmp eq i16 %594, 0
  br i1 %tobool18.not.i.i, label %if.end.i235.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i385

if.end.i235.i.if.else.i.i_crit_edge:              ; preds = %if.end.i235.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true.i.i385:                             ; preds = %if.end.i235.i
  %595 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %595)
  %bf.load.i.i384 = load i16, ptr %sw_hash.i.i268.i, align 8
  %596 = and i16 %bf.load.i.i384, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %596)
  %cmp.not.i236.i = icmp eq i16 %596, 1536
  br i1 %cmp.not.i236.i, label %land.lhs.true.i.i385.if.else.i.i_crit_edge, label %if.then21.i237.i

land.lhs.true.i.i385.if.else.i.i_crit_edge:       ; preds = %land.lhs.true.i.i385
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then21.i237.i:                                 ; preds = %land.lhs.true.i.i385
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i232.i, i16 %584)
  %cmp25.not.i.i = icmp eq i16 %or.i232.i, %584
  br i1 %cmp25.not.i.i, label %if.then21.i237.i.if.end37.i.i_crit_edge, label %if.then33.i.i, !prof !66

if.then21.i237.i.if.end37.i.i_crit_edge:          ; preds = %if.then21.i237.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37.i.i

if.then33.i.i:                                    ; preds = %if.then21.i237.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i114.i238.i = zext i16 %584 to i32
  %conv1.i.i.i239.i = zext i16 %or.i232.i to i32
  call void @inet_proto_csum_replace4(ptr noundef %check.i234.i, ptr noundef %skb, i32 noundef %conv.i.i114.i238.i, i32 noundef %conv1.i.i.i239.i, i1 noundef zeroext false) #13
  %597 = ptrtoint ptr %add.ptr.i.i113.i.i to i32
  call void @__asan_store2_noabort(i32 %597)
  store i16 %or.i232.i, ptr %add.ptr.i.i113.i.i, align 2
  %598 = ptrtoint ptr %tp.i271.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %or.i232.i, ptr %tp.i271.i, align 2
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then33.i.i, %if.then21.i237.i.if.end37.i.i_crit_edge
  %599 = ptrtoint ptr %dest.i233.i to i32
  call void @__asan_load2_noabort(i32 %599)
  %600 = load i16, ptr %dest.i233.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or15.i.i, i16 %600)
  %cmp41.not.i.i = icmp eq i16 %or15.i.i, %600
  br i1 %cmp41.not.i.i, label %if.end37.i.i.if.end54.i.i_crit_edge, label %if.then49.i241.i, !prof !66

if.end37.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54.i.i

if.then49.i241.i:                                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i.i115.i.i = zext i16 %600 to i32
  %conv1.i.i116.i.i = zext i16 %or15.i.i to i32
  call void @inet_proto_csum_replace4(ptr noundef %check.i234.i, ptr noundef %skb, i32 noundef %conv.i.i115.i.i, i32 noundef %conv1.i.i116.i.i, i1 noundef zeroext false) #13
  %601 = ptrtoint ptr %dest.i233.i to i32
  call void @__asan_store2_noabort(i32 %601)
  store i16 %or15.i.i, ptr %dest.i233.i, align 2
  %602 = ptrtoint ptr %dst.i272.i to i32
  call void @__asan_store2_noabort(i32 %602)
  store i16 %or15.i.i, ptr %dst.i272.i, align 2
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then49.i241.i, %if.end37.i.i.if.end54.i.i_crit_edge
  %603 = ptrtoint ptr %check.i234.i to i32
  call void @__asan_load2_noabort(i32 %603)
  %604 = load i16, ptr %check.i234.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %604)
  %tobool56.not.i.i = icmp eq i16 %604, 0
  br i1 %tobool56.not.i.i, label %if.then65.i242.i, label %if.end54.i.i.if.end74.i.i_crit_edge, !prof !66

if.end54.i.i.if.end74.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74.i.i

if.then65.i242.i:                                 ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %605 = ptrtoint ptr %check.i234.i to i32
  call void @__asan_store2_noabort(i32 %605)
  store i16 -1, ptr %check.i234.i, align 2
  br label %if.end74.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i385.if.else.i.i_crit_edge, %if.end.i235.i.if.else.i.i_crit_edge
  %606 = ptrtoint ptr %add.ptr.i.i113.i.i to i32
  call void @__asan_store2_noabort(i32 %606)
  store i16 %or.i232.i, ptr %add.ptr.i.i113.i.i, align 2
  %607 = ptrtoint ptr %dest.i233.i to i32
  call void @__asan_store2_noabort(i32 %607)
  store i16 %or15.i.i, ptr %dest.i233.i, align 2
  %608 = ptrtoint ptr %tp.i271.i to i32
  call void @__asan_store2_noabort(i32 %608)
  store i16 %or.i232.i, ptr %tp.i271.i, align 2
  %609 = ptrtoint ptr %dst.i272.i to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 %or15.i.i, ptr %dst.i272.i, align 2
  br label %if.end74.i.i

if.end74.i.i:                                     ; preds = %if.else.i.i, %if.then65.i242.i, %if.end54.i.i.if.end74.i.i_crit_edge
  %610 = ptrtoint ptr %hash.i.i267.i to i32
  call void @__asan_store4_noabort(i32 %610)
  store i32 0, ptr %hash.i.i267.i, align 4
  %611 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %611)
  %bf.load.i.i245.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %bf.clear2.i.i246.i = and i16 %bf.load.i.i245.i, -193
  store i16 %bf.clear2.i.i246.i, ptr %sw_hash.i.i268.i, align 8
  br label %for.inc

sw.bb42.i:                                        ; preds = %sw.bb68
  %612 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %head.i.i77.i, align 8
  %614 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %614)
  %615 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i.i251.i = zext i16 %615 to i32
  %add.ptr.i.i.i252.i = getelementptr i8, ptr %613, i32 %conv.i.i.i251.i
  %616 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i254.i = ptrtoint ptr %add.ptr.i.i.i252.i to i32
  %sub.ptr.rhs.cast.i.i255.i = ptrtoint ptr %617 to i32
  %sub.ptr.sub.i.i256.i = sub i32 %sub.ptr.lhs.cast.i.i254.i, %sub.ptr.rhs.cast.i.i255.i
  %add.i257.i = add i32 %sub.ptr.sub.i.i256.i, 12
  %call1.i258.i = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i257.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i258.i)
  %tobool.not.i259.i = icmp eq i32 %call1.i258.i, 0
  br i1 %tobool.not.i259.i, label %if.end.i273.i, label %sw.bb42.i.if.then160_crit_edge, !prof !68

sw.bb42.i.if.then160_crit_edge:                   ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i273.i:                                    ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i247.i = getelementptr i8, ptr %a.0569, i32 8
  %add.ptr45.i = getelementptr i8, ptr %a.0569, i32 12
  %618 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %head.i.i77.i, align 8
  %620 = ptrtoint ptr %transport_header.i.i.i250.i to i32
  call void @__asan_load2_noabort(i32 %620)
  %621 = load i16, ptr %transport_header.i.i.i250.i, align 2
  %conv.i.i51.i.i = zext i16 %621 to i32
  %add.ptr.i.i52.i.i = getelementptr i8, ptr %619, i32 %conv.i.i51.i.i
  %checksum.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i52.i.i, i32 0, i32 3
  %622 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %checksum.i.i, align 4
  %624 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %data.i81.i, align 4
  %add.ptr.i.i260.i = getelementptr i8, ptr %625, i32 %sub.ptr.sub.i.i256.i
  %checksum.i.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i260.i, i32 0, i32 3
  %626 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %checksum.i.i.i, align 4
  store i32 0, ptr %checksum.i.i.i, align 4
  %628 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %len6.i, align 4
  %sub.i.i261.i = sub i32 %629, %sub.ptr.sub.i.i256.i
  %call.i.i.i386 = call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i256.i, i32 noundef %sub.i.i261.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #13
  %neg.i.i262.i = xor i32 %call.i.i.i386, -1
  %630 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %630)
  store i32 %627, ptr %checksum.i.i.i, align 4
  %631 = call i32 @llvm.bswap.i32(i32 %neg.i.i262.i) #13
  %632 = ptrtoint ptr %add.ptr.i247.i to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %add.ptr.i247.i, align 2
  %634 = ptrtoint ptr %add.ptr.i.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %634)
  %635 = load i16, ptr %add.ptr.i.i52.i.i, align 4
  %636 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load2_noabort(i32 %636)
  %637 = load i16, ptr %add.ptr45.i, align 2
  %neg.i263.i = xor i16 %637, -1
  %and.i264.i = and i16 %635, %neg.i263.i
  %or.i265.i = or i16 %and.i264.i, %633
  store i16 %or.i265.i, ptr %add.ptr.i.i52.i.i, align 4
  %sctp_dst.i.i = getelementptr i8, ptr %a.0569, i32 10
  %638 = ptrtoint ptr %sctp_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %638)
  %639 = load i16, ptr %sctp_dst.i.i, align 2
  %dest.i266.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i52.i.i, i32 0, i32 1
  %640 = ptrtoint ptr %dest.i266.i to i32
  call void @__asan_load2_noabort(i32 %640)
  %641 = load i16, ptr %dest.i266.i, align 2
  %sctp_dst13.i.i = getelementptr i8, ptr %a.0569, i32 14
  %642 = ptrtoint ptr %sctp_dst13.i.i to i32
  call void @__asan_load2_noabort(i32 %642)
  %643 = load i16, ptr %sctp_dst13.i.i, align 2
  %neg15.i.i = xor i16 %643, -1
  %and16.i.i = and i16 %641, %neg15.i.i
  %or17.i.i = or i16 %and16.i.i, %639
  store i16 %or17.i.i, ptr %dest.i266.i, align 2
  %644 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %data.i81.i, align 4
  %add.ptr.i55.i.i = getelementptr i8, ptr %645, i32 %sub.ptr.sub.i.i256.i
  %checksum.i56.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i55.i.i, i32 0, i32 3
  %646 = ptrtoint ptr %checksum.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %checksum.i56.i.i, align 4
  store i32 0, ptr %checksum.i56.i.i, align 4
  %648 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %len6.i, align 4
  %sub.i58.i.i = sub i32 %649, %sub.ptr.sub.i.i256.i
  %call.i59.i.i = call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i256.i, i32 noundef %sub.i58.i.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #13
  %neg.i60.i.i = xor i32 %call.i59.i.i, -1
  %650 = ptrtoint ptr %checksum.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store i32 %647, ptr %checksum.i56.i.i, align 4
  %651 = call i32 @llvm.bswap.i32(i32 %neg.i60.i.i) #13
  %xor.i.i = xor i32 %631, %623
  %xor21.i.i = xor i32 %xor.i.i, %651
  %652 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 %xor21.i.i, ptr %checksum.i.i, align 4
  %653 = ptrtoint ptr %hash.i.i267.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 0, ptr %hash.i.i267.i, align 4
  %654 = ptrtoint ptr %sw_hash.i.i268.i to i32
  call void @__asan_load2_noabort(i32 %654)
  %bf.load.i.i269.i = load i16, ptr %sw_hash.i.i268.i, align 8
  %bf.clear2.i.i270.i = and i16 %bf.load.i.i269.i, -193
  store i16 %bf.clear2.i.i270.i, ptr %sw_hash.i.i268.i, align 8
  %655 = ptrtoint ptr %add.ptr.i.i52.i.i to i32
  call void @__asan_load2_noabort(i32 %655)
  %656 = load i16, ptr %add.ptr.i.i52.i.i, align 4
  %657 = ptrtoint ptr %tp.i271.i to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %656, ptr %tp.i271.i, align 2
  %658 = ptrtoint ptr %dest.i266.i to i32
  call void @__asan_load2_noabort(i32 %658)
  %659 = load i16, ptr %dest.i266.i, align 2
  %660 = ptrtoint ptr %dst.i272.i to i32
  call void @__asan_store2_noabort(i32 %660)
  store i16 %659, ptr %dst.i272.i, align 2
  br label %for.inc

sw.bb47.i:                                        ; preds = %sw.bb68
  %add.ptr.i274.i = getelementptr i8, ptr %a.0569, i32 8
  %add.ptr50.i = getelementptr i8, ptr %a.0569, i32 12
  %661 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %head.i.i77.i, align 8
  %663 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %663)
  %664 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i.i278.i = zext i16 %664 to i32
  %add.ptr.i.i.i279.i = getelementptr i8, ptr %662, i32 %conv.i.i.i278.i
  %665 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i281.i = ptrtoint ptr %add.ptr.i.i.i279.i to i32
  %sub.ptr.rhs.cast.i.i282.i = ptrtoint ptr %666 to i32
  %sub.ptr.sub.i.i283.i = sub i32 %sub.ptr.lhs.cast.i.i281.i, %sub.ptr.rhs.cast.i.i282.i
  %add.i284.i = add i32 %sub.ptr.sub.i.i283.i, 4
  %667 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %len6.i, align 4
  %669 = ptrtoint ptr %data_len.i.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %data_len.i.i.i286.i, align 8
  %sub.i.i.i287.i = sub i32 %668, %670
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i284.i, i32 %sub.i.i.i287.i)
  %cmp.not.i.i288.i = icmp ugt i32 %add.i284.i, %sub.i.i.i287.i
  br i1 %cmp.not.i.i288.i, label %if.end.i.i290.i, label %sw.bb47.i.if.end.i299.i_crit_edge, !prof !66

sw.bb47.i.if.end.i299.i_crit_edge:                ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i299.i

if.end.i.i290.i:                                  ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %668, i32 %add.i284.i)
  %cmp3.i.i289.i = icmp ult i32 %668, %add.i284.i
  br i1 %cmp3.i.i289.i, label %if.end.i.i290.i.if.then160_crit_edge, label %pskb_may_pull.exit.i294.i, !prof !66

if.end.i.i290.i.if.then160_crit_edge:             ; preds = %if.end.i.i290.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

pskb_may_pull.exit.i294.i:                        ; preds = %if.end.i.i290.i
  %sub.i.i291.i = sub i32 %add.i284.i, %sub.i.i.i287.i
  %call13.i.i292.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i291.i) #13
  %cmp14.i.not.i293.i = icmp eq ptr %call13.i.i292.i, null
  br i1 %cmp14.i.not.i293.i, label %pskb_may_pull.exit.i294.i.if.then160_crit_edge, label %pskb_may_pull.exit.i294.i.if.end.i299.i_crit_edge

pskb_may_pull.exit.i294.i.if.end.i299.i_crit_edge: ; preds = %pskb_may_pull.exit.i294.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i299.i

pskb_may_pull.exit.i294.i.if.then160_crit_edge:   ; preds = %pskb_may_pull.exit.i294.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i299.i:                                    ; preds = %pskb_may_pull.exit.i294.i.if.end.i299.i_crit_edge, %sw.bb47.i.if.end.i299.i_crit_edge
  %671 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %head.i.i77.i, align 8
  %673 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %673)
  %674 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i16.i.i = zext i16 %674 to i32
  %add.ptr.i.i17.i.i = getelementptr i8, ptr %672, i32 %conv.i.i16.i.i
  %675 = ptrtoint ptr %add.ptr.i274.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %add.ptr.i274.i, align 4
  %677 = ptrtoint ptr %add.ptr.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %add.ptr.i.i17.i.i, align 4
  %679 = ptrtoint ptr %add.ptr50.i to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %add.ptr50.i, align 4
  %neg.i295.i = xor i32 %680, -1
  %and.i296.i = and i32 %678, %neg.i295.i
  %or.i297.i = or i32 %and.i296.i, %676
  %call3.i.i = call i32 @skb_mpls_update_lse(ptr noundef %skb, i32 noundef %or.i297.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i298.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i298.i, label %if.end5.i.i, label %if.end.i299.i.if.then160_crit_edge

if.end.i299.i.if.then160_crit_edge:               ; preds = %if.end.i299.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end5.i.i:                                      ; preds = %if.end.i299.i
  call void @__sanitizer_cov_trace_pc() #15
  %681 = ptrtoint ptr %lse6.i.i to i32
  call void @__asan_store4_noabort(i32 %681)
  store i32 %or.i297.i, ptr %lse6.i.i, align 4
  br label %for.inc

sw.bb71:                                          ; preds = %if.end
  %682 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %682)
  %683 = load i16, ptr %a.0569, align 2
  %conv.i387 = zext i16 %683 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0566, i32 %conv.i387)
  %cmp.i388 = icmp eq i32 %rem.0566, %conv.i387
  %sub.i480 = add nsw i32 %conv.i387, -4
  %add.ptr.i478 = getelementptr i8, ptr %a.0569, i32 4
  %add.ptr.i477 = getelementptr i8, ptr %a.0569, i32 8
  %684 = ptrtoint ptr %add.ptr.i478 to i32
  call void @__asan_load2_noabort(i32 %684)
  %685 = load i16, ptr %add.ptr.i478, align 2
  %conv.i472 = zext i16 %685 to i32
  %sub.i473 = add nuw nsw i32 %conv.i472, 3
  %and.i474 = and i32 %sub.i473, 131068
  %sub1.i475 = sub nsw i32 %sub.i480, %and.i474
  %add.ptr.i476 = getelementptr i8, ptr %add.ptr.i478, i32 %and.i474
  %probability.i = getelementptr i8, ptr %a.0569, i32 12
  %686 = ptrtoint ptr %probability.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %probability.i, align 4
  %688 = zext i32 %687 to i64
  call void @__sanitizer_cov_trace_switch(i64 %688, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %687, label %lor.lhs.false.i [
    i32 -1, label %sw.bb71.sample.exit_crit_edge
    i32 0, label %sw.bb71.if.then.i392_crit_edge
  ]

sw.bb71.if.then.i392_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i392

sw.bb71.sample.exit_crit_edge:                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample.exit

lor.lhs.false.i:                                  ; preds = %sw.bb71
  %call5.i = call i32 @prandom_u32() #13
  %689 = ptrtoint ptr %probability.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %probability.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %690)
  %cmp7.i = icmp ugt i32 %call5.i, %690
  br i1 %cmp7.i, label %lor.lhs.false.i.if.then.i392_crit_edge, label %lor.lhs.false.i.sample.exit_crit_edge

lor.lhs.false.i.sample.exit_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sample.exit

lor.lhs.false.i.if.then.i392_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i392

if.then.i392:                                     ; preds = %lor.lhs.false.i.if.then.i392_crit_edge, %sw.bb71.if.then.i392_crit_edge
  br i1 %cmp.i388, label %sample.exit.thread, label %if.then.i392.for.inc_crit_edge

if.then.i392.for.inc_crit_edge:                   ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sample.exit.thread:                               ; preds = %if.then.i392
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup165

sample.exit:                                      ; preds = %lor.lhs.false.i.sample.exit_crit_edge, %sw.bb71.sample.exit_crit_edge
  %691 = ptrtoint ptr %add.ptr.i477 to i32
  call void @__asan_load1_noabort(i32 %691)
  %692 = load i8, ptr %add.ptr.i477, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %692)
  %tobool11.not.i = icmp eq i8 %692, 0
  %call15.i = call fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef 0, ptr noundef %add.ptr.i476, i32 noundef %sub1.i475, i1 noundef zeroext %cmp.i388, i1 noundef zeroext %tobool11.not.i) #13
  br i1 %cmp.i388, label %sample.exit.cleanup165_crit_edge, label %sample.exit.sw.epilog_crit_edge

sample.exit.sw.epilog_crit_edge:                  ; preds = %sample.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sample.exit.cleanup165_crit_edge:                 ; preds = %sample.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

sw.bb82:                                          ; preds = %if.end
  %693 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %0, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %694)
  %tobool.not.i395 = icmp sgt i8 %694, -1
  br i1 %tobool.not.i395, label %sw.bb82.if.end89_crit_edge, label %if.then84

sw.bb82.if.end89_crit_edge:                       ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.then84:                                        ; preds = %sw.bb82
  %call85 = call i32 @ovs_flow_key_update(ptr noundef %skb, ptr noundef %key) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.if.end89_crit_edge, label %if.then84.cleanup165_crit_edge

if.then84.cleanup165_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.then84.if.end89_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end89

if.end89:                                         ; preds = %if.then84.if.end89_crit_edge, %sw.bb82.if.end89_crit_edge
  %695 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %net.i, align 4
  %add.ptr.i396 = getelementptr i8, ptr %a.0569, i32 4
  %call92 = call i32 @ovs_ct_execute(ptr noundef %696, ptr noundef %skb, ptr noundef %key, ptr noundef %add.ptr.i396) #13
  %697 = zext i32 %call92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %697, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call92, label %cleanup165.loopexit640 [
    i32 0, label %if.end89.for.inc_crit_edge
    i32 -115, label %if.end89.cleanup165_crit_edge
  ]

if.end89.cleanup165_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

if.end89.for.inc_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

sw.bb98:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call99 = call i32 @ovs_ct_clear(ptr noundef %skb, ptr noundef %key) #13
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end
  %add.ptr.i397 = getelementptr i8, ptr %a.0569, i32 4
  %eth_dst.i = getelementptr i8, ptr %a.0569, i32 10
  %call.i398 = call i32 @skb_eth_push(ptr noundef %skb, ptr noundef %eth_dst.i, ptr noundef %add.ptr.i397) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i398)
  %tobool.not.i399 = icmp eq i32 %call.i398, 0
  br i1 %tobool.not.i399, label %if.end.i401, label %sw.bb100.if.then160_crit_edge

sw.bb100.if.then160_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i401:                                      ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  %698 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 -127, ptr %0, align 2
  br label %for.inc

sw.bb103:                                         ; preds = %if.end
  %call.i402 = call i32 @skb_eth_pop(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i402)
  %tobool.not.i403 = icmp eq i32 %call.i402, 0
  br i1 %tobool.not.i403, label %if.end.i405, label %sw.bb103.if.then160_crit_edge

sw.bb103.if.then160_crit_edge:                    ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i405:                                      ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #15
  %699 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 -128, ptr %0, align 2
  br label %for.inc

sw.bb105:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buffer) #13
  %700 = call ptr @memset(ptr %buffer, i32 255, i32 256)
  %add.ptr.i406 = getelementptr i8, ptr %a.0569, i32 4
  %call108 = call i32 @nsh_hdr_from_nlattr(ptr noundef %add.ptr.i406, ptr noundef nonnull %buffer, i32 noundef 256) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end113, label %sw.bb105.cleanup115_crit_edge, !prof !68

sw.bb105.cleanup115_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.end113:                                        ; preds = %sw.bb105
  %call.i407 = call i32 @nsh_push(ptr noundef %skb, ptr noundef nonnull %buffer) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i407)
  %tobool.not.i408 = icmp eq i32 %call.i407, 0
  br i1 %tobool.not.i408, label %if.end.i410, label %if.end113.cleanup115_crit_edge

if.end113.cleanup115_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup115

if.end.i410:                                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #15
  %701 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 -128, ptr %0, align 2
  br label %cleanup115

cleanup115:                                       ; preds = %if.end.i410, %if.end113.cleanup115_crit_edge, %sw.bb105.cleanup115_crit_edge
  %err.0 = phi i32 [ %call108, %sw.bb105.cleanup115_crit_edge ], [ %call.i407, %if.end113.cleanup115_crit_edge ], [ 0, %if.end.i410 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buffer) #13
  br label %sw.epilog

sw.bb117:                                         ; preds = %if.end
  %call.i411 = call i32 @nsh_pop(ptr noundef %skb) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i411)
  %tobool.not.i412 = icmp eq i32 %call.i411, 0
  br i1 %tobool.not.i412, label %if.end.i414, label %sw.bb117.if.then160_crit_edge

sw.bb117.if.then160_crit_edge:                    ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

if.end.i414:                                      ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #15
  %702 = ptrtoint ptr %protocol.i439 to i32
  call void @__asan_load2_noabort(i32 %702)
  %703 = load i16, ptr %protocol.i439, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %703)
  %cmp.i413 = icmp eq i16 %703, 25944
  %spec.select.i = select i1 %cmp.i413, i8 -127, i8 -128
  %704 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 %spec.select.i, ptr %0, align 2
  br label %for.inc

sw.bb119:                                         ; preds = %if.end
  %add.ptr.i.i415 = getelementptr i8, ptr %a.0569, i32 4
  %705 = ptrtoint ptr %add.ptr.i.i415 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %add.ptr.i.i415, align 4
  %call121 = call zeroext i1 @ovs_meter_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef %706) #13
  br i1 %call121, label %if.then122, label %sw.bb119.for.inc_crit_edge

sw.bb119.for.inc_crit_edge:                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then122:                                       ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup165

sw.bb124:                                         ; preds = %if.end
  %707 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %707)
  %708 = load i16, ptr %a.0569, align 2
  %conv.i416 = zext i16 %708 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0566, i32 %conv.i416)
  %cmp.i417 = icmp eq i32 %rem.0566, %conv.i416
  %sub.i489 = add nsw i32 %conv.i416, -4
  %add.ptr.i487 = getelementptr i8, ptr %a.0569, i32 4
  %add.ptr.i.i486 = getelementptr i8, ptr %a.0569, i32 8
  %709 = ptrtoint ptr %add.ptr.i.i486 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load i32, ptr %add.ptr.i.i486, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %710)
  %tobool.not.i422 = icmp eq i32 %710, 0
  %711 = ptrtoint ptr %add.ptr.i487 to i32
  call void @__asan_load2_noabort(i32 %711)
  %712 = load i16, ptr %add.ptr.i487, align 2
  %conv.i481 = zext i16 %712 to i32
  %sub.i482 = add nuw nsw i32 %conv.i481, 3
  %and.i483 = and i32 %sub.i482, 131068
  %sub1.i484 = sub nsw i32 %sub.i489, %and.i483
  %add.ptr.i485 = getelementptr i8, ptr %add.ptr.i487, i32 %and.i483
  %call7.i = call fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef 0, ptr noundef %add.ptr.i485, i32 noundef %sub1.i484, i1 noundef zeroext %cmp.i417, i1 noundef zeroext %tobool.not.i422) #13
  br i1 %cmp.i417, label %sw.bb124.cleanup165_crit_edge, label %sw.bb124.sw.epilog_crit_edge

sw.bb124.sw.epilog_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb124.cleanup165_crit_edge:                    ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

sw.bb135:                                         ; preds = %if.end
  %713 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %713)
  %714 = load i16, ptr %a.0569, align 2
  %conv.i424 = zext i16 %714 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0566, i32 %conv.i424)
  %cmp.i425 = icmp eq i32 %rem.0566, %conv.i424
  %add.ptr.i510 = getelementptr i8, ptr %a.0569, i32 4
  %add.ptr.i509 = getelementptr i8, ptr %a.0569, i32 8
  %715 = ptrtoint ptr %mru.i430 to i32
  call void @__asan_load2_noabort(i32 %715)
  %716 = load i16, ptr %mru.i430, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %716)
  %tobool.not.i431 = icmp eq i16 %716, 0
  br i1 %tobool.not.i431, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i432 = zext i16 %716 to i32
  %717 = ptrtoint ptr %mac_len.i433 to i32
  call void @__asan_load2_noabort(i32 %717)
  %718 = load i16, ptr %mac_len.i433, align 4
  %conv5.i = zext i16 %718 to i32
  %add.i = add nuw nsw i32 %conv5.i, %conv.i432
  br label %cond.end.i

cond.false.i:                                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #15
  %719 = ptrtoint ptr %len6.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load i32, ptr %len6.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ %720, %cond.false.i ]
  %721 = ptrtoint ptr %add.ptr.i509 to i32
  call void @__asan_load2_noabort(i32 %721)
  %722 = load i16, ptr %add.ptr.i509, align 2
  %conv7.i = zext i16 %722 to i32
  %723 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %724, i32 0, i32 4
  %725 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %725)
  %726 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %726)
  %tobool.i508.not = icmp eq i16 %726, 0
  br i1 %tobool.i508.not, label %lor.lhs.false.i434, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.end.i
  %call10.i = call zeroext i1 @skb_gso_validate_mac_len(ptr noundef %skb, i32 noundef %conv7.i) #13
  %call10.not.i = xor i1 %call10.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv7.i)
  %cmp.not.i = icmp sgt i32 %cond.i, %conv7.i
  %or.cond.i = select i1 %call10.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.if.else.i437_crit_edge, label %land.lhs.true.i.if.then.i435_crit_edge

land.lhs.true.i.if.then.i435_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i435

land.lhs.true.i.if.else.i437_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i437

lor.lhs.false.i434:                               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv7.i)
  %cmp.not.old.i = icmp sgt i32 %cond.i, %conv7.i
  br i1 %cmp.not.old.i, label %lor.lhs.false.i434.if.else.i437_crit_edge, label %lor.lhs.false.i434.if.then.i435_crit_edge

lor.lhs.false.i434.if.then.i435_crit_edge:        ; preds = %lor.lhs.false.i434
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i435

lor.lhs.false.i434.if.else.i437_crit_edge:        ; preds = %lor.lhs.false.i434
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i437

if.then.i435:                                     ; preds = %lor.lhs.false.i434.if.then.i435_crit_edge, %land.lhs.true.i.if.then.i435_crit_edge
  %727 = ptrtoint ptr %add.ptr.i510 to i32
  call void @__asan_load2_noabort(i32 %727)
  %728 = load i16, ptr %add.ptr.i510, align 2
  %conv.i503 = zext i16 %728 to i32
  %sub.i504 = add nuw nsw i32 %conv.i503, 3
  %and.i505 = and i32 %sub.i504, 131068
  %add.ptr.i507 = getelementptr i8, ptr %add.ptr.i510, i32 %and.i505
  %exec_for_lesser_equal.i = getelementptr i8, ptr %a.0569, i32 11
  %729 = ptrtoint ptr %exec_for_lesser_equal.i to i32
  call void @__asan_load1_noabort(i32 %729)
  %730 = load i8, ptr %exec_for_lesser_equal.i, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %730)
  %tobool14.not.i = icmp eq i8 %730, 0
  br label %execute_check_pkt_len.exit

if.else.i437:                                     ; preds = %lor.lhs.false.i434.if.else.i437_crit_edge, %land.lhs.true.i.if.else.i437_crit_edge
  %731 = ptrtoint ptr %add.ptr.i510 to i32
  call void @__asan_load2_noabort(i32 %731)
  %732 = load i16, ptr %add.ptr.i510, align 2
  %conv.i498 = zext i16 %732 to i32
  %sub.i499 = add nuw nsw i32 %conv.i498, 3
  %and.i500 = and i32 %sub.i499, 131068
  %add.ptr.i502 = getelementptr i8, ptr %add.ptr.i510, i32 %and.i500
  %733 = ptrtoint ptr %add.ptr.i502 to i32
  call void @__asan_load2_noabort(i32 %733)
  %734 = load i16, ptr %add.ptr.i502, align 2
  %conv.i493 = zext i16 %734 to i32
  %sub.i494 = add nuw nsw i32 %conv.i493, 3
  %and.i495 = and i32 %sub.i494, 131068
  %add.ptr.i497 = getelementptr i8, ptr %add.ptr.i502, i32 %and.i495
  %exec_for_greater.i = getelementptr i8, ptr %a.0569, i32 10
  %735 = ptrtoint ptr %exec_for_greater.i to i32
  call void @__asan_load1_noabort(i32 %735)
  %736 = load i8, ptr %exec_for_greater.i, align 2, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %736)
  %extract.t40.i = icmp ne i8 %736, 1
  br label %execute_check_pkt_len.exit

execute_check_pkt_len.exit:                       ; preds = %if.else.i437, %if.then.i435
  %actions.0.i = phi ptr [ %add.ptr.i507, %if.then.i435 ], [ %add.ptr.i497, %if.else.i437 ]
  %clone_flow_key.0.off0.i = phi i1 [ %tobool14.not.i, %if.then.i435 ], [ %extract.t40.i, %if.else.i437 ]
  %add.ptr.i492 = getelementptr i8, ptr %actions.0.i, i32 4
  %737 = ptrtoint ptr %actions.0.i to i32
  call void @__asan_load2_noabort(i32 %737)
  %738 = load i16, ptr %actions.0.i, align 2
  %conv.i490 = zext i16 %738 to i32
  %sub.i491 = add nsw i32 %conv.i490, -4
  %call25.i = call fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef 0, ptr noundef %add.ptr.i492, i32 noundef %sub.i491, i1 noundef zeroext %cmp.i425, i1 noundef zeroext %clone_flow_key.0.off0.i) #13
  br i1 %cmp.i425, label %execute_check_pkt_len.exit.cleanup165_crit_edge, label %execute_check_pkt_len.exit.sw.epilog_crit_edge

execute_check_pkt_len.exit.sw.epilog_crit_edge:   ; preds = %execute_check_pkt_len.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

execute_check_pkt_len.exit.cleanup165_crit_edge:  ; preds = %execute_check_pkt_len.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

sw.bb146:                                         ; preds = %if.end
  %739 = ptrtoint ptr %protocol.i439 to i32
  call void @__asan_load2_noabort(i32 %739)
  %740 = load i16, ptr %protocol.i439, align 8
  %741 = zext i16 %740 to i64
  call void @__sanitizer_cov_trace_switch(i64 %741, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %740, label %sw.bb146.for.inc_crit_edge [
    i16 -31011, label %if.then.i445
    i16 2048, label %if.then17.i
  ]

sw.bb146.for.inc_crit_edge:                       ; preds = %sw.bb146
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then.i445:                                     ; preds = %sw.bb146
  %742 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %head.i.i77.i, align 8
  %744 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %744)
  %745 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i.i440 = zext i16 %745 to i32
  %add.ptr.i.i.i441 = getelementptr i8, ptr %743, i32 %conv.i.i.i440
  %746 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i441 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %747 to i32
  %sub.ptr.sub.i.i = sub i32 40, %sub.ptr.rhs.cast.i.i
  %add.i442 = add i32 %sub.ptr.sub.i.i, %sub.ptr.lhs.cast.i.i
  %call2.i443 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add.i442) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i443)
  %tobool.not.i444 = icmp eq i32 %call2.i443, 0
  br i1 %tobool.not.i444, label %if.end.i446, label %if.then.i445.execute_dec_ttl.exit_crit_edge, !prof !68

if.then.i445.execute_dec_ttl.exit_crit_edge:      ; preds = %if.then.i445
  call void @__sanitizer_cov_trace_pc() #15
  br label %execute_dec_ttl.exit

if.end.i446:                                      ; preds = %if.then.i445
  %748 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %head.i.i77.i, align 8
  %750 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %750)
  %751 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i75.i = zext i16 %751 to i32
  %add.ptr.i.i76.i = getelementptr i8, ptr %749, i32 %conv.i.i75.i
  %hop_limit.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i76.i, i32 0, i32 4
  %752 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %hop_limit.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %753)
  %cmp8.i = icmp ult i8 %753, 2
  br i1 %cmp8.i, label %if.end.i446.if.then150_crit_edge, label %cleanup.i

if.end.i446.if.then150_crit_edge:                 ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

cleanup.i:                                        ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i = add i8 %753, -1
  %754 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_store1_noabort(i32 %754)
  store i8 %dec.i, ptr %hop_limit.i, align 1
  br label %cleanup54.sink.split.i

if.then17.i:                                      ; preds = %sw.bb146
  %755 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %head.i.i77.i, align 8
  %757 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %757)
  %758 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i79.i = zext i16 %758 to i32
  %add.ptr.i.i80.i = getelementptr i8, ptr %756, i32 %conv.i.i79.i
  %759 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %data.i81.i, align 4
  %sub.ptr.lhs.cast.i82.i = ptrtoint ptr %add.ptr.i.i80.i to i32
  %sub.ptr.rhs.cast.i83.i = ptrtoint ptr %760 to i32
  %sub.ptr.sub.i84.i = sub i32 20, %sub.ptr.rhs.cast.i83.i
  %add20.i = add i32 %sub.ptr.sub.i84.i, %sub.ptr.lhs.cast.i82.i
  %call21.i447 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add20.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i447)
  %tobool22.not.i = icmp eq i32 %call21.i447, 0
  br i1 %tobool22.not.i, label %if.end30.i, label %if.then17.i.execute_dec_ttl.exit_crit_edge, !prof !68

if.then17.i.execute_dec_ttl.exit_crit_edge:       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %execute_dec_ttl.exit

if.end30.i:                                       ; preds = %if.then17.i
  %761 = ptrtoint ptr %head.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %head.i.i77.i, align 8
  %763 = ptrtoint ptr %network_header.i.i78.i to i32
  call void @__asan_load2_noabort(i32 %763)
  %764 = load i16, ptr %network_header.i.i78.i, align 4
  %conv.i.i87.i = zext i16 %764 to i32
  %add.ptr.i.i88.i = getelementptr i8, ptr %762, i32 %conv.i.i87.i
  %ttl32.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i88.i, i32 0, i32 5
  %765 = ptrtoint ptr %ttl32.i to i32
  call void @__asan_load1_noabort(i32 %765)
  %766 = load i8, ptr %ttl32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %766)
  %cmp34.i = icmp ult i8 %766, 2
  br i1 %cmp34.i, label %if.end30.i.if.then150_crit_edge, label %cleanup48.i

if.end30.i.if.then150_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

cleanup48.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv33.i = zext i8 %766 to i16
  %dec39.i = add i8 %766, -1
  %767 = ptrtoint ptr %ttl32.i to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 %dec39.i, ptr %ttl32.i, align 4
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i88.i, i32 0, i32 7
  %shl.i = shl nuw i16 %conv33.i, 8
  %conv43.i = zext i8 %dec39.i to i16
  %shl44.i = shl nuw i16 %conv43.i, 8
  %768 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %768)
  %769 = load i16, ptr %check.i, align 2
  %neg.i.i448 = xor i16 %769, -1
  %neg.i.i.i449 = xor i16 %shl.i, -1
  %add.i.i.i.i = add i16 %neg.i.i448, %neg.i.i.i449
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i.i, i16 %neg.i.i.i449)
  %cmp.i.i.i.i450 = icmp ult i16 %add.i.i.i.i, %neg.i.i.i449
  %conv6.i.i.i.i451 = zext i1 %cmp.i.i.i.i450 to i16
  %add7.i.i.i.i = add i16 %add.i.i.i.i, %shl44.i
  %add.i.i.i452 = add i16 %add7.i.i.i.i, %conv6.i.i.i.i451
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i452, i16 %shl44.i)
  %cmp.i.i.i453 = icmp ult i16 %add.i.i.i452, %shl44.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i453 to i16
  %add7.i.i.i = add i16 %add.i.i.i452, %conv6.i.i.i
  %neg4.i.i = xor i16 %add7.i.i.i, -1
  %770 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %770)
  store i16 %neg4.i.i, ptr %check.i, align 2
  br label %cleanup54.sink.split.i

cleanup54.sink.split.i:                           ; preds = %cleanup48.i, %cleanup.i
  %dec.sink.i = phi i8 [ %dec.i, %cleanup.i ], [ %dec39.i, %cleanup48.i ]
  %771 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 %dec.sink.i, ptr %ttl.i, align 2
  br label %for.inc

execute_dec_ttl.exit:                             ; preds = %if.then17.i.execute_dec_ttl.exit_crit_edge, %if.then.i445.execute_dec_ttl.exit_crit_edge
  %retval.2.i = phi i32 [ %call2.i443, %if.then.i445.execute_dec_ttl.exit_crit_edge ], [ %call21.i447, %if.then17.i.execute_dec_ttl.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -113, i32 %retval.2.i)
  %cmp148 = icmp eq i32 %retval.2.i, -113
  br i1 %cmp148, label %execute_dec_ttl.exit.if.then150_crit_edge, label %execute_dec_ttl.exit.if.then160_crit_edge

execute_dec_ttl.exit.if.then160_crit_edge:        ; preds = %execute_dec_ttl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

execute_dec_ttl.exit.if.then150_crit_edge:        ; preds = %execute_dec_ttl.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then150

if.then150:                                       ; preds = %execute_dec_ttl.exit.if.then150_crit_edge, %if.end30.i.if.then150_crit_edge, %if.end.i446.if.then150_crit_edge
  %add.ptr.i518 = getelementptr i8, ptr %a.0569, i32 4
  %772 = ptrtoint ptr %add.ptr.i518 to i32
  call void @__asan_load2_noabort(i32 %772)
  %773 = load i16, ptr %add.ptr.i518, align 2
  %conv.i516 = zext i16 %773 to i32
  %sub.i517 = add nsw i32 %conv.i516, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i517)
  %tobool.not.i456 = icmp eq i32 %sub.i517, 0
  br i1 %tobool.not.i456, label %if.end.i461, label %if.then.i460

if.then.i460:                                     ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i515 = getelementptr i8, ptr %a.0569, i32 8
  %call4.i459 = call fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef 0, ptr noundef %add.ptr.i515, i32 noundef %sub.i517, i1 noundef zeroext true, i1 noundef zeroext false) #13
  br label %cleanup165

if.end.i461:                                      ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #15
  call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup165

sw.epilog:                                        ; preds = %execute_check_pkt_len.exit.sw.epilog_crit_edge, %sw.bb124.sw.epilog_crit_edge, %cleanup115, %sw.bb98, %sample.exit.sw.epilog_crit_edge, %set_nsh.exit.i, %execute_recirc.exit.sw.epilog_crit_edge, %if.else.i340, %if.then.i338, %push_vlan.exit
  %err.1 = phi i32 [ %call25.i, %execute_check_pkt_len.exit.sw.epilog_crit_edge ], [ %call7.i, %sw.bb124.sw.epilog_crit_edge ], [ %err.0, %cleanup115 ], [ %call99, %sw.bb98 ], [ %call15.i, %sample.exit.sw.epilog_crit_edge ], [ %retval.1.i, %execute_recirc.exit.sw.epilog_crit_edge ], [ %call.i331, %push_vlan.exit ], [ %call.i333, %if.then.i338 ], [ %call.i333, %if.else.i340 ], [ %retval.0.i.i378, %set_nsh.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool153.not = icmp eq i32 %err.1, 0
  br i1 %tobool153.not, label %sw.epilog.for.inc_crit_edge, label %sw.epilog.if.then160_crit_edge, !prof !68

sw.epilog.if.then160_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then160

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then160:                                       ; preds = %sw.epilog.if.then160_crit_edge, %execute_dec_ttl.exit.if.then160_crit_edge, %sw.bb117.if.then160_crit_edge, %sw.bb103.if.then160_crit_edge, %sw.bb100.if.then160_crit_edge, %if.end.i299.i.if.then160_crit_edge, %pskb_may_pull.exit.i294.i.if.then160_crit_edge, %if.end.i.i290.i.if.then160_crit_edge, %sw.bb42.i.if.then160_crit_edge, %sw.bb37.i.if.then160_crit_edge, %sw.bb32.i.if.then160_crit_edge, %sw.bb27.i.if.then160_crit_edge, %sw.bb22.i.if.then160_crit_edge, %sw.bb15.i.if.then160_crit_edge, %sw.bb68.if.then160_crit_edge, %sw.bb68.if.then160_crit_edge663, %sw.bb68.if.then160_crit_edge664, %sw.bb68.if.then160_crit_edge665, %sw.bb68.if.then160_crit_edge666, %sw.bb68.if.then160_crit_edge667, %sw.bb68.if.then160_crit_edge668, %sw.bb65.if.then160_crit_edge, %sw.bb48.if.then160_crit_edge, %if.end42.if.then160_crit_edge, %sw.bb31.if.then160_crit_edge
  %err.1552 = phi i32 [ %retval.2.i, %execute_dec_ttl.exit.if.then160_crit_edge ], [ %err.1, %sw.epilog.if.then160_crit_edge ], [ %call.i411, %sw.bb117.if.then160_crit_edge ], [ %call.i402, %sw.bb103.if.then160_crit_edge ], [ %call.i398, %sw.bb100.if.then160_crit_edge ], [ -12, %if.end.i.i290.i.if.then160_crit_edge ], [ %call3.i.i, %if.end.i299.i.if.then160_crit_edge ], [ -12, %pskb_may_pull.exit.i294.i.if.then160_crit_edge ], [ %call1.i258.i, %sw.bb42.i.if.then160_crit_edge ], [ %call1.i228.i, %sw.bb37.i.if.then160_crit_edge ], [ %call1.i207.i, %sw.bb32.i.if.then160_crit_edge ], [ %call1.i170.i, %sw.bb27.i.if.then160_crit_edge ], [ %call1.i.i, %sw.bb22.i.if.then160_crit_edge ], [ %call.i.i365, %sw.bb15.i.if.then160_crit_edge ], [ -22, %sw.bb65.if.then160_crit_edge ], [ %call3.i, %sw.bb48.if.then160_crit_edge ], [ %call.i312, %if.end42.if.then160_crit_edge ], [ %call.i, %sw.bb31.if.then160_crit_edge ], [ -22, %sw.bb68.if.then160_crit_edge ], [ -22, %sw.bb68.if.then160_crit_edge663 ], [ -22, %sw.bb68.if.then160_crit_edge664 ], [ -22, %sw.bb68.if.then160_crit_edge665 ], [ -22, %sw.bb68.if.then160_crit_edge666 ], [ -22, %sw.bb68.if.then160_crit_edge667 ], [ -22, %sw.bb68.if.then160_crit_edge668 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup165

for.inc:                                          ; preds = %sw.epilog.for.inc_crit_edge, %cleanup54.sink.split.i, %sw.bb146.for.inc_crit_edge, %sw.bb119.for.inc_crit_edge, %if.end.i414, %if.end.i405, %if.end.i401, %if.end89.for.inc_crit_edge, %if.then.i392.for.inc_crit_edge, %if.end5.i.i, %if.end.i273.i, %if.end74.i.i, %if.end47.i216.i, %set_ipv6_ttl.exit.i.i, %if.end68.i.i.for.inc_crit_edge, %if.then49.i.i, %if.end47.i.i.for.inc_crit_edge, %skb_postpush_rcsum.exit.i.i, %sw.bb6.i, %sw.bb.i364, %sw.bb68.for.inc_crit_edge, %dst_hold.exit.i, %if.end8.i, %if.end5.i318, %if.end5.i, %execute_hash.exit, %output_userspace.exit, %if.then14, %sw.bb10.for.inc_crit_edge, %cleanup, %if.end.for.inc_crit_edge
  %774 = ptrtoint ptr %a.0569 to i32
  call void @__asan_load2_noabort(i32 %774)
  %775 = load i16, ptr %a.0569, align 2
  %conv.i464 = zext i16 %775 to i32
  %sub.i = add nuw nsw i32 %conv.i464, 3
  %and.i465 = and i32 %sub.i, 131068
  %sub1.i = sub i32 %rem.0566, %and.i465
  %add.ptr.i466 = getelementptr i8, ptr %a.0569, i32 %and.i465
  %cmp = icmp sgt i32 %sub1.i, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @consume_skb(ptr noundef %skb) #13
  br label %cleanup165

cleanup165.loopexit640:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup165

cleanup165:                                       ; preds = %cleanup165.loopexit640, %for.end, %if.then160, %if.end.i461, %if.then.i460, %execute_check_pkt_len.exit.cleanup165_crit_edge, %sw.bb124.cleanup165_crit_edge, %if.then122, %if.end89.cleanup165_crit_edge, %if.then84.cleanup165_crit_edge, %sample.exit.cleanup165_crit_edge, %sample.exit.thread, %execute_recirc.exit.cleanup165_crit_edge, %cleanup.thread
  %retval.8 = phi i32 [ 0, %for.end ], [ 0, %if.end.i461 ], [ %call4.i459, %if.then.i460 ], [ 0, %sample.exit.thread ], [ 0, %cleanup.thread ], [ 0, %if.then122 ], [ %err.1552, %if.then160 ], [ %call92, %cleanup165.loopexit640 ], [ 0, %if.end89.cleanup165_crit_edge ], [ %call85, %if.then84.cleanup165_crit_edge ], [ %call25.i, %execute_check_pkt_len.exit.cleanup165_crit_edge ], [ %call7.i, %sw.bb124.cleanup165_crit_edge ], [ %call15.i, %sample.exit.cleanup165_crit_edge ], [ %retval.1.i, %execute_recirc.exit.cleanup165_crit_edge ]
  ret i32 %retval.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @action_fifos_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4808, i32 noundef 8) #18
  store ptr %call, ptr @action_fifos, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 1392, i32 noundef 8) #18
  store ptr %call1, ptr @flow_keys, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @action_fifos, align 4
  tail call void @free_percpu(ptr noundef %0) #13
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @action_fifos_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @action_fifos, align 4
  tail call void @free_percpu(ptr noundef %0) #13
  %1 = load ptr, ptr @flow_keys, align 4
  tail call void @free_percpu(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ovs_do_execute_action(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_do_execute_action, i32 0, i32 1), ptr blockaddress(@trace_ovs_do_execute_action, %do.body)) #13
          to label %if.end48 [label %do.body], !srcloc !67

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !74
  %call42 = tail call i32 @__traceiter_ovs_do_execute_action(ptr noundef null, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %a, i32 noundef %rem) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !68

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #13
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_do_execute_action, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_do_execute_action, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ovs_do_execute_action.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @trace_ovs_do_execute_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 80, ptr noundef nonnull @.str.6) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_output(ptr noundef %dp, ptr noundef %skb, i32 noundef %out_port, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.ovs_vport_rcu.exit_crit_edge

entry.ovs_vport_rcu.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_vport_rcu.exit

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @ovs_vport_rcu.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.ovs_vport_rcu.exit_crit_edge, label %if.then.i, !prof !68

land.rhs.i.ovs_vport_rcu.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %ovs_vport_rcu.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_vport_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 207, i32 noundef 9, ptr noundef null) #13
  br label %ovs_vport_rcu.exit

ovs_vport_rcu.exit:                               ; preds = %if.then.i, %land.rhs.i.ovs_vport_rcu.exit_crit_edge, %entry.ovs_vport_rcu.exit_crit_edge
  %conv.i = trunc i32 %out_port to i16
  %call37.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext %conv.i) #13
  %tobool.not = icmp eq ptr %call37.i, null
  br i1 %tobool.not, label %if.else50, label %if.then, !prof !66

if.then:                                          ; preds = %ovs_vport_rcu.exit
  %mru3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %mru3 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mru3, align 4
  %cutlen6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %cutlen6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cutlen6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.then.if.end24_crit_edge, label %if.then13, !prof !68

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %sub = sub i32 %5, %3
  %mac_proto.i.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %6 = ptrtoint ptr %mac_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mac_proto.i.i, align 2
  %8 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i.i = icmp eq i8 %8, 1
  %conv = select i1 %cmp.i.i, i32 14, i32 0
  %9 = call i32 @llvm.umax.i32(i32 %sub, i32 %conv)
  tail call fastcc void @pskb_trim(ptr noundef %skb, i32 noundef %9)
  br label %if.end24

if.end24:                                         ; preds = %if.then13, %if.then.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool25.not = icmp eq i16 %1, 0
  br i1 %tobool25.not, label %if.end24.if.then37_crit_edge, label %lor.rhs

if.end24.if.then37_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

lor.rhs:                                          ; preds = %if.end24
  %len26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len26, align 4
  %conv27 = zext i16 %1 to i32
  %12 = ptrtoint ptr %call37.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call37.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len, align 2
  %conv28 = zext i16 %15 to i32
  %add = add nuw nsw i32 %conv28, %conv27
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add)
  %cmp29.not = icmp ugt i32 %11, %add
  br i1 %cmp29.not, label %if.else39, label %lor.rhs.if.then37_crit_edge, !prof !66

lor.rhs.if.then37_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.then37:                                        ; preds = %lor.rhs.if.then37_crit_edge, %if.end24.if.then37_crit_edge
  %mac_proto.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %16 = ptrtoint ptr %mac_proto.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mac_proto.i, align 2
  %18 = and i8 %17, 127
  tail call void @ovs_vport_send(ptr noundef nonnull %call37.i, ptr noundef %skb, i8 noundef zeroext %18) #13
  br label %if.end51

if.else39:                                        ; preds = %lor.rhs
  %mtu = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 20
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv27)
  %cmp42.not = icmp ult i32 %20, %conv27
  br i1 %cmp42.not, label %if.else47, label %if.then44

if.then44:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  %net45 = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 5
  %21 = ptrtoint ptr %net45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net45, align 4
  tail call fastcc void @ovs_fragment(ptr noundef %22, ptr noundef nonnull %call37.i, ptr noundef %skb, i16 noundef zeroext %1, ptr noundef %key)
  br label %if.end51

if.else47:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %if.end51

if.else50:                                        ; preds = %ovs_vport_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.else47, %if.then44, %if.then37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_key_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_ct_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_ct_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsh_hdr_from_nlattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovs_meter_execute(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ovs_do_execute_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pskb_trim(ptr noundef %skb, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp = icmp ugt i32 %1, %len
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %len) #13
  br label %cond.end

__skb_trim.exit.i:                                ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %len1, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 %len
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %cond.end

cond.end:                                         ; preds = %__skb_trim.exit.i, %if.then.i, %entry.cond.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_send(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovs_fragment(ptr noundef %net, ptr noundef %vport, ptr noundef %skb, i16 noundef zeroext %mru, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  %ovs_rt = alloca %struct.rtable, align 4
  %ovs_rt29 = alloca %struct.rt6_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = add i16 %1, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %2)
  %3 = icmp ult i16 %2, 2
  br i1 %3, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv = trunc i32 %sub.ptr.sub.i to i16
  %inner_network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %10 = ptrtoint ptr %inner_network_header to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %inner_network_header, align 4
  store i16 %11, ptr %network_header.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %orig_network_offset.0 = phi i16 [ %conv, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %head.i.i123 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i123 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i123, align 8
  %network_header.i.i124 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i124 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i124, align 4
  %conv.i.i125 = zext i16 %15 to i32
  %add.ptr.i.i126 = getelementptr i8, ptr %13, i32 %conv.i.i125
  %data.i127 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i127 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i127, align 4
  %sub.ptr.lhs.cast.i128 = ptrtoint ptr %add.ptr.i.i126 to i32
  %sub.ptr.rhs.cast.i129 = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i130 = sub i32 %sub.ptr.lhs.cast.i128, %sub.ptr.rhs.cast.i129
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub.ptr.sub.i130)
  %cmp = icmp sgt i32 %sub.ptr.sub.i130, 30
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %if.end
  %call5 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body.err_crit_edge, label %do.end

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #16
  br label %err

if.end12:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type, align 4
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %19, label %land.end [
    i16 2048, label %if.then16
    i16 -31011, label %if.then27
  ]

if.then16:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %ovs_rt) #13
  %21 = call ptr @memset(ptr %ovs_rt, i32 0, i32 124)
  %mac_proto.i = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %22 = ptrtoint ptr %mac_proto.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_proto.i, align 2
  %24 = and i8 %23, 127
  %25 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %30, ptrtoint (ptr @ovs_frag_data_storage to i32)
  %31 = inttoptr i32 %add.i to ptr
  %32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %31, align 4
  %vport3.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %vport3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vport, ptr %vport3.i, align 4
  %cb.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 2
  %cb4.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %cb.i, ptr %cb4.i, i32 12)
  %38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %38, align 8
  %inner_protocol.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 3
  %41 = ptrtoint ptr %inner_protocol.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %inner_protocol.i, align 4
  %network_offset.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 4
  %42 = ptrtoint ptr %network_offset.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %orig_network_offset.0, ptr %network_offset.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %43 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then16.prepare_frag.exit_crit_edge, label %if.then.i

if.then16.prepare_frag.exit_crit_edge:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_frag.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %44 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vlan_tci.i, align 2
  %46 = or i16 %45, 4096
  br label %prepare_frag.exit

prepare_frag.exit:                                ; preds = %if.then.i, %if.then16.prepare_frag.exit_crit_edge
  %.sink.i = phi i16 [ %46, %if.then.i ], [ 0, %if.then16.prepare_frag.exit_crit_edge ]
  %47 = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %.sink.i, ptr %47, align 4
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %49 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vlan_proto.i, align 8
  %vlan_proto8.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 6
  %51 = ptrtoint ptr %vlan_proto8.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vlan_proto8.i, align 2
  %mac_proto9.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 8
  %52 = ptrtoint ptr %mac_proto9.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %24, ptr %mac_proto9.i, align 4
  %l2_len.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 7
  %53 = ptrtoint ptr %l2_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.ptr.sub.i130, ptr %l2_len.i, align 4
  %l2_data.i = getelementptr inbounds %struct.ovs_frag_data, ptr %31, i32 0, i32 9
  %54 = ptrtoint ptr %data.i127 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i127, align 4
  %56 = call ptr @memcpy(ptr %l2_data.i, ptr %55, i32 %sub.ptr.sub.i130)
  %57 = call ptr @memset(ptr %cb4.i, i32 0, i32 24)
  %call13.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i130) #13
  call void @dst_init(ptr noundef nonnull %ovs_rt, ptr noundef nonnull @ovs_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #13
  %58 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vport, align 4
  %60 = ptrtoint ptr %ovs_rt to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %ovs_rt, align 4
  %61 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %32, align 8
  %call.i = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i131 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i131, label %land.rhs.i, label %prepare_frag.exit.skb_dst_set_noref.exit_crit_edge

prepare_frag.exit.skb_dst_set_noref.exit_crit_edge: ; preds = %prepare_frag.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %prepare_frag.exit
  %call1.i = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !66

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1043, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %prepare_frag.exit.skb_dst_set_noref.exit_crit_edge
  %63 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load.i132 = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i132, 4096
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  %64 = ptrtoint ptr %ovs_rt to i32
  %or31.i = or i32 %64, 1
  %65 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or31.i, ptr %32, align 8
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %66 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %mru, ptr %frag_max_size, align 2
  %67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %call21 = call i32 @ip_do_fragment(ptr noundef %net, ptr noundef %69, ptr noundef %skb, ptr noundef nonnull @ovs_vport_output) #13
  %and.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i133 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i133, label %if.then.i134, label %skb_dst_set_noref.exit.refdst_drop.exit_crit_edge

skb_dst_set_noref.exit.refdst_drop.exit_crit_edge: ; preds = %skb_dst_set_noref.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit

if.then.i134:                                     ; preds = %skb_dst_set_noref.exit
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i = and i32 %62, -2
  %70 = inttoptr i32 %and1.i to ptr
  call void @dst_release(ptr noundef %70) #13
  br label %refdst_drop.exit

refdst_drop.exit:                                 ; preds = %if.then.i134, %skb_dst_set_noref.exit.refdst_drop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %ovs_rt) #13
  br label %cleanup

if.then27:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %ovs_rt29) #13
  %mac_proto.i135 = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 4
  %71 = ptrtoint ptr %mac_proto.i135 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %mac_proto.i135, align 2
  %73 = and i8 %72, 127
  %74 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i139 = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i139 to ptr
  %cpu.i140 = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %cpu.i140 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cpu.i140, align 4
  %arrayidx.i141 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx.i141 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i141, align 4
  %add.i142 = add i32 %79, ptrtoint (ptr @ovs_frag_data_storage to i32)
  %80 = inttoptr i32 %add.i142 to ptr
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 8
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %80, align 4
  %vport3.i143 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %vport3.i143 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %vport, ptr %vport3.i143, align 4
  %cb.i144 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 2
  %cb4.i145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %86 = call ptr @memcpy(ptr %cb.i144, ptr %cb4.i145, i32 12)
  %87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %87, align 8
  %inner_protocol.i146 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 3
  %90 = ptrtoint ptr %inner_protocol.i146 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %inner_protocol.i146, align 4
  %network_offset.i147 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 4
  %91 = ptrtoint ptr %network_offset.i147 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %orig_network_offset.0, ptr %network_offset.i147, align 2
  %vlan_present.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %92 = ptrtoint ptr %vlan_present.i148 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %bf.load.i149 = load i32, ptr %vlan_present.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i149)
  %tobool.not.i150 = icmp sgt i32 %bf.load.i149, -1
  br i1 %tobool.not.i150, label %if.then27.prepare_frag.exit165_crit_edge, label %if.then.i152

if.then27.prepare_frag.exit165_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %prepare_frag.exit165

if.then.i152:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_tci.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %93 = ptrtoint ptr %vlan_tci.i151 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vlan_tci.i151, align 2
  %95 = or i16 %94, 4096
  br label %prepare_frag.exit165

prepare_frag.exit165:                             ; preds = %if.then.i152, %if.then27.prepare_frag.exit165_crit_edge
  %.sink.i153 = phi i16 [ %95, %if.then.i152 ], [ 0, %if.then27.prepare_frag.exit165_crit_edge ]
  %96 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 5
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %.sink.i153, ptr %96, align 4
  %vlan_proto.i159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %98 = ptrtoint ptr %vlan_proto.i159 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vlan_proto.i159, align 8
  %vlan_proto8.i160 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 6
  %100 = ptrtoint ptr %vlan_proto8.i160 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %vlan_proto8.i160, align 2
  %mac_proto9.i161 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 8
  %101 = ptrtoint ptr %mac_proto9.i161 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %73, ptr %mac_proto9.i161, align 4
  %l2_len.i162 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 7
  %102 = ptrtoint ptr %l2_len.i162 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub.ptr.sub.i130, ptr %l2_len.i162, align 4
  %l2_data.i163 = getelementptr inbounds %struct.ovs_frag_data, ptr %80, i32 0, i32 9
  %103 = ptrtoint ptr %data.i127 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i127, align 4
  %105 = call ptr @memcpy(ptr %l2_data.i163, ptr %104, i32 %sub.ptr.sub.i130)
  %106 = call ptr @memset(ptr %cb4.i145, i32 0, i32 24)
  %call13.i164 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i130) #13
  %107 = call ptr @memset(ptr %ovs_rt29, i32 0, i32 160)
  call void @dst_init(ptr noundef nonnull %ovs_rt29, ptr noundef nonnull @ovs_dst_ops, ptr noundef null, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 8) #13
  %108 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vport, align 4
  %110 = ptrtoint ptr %ovs_rt29 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %109, ptr %ovs_rt29, align 4
  %111 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %81, align 8
  %call.i166 = call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i167 = icmp eq i32 %call.i166, 0
  br i1 %tobool.not.i167, label %land.rhs.i170, label %prepare_frag.exit165.skb_dst_set_noref.exit178_crit_edge

prepare_frag.exit165.skb_dst_set_noref.exit178_crit_edge: ; preds = %prepare_frag.exit165
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_set_noref.exit178

land.rhs.i170:                                    ; preds = %prepare_frag.exit165
  %call1.i168 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool2.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool2.not.i169, label %do.end.i171, label %land.rhs.i170.skb_dst_set_noref.exit178_crit_edge, !prof !66

land.rhs.i170.skb_dst_set_noref.exit178_crit_edge: ; preds = %land.rhs.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_dst_set_noref.exit178

do.end.i171:                                      ; preds = %land.rhs.i170
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1043, i32 noundef 9, ptr noundef null) #13
  br label %skb_dst_set_noref.exit178

skb_dst_set_noref.exit178:                        ; preds = %do.end.i171, %land.rhs.i170.skb_dst_set_noref.exit178_crit_edge, %prepare_frag.exit165.skb_dst_set_noref.exit178_crit_edge
  %113 = ptrtoint ptr %vlan_present.i148 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %bf.load.i173 = load i32, ptr %vlan_present.i148, align 2
  %bf.set.i176 = or i32 %bf.load.i173, 4096
  store i32 %bf.set.i176, ptr %vlan_present.i148, align 2
  %114 = ptrtoint ptr %ovs_rt29 to i32
  %or31.i177 = or i32 %114, 1
  %115 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or31.i177, ptr %81, align 8
  %frag_max_size39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %116 = ptrtoint ptr %frag_max_size39 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %mru, ptr %frag_max_size39, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %117 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_fragment = getelementptr inbounds %struct.ipv6_stub, ptr %117, i32 0, i32 21
  %118 = ptrtoint ptr %ipv6_fragment to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ipv6_fragment, align 4
  %120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %call40 = call i32 %119(ptr noundef %net, ptr noundef %122, ptr noundef %skb, ptr noundef nonnull @ovs_vport_output) #13
  %and.i179 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i180, label %if.then.i182, label %skb_dst_set_noref.exit178.refdst_drop.exit183_crit_edge

skb_dst_set_noref.exit178.refdst_drop.exit183_crit_edge: ; preds = %skb_dst_set_noref.exit178
  call void @__sanitizer_cov_trace_pc() #15
  br label %refdst_drop.exit183

if.then.i182:                                     ; preds = %skb_dst_set_noref.exit178
  call void @__sanitizer_cov_trace_pc() #15
  %and1.i181 = and i32 %112, -2
  %123 = inttoptr i32 %and1.i181 to ptr
  call void @dst_release(ptr noundef %123) #13
  br label %refdst_drop.exit183

refdst_drop.exit183:                              ; preds = %if.then.i182, %skb_dst_set_noref.exit178.refdst_drop.exit183_crit_edge
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %ovs_rt29) #13
  br label %cleanup

land.end:                                         ; preds = %if.end12
  %.b122 = load i1, ptr @ovs_fragment.__already_done, align 1
  br i1 %.b122, label %land.end.err_crit_edge, label %if.then48, !prof !68

land.end.err_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then48:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @ovs_fragment.__already_done, align 1
  %124 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vport, align 4
  %conv64 = zext i16 %19 to i32
  %conv65 = zext i16 %mru to i32
  %mtu = getelementptr inbounds %struct.net_device, ptr %125, i32 0, i32 20
  %126 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mtu, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 896, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %125, i32 noundef %conv64, i32 noundef %conv65, i32 noundef %127) #13
  br label %err

err:                                              ; preds = %if.then48, %land.end.err_crit_edge, %do.end, %do.body.err_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %refdst_drop.exit183, %refdst_drop.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_lookup_vport(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_do_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_output(ptr nocapture noundef readnone %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @ovs_frag_data_storage to i32)
  %6 = inttoptr i32 %add to ptr
  %vport2 = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %vport2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vport2, align 4
  %l2_len = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %l2_len, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %11 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #13
  %14 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %15, 65535
  %shr.i.i = ashr i32 %15, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %10)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %10
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %10, i32 %sub.ptr.sub.i.i.i) #13
  %add.i.i = add i32 %20, 127
  %and.i4.i = and i32 %add.i.i, -128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp = icmp slt i32 %call4.i.i, 0
  br i1 %cmp, label %if.then, label %skb_cow_head.exit.if.end_crit_edge

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #13
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %24, align 8
  %and.i52 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool6.not.i = icmp eq i32 %and.i52, 0
  br i1 %tobool6.not.i, label %skb_dst.exit.i, label %if.end.__skb_dst_copy.exit_crit_edge

if.end.__skb_dst_copy.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_dst_copy.exit

skb_dst.exit.i:                                   ; preds = %if.end
  %and25.i.i = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not.i13.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not.i13.i, label %skb_dst.exit.i.__skb_dst_copy.exit_crit_edge, label %if.then.i.i

skb_dst.exit.i.__skb_dst_copy.exit_crit_edge:     ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__skb_dst_copy.exit

if.then.i.i:                                      ; preds = %skb_dst.exit.i
  %26 = inttoptr i32 %and25.i.i to ptr
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %26, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #13
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #13, !srcloc !71
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %do.end10.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !72
  br label %__skb_dst_copy.exit

do.end10.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 231, i32 noundef 9, ptr noundef null) #13
  br label %__skb_dst_copy.exit

__skb_dst_copy.exit:                              ; preds = %do.end10.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i, %skb_dst.exit.i.__skb_dst_copy.exit_crit_edge, %if.end.__skb_dst_copy.exit_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %cb4 = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %cb, ptr %cb4, i32 12)
  %inner_protocol = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 3
  %29 = ptrtoint ptr %inner_protocol to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %inner_protocol, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %30, ptr %31, align 8
  %vlan_tci = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 5
  %33 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vlan_tci, align 4
  %35 = and i16 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not = icmp eq i16 %35, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %__skb_dst_copy.exit
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_proto = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 6
  %36 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vlan_proto, align 2
  %and8 = and i16 %34, -4097
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %38 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %39 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %and8, ptr %vlan_tci2.i, align 2
  %40 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %bf.load.i53 = load i32, ptr %slow_gro.i, align 2
  %bf.set.i54 = or i32 %bf.load.i53, -2147483648
  br label %if.end10

if.else:                                          ; preds = %__skb_dst_copy.exit
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %bf.load.i56 = load i32, ptr %slow_gro.i, align 2
  %bf.clear.i = and i32 %bf.load.i56, 2147483647
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %storemerge = phi i32 [ %bf.set.i54, %if.then5 ], [ %bf.clear.i, %if.else ]
  %42 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %storemerge, ptr %slow_gro.i, align 2
  %43 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %l2_len, align 4
  %call12 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %44) #13
  %45 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i, align 4
  %l2_data = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 9
  %47 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %l2_len, align 4
  %49 = call ptr @memcpy(ptr %46, ptr %l2_data, i32 %48)
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %50 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %bf.load.i.i57 = load i16, ptr %ip_summed.i.i, align 8
  %51 = and i16 %bf.load.i.i57, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %51)
  %cmp.i.i = icmp eq i16 %51, 1024
  br i1 %cmp.i.i, label %if.then.i.i58, label %if.end10.skb_postpush_rcsum.exit_crit_edge

if.end10.skb_postpush_rcsum.exit_crit_edge:       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %skb_postpush_rcsum.exit

if.then.i.i58:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %52 = ptrtoint ptr %l2_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %l2_len, align 4
  %54 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i.i, align 4
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 8
  %call.i.i = tail call i32 @csum_partial(ptr noundef %55, i32 noundef %53, i32 noundef 0) #13
  %add.i.i.i.i = add i32 %call.i.i, %58
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %call.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %call.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %conv.i.i.i.i
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add1.i.i.i.i, ptr %56, align 8
  br label %skb_postpush_rcsum.exit

skb_postpush_rcsum.exit:                          ; preds = %if.then.i.i58, %if.end10.skb_postpush_rcsum.exit_crit_edge
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i, align 4
  %62 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %64 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %65 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %protocol, align 8
  %67 = add i16 %66, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %67)
  %68 = icmp ult i16 %67, 2
  br i1 %68, label %if.then18, label %skb_postpush_rcsum.exit.if.end20_crit_edge

skb_postpush_rcsum.exit.if.end20_crit_edge:       ; preds = %skb_postpush_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %skb_postpush_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #15
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %69 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %network_header, align 4
  %inner_network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %71 = ptrtoint ptr %inner_network_header to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %inner_network_header, align 4
  %network_offset = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 4
  %72 = ptrtoint ptr %network_offset to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_offset, align 2
  %conv1.i = add i16 %73, %conv.i
  store i16 %conv1.i, ptr %network_header, align 4
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %74 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %mac_len.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %skb_postpush_rcsum.exit.if.end20_crit_edge
  %mac_proto = getelementptr inbounds %struct.ovs_frag_data, ptr %6, i32 0, i32 8
  %75 = ptrtoint ptr %mac_proto to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %mac_proto, align 4
  tail call void @ovs_vport_send(ptr noundef %8, ptr noundef %skb, i8 noundef zeroext %76) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %if.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ovs_dst_get_mtu(ptr nocapture noundef readonly %dst) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dst, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_dp_get_upcall_portid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_fill_metadata_dst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_dp_upcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_push(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_pop(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_push(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clone_execute(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, i32 noundef %recirc_id, ptr noundef %actions, i32 noundef %len, i1 noundef zeroext %last, i1 noundef zeroext %clone_flow_key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %last, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %call, %cond.false ], [ %skb, %entry.cond.end_crit_edge ]
  %tobool2.not = icmp eq ptr %cond, null
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br i1 %clone_flow_key, label %cond.true4, label %if.end.cond.end7_crit_edge

if.end.cond.end7_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end7

cond.true4:                                       ; preds = %if.end
  %0 = load ptr, ptr @flow_keys, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !78
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx22.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx22.i, align 4
  %add23.i = add i32 %12, ptrtoint (ptr @exec_actions_level to i32)
  %13 = inttoptr i32 %add23.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !79
  %16 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i.i34.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i34.i to ptr
  %preempt_count.i.i35.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i35.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i35.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i = icmp slt i32 %15, 4
  br i1 %cmp.i, label %if.then.i, label %cond.true4.if.end57_crit_edge

cond.true4.if.end57_crit_edge:                    ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then.i:                                        ; preds = %cond.true4
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %0 to i32
  %add.i = add i32 %6, %20
  %21 = inttoptr i32 %add.i to ptr
  %sub.i = add i32 %15, -1
  %arrayidx31.i = getelementptr [3 x %struct.sw_flow_key], ptr %21, i32 0, i32 %sub.i
  %22 = call ptr @memcpy(ptr %arrayidx31.i, ptr %key, i32 464)
  br label %cond.end7

cond.end7:                                        ; preds = %if.then.i, %if.end.cond.end7_crit_edge
  %cond8 = phi ptr [ %key, %if.end.cond.end7_crit_edge ], [ %arrayidx31.i, %if.then.i ]
  %tobool9.not = icmp eq ptr %cond8, null
  br i1 %tobool9.not, label %cond.end7.if.end57_crit_edge, label %if.then10

cond.end7.if.end57_crit_edge:                     ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end57

if.then10:                                        ; preds = %cond.end7
  %tobool11.not = icmp eq ptr %actions, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then10
  br i1 %clone_flow_key, label %if.then31, label %if.end28

if.end28:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %call29 = tail call fastcc i32 @do_execute_actions(ptr noundef %dp, ptr noundef nonnull %cond, ptr noundef nonnull %cond8, ptr noundef nonnull %actions, i32 noundef %len)
  br label %cleanup

if.then31:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  %23 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, ptrtoint (ptr @exec_actions_level to i32)
  %29 = inttoptr i32 %add to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add23 = add i32 %31, 1
  store i32 %add23, ptr %29, align 4
  %call29119 = tail call fastcc i32 @do_execute_actions(ptr noundef %dp, ptr noundef nonnull %cond, ptr noundef nonnull %cond8, ptr noundef nonnull %actions, i32 noundef %len)
  %32 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i111 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i111 to ptr
  %cpu46 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu46, align 4
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %37, ptrtoint (ptr @exec_actions_level to i32)
  %38 = inttoptr i32 %add48 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add49 = add i32 %40, -1
  store i32 %add49, ptr %38, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %recirc_id55 = getelementptr inbounds %struct.sw_flow_key, ptr %cond8, i32 0, i32 7
  %41 = ptrtoint ptr %recirc_id55 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %recirc_id, ptr %recirc_id55, align 8
  tail call void @ovs_dp_process_packet(ptr noundef nonnull %cond, ptr noundef nonnull %cond8) #13
  br label %cleanup

if.end57:                                         ; preds = %cond.end7.if.end57_crit_edge, %cond.true4.if.end57_crit_edge
  %42 = load ptr, ptr @action_fifos, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !56) #13
  %and.i.i112 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i112 to ptr
  %cpu.i113 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i113 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i113, align 4
  %arrayidx.i114 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i114, align 4
  %add.i115 = add i32 %49, %43
  %50 = inttoptr i32 %add.i115 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %cmp.i.i = icmp sgt i32 %52, 8
  br i1 %cmp.i.i, label %if.end57.if.else65_crit_edge, label %action_fifo_put.exit.i

if.end57.if.else65_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else65

action_fifo_put.exit.i:                           ; preds = %if.end57
  %inc.i.i = add nsw i32 %52, 1
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %inc.i.i, ptr %50, align 8
  %arrayidx.i.i = getelementptr %struct.action_fifo, ptr %50, i32 0, i32 2, i32 %52
  %tobool.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i, label %action_fifo_put.exit.i.if.else65_crit_edge, label %if.then60

action_fifo_put.exit.i.if.else65_crit_edge:       ; preds = %action_fifo_put.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else65

if.then60:                                        ; preds = %action_fifo_put.exit.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cond, ptr %arrayidx.i.i, align 8
  %actions4.i = getelementptr %struct.action_fifo, ptr %50, i32 0, i32 2, i32 %52, i32 1
  %55 = ptrtoint ptr %actions4.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %actions, ptr %actions4.i, align 4
  %actions_len5.i = getelementptr %struct.action_fifo, ptr %50, i32 0, i32 2, i32 %52, i32 2
  %56 = ptrtoint ptr %actions_len5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %len, ptr %actions_len5.i, align 8
  %pkt_key.i = getelementptr %struct.action_fifo, ptr %50, i32 0, i32 2, i32 %52, i32 3
  %57 = call ptr @memcpy(ptr %pkt_key.i, ptr %key, i32 464)
  %tobool61.not = icmp eq ptr %actions, null
  br i1 %tobool61.not, label %if.then62, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15
  %recirc_id63 = getelementptr %struct.action_fifo, ptr %50, i32 0, i32 2, i32 %52, i32 3, i32 7
  %58 = ptrtoint ptr %recirc_id63 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %recirc_id, ptr %recirc_id63, align 8
  br label %cleanup

if.else65:                                        ; preds = %action_fifo_put.exit.i.if.else65_crit_edge, %if.end57.if.else65_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %cond, i32 noundef 0) #13
  %call66 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else65.cleanup_crit_edge, label %if.then68

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then68:                                        ; preds = %if.else65
  %tobool69.not = icmp eq ptr %actions, null
  %call82 = tail call ptr @ovs_dp_name(ptr noundef %dp) #13
  br i1 %tobool69.not, label %do.end80, label %do.end73

do.end73:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %call82) #16
  br label %cleanup

do.end80:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #15
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %call82) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %do.end73, %if.else65.cleanup_crit_edge, %if.then62, %if.then60.cleanup_crit_edge, %if.else, %if.then31, %if.end28, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup_crit_edge ], [ %call29119, %if.then31 ], [ %call29, %if.end28 ], [ 0, %if.else ], [ 0, %if.else65.cleanup_crit_edge ], [ 0, %do.end80 ], [ 0, %do.end73 ], [ 0, %if.then60.cleanup_crit_edge ], [ 0, %if.then62 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_dp_process_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsh_key_from_nlattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_ip_addr(ptr noundef %skb, ptr nocapture noundef %nh, ptr nocapture noundef %addr, i32 noundef %new_addr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i7 = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i7
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %3
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %nh, i32 0, i32 4
  %10 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_off.i, align 2
  %12 = and i16 %11, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.update_ip_l4_checksum.exit_crit_edge

entry.update_ip_l4_checksum.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %nh, i32 0, i32 6
  %13 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol.i, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %14, label %if.end.i.update_ip_l4_checksum.exit_crit_edge [
    i8 6, label %if.then3.i
    i8 17, label %if.then15.i
  ]

if.end.i.update_ip_l4_checksum.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i)
  %cmp4.i = icmp ugt i32 %sub.i, 19
  br i1 %cmp4.i, label %if.then8.i, label %if.then3.i.update_ip_l4_checksum.exit_crit_edge, !prof !68

if.then3.i.update_ip_l4_checksum.exit_crit_edge:  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  tail call void @inet_proto_csum_replace4(ptr noundef %check.i, ptr noundef %skb, i32 noundef %1, i32 noundef %new_addr, i1 noundef zeroext true) #13
  br label %update_ip_l4_checksum.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp16.i = icmp ugt i32 %sub.i, 7
  br i1 %cmp16.i, label %if.then24.i, label %if.then15.i.update_ip_l4_checksum.exit_crit_edge, !prof !68

if.then15.i.update_ip_l4_checksum.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

if.then24.i:                                      ; preds = %if.then15.i
  %check26.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %check26.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %check26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool28.not.i = icmp eq i16 %17, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i, label %if.then24.i.if.then32.i_crit_edge

if.then24.i.if.then32.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %if.then24.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %19 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %19)
  %cmp30.i = icmp eq i16 %19, 1536
  br i1 %cmp30.i, label %lor.lhs.false.i.if.then32.i_crit_edge, label %lor.lhs.false.i.update_ip_l4_checksum.exit_crit_edge

lor.lhs.false.i.update_ip_l4_checksum.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then32.i

if.then32.i:                                      ; preds = %lor.lhs.false.i.if.then32.i_crit_edge, %if.then24.i.if.then32.i_crit_edge
  tail call void @inet_proto_csum_replace4(ptr noundef %check26.i, ptr noundef %skb, i32 noundef %1, i32 noundef %new_addr, i1 noundef zeroext true) #13
  %20 = ptrtoint ptr %check26.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %check26.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool35.not.i = icmp eq i16 %21, 0
  br i1 %tobool35.not.i, label %if.then36.i, label %if.then32.i.update_ip_l4_checksum.exit_crit_edge

if.then32.i.update_ip_l4_checksum.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %update_ip_l4_checksum.exit

if.then36.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %check26.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %check26.i, align 2
  br label %update_ip_l4_checksum.exit

update_ip_l4_checksum.exit:                       ; preds = %if.then36.i, %if.then32.i.update_ip_l4_checksum.exit_crit_edge, %lor.lhs.false.i.update_ip_l4_checksum.exit_crit_edge, %if.then15.i.update_ip_l4_checksum.exit_crit_edge, %if.then8.i, %if.then3.i.update_ip_l4_checksum.exit_crit_edge, %if.end.i.update_ip_l4_checksum.exit_crit_edge, %entry.update_ip_l4_checksum.exit_crit_edge
  %check = getelementptr inbounds %struct.iphdr, ptr %nh, i32 0, i32 7
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %addr, align 4
  %25 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %check, align 2
  %conv.i.i = zext i16 %26 to i32
  %neg.i = xor i32 %conv.i.i, -1
  %neg.i.i = xor i32 %24, -1
  %add.i.i.i = add i32 %neg.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %new_addr
  %add.i.i = add i32 %add1.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %new_addr)
  %cmp.i.i = icmp ult i32 %add.i.i, %new_addr
  %conv.i5.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i5.i
  %27 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #19, !srcloc !80
  %neg.i6.i = xor i32 %27, -1
  %shr.i.i = lshr i32 %neg.i6.i, 16
  %conv.i7.i = trunc i32 %shr.i.i to i16
  %28 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i7.i, ptr %check, align 2
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %29 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %hash.i, align 4
  %sw_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %sw_hash.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i8 = load i16, ptr %sw_hash.i, align 8
  %bf.clear2.i = and i16 %bf.load.i8, -193
  store i16 %bf.clear2.i, ptr %sw_hash.i, align 8
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %new_addr, ptr %addr, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_ipv6_addr(ptr noundef %skb, i8 noundef zeroext %l4_proto, ptr noundef %addr, ptr noundef %new_addr, i1 noundef zeroext %recalculate_csum) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %recalculate_csum, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.neg.i = sub i32 %sub.ptr.rhs.cast.i.i, %sub.ptr.lhs.cast.i.i
  %sub.i = add i32 %sub.ptr.sub.i.neg.i, %1
  %8 = zext i8 %l4_proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %l4_proto, label %if.then.if.end_crit_edge [
    i8 6, label %if.then.i
    i8 17, label %if.then10.i
    i8 58, label %if.then40.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i)
  %cmp2.i = icmp ugt i32 %sub.i, 19
  br i1 %cmp2.i, label %if.then5.i, label %if.then.i.if.end_crit_edge, !prof !68

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  tail call void @inet_proto_csum_replace16(ptr noundef %check.i, ptr noundef %skb, ptr noundef %addr, ptr noundef %new_addr, i1 noundef zeroext true) #13
  br label %if.end

if.then10.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp11.i = icmp ugt i32 %sub.i, 7
  br i1 %cmp11.i, label %if.then19.i, label %if.then10.i.if.end_crit_edge, !prof !68

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then19.i:                                      ; preds = %if.then10.i
  %check21.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %check21.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %check21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool23.not.i = icmp eq i16 %10, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i, label %if.then19.i.if.then27.i_crit_edge

if.then19.i.if.then27.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27.i

lor.lhs.false.i:                                  ; preds = %if.then19.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %11 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %12 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %12)
  %cmp25.i = icmp eq i16 %12, 1536
  br i1 %cmp25.i, label %lor.lhs.false.i.if.then27.i_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

lor.lhs.false.i.if.then27.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then27.i

if.then27.i:                                      ; preds = %lor.lhs.false.i.if.then27.i_crit_edge, %if.then19.i.if.then27.i_crit_edge
  tail call void @inet_proto_csum_replace16(ptr noundef %check21.i, ptr noundef %skb, ptr noundef %addr, ptr noundef %new_addr, i1 noundef zeroext true) #13
  %13 = ptrtoint ptr %check21.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %check21.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool30.not.i = icmp eq i16 %14, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.then27.i.if.end_crit_edge

if.then27.i.if.end_crit_edge:                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then31.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %check21.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %check21.i, align 2
  br label %if.end

if.then40.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp41.i = icmp ugt i32 %sub.i, 7
  br i1 %cmp41.i, label %if.then49.i, label %if.then40.i.if.end_crit_edge, !prof !68

if.then40.i.if.end_crit_edge:                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then49.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #15
  %icmp6_cksum.i = getelementptr inbounds %struct.icmp6hdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  tail call void @inet_proto_csum_replace16(ptr noundef %icmp6_cksum.i, ptr noundef %skb, ptr noundef %addr, ptr noundef %new_addr, i1 noundef zeroext true) #13
  br label %if.end

if.end:                                           ; preds = %if.then49.i, %if.then40.i.if.end_crit_edge, %if.then31.i, %if.then27.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %if.then10.i.if.end_crit_edge, %if.then5.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %16 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %hash.i, align 4
  %sw_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %sw_hash.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i4 = load i16, ptr %sw_hash.i, align 8
  %bf.clear2.i = and i16 %bf.load.i4, -193
  store i16 %bf.clear2.i, ptr %sw_hash.i, align 8
  %18 = call ptr @memcpy(ptr %addr, ptr %new_addr, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_ext_hdr(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace16(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #13
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #20
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_update_lse(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_eth_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_eth_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsh_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsh_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_mac_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/openvswitch/actions.c", i32 1583, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/openvswitch/actions.c", i32 1585, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ovs_execute_actions._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ovs_execute_actions._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/openvswitch/actions.c", i32 1600, i32 2}
!10 = !{ptr @__pcpu_unique_ovs_frag_data_storage, !11, !"__pcpu_unique_ovs_frag_data_storage", i1 false, i1 false}
!11 = !{!"../net/openvswitch/actions.c", i32 58, i32 8}
!12 = !{ptr @ovs_frag_data_storage, !11, !"ovs_frag_data_storage", i1 false, i1 false}
!13 = !{ptr @action_fifos, !14, !"action_fifos", i1 false, i1 false}
!14 = !{!"../net/openvswitch/actions.c", i32 74, i32 37}
!15 = !{ptr @flow_keys, !16, !"flow_keys", i1 false, i1 false}
!16 = !{!"../net/openvswitch/actions.c", i32 75, i32 42}
!17 = !{ptr @__pcpu_unique_exec_actions_level, !18, !"__pcpu_unique_exec_actions_level", i1 false, i1 false}
!18 = !{!"../net/openvswitch/actions.c", i32 76, i32 8}
!19 = !{ptr @exec_actions_level, !18, !"exec_actions_level", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../net/openvswitch/openvswitch_trace.h", i32 12, i32 1}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../net/openvswitch/datapath.h", i32 207, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/openvswitch/actions.c", i32 856, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ovs_fragment._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ovs_fragment._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/openvswitch/actions.c", i32 894, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ovs_dst_ops, !42, !"ovs_dst_ops", i1 false, i1 false}
!42 = !{!"../net/openvswitch/actions.c", i32 811, i32 23}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/net/dst.h", i32 231, i32 2}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/openvswitch/actions.c", i32 1539, i32 5}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @clone_execute._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @clone_execute._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/openvswitch/actions.c", i32 1542, i32 5}
!52 = !{ptr @clone_execute._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @clone_execute._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @sctp_csum_ops, !55, !"sctp_csum_ops", i1 false, i1 false}
!55 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148869119, i64 2148869124, i64 2148869137, i64 2148869181, i64 2148869215, i64 2148869236}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2158691553, i64 2158692044, i64 2158691590, i64 2158691646, i64 2158691680, i64 2158691704, i64 2158691745, i64 2158691766, i64 2158691794, i64 2158691828}
!70 = !{i64 2148386723}
!71 = !{i64 871546, i64 871571, i64 871593, i64 871609, i64 871621, i64 871641, i64 871665, i64 871681, i64 871693}
!72 = !{i64 2148386911}
!73 = !{i8 0, i8 2}
!74 = !{i64 2158558880}
!75 = !{i64 2158559125}
!76 = !{i64 2149692500}
!77 = !{i64 2149693536}
!78 = !{i64 2158640021}
!79 = !{i64 2158657084}
!80 = !{i64 6488511}
