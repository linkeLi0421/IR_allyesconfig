; ModuleID = '/llk/IR_all_yes/net/ipv4/udplite.c_pt.bc'
source_filename = "../net/ipv4/udplite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+udplite_table\22, \22a\22\09"
module asm "\09.weak\09__crc_udplite_table\09\09\09\09"
module asm "\09.long\09__crc_udplite_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udplite_table:\09\09\09\09\09"
module asm "\09.asciz \09\22udplite_table\22\09\09\09\09\09"
module asm "__kstrtabns_udplite_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udplite_prot\22, \22a\22\09"
module asm "\09.weak\09__crc_udplite_prot\09\09\09\09"
module asm "\09.long\09__crc_udplite_prot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udplite_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22udplite_prot\22\09\09\09\09\09"
module asm "__kstrtabns_udplite_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }
%struct.inet_protosw = type { %struct.list_head, i16, i16, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.udp_seq_afinfo = type { i16, ptr }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.122 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.38 }
%union.anon.38 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@udplite_table = dso_local global %struct.udp_table zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_udplite_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_udplite_table = external dso_local constant [0 x i8], align 1
@__ksymtab_udplite_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udplite_table to i32), ptr @__kstrtab_udplite_table, ptr @__kstrtabns_udplite_table }, section "___ksymtab+udplite_table", align 4
@udp_memory_allocated = external dso_local global %struct.atomic_t, align 4
@sysctl_udp_mem = external dso_local global [3 x i32], align 4
@udplite_prot = dso_local global { %struct.proto, [36 x i8] } { %struct.proto { ptr @udp_lib_close, ptr null, ptr @ip4_datagram_connect, ptr @udp_disconnect, ptr null, ptr @udp_ioctl, ptr @udplite_sk_init, ptr @udp_destroy_sock, ptr null, ptr @udp_setsockopt, ptr @udp_getsockopt, ptr null, ptr @udp_sendmsg, ptr @udp_recvmsg, ptr @udp_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udp_lib_hash, ptr @udp_lib_unhash, ptr @udp_v4_rehash, ptr @udp_v4_get_port, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udp_memory_allocated, ptr null, ptr null, ptr @sysctl_udp_mem, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1408, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.115 { ptr @udplite_table }, ptr null, [32 x i8] c"UDP-Lite\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_udplite_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_udplite_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_udplite_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udplite_prot to i32), ptr @__kstrtab_udplite_prot, ptr @__kstrtabns_udplite_prot }, section "___ksymtab+udplite_prot", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"UDP-Lite\00", [23 x i8] zeroinitializer }, align 32
@udplite_protocol = internal constant { %struct.net_protocol, [44 x i8] } { %struct.net_protocol { ptr null, ptr null, ptr @udplite_rcv, ptr @udplite_err, i8 -128 }, [44 x i8] zeroinitializer }, align 32
@udplite4_protosw = internal global { %struct.inet_protosw, [40 x i8] } { %struct.inet_protosw { %struct.list_head zeroinitializer, i16 2, i16 136, ptr @udplite_prot, ptr @inet_dgram_ops, i8 2 }, [40 x i8] zeroinitializer }, align 32
@udplite4_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013UDPLite: %s: Cannot register /proc!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"udplite4_register\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/ipv4/udplite.c\00", [45 x i8] zeroinitializer }, align 32
@udplite4_register._entry_ptr = internal global ptr @udplite4_register._entry, section ".printk_index", align 4
@udplite4_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\012UDPLite: %s: Cannot add UDP-Lite protocol\0A\00", [51 x i8] zeroinitializer }, align 32
@udplite4_register._entry_ptr.6 = internal global ptr @udplite4_register._entry.4, section ".printk_index", align 4
@inet_dgram_ops = external dso_local constant %struct.proto_ops, align 4
@udplite4_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @udplite4_proc_init_net, ptr null, ptr @udplite4_proc_exit_net, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udplite\00", [24 x i8] zeroinitializer }, align 32
@udp_seq_ops = external dso_local constant %struct.seq_operations, align 4
@udplite4_seq_afinfo = internal global { %struct.udp_seq_afinfo, [24 x i8] } { %struct.udp_seq_afinfo { i16 2, ptr @udplite_table }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"udplite_prot\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 36, i32 15 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 106, i32 33 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"udplite_protocol\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 30, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"udplite4_protosw\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 61, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 116, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 122, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"udplite4_net_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 88, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 77, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"udplite4_seq_afinfo\00", align 1
@___asan_gen_.45 = private constant [22 x i8] c"../net/ipv4/udplite.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 70, i32 30 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_udplite_prot, ptr @__ksymtab_udplite_table, ptr @udplite4_register._entry, ptr @udplite4_register._entry.4, ptr @udplite4_register._entry_ptr, ptr @udplite4_register._entry_ptr.6, ptr @udplite_prot, ptr @.str, ptr @udplite_protocol, ptr @udplite4_protosw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @udplite4_net_ops, ptr @.str.7, ptr @udplite4_seq_afinfo], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite_prot to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite4_protosw to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite4_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite4_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite4_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udplite4_seq_afinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_lib_close(ptr noundef %sk, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sk_common_release(ptr noundef %sk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip4_datagram_connect(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_disconnect(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_sk_init(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @udp_init_sock(ptr noundef %sk) #6
  %pcflag = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %pcflag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %pcflag, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_destroy_sock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_setsockopt(ptr noundef, i32 noundef, i32 noundef, [2 x i32], i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_getsockopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sendmsg(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: inlinehint noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_lib_hash(ptr nocapture noundef readnone %sk) #2 align 64 {
entry:
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/udp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #6, !srcloc !39
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_lib_unhash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_v4_rehash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_v4_get_port(ptr noundef, i16 noundef zeroext) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @udplite4_register() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @udp_table_init(ptr noundef nonnull @udplite_table, ptr noundef nonnull @.str) #6
  %call = tail call i32 @proto_register(ptr noundef nonnull @udplite_prot, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @inet_add_protocol(ptr noundef nonnull @udplite_protocol, i8 noundef zeroext -120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %out_unregister_proto, label %if.end3

if.end3:                                          ; preds = %if.end
  tail call void @inet_register_protosw(ptr noundef nonnull @udplite4_protosw) #6
  %call.i = tail call i32 @register_pernet_subsys(ptr noundef nonnull @udplite4_net_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.end3.return.sink.split_crit_edge

if.end3.return.sink.split_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

out_unregister_proto:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @proto_unregister(ptr noundef nonnull @udplite_prot) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %out_unregister_proto, %if.end3.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end3.return.sink.split_crit_edge ], [ @.str.5, %entry.return.sink.split_crit_edge ], [ @.str.5, %out_unregister_proto ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.1.sink, ptr noundef nonnull @.str.2) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end3.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp_table_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_protocol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_register_protosw(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_common_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udp_init_sock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_rcv(ptr noundef %skb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__udp4_lib_rcv(ptr noundef %skb, ptr noundef nonnull @udplite_table, i32 noundef 136) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite_err(ptr noundef %skb, i32 noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__udp4_lib_err(ptr noundef %skb, i32 noundef %info, ptr noundef nonnull @udplite_table) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp4_lib_rcv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__udp4_lib_err(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udplite4_proc_init_net(ptr nocapture noundef readonly %net) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %1, ptr noundef nonnull @udp_seq_ops, i32 noundef 16, ptr noundef nonnull @udplite4_seq_afinfo) #6
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udplite4_proc_exit_net(ptr nocapture noundef readonly %net) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_udplite_table, !1, !"__ksymtab_udplite_table", i1 false, i1 false}
!1 = !{!"../net/ipv4/udplite.c", i32 18, i32 1}
!2 = !{ptr @udplite_prot, !3, !"udplite_prot", i1 false, i1 false}
!3 = !{!"../net/ipv4/udplite.c", i32 36, i32 15}
!4 = !{ptr @__ksymtab_udplite_prot, !5, !"__ksymtab_udplite_prot", i1 false, i1 false}
!5 = !{!"../net/ipv4/udplite.c", i32 59, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ipv4/udplite.c", i32 106, i32 33}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ipv4/udplite.c", i32 116, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @udplite4_register._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @udplite4_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ipv4/udplite.c", i32 122, i32 2}
!16 = !{ptr @udplite4_register._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @udplite4_register._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @udplite_table, !19, !"udplite_table", i1 false, i1 false}
!19 = !{!"../net/ipv4/udplite.c", i32 17, i32 19}
!20 = !{ptr @udplite_protocol, !21, !"udplite_protocol", i1 false, i1 false}
!21 = !{!"../net/ipv4/udplite.c", i32 30, i32 34}
!22 = !{ptr @udplite4_protosw, !23, !"udplite4_protosw", i1 false, i1 false}
!23 = !{!"../net/ipv4/udplite.c", i32 61, i32 28}
!24 = !{ptr @udplite4_net_ops, !25, !"udplite4_net_ops", i1 false, i1 false}
!25 = !{!"../net/ipv4/udplite.c", i32 88, i32 33}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/udplite.c", i32 77, i32 28}
!28 = !{ptr @udplite4_seq_afinfo, !29, !"udplite4_seq_afinfo", i1 false, i1 false}
!29 = !{!"../net/ipv4/udplite.c", i32 70, i32 30}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2157251398, i64 2157251880, i64 2157251435, i64 2157251491, i64 2157251525, i64 2157251549, i64 2157251590, i64 2157251611, i64 2157251639, i64 2157251673}
