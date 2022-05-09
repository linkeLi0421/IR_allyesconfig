; ModuleID = '/llk/IR_all_yes/net/tipc/core.c_pt.bc'
source_filename = "../net/tipc/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@tipc_pernet_pre_exit_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr @tipc_pernet_pre_exit, ptr null, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@tipc_topsrv_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tipc_topsrv_init_net, ptr null, ptr @tipc_topsrv_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@tipc_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tipc_init_net, ptr null, ptr @tipc_exit_net, ptr null, ptr @tipc_net_id, i32 2648 }, [32 x i8] zeroinitializer }, align 32
@tipc_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016tipc: Deactivated\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tipc_exit\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/tipc/core.c\00", [16 x i8] zeroinitializer }, align 32
@tipc_exit._entry_ptr = internal global ptr @tipc_exit._entry, section ".printk_index", align 4
@__initcall__kmod_tipc__505_225_tipc_init6 = internal global ptr @tipc_init, section ".initcall6.init", align 4
@__exitcall_tipc_exit = internal global ptr @tipc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description506 = internal constant [63 x i8] c"tipc.description=TIPC: Transparent Inter Process Communication\00", section ".modinfo", align 1
@__UNIQUE_ID_file507 = internal constant [24 x i8] c"tipc.file=net/tipc/tipc\00", section ".modinfo", align 1
@__UNIQUE_ID_license508 = internal constant [26 x i8] c"tipc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version509 = internal constant [19 x i8] c"tipc.version=2.0.0\00", section ".modinfo", align 1
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tipc\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.4, ptr @.str.5 }, section "__modver", align 4
@tipc_net_id = dso_local global i32 0, section ".data..read_mostly", align 4
@sysctl_tipc_rmem = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, section ".data..read_mostly", align 4
@tipc_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&tn->work)\00", [35 x i8] zeroinitializer }, align 32
@tipc_init_net.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tn->node_list_lock\00", [44 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tipc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016tipc: Activated (version 2.0.0)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tipc_init\00", [22 x i8] zeroinitializer }, align 32
@tipc_init._entry_ptr = internal global ptr @tipc_init._entry, section ".printk_index", align 4
@tipc_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016tipc: Started in single node mode\0A\00", [59 x i8] zeroinitializer }, align 32
@tipc_init._entry_ptr.18 = internal global ptr @tipc_init._entry.16, section ".printk_index", align 4
@tipc_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013tipc: Unable to start in single node mode\0A\00", [51 x i8] zeroinitializer }, align 32
@tipc_init._entry_ptr.21 = internal global ptr @tipc_init._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"tipc_pernet_pre_exit_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 131, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"tipc_topsrv_net_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 142, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"tipc_net_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 135, i32 33 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 222, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 63, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 69, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 45, i32 7 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 695, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 723, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 151, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 189, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [19 x i8] c"../net/tipc/core.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 207, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_description506, ptr @__UNIQUE_ID_file507, ptr @__UNIQUE_ID_license508, ptr @__UNIQUE_ID_version509, ptr @__exitcall_tipc_exit, ptr @__initcall__kmod_tipc__505_225_tipc_init6, ptr @__modver_attr, ptr @tipc_exit, ptr @tipc_exit._entry, ptr @tipc_exit._entry_ptr, ptr @tipc_init._entry, ptr @tipc_init._entry.16, ptr @tipc_init._entry.19, ptr @tipc_init._entry_ptr, ptr @tipc_init._entry_ptr.18, ptr @tipc_init._entry_ptr.21, ptr @tipc_pernet_pre_exit_ops, ptr @tipc_topsrv_net_ops, ptr @tipc_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tipc_init_net.__key, ptr @.str.6, ptr @tipc_init_net.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_pernet_pre_exit_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_topsrv_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_init_net.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tipc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tipc_netlink_compat_stop() #6
  tail call void @tipc_netlink_stop() #6
  tail call void @tipc_bearer_cleanup() #6
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tipc_pernet_pre_exit_ops) #6
  tail call void @unregister_pernet_device(ptr noundef nonnull @tipc_topsrv_net_ops) #6
  tail call void @tipc_socket_stop() #6
  tail call void @unregister_pernet_device(ptr noundef nonnull @tipc_net_ops) #6
  tail call void @tipc_unregister_sysctl() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_netlink_compat_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_netlink_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bearer_cleanup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_socket_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_unregister_sysctl() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  store i32 524288, ptr @sysctl_tipc_rmem, align 4
  store i32 2097152, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_tipc_rmem, i32 0, i32 1), align 4
  store i32 16777216, ptr getelementptr inbounds ([3 x i32], ptr @sysctl_tipc_rmem, i32 0, i32 2), align 4
  %call1 = tail call i32 @tipc_register_sysctl() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_pernet_device(ptr noundef nonnull @tipc_net_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_pernet_crit_edge

if.end.out_pernet_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_pernet

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @tipc_socket_init() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_socket_crit_edge

if.end5.out_socket_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_socket

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @register_pernet_device(ptr noundef nonnull @tipc_topsrv_net_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_pernet_topsrv_crit_edge

if.end9.out_pernet_topsrv_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_pernet_topsrv

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @tipc_pernet_pre_exit_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_register_pernet_subsys_crit_edge

if.end13.out_register_pernet_subsys_crit_edge:    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_register_pernet_subsys

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @tipc_bearer_setup() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.out_bearer_crit_edge

if.end17.out_bearer_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bearer

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 @tipc_netlink_start() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_netlink_crit_edge

if.end21.out_netlink_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_netlink

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @tipc_netlink_compat_start() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %out_netlink_compat

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_netlink_compat:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tipc_netlink_stop() #6
  br label %out_netlink

out_netlink:                                      ; preds = %out_netlink_compat, %if.end21.out_netlink_crit_edge
  %err.0 = phi i32 [ %call22, %if.end21.out_netlink_crit_edge ], [ %call26, %out_netlink_compat ]
  tail call void @tipc_bearer_cleanup() #6
  br label %out_bearer

out_bearer:                                       ; preds = %out_netlink, %if.end17.out_bearer_crit_edge
  %err.1 = phi i32 [ %call18, %if.end17.out_bearer_crit_edge ], [ %err.0, %out_netlink ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @tipc_pernet_pre_exit_ops) #6
  br label %out_register_pernet_subsys

out_register_pernet_subsys:                       ; preds = %out_bearer, %if.end13.out_register_pernet_subsys_crit_edge
  %err.2 = phi i32 [ %call14, %if.end13.out_register_pernet_subsys_crit_edge ], [ %err.1, %out_bearer ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @tipc_topsrv_net_ops) #6
  br label %out_pernet_topsrv

out_pernet_topsrv:                                ; preds = %out_register_pernet_subsys, %if.end9.out_pernet_topsrv_crit_edge
  %err.3 = phi i32 [ %call10, %if.end9.out_pernet_topsrv_crit_edge ], [ %err.2, %out_register_pernet_subsys ]
  tail call void @tipc_socket_stop() #6
  br label %out_socket

out_socket:                                       ; preds = %out_pernet_topsrv, %if.end5.out_socket_crit_edge
  %err.4 = phi i32 [ %call6, %if.end5.out_socket_crit_edge ], [ %err.3, %out_pernet_topsrv ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @tipc_net_ops) #6
  br label %out_pernet

out_pernet:                                       ; preds = %out_socket, %if.end.out_pernet_crit_edge
  %err.5 = phi i32 [ %call2, %if.end.out_pernet_crit_edge ], [ %err.4, %out_socket ]
  tail call void @tipc_unregister_sysctl() #6
  br label %cleanup

cleanup:                                          ; preds = %out_pernet, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.end25.cleanup_crit_edge ], [ @.str.20, %out_pernet ], [ @.str.20, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %err.5, %out_pernet ], [ %call1, %entry.cleanup_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_pernet_pre_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tipc_node_pre_cleanup_net(ptr noundef %net) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_node_pre_cleanup_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_topsrv_init_net(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_topsrv_exit_net(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tipc_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tipc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %net_id = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %net_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4711, ptr %net_id, align 4
  %node_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %node_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %node_addr, align 4
  %trial_addr = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %trial_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %trial_addr, align 4
  %addr_trial_end = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %addr_trial_end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %addr_trial_end, align 4
  %capabilities = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 24
  %5 = ptrtoint ptr %capabilities to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4095, ptr %capabilities, align 4
  %work = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %6 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @tipc_init_net.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27, i32 1
  %7 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 27, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tipc_net_finalize_work, ptr %func, align 4
  %10 = call ptr @memset(ptr %call, i32 0, i32 16)
  %node_id_string = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 4
  %11 = call ptr @memset(ptr %node_id_string, i32 0, i32 33)
  %mon_threshold = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %mon_threshold to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %mon_threshold, align 4
  %random = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 6
  tail call void @get_random_bytes(ptr noundef %random, i32 noundef 4) #6
  %node_list = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10
  %13 = ptrtoint ptr %node_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node_list, ptr %node_list, align 4
  %prev.i59 = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node_list, ptr %prev.i59, align 4
  %node_list_lock = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %node_list_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @tipc_init_net.__key.7, i16 noundef signext 3) #6
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call, i32 0, i32 26
  %call11 = tail call i32 @tipc_crypto_start(ptr noundef %crypto_tx, ptr noundef %net, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call12 = tail call i32 @tipc_sk_rht_init(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.out_sk_rht_crit_edge

if.end.out_sk_rht_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_sk_rht

if.end15:                                         ; preds = %if.end
  %call16 = tail call i32 @tipc_nametbl_init(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_nametbl_crit_edge

if.end15.out_nametbl_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_nametbl

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @tipc_bcast_init(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.out_bclink_crit_edge

if.end19.out_bclink_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bclink

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @tipc_attach_loopback(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end23.out_bclink_crit_edge

if.end23.out_bclink_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_bclink

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_bclink:                                       ; preds = %if.end23.out_bclink_crit_edge, %if.end19.out_bclink_crit_edge
  %err.0 = phi i32 [ %call20, %if.end19.out_bclink_crit_edge ], [ %call24, %if.end23.out_bclink_crit_edge ]
  tail call void @tipc_nametbl_stop(ptr noundef %net) #6
  br label %out_nametbl

out_nametbl:                                      ; preds = %out_bclink, %if.end15.out_nametbl_crit_edge
  %err.1 = phi i32 [ %call16, %if.end15.out_nametbl_crit_edge ], [ %err.0, %out_bclink ]
  tail call void @tipc_sk_rht_destroy(ptr noundef %net) #6
  br label %out_sk_rht

out_sk_rht:                                       ; preds = %out_nametbl, %if.end.out_sk_rht_crit_edge
  %err.2 = phi i32 [ %call12, %if.end.out_sk_rht_crit_edge ], [ %err.1, %out_nametbl ]
  tail call void @tipc_crypto_stop(ptr noundef %crypto_tx) #6
  br label %cleanup

cleanup:                                          ; preds = %out_sk_rht, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23.cleanup_crit_edge ], [ %call11, %entry.cleanup_crit_edge ], [ %err.2, %out_sk_rht ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tipc_exit_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tipc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #6
  tail call void @tipc_detach_loopback(ptr noundef %net) #6
  %work = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 27
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  tail call void @tipc_net_stop(ptr noundef %net) #6
  tail call void @tipc_bcast_stop(ptr noundef %net) #6
  tail call void @tipc_nametbl_stop(ptr noundef %net) #6
  tail call void @tipc_sk_rht_destroy(ptr noundef %net) #6
  %1 = load i32, ptr @tipc_net_id, align 4
  %call.i12 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #6
  %crypto_tx = getelementptr inbounds %struct.tipc_net, ptr %call.i12, i32 0, i32 26
  tail call void @tipc_crypto_stop(ptr noundef %crypto_tx) #6
  %wq_count = getelementptr inbounds %struct.tipc_net, ptr %call.i, i32 0, i32 28
  %call.i.i14 = tail call zeroext i1 @__kasan_check_read(ptr noundef %wq_count, i32 noundef 4) #6
  %2 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not15 = icmp eq i32 %3, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 123, i32 noundef 0) #6
  %call.i13 = tail call i32 @__cond_resched() #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wq_count, i32 noundef 4) #6
  %4 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %wq_count, align 4
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !71
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 45, ptr noundef nonnull @.str.10) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !72
  %8 = tail call i32 @llvm.read_register.i32(metadata !61) #6
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_net_finalize_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_crypto_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_sk_rht_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_nametbl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bcast_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_attach_loopback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_nametbl_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_sk_rht_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_crypto_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_detach_loopback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_net_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tipc_bcast_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_register_sysctl() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_socket_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_bearer_setup() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_netlink_start() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tipc_netlink_compat_start() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/tipc/core.c", i32 222, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tipc_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tipc_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_tipc__505_225_tipc_init6, !7, !"__initcall__kmod_tipc__505_225_tipc_init6", i1 false, i1 false}
!7 = !{!"../net/tipc/core.c", i32 225, i32 1}
!8 = !{ptr @__exitcall_tipc_exit, !9, !"__exitcall_tipc_exit", i1 false, i1 false}
!9 = !{!"../net/tipc/core.c", i32 226, i32 1}
!10 = !{ptr @__UNIQUE_ID_description506, !11, !"__UNIQUE_ID_description506", i1 false, i1 false}
!11 = !{!"../net/tipc/core.c", i32 228, i32 1}
!12 = !{ptr @__UNIQUE_ID_file507, !13, !"__UNIQUE_ID_file507", i1 false, i1 false}
!13 = !{!"../net/tipc/core.c", i32 229, i32 1}
!14 = !{ptr @__UNIQUE_ID_license508, !13, !"__UNIQUE_ID_license508", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_version509, !16, !"__UNIQUE_ID_version509", i1 false, i1 false}
!16 = !{!"../net/tipc/core.c", i32 230, i32 1}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__modver_attr, !16, !"__modver_attr", i1 false, i1 false}
!21 = !{ptr @tipc_net_id, !22, !"tipc_net_id", i1 false, i1 false}
!22 = !{!"../net/tipc/core.c", i32 50, i32 14}
!23 = !{ptr @sysctl_tipc_rmem, !24, !"sysctl_tipc_rmem", i1 false, i1 false}
!24 = !{!"../net/tipc/core.c", i32 51, i32 5}
!25 = !{ptr @tipc_pernet_pre_exit_ops, !26, !"tipc_pernet_pre_exit_ops", i1 false, i1 false}
!26 = !{!"../net/tipc/core.c", i32 131, i32 33}
!27 = !{ptr @tipc_topsrv_net_ops, !28, !"tipc_topsrv_net_ops", i1 false, i1 false}
!28 = !{!"../net/tipc/core.c", i32 142, i32 33}
!29 = !{ptr @tipc_net_ops, !30, !"tipc_net_ops", i1 false, i1 false}
!30 = !{!"../net/tipc/core.c", i32 135, i32 33}
!31 = !{ptr @tipc_init_net.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/tipc/core.c", i32 63, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tipc_init_net.__key.7, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/tipc/core.c", i32 69, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/tipc/core.c", i32 151, i32 2}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tipc_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tipc_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/tipc/core.c", i32 189, i32 2}
!55 = !{ptr @tipc_init._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tipc_init._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/tipc/core.c", i32 207, i32 2}
!59 = !{ptr @tipc_init._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tipc_init._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2150057088}
!72 = !{i64 2150057354}
