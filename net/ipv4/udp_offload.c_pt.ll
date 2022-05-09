; ModuleID = '/llk/IR_all_yes/net/ipv4/udp_offload.c_pt.bc'
source_filename = "../net/ipv4/udp_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+skb_udp_tunnel_segment\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_udp_tunnel_segment\09\09\09\09"
module asm "\09.long\09__crc_skb_udp_tunnel_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_udp_tunnel_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_udp_tunnel_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_udp_tunnel_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__udp_gso_segment\22, \22a\22\09"
module asm "\09.weak\09__crc___udp_gso_segment\09\09\09\09"
module asm "\09.long\09__crc___udp_gso_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___udp_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22__udp_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns___udp_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udp_gro_receive\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_gro_receive\09\09\09\09"
module asm "\09.long\09__crc_udp_gro_receive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_udp_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+udp_gro_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_udp_gro_complete\09\09\09\09"
module asm "\09.long\09__crc_udp_gro_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_udp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22udp_gro_complete\22\09\09\09\09\09"
module asm "__kstrtabns_udp_gro_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_offload = type { %struct.offload_callbacks, i32 }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.udp_table = type { ptr, ptr, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.anon.132 = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.110, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.111, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.112, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.98, %union.anon.100, %union.anon.101, i16, i8, i8, i32, %union.anon.103, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.98 = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { i32 }
%union.anon.103 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.110 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.111 = type { ptr }
%union.anon.112 = type { ptr }
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.udp_sock = type { %struct.inet_sock, i32, i32, i8, i8, i16, i16, i16, i16, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, [92 x i8], %struct.sk_buff_head, i32, [68 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.22 }
%union.anon.22 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.150, i32, %struct.list_head, ptr }
%union.anon.150 = type { %struct.in6_addr }

@inet6_offloads = external dso_local global [256 x ptr], align 4
@inet_offloads = external dso_local global [256 x ptr], align 4
@skb_udp_tunnel_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ipv4/udp_offload.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_skb_udp_tunnel_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_udp_tunnel_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_udp_tunnel_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_udp_tunnel_segment to i32), ptr @__kstrtab_skb_udp_tunnel_segment, ptr @__kstrtabns_skb_udp_tunnel_segment }, section "___ksymtab+skb_udp_tunnel_segment", align 4
@__udp_gso_segment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___udp_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns___udp_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab___udp_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__udp_gso_segment to i32), ptr @__kstrtab___udp_gso_segment, ptr @__kstrtabns___udp_gso_segment }, section "___ksymtab_gpl+__udp_gso_segment", align 4
@__kstrtab_udp_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_gro_receive to i32), ptr @__kstrtab_udp_gro_receive, ptr @__kstrtabns_udp_gro_receive }, section "___ksymtab+udp_gro_receive", align 4
@__kstrtab_udp_gro_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_udp_gro_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_udp_gro_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @udp_gro_complete to i32), ptr @__kstrtab_udp_gro_complete, ptr @__kstrtabns_udp_gro_complete }, section "___ksymtab+udp_gro_complete", align 4
@udpv4_offload = internal constant { %struct.net_offload, [16 x i8] } { %struct.net_offload { %struct.offload_callbacks { ptr @udp4_ufo_fragment, ptr @udp4_gro_receive, ptr @udp4_gro_complete }, i32 0 }, [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@udp_encap_needed_key = external dso_local global %struct.static_key_false, align 4
@udp_table = external dso_local global %struct.udp_table, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 172, i32 9 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"udpv4_offload\00", align 1
@___asan_gen_.13 = private constant [26 x i8] c"../net/ipv4/udp_offload.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 728, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 1011, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab___udp_gso_segment, ptr @__ksymtab_skb_udp_tunnel_segment, ptr @__ksymtab_udp_gro_complete, ptr @__ksymtab_udp_gro_receive, ptr @.str, ptr @.str.1, ptr @udpv4_offload, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udpv4_offload to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @skb_udp_tunnel_segment(ptr noundef %skb, i64 noundef %features, i1 noundef zeroext %is_ipv6) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol1, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !35
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %inner_protocol_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %inner_protocol_type to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %inner_protocol_type, align 2
  %7 = and i32 %bf.load, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %trunc.not = icmp eq i32 %7, 0
  br i1 %trunc.not, label %sw.bb, label %sw.bb2

sw.bb:                                            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %8, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %rcu_read_lock.exit
  %cond = select i1 %is_ipv6, ptr @inet6_offloads, ptr @inet_offloads
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 8
  %idxprom = zext i8 %13 to i32
  %arrayidx = getelementptr ptr, ptr %cond, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %sw.bb2.do.end12_crit_edge

sw.bb2.do.end12_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

land.lhs.true:                                    ; preds = %sw.bb2
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @skb_udp_tunnel_segment.__warned, align 1
  br i1 %.b30, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @skb_udp_tunnel_segment.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.1) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %sw.bb2.do.end12_crit_edge
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %do.end12.out_unlock_crit_edge, label %lor.lhs.false

do.end12.out_unlock_crit_edge:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

lor.lhs.false:                                    ; preds = %do.end12
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %lor.lhs.false.out_unlock_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

lor.lhs.false.out_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

sw.epilog:                                        ; preds = %lor.lhs.false.sw.epilog_crit_edge, %sw.bb
  %gso_inner_segment.0 = phi ptr [ @skb_mac_gso_segment, %sw.bb ], [ %17, %lor.lhs.false.sw.epilog_crit_edge ]
  %protocol.0 = phi i16 [ %10, %sw.bb ], [ %1, %lor.lhs.false.sw.epilog_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %20 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i298.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %conv.i298.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %22 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %transport_header.i.i, align 2
  %conv.i300.i = zext i16 %23 to i32
  %add.ptr.i301.i = getelementptr i8, ptr %19, i32 %conv.i300.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i301.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %24 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i, align 2
  %26 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %protocol1, align 8
  %mac_len5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %28 = ptrtoint ptr %mac_len5.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_len5.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %32 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %sub.ptr.sub.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.epilog.if.end.i_crit_edge, !prof !36

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sub.ptr.sub.i)
  %cmp3.i.i = icmp ult i32 %31, %sub.ptr.sub.i
  br i1 %cmp3.i.i, label %if.end.i.i.out_unlock_crit_edge, label %pskb_may_pull.exit.i, !prof !36

if.end.i.i.out_unlock_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %sub.ptr.sub.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #6
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.out_unlock_crit_edge, label %pskb_may_pull.exit.i.if.end.i_crit_edge, !prof !36

pskb_may_pull.exit.i.if.end.i_crit_edge:          ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

pskb_may_pull.exit.i.out_unlock_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end.i:                                         ; preds = %pskb_may_pull.exit.i.if.end.i_crit_edge, %sw.epilog.if.end.i_crit_edge
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %34 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gso_type.i, align 8
  %and.i = and i32 %37, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i301.i, i32 0, i32 2
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %len.i, align 2
  %conv.i = zext i16 %39 to i32
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.then11.i
  %partial.0.i = phi i32 [ %conv.i, %if.then11.i ], [ %41, %if.else.i ]
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i301.i, i32 0, i32 3
  %42 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %check.i, align 2
  %conv.i.i = zext i16 %43 to i32
  %neg.i.i = xor i32 %partial.0.i, -1
  %add.i.i.i32 = add i32 %conv.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i32, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i32, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i32, %conv.i.i.i
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %44 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -5
  store i16 %bf.clear.i, ptr %encapsulation.i, align 8
  %encap_level.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %45 = ptrtoint ptr %encap_level.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %encap_level.i, align 4
  %46 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i.i, align 4
  %sub.i303.i = sub i32 %47, %sub.ptr.sub.i
  store i32 %sub.i303.i, ptr %len.i.i.i, align 4
  %48 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i303.i, i32 %49)
  %cmp.i304.i = icmp ult i32 %sub.i303.i, %49
  br i1 %cmp.i304.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !36

do.body4.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !37
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end13.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %50 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i305.i = getelementptr i8, ptr %51, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i305.i, ptr %data.i.i, align 4
  %52 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i305.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i308.i = trunc i32 %sub.ptr.sub.i.i to i16
  %54 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i308.i, ptr %mac_header.i, align 2
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 16
  %55 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %inner_network_header.i.i.i, align 4
  %conv.i.i310.i = zext i16 %56 to i32
  %add.ptr.i.i311.i = getelementptr i8, ptr %53, i32 %conv.i.i310.i
  %sub.ptr.lhs.cast.i313.i = ptrtoint ptr %add.ptr.i.i311.i to i32
  %sub.ptr.sub.i315.i = sub i32 %sub.ptr.lhs.cast.i313.i, %sub.ptr.lhs.cast.i.i
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %57 = trunc i32 %sub.ptr.sub.i315.i to i16
  %conv1.i.i = add i16 %57, %conv.i308.i
  %58 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %inner_transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %59 = ptrtoint ptr %inner_transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %inner_transport_header.i.i.i, align 2
  %conv.i.i319.i = zext i16 %60 to i32
  %add.ptr.i.i320.i = getelementptr i8, ptr %53, i32 %conv.i.i319.i
  %sub.ptr.lhs.cast.i322.i = ptrtoint ptr %add.ptr.i.i320.i to i32
  %sub.ptr.sub.i324.i = sub i32 %sub.ptr.lhs.cast.i322.i, %sub.ptr.lhs.cast.i.i
  %61 = trunc i32 %sub.ptr.sub.i324.i to i16
  %conv1.i332.i = add i16 %61, %conv.i308.i
  %62 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv1.i332.i, ptr %transport_header.i.i, align 2
  %63 = ptrtoint ptr %mac_len5.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %57, ptr %mac_len5.i, align 4
  %64 = ptrtoint ptr %protocol1 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %protocol.0, ptr %protocol1, align 8
  %65 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gso_type.i, align 8
  %and25.i = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %67 = trunc i32 %and25.i to i16
  %68 = lshr exact i16 %67, 10
  %bf.clear35.i = and i16 %bf.load.i, -7
  %bf.set36.i = or i16 %68, %bf.clear35.i
  %69 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %bf.set36.i, ptr %encapsulation.i, align 8
  %70 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %gso_type.i, align 8
  %and39.i = and i32 %71, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  %72 = ptrtoint ptr %inner_protocol_type to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %bf.load48.i = load i32, ptr %inner_protocol_type, align 2
  %bf.shl50.i = shl nuw nsw i32 %and39.i, 8
  %bf.clear51.i = and i32 %bf.load48.i, -2097153
  %bf.set52.i = or i32 %bf.clear51.i, %bf.shl50.i
  store i32 %bf.set52.i, ptr %inner_protocol_type, align 2
  %73 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 8
  %and.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %__skb_pull.exit.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

__skb_pull.exit.i.skb_dst.exit.i_crit_edge:       ; preds = %__skb_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %__skb_pull.exit.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !36

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr.i = load i32, ptr %73, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %__skb_pull.exit.i.skb_dst.exit.i_crit_edge
  %77 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %75, %__skb_pull.exit.i.skb_dst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %77)
  %tobool55.not.i = icmp ult i32 %77, 2
  br i1 %tobool55.not.i, label %skb_dst.exit.i.land.end.i_crit_edge, label %land.rhs.i

skb_dst.exit.i.land.end.i_crit_edge:              ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end.i

land.rhs.i:                                       ; preds = %skb_dst.exit.i
  %and.i344.i = and i32 %77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i344.i)
  %tobool.not.i345.i = icmp eq i32 %and.i344.i, 0
  br i1 %tobool.not.i345.i, label %land.rhs.i.skb_dst.exit355.i_crit_edge, label %land.lhs.true.i348.i

land.rhs.i.skb_dst.exit355.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit355.i

land.lhs.true.i348.i:                             ; preds = %land.rhs.i
  %call.i346.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346.i)
  %tobool1.not.i347.i = icmp eq i32 %call.i346.i, 0
  br i1 %tobool1.not.i347.i, label %land.rhs.i351.i, label %land.lhs.true.i348.i.skb_dst.exit355.i_crit_edge

land.lhs.true.i348.i.skb_dst.exit355.i_crit_edge: ; preds = %land.lhs.true.i348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit355.i

land.rhs.i351.i:                                  ; preds = %land.lhs.true.i348.i
  %call2.i349.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i349.i)
  %tobool3.not.i350.i = icmp eq i32 %call2.i349.i, 0
  br i1 %tobool3.not.i350.i, label %do.end.i352.i, label %land.rhs.i351.i.skb_dst.exit355.i_crit_edge, !prof !36

land.rhs.i351.i.skb_dst.exit355.i_crit_edge:      ; preds = %land.rhs.i351.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_dst.exit355.i

do.end.i352.i:                                    ; preds = %land.rhs.i351.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_dst.exit355.i

skb_dst.exit355.i:                                ; preds = %do.end.i352.i, %land.rhs.i351.i.skb_dst.exit355.i_crit_edge, %land.lhs.true.i348.i.skb_dst.exit355.i_crit_edge, %land.rhs.i.skb_dst.exit355.i_crit_edge
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %73, align 8
  %and25.i353.i = and i32 %79, -2
  %80 = inttoptr i32 %and25.i353.i to ptr
  %xfrm.i.i = getelementptr inbounds %struct.dst_entry, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %xfrm.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xfrm.i.i, align 4
  %tobool58.i = icmp ne ptr %82, null
  br label %land.end.i

land.end.i:                                       ; preds = %skb_dst.exit355.i, %skb_dst.exit.i.land.end.i_crit_edge
  %83 = phi i1 [ false, %skb_dst.exit.i.land.end.i_crit_edge ], [ %tobool58.i, %skb_dst.exit355.i ]
  %brmerge.i = select i1 %tobool26.not.i, i1 true, i1 %83
  br i1 %brmerge.i, label %land.end.i.land.end69.i_crit_edge, label %land.rhs63.i

land.end.i.land.end69.i_crit_edge:                ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end69.i

land.rhs63.i:                                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %features64.i = getelementptr inbounds %struct.net_device, ptr %86, i32 0, i32 23
  %87 = ptrtoint ptr %features64.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %features64.i, align 16
  %cond.i = select i1 %is_ipv6, i64 24, i64 10
  %and67.i = and i64 %88, %cond.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67.i)
  %tobool68.i = icmp ne i64 %and67.i, 0
  br label %land.end69.i

land.end69.i:                                     ; preds = %land.rhs63.i, %land.end.i.land.end69.i_crit_edge
  %89 = phi i1 [ false, %land.end.i.land.end69.i_crit_edge ], [ %tobool68.i, %land.rhs63.i ]
  %90 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %hw_enc_features.i, align 16
  %and75.i = and i64 %94, %features
  %and78.i = and i64 %and75.i, -68719476737
  %spec.select.i = select i1 %tobool26.not.i, i64 %and75.i, i64 %and78.i
  br i1 %tobool40.not.i, label %land.end69.i.if.end88.i_crit_edge, label %if.then81.i

land.end69.i.if.end88.i_crit_edge:                ; preds = %land.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88.i

if.then81.i:                                      ; preds = %land.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %and82.i = and i64 %spec.select.i, -27
  %brmerge294.i = select i1 %tobool26.not.i, i1 true, i1 %89
  %or.i = or i64 %and82.i, 8
  %spec.select296.i = select i1 %brmerge294.i, i64 %or.i, i64 %and82.i
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then81.i, %land.end69.i.if.end88.i_crit_edge
  %features.addr.1.i = phi i64 [ %spec.select.i, %land.end69.i.if.end88.i_crit_edge ], [ %spec.select296.i, %if.then81.i ]
  %call89.i = tail call ptr %gso_inner_segment.0(ptr noundef %skb, i64 noundef %features.addr.1.i) #6
  %tobool.not.i356.i = icmp eq ptr %call89.i, null
  %cmp.i357.i = icmp ugt ptr %call89.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i356.i, %cmp.i357.i
  br i1 %spec.select.i.i, label %if.then91.i, label %if.end93.i

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %protocol1 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %27, ptr %protocol1, align 8
  %96 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %bf.load.i.i = load i16, ptr %encapsulation.i, align 8
  %bf.set.i.i = or i16 %bf.load.i.i, 4
  store i16 %bf.set.i.i, ptr %encapsulation.i, align 8
  %call.i358.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #6
  %97 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i, align 4
  %99 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i361.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i362.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i.i363.i = sub i32 %sub.ptr.lhs.cast.i.i361.i, %sub.ptr.rhs.cast.i.i362.i
  %conv.i.i364.i = trunc i32 %sub.ptr.sub.i.i363.i to i16
  %101 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i.i364.i, ptr %transport_header.i.i, align 2
  %102 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %25, ptr %mac_header.i, align 2
  %conv3.i.i = add i16 %29, %25
  %103 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv3.i.i, ptr %network_header.i.i.i, align 4
  %104 = ptrtoint ptr %mac_len5.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %29, ptr %mac_len5.i, align 4
  br label %out_unlock

if.end93.i:                                       ; preds = %if.end88.i
  %end.i367.i = getelementptr inbounds %struct.sk_buff, ptr %call89.i, i32 0, i32 17
  %105 = ptrtoint ptr %end.i367.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i367.i, align 4
  %gso_type95.i = getelementptr inbounds %struct.skb_shared_info, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %gso_type95.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gso_type95.i, align 8
  %and96.i = and i32 %108, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  %109 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %head.i.i, align 8
  %111 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %mac_header.i, align 2
  %conv.i.i369.i = zext i16 %112 to i32
  %add.ptr.i.i370.i = getelementptr i8, ptr %110, i32 %conv.i.i369.i
  %sub.ptr.lhs.cast.i371.i = ptrtoint ptr %add.ptr.i.i370.i to i32
  %sub.ptr.rhs.cast.i372.i = ptrtoint ptr %110 to i32
  %add.ptr.i373.i = getelementptr %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %113 = ptrtoint ptr %add.ptr.i373.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr.i373.i, align 4
  %115 = add i32 %114, %sub.ptr.rhs.cast.i372.i
  %sub.i374.i = sub i32 %sub.ptr.lhs.cast.i371.i, %115
  %sub.i = sub i32 %sub.i374.i, %sub.ptr.sub.i
  %idx.neg.i.i = sub i32 0, %sub.i374.i
  %116 = trunc i32 %sub.i to i16
  %.not.i = xor i1 %89, true
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.end93.i
  %skb.addr.0.i = phi ptr [ %call89.i, %if.end93.i ], [ %169, %cleanup.i.do.body.i_crit_edge ]
  br i1 %tobool40.not.i, label %do.body.i.if.end110.i_crit_edge, label %if.then106.i

do.body.i.if.end110.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i

if.then106.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15
  %117 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %bf.load107.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear108.i = and i16 %bf.load107.i, -1537
  store i16 %bf.clear108.i, ptr %ip_summed.i, align 8
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then106.i, %do.body.i.if.end110.i_crit_edge
  %ip_summed111.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15
  %118 = ptrtoint ptr %ip_summed111.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %bf.load112.i = load i16, ptr %ip_summed111.i, align 8
  %119 = and i16 %bf.load112.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %119)
  %cmp.i = icmp eq i16 %119, 1536
  br i1 %cmp.i, label %if.then116.i, label %if.end110.i.if.end121.i_crit_edge

if.end110.i.if.end121.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

if.then116.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  %mac_header.i375.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 21
  %120 = ptrtoint ptr %mac_header.i375.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %mac_header.i375.i, align 2
  %inner_mac_header.i376.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 17
  %122 = ptrtoint ptr %inner_mac_header.i376.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %inner_mac_header.i376.i, align 2
  %network_header.i377.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %123 = ptrtoint ptr %network_header.i377.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %network_header.i377.i, align 4
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 16
  %125 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %inner_network_header.i.i, align 4
  %transport_header.i378.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 19
  %126 = ptrtoint ptr %transport_header.i378.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %transport_header.i378.i, align 2
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 15
  %128 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %inner_transport_header.i.i, align 2
  %bf.set120.i = or i16 %bf.load112.i, 4
  %129 = ptrtoint ptr %ip_summed111.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %bf.set120.i, ptr %ip_summed111.i, align 8
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.then116.i, %if.end110.i.if.end121.i_crit_edge
  %mac_len122.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 8
  %130 = ptrtoint ptr %mac_len122.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %29, ptr %mac_len122.i, align 4
  %protocol123.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 18
  %131 = ptrtoint ptr %protocol123.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %27, ptr %protocol123.i, align 8
  %data.i379.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 19
  %132 = ptrtoint ptr %data.i379.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data.i379.i, align 4
  %add.ptr.i380.i = getelementptr i8, ptr %133, i32 %idx.neg.i.i
  store ptr %add.ptr.i380.i, ptr %data.i379.i, align 4
  %len1.i381.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 6
  %134 = ptrtoint ptr %len1.i381.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len1.i381.i, align 4
  %add.i382.i = add i32 %135, %sub.i374.i
  store i32 %add.i382.i, ptr %len1.i381.i, align 4
  %head.i384.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 18
  %136 = ptrtoint ptr %head.i384.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i384.i, align 8
  %sub.ptr.lhs.cast.i385.i = ptrtoint ptr %add.ptr.i380.i to i32
  %sub.ptr.rhs.cast.i386.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub.i387.i = sub i32 %sub.ptr.lhs.cast.i385.i, %sub.ptr.rhs.cast.i386.i
  %conv.i388.i = trunc i32 %sub.ptr.sub.i387.i to i16
  %mac_header.i389.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 21
  %138 = ptrtoint ptr %mac_header.i389.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i388.i, ptr %mac_header.i389.i, align 2
  %network_header.i.i396.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 20
  %conv1.i397.i = add i16 %29, %conv.i388.i
  %139 = ptrtoint ptr %network_header.i.i396.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv1.i397.i, ptr %network_header.i.i396.i, align 4
  %transport_header.i.i404.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 19
  %conv1.i405.i = add i16 %conv.i388.i, %116
  %140 = ptrtoint ptr %transport_header.i.i404.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv1.i405.i, ptr %transport_header.i.i404.i, align 2
  %sub127.i = sub i32 %add.i382.i, %sub.i
  %conv.i.i408.i = zext i16 %conv1.i405.i to i32
  %add.ptr.i.i409.i = getelementptr i8, ptr %137, i32 %conv.i.i408.i
  br i1 %tobool97.not.i, label %if.end121.i.if.end149.i_crit_edge, label %land.lhs.true131.i

if.end121.i.if.end149.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149.i

land.lhs.true131.i:                               ; preds = %if.end121.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 17
  %141 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %142, i32 0, i32 4
  %143 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool.i.not.i = icmp eq i16 %144, 0
  br i1 %tobool.i.not.i, label %land.lhs.true131.i.if.end149.i_crit_edge, label %if.then134.i

land.lhs.true131.i.if.end149.i_crit_edge:         ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149.i

if.then134.i:                                     ; preds = %land.lhs.true131.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv136.i = zext i16 %144 to i32
  %add.ptr139.i = getelementptr %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 32
  %145 = ptrtoint ptr %add.ptr139.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %add.ptr139.i, align 4
  %add.i = add i32 %146, %conv136.i
  %add.ptr140.i = getelementptr i8, ptr %137, i32 %add.i
  %sub.ptr.lhs.cast141.i = ptrtoint ptr %add.ptr140.i to i32
  %sub.ptr.rhs.cast142.i = ptrtoint ptr %add.ptr.i.i409.i to i32
  %sub.ptr.sub143.i = sub i32 %sub.ptr.lhs.cast141.i, %sub.ptr.rhs.cast142.i
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.then134.i, %land.lhs.true131.i.if.end149.i_crit_edge, %if.end121.i.if.end149.i_crit_edge
  %sub127.sink.i = phi i32 [ %sub.ptr.sub143.i, %if.then134.i ], [ %sub127.i, %land.lhs.true131.i.if.end149.i_crit_edge ], [ %sub127.i, %if.end121.i.if.end149.i_crit_edge ]
  %conv147.i = trunc i32 %sub127.sink.i to i16
  %len148.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i409.i, i32 0, i32 2
  %147 = ptrtoint ptr %len148.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv147.i, ptr %len148.i, align 2
  br i1 %tobool26.not.i, label %if.end149.i.cleanup.i_crit_edge, label %if.end152.i

if.end149.i.cleanup.i_crit_edge:                  ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end152.i:                                      ; preds = %if.end149.i
  %add.i.i = add i32 %add1.i.i.i, %sub127.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %sub127.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %sub127.i
  %conv.i297.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i297.i
  %148 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #9, !srcloc !38
  %neg.i411.i = xor i32 %148, -1
  %shr.i.i = lshr i32 %neg.i411.i, 16
  %conv.i412.i = trunc i32 %shr.i.i to i16
  %neg.i = xor i16 %conv.i412.i, -1
  %check157.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i409.i, i32 0, i32 3
  %149 = ptrtoint ptr %check157.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %neg.i, ptr %check157.i, align 2
  %150 = ptrtoint ptr %ip_summed111.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load159.i = load i16, ptr %ip_summed111.i, align 8
  %151 = and i16 %bf.load159.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool164.not.i = icmp ne i16 %151, 0
  %brmerge295.i = select i1 %tobool164.not.i, i1 true, i1 %.not.i
  br i1 %brmerge295.i, label %if.then167.i, label %if.else180.i

if.then167.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i = zext i16 %neg.i to i32
  %neg170.i = xor i32 %conv169.i, -1
  %152 = ptrtoint ptr %head.i384.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %head.i384.i, align 8
  %154 = ptrtoint ptr %transport_header.i.i404.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %transport_header.i.i404.i, align 2
  %conv.i.i415.i = zext i16 %155 to i32
  %add.ptr.i.i416.i = getelementptr i8, ptr %153, i32 %conv.i.i415.i
  %csum_start1.i.i = getelementptr %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 44
  %156 = ptrtoint ptr %csum_start1.i.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %csum_start1.i.i, align 4
  %conv.i417.i = zext i16 %157 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %153, i32 %conv.i417.i
  %sub.ptr.lhs.cast.i418.i = ptrtoint ptr %add.ptr2.i.i to i32
  %sub.ptr.rhs.cast.i419.i = ptrtoint ptr %add.ptr.i.i416.i to i32
  %sub.ptr.sub.i420.i = sub i32 %sub.ptr.lhs.cast.i418.i, %sub.ptr.rhs.cast.i419.i
  %csum.i.i = getelementptr %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 3, i32 40
  %158 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %csum.i.i, align 4
  store i32 %neg170.i, ptr %csum.i.i, align 4
  store i16 %155, ptr %csum_start1.i.i, align 4
  %call19.i.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i416.i, i32 noundef %sub.ptr.sub.i420.i, i32 noundef %159) #6
  %160 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i.i) #9, !srcloc !38
  %neg.i.i.i = xor i32 %160, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i29.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i29.i.i)
  %cmp175.i = icmp eq i16 %conv.i29.i.i, 0
  %spec.store.select.i = select i1 %cmp175.i, i16 -1, i16 %conv.i29.i.i
  %161 = ptrtoint ptr %check157.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %spec.store.select.i, ptr %check157.i, align 2
  br label %cleanup.i

if.else180.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set184.i = or i16 %bf.load159.i, 1536
  %162 = ptrtoint ptr %ip_summed111.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %bf.set184.i, ptr %ip_summed111.i, align 8
  %163 = ptrtoint ptr %transport_header.i.i404.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %transport_header.i.i404.i, align 2
  %165 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i, i32 0, i32 15, i32 0, i32 5
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %164, ptr %165, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.132, ptr %165, i32 0, i32 1
  %167 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 6, ptr %csum_offset.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else180.i, %if.then167.i, %if.end149.i.cleanup.i_crit_edge
  %168 = ptrtoint ptr %skb.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %skb.addr.0.i, align 8
  %tobool192.not.i = icmp eq ptr %169, null
  br i1 %tobool192.not.i, label %cleanup.i.out_unlock_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

cleanup.i.out_unlock_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

out_unlock:                                       ; preds = %cleanup.i.out_unlock_crit_edge, %if.then91.i, %pskb_may_pull.exit.i.out_unlock_crit_edge, %if.end.i.i.out_unlock_crit_edge, %lor.lhs.false.out_unlock_crit_edge, %do.end12.out_unlock_crit_edge
  %segs.0 = phi ptr [ inttoptr (i32 -22 to ptr), %lor.lhs.false.out_unlock_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end12.out_unlock_crit_edge ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.i.out_unlock_crit_edge ], [ %call89.i, %if.then91.i ], [ inttoptr (i32 -22 to ptr), %if.end.i.i.out_unlock_crit_edge ], [ %call89.i, %cleanup.i.out_unlock_crit_edge ]
  %call.i33 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i33, label %out_unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i36

out_unlock.rcu_read_unlock.exit_crit_edge:        ; preds = %out_unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i36:                                ; preds = %out_unlock
  %call1.i34 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool.not.i35, label %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i38

land.lhs.true.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i38:                               ; preds = %land.lhs.true.i36
  %.b4.i37 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37, label %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, label %if.then.i39

land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i39:                                      ; preds = %land.lhs.true2.i38
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i39, %land.lhs.true2.i38.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i36.rcu_read_unlock.exit_crit_edge, %out_unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %170 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i.i40 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i40 to ptr
  %preempt_count.i.i.i.i41 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %preempt_count.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %preempt_count.i.i.i.i41, align 4
  %sub.i.i.i42 = add i32 %173, -1
  store volatile i32 %sub.i.i.i42, ptr %preempt_count.i.i.i.i41, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_mac_gso_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__udp_gso_segment(ptr noundef %gso_skb, i64 noundef %features, i1 noundef zeroext %is_ipv6) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gso_type, align 8
  %and = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gso_size, align 4
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 15, i32 0, i32 21
  %11 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_header.i.i, align 2
  %conv1.i.i = zext i16 %12 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %call2.i = tail call ptr @skb_segment_list(ptr noundef %gso_skb, i64 noundef %features, i32 noundef %sub.i.i) #6
  %cmp.i.i249 = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i249, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %add.i250 = add i16 %8, 8
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 15, i32 0, i32 19
  %15 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %len.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %add.i250, ptr %len.i, align 2
  br i1 %is_ipv6, label %if.end.i.cleanup_crit_edge, label %cond.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false.i:                                     ; preds = %if.end.i
  %18 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i.i, align 8
  %20 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i.i
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i65.i.i = zext i16 %23 to i32
  %add.ptr.i.i66.i.i = getelementptr i8, ptr %19, i32 %conv.i.i65.i.i
  %dest.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dest.i.i, align 2
  %26 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call2.i, align 8
  %head.i.i71.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i71.i.i, align 8
  %transport_header.i.i72.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15, i32 0, i32 19
  %30 = ptrtoint ptr %transport_header.i.i72.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header.i.i72.i.i, align 2
  %conv.i.i73.i.i = zext i16 %31 to i32
  %add.ptr.i.i74.i.i = getelementptr i8, ptr %29, i32 %conv.i.i73.i.i
  %dest4.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i74.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dest4.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dest4.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %33)
  %cmp.i15.i = icmp eq i16 %25, %33
  br i1 %cmp.i15.i, label %land.lhs.true.i.i, label %cond.false.i.if.end.i.i_crit_edge

cond.false.i.if.end.i.i_crit_edge:                ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %34 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %36 = ptrtoint ptr %add.ptr.i.i74.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i74.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp13.i.i = icmp eq i16 %35, %37
  br i1 %cmp13.i.i, label %land.lhs.true15.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true15.i.i:                              ; preds = %land.lhs.true.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %daddr.i.i, align 4
  %network_header.i.i88.i.i = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i88.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i88.i.i, align 4
  %conv.i.i89.i.i = zext i16 %41 to i32
  %add.ptr.i.i90.i.i = getelementptr i8, ptr %29, i32 %conv.i.i89.i.i
  %daddr19.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i90.i.i, i32 0, i32 9
  %42 = ptrtoint ptr %daddr19.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %daddr19.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp20.i.i = icmp eq i32 %39, %43
  br i1 %cmp20.i.i, label %land.lhs.true22.i.i, label %land.lhs.true15.i.i.if.end.i.i_crit_edge

land.lhs.true15.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true22.i.i:                              ; preds = %land.lhs.true15.i.i
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %saddr.i.i, align 4
  %saddr26.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i90.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %saddr26.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %saddr26.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp27.i.i = icmp eq i32 %45, %47
  %tobool.not107.i.i = icmp eq ptr %27, null
  %or.cond.i = select i1 %cmp27.i.i, i1 true, i1 %tobool.not107.i.i
  br i1 %or.cond.i, label %land.lhs.true22.i.i.cleanup_crit_edge, label %land.lhs.true22.i.i.while.body.lr.ph.i.i_crit_edge

land.lhs.true22.i.i.while.body.lr.ph.i.i_crit_edge: ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i.i

land.lhs.true22.i.i.cleanup_crit_edge:            ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true15.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.false.i.if.end.i.i_crit_edge
  %tobool.not107.i.old.i = icmp eq ptr %27, null
  br i1 %tobool.not107.i.old.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.while.body.lr.ph.i.i_crit_edge

if.end.i.i.while.body.lr.ph.i.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i.while.body.lr.ph.i.i_crit_edge, %land.lhs.true22.i.i.while.body.lr.ph.i.i_crit_edge
  %saddr33.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i, i32 0, i32 8
  %daddr37.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i66.i.i, i32 0, i32 9
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %48 = phi ptr [ %27, %while.body.lr.ph.i.i ], [ %56, %while.body.i.i.while.body.i.i_crit_edge ]
  %head.i.i99.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %head.i.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i99.i.i, align 8
  %transport_header.i.i100.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 15, i32 0, i32 19
  %51 = ptrtoint ptr %transport_header.i.i100.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %transport_header.i.i100.i.i, align 2
  %conv.i.i101.i.i = zext i16 %52 to i32
  %add.ptr.i.i102.i.i = getelementptr i8, ptr %50, i32 %conv.i.i101.i.i
  %network_header.i.i104.i.i = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 15, i32 0, i32 20
  %53 = ptrtoint ptr %network_header.i.i104.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %network_header.i.i104.i.i, align 4
  %conv.i.i105.i.i = zext i16 %54 to i32
  %add.ptr.i.i106.i.i = getelementptr i8, ptr %50, i32 %conv.i.i105.i.i
  %saddr32.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i106.i.i, i32 0, i32 8
  tail call fastcc void @__udpv4_gso_segment_csum(ptr noundef nonnull %48, ptr noundef %saddr32.i.i, ptr noundef %saddr33.i.i, ptr noundef %add.ptr.i.i102.i.i, ptr noundef %add.ptr.i.i.i.i) #6
  %daddr36.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i106.i.i, i32 0, i32 9
  %dest38.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i102.i.i, i32 0, i32 1
  tail call fastcc void @__udpv4_gso_segment_csum(ptr noundef nonnull %48, ptr noundef %daddr36.i.i, ptr noundef %daddr37.i.i, ptr noundef %dest38.i.i, ptr noundef %dest.i.i) #6
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %48, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %8 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 6
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %add = add nuw nsw i32 %conv, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add)
  %cmp.not = icmp ugt i32 %58, %add
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @skb_pull(ptr noundef %gso_skb, i32 noundef 8) #6
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %destructor, align 4
  %cmp9 = icmp eq ptr %60, @sock_wfree
  br i1 %cmp9, label %if.then13, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %destructor, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end7.if.end15_crit_edge
  %call16 = tail call ptr @skb_segment(ptr noundef %gso_skb, i64 noundef %features) #6
  %tobool.not.i = icmp eq ptr %call16, null
  %cmp.i252 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i252
  br i1 %spec.select.i, label %if.then18, label %if.end23

if.then18:                                        ; preds = %if.end15
  br i1 %cmp9, label %if.then20, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @sock_wfree, ptr %destructor, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %end.i.i253 = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 17
  %63 = ptrtoint ptr %end.i.i253 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %end.i.i253, align 4
  %gso_size.i254 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %gso_size.i254 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %gso_size.i254, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.i.not = icmp eq i16 %66, 0
  br i1 %tobool.i.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %gso_segs, align 2
  %mul = mul i16 %68, %8
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %mss.0 = phi i16 [ %mul, %if.then25 ], [ %8, %if.end23.if.end28_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 18
  %69 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call16, i32 0, i32 15, i32 0, i32 19
  %71 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i256 = zext i16 %72 to i32
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %conv.i.i256
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %tskey = getelementptr inbounds %struct.skb_shared_info, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %tskey to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tskey, align 4
  %tskey32 = getelementptr inbounds %struct.skb_shared_info, ptr %64, i32 0, i32 9
  %77 = ptrtoint ptr %tskey32 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %tskey32, align 4
  %78 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tx_flags, align 1
  %81 = and i8 %80, 67
  %82 = ptrtoint ptr %end.i.i253 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i.i253, align 4
  %tx_flags37 = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %tx_flags37 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tx_flags37, align 1
  %or237 = or i8 %85, %81
  store i8 %or237, ptr %tx_flags37, align 1
  %add40 = add i16 %mss.0, 8
  %check42 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %86 = ptrtoint ptr %check42 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %check42, align 2
  %len43 = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %len43 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %len43, align 2
  %neg.i = xor i16 %89, -1
  %add.i.i = add i16 %87, %neg.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %neg.i)
  %cmp.i.i = icmp ult i16 %add.i.i, %neg.i
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %add40
  %add.i = add i16 %add7.i.i, %conv6.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i, i16 %add40)
  %cmp.i = icmp ult i16 %add.i, %add40
  %conv6.i = zext i1 %cmp.i to i16
  %add7.i = add i16 %add.i, %conv6.i
  %conv61 = zext i16 %add7.i to i32
  %neg62 = xor i32 %conv61, -1
  br label %for.cond

for.cond:                                         ; preds = %if.end68, %if.end28
  %sum_truesize.0 = phi i32 [ 0, %if.end28 ], [ %sum_truesize.1, %if.end68 ]
  %seg.0 = phi ptr [ %call16, %if.end28 ], [ %119, %if.end68 ]
  %uh.0 = phi ptr [ %add.ptr.i.i, %if.end28 ], [ %add.ptr.i.i271, %if.end68 ]
  br i1 %cmp9, label %if.then47, label %for.cond.if.end50_crit_edge

for.cond.if.end50_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then47:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %destructor48 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 4, i32 0, i32 1
  %90 = ptrtoint ptr %destructor48 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @sock_wfree, ptr %destructor48, align 4
  %91 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %2, ptr %91, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 20
  %93 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %truesize, align 8
  %add49 = add i32 %94, %sum_truesize.0
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.cond.if.end50_crit_edge
  %sum_truesize.1 = phi i32 [ %add49, %if.then47 ], [ %sum_truesize.0, %for.cond.if.end50_crit_edge ]
  %95 = ptrtoint ptr %seg.0 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.0, align 8
  %tobool51.not = icmp eq ptr %96, null
  br i1 %tobool51.not, label %for.end, label %if.end53

if.end53:                                         ; preds = %if.end50
  %len54 = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 2
  %97 = ptrtoint ptr %len54 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %add40, ptr %len54, align 2
  %check55 = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 3
  %98 = ptrtoint ptr %check55 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %add7.i, ptr %check55, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15
  %99 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %99)
  %bf.load = load i16, ptr %ip_summed, align 8
  %100 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %100)
  %cmp57 = icmp eq i16 %100, 1536
  br i1 %cmp57, label %if.then59, label %if.else

if.then59:                                        ; preds = %if.end53
  %remcsum_offload.i = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 3
  %101 = ptrtoint ptr %remcsum_offload.i to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %bf.load.i = load i32, ptr %remcsum_offload.i, align 2
  %102 = and i32 %bf.load.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i261 = icmp eq i32 %102, 0
  br i1 %tobool.not.i261, label %if.end.i262, label %if.then59.if.end68_crit_edge

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.end.i262:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 40
  %103 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %neg62, ptr %csum.i, align 4
  %104 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 5
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %104, align 8
  %csum_start.i = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 44
  %107 = ptrtoint ptr %csum_start.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %csum_start.i, align 4
  br label %if.end68

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i263 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 18
  %108 = ptrtoint ptr %head.i.i263 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %head.i.i263, align 8
  %transport_header.i.i264 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 19
  %110 = ptrtoint ptr %transport_header.i.i264 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %transport_header.i.i264, align 2
  %conv.i.i265 = zext i16 %111 to i32
  %add.ptr.i.i266 = getelementptr i8, ptr %109, i32 %conv.i.i265
  %csum_start1.i = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 44
  %112 = ptrtoint ptr %csum_start1.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %csum_start1.i, align 4
  %conv.i = zext i16 %113 to i32
  %add.ptr2.i = getelementptr i8, ptr %109, i32 %conv.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr2.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i266 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %csum.i267 = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 40
  %114 = ptrtoint ptr %csum.i267 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %csum.i267, align 4
  store i32 %neg62, ptr %csum.i267, align 4
  store i16 %111, ptr %csum_start1.i, align 4
  %call19.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i266, i32 noundef %sub.ptr.sub.i, i32 noundef %115) #6
  %116 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i) #9, !srcloc !38
  %neg.i.i = xor i32 %116, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i29.i = trunc i32 %shr.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i29.i)
  %tobool65.not = icmp eq i16 %conv.i29.i, 0
  %narrow239 = select i1 %tobool65.not, i16 -1, i16 %conv.i29.i
  %117 = ptrtoint ptr %check55 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %narrow239, ptr %check55, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.end.i262, %if.then59.if.end68_crit_edge
  %118 = ptrtoint ptr %seg.0 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %seg.0, align 8
  %head.i.i268 = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 18
  %120 = ptrtoint ptr %head.i.i268 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %head.i.i268, align 8
  %transport_header.i.i269 = getelementptr inbounds %struct.sk_buff, ptr %119, i32 0, i32 15, i32 0, i32 19
  %122 = ptrtoint ptr %transport_header.i.i269 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %transport_header.i.i269, align 2
  %conv.i.i270 = zext i16 %123 to i32
  %add.ptr.i.i271 = getelementptr i8, ptr %121, i32 %conv.i.i270
  br label %for.cond

for.end:                                          ; preds = %if.end50
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 16
  %124 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 18
  %126 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 19
  %128 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %transport_header.i, align 2
  %conv.i272 = zext i16 %129 to i32
  %add.ptr.i = getelementptr i8, ptr %127, i32 %conv.i272
  %sub.ptr.lhs.cast = ptrtoint ptr %125 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i to i32
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 7
  %130 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_len, align 8
  %sub.ptr.sub = add i32 %131, %sub.ptr.lhs.cast
  %add73 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %conv74 = trunc i32 %add73 to i16
  %check75 = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 3
  %132 = ptrtoint ptr %check75 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %check75, align 2
  %len76 = getelementptr inbounds %struct.udphdr, ptr %uh.0, i32 0, i32 2
  %134 = ptrtoint ptr %len76 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %len76, align 2
  %neg.i240 = xor i16 %135, -1
  %add.i.i241 = add i16 %133, %neg.i240
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i241, i16 %neg.i240)
  %cmp.i.i242 = icmp ult i16 %add.i.i241, %neg.i240
  %conv6.i.i243 = zext i1 %cmp.i.i242 to i16
  %add7.i.i244 = add i16 %add.i.i241, %conv6.i.i243
  %add.i245 = add i16 %add7.i.i244, %conv74
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i245, i16 %conv74)
  %cmp.i246 = icmp ult i16 %add.i245, %conv74
  %conv6.i247 = zext i1 %cmp.i246 to i16
  %add7.i248 = add i16 %add.i245, %conv6.i247
  %136 = ptrtoint ptr %len76 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv74, ptr %len76, align 2
  %137 = ptrtoint ptr %check75 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %add7.i248, ptr %check75, align 2
  %ip_summed81 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15
  %138 = ptrtoint ptr %ip_summed81 to i32
  call void @__asan_load2_noabort(i32 %138)
  %bf.load82 = load i16, ptr %ip_summed81, align 8
  %139 = and i16 %bf.load82, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %139)
  %cmp87 = icmp eq i16 %139, 1536
  br i1 %cmp87, label %if.then89, label %if.else92

if.then89:                                        ; preds = %for.end
  %remcsum_offload.i273 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 3
  %140 = ptrtoint ptr %remcsum_offload.i273 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %bf.load.i274 = load i32, ptr %remcsum_offload.i273, align 2
  %141 = and i32 %bf.load.i274, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i275 = icmp eq i32 %141, 0
  br i1 %tobool.not.i275, label %if.end.i278, label %if.then89.if.end104_crit_edge

if.then89.if.end104_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i278:                                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %conv90 = zext i16 %add7.i248 to i32
  %neg91 = xor i32 %conv90, -1
  %csum.i276 = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 40
  %142 = ptrtoint ptr %csum.i276 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %neg91, ptr %csum.i276, align 4
  %143 = getelementptr inbounds %struct.sk_buff, ptr %seg.0, i32 0, i32 15, i32 0, i32 5
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %143, align 8
  %csum_start.i277 = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 44
  %146 = ptrtoint ptr %csum_start.i277 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %csum_start.i277, align 4
  br label %if.end104

if.else92:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv93 = zext i16 %add7.i248 to i32
  %neg94 = xor i32 %conv93, -1
  %147 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i, align 8
  %149 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %transport_header.i, align 2
  %conv.i.i282 = zext i16 %150 to i32
  %add.ptr.i.i283 = getelementptr i8, ptr %148, i32 %conv.i.i282
  %csum_start1.i284 = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 44
  %151 = ptrtoint ptr %csum_start1.i284 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %csum_start1.i284, align 4
  %conv.i285 = zext i16 %152 to i32
  %add.ptr2.i286 = getelementptr i8, ptr %148, i32 %conv.i285
  %sub.ptr.lhs.cast.i287 = ptrtoint ptr %add.ptr2.i286 to i32
  %sub.ptr.rhs.cast.i288 = ptrtoint ptr %add.ptr.i.i283 to i32
  %sub.ptr.sub.i289 = sub i32 %sub.ptr.lhs.cast.i287, %sub.ptr.rhs.cast.i288
  %csum.i290 = getelementptr %struct.sk_buff, ptr %seg.0, i32 0, i32 3, i32 40
  %153 = ptrtoint ptr %csum.i290 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %csum.i290, align 4
  store i32 %neg94, ptr %csum.i290, align 4
  store i16 %150, ptr %csum_start1.i284, align 4
  %call19.i291 = tail call i32 @csum_partial(ptr noundef %add.ptr.i.i283, i32 noundef %sub.ptr.sub.i289, i32 noundef %154) #6
  %155 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call19.i291) #9, !srcloc !38
  %neg.i.i292 = xor i32 %155, -1
  %shr.i.i293 = lshr i32 %neg.i.i292, 16
  %conv.i29.i294 = trunc i32 %shr.i.i293 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i29.i294)
  %tobool97.not = icmp eq i16 %conv.i29.i294, 0
  %narrow = select i1 %tobool97.not, i16 -1, i16 %conv.i29.i294
  %156 = ptrtoint ptr %check75 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %narrow, ptr %check75, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.else92, %if.end.i278, %if.then89.if.end104_crit_edge
  br i1 %cmp9, label %if.then106, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then106:                                       ; preds = %if.end104
  %truesize107 = getelementptr inbounds %struct.sk_buff, ptr %gso_skb, i32 0, i32 20
  %157 = ptrtoint ptr %truesize107 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %truesize107, align 8
  %sub = sub i32 %sum_truesize.1, %158
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp108 = icmp sgt i32 %sub, -1
  br i1 %cmp108, label %if.then112, label %if.else113, !prof !40

if.then112:                                       ; preds = %if.then106
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #6
  %159 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %sub, ptr elementtype(i32) %sk_wmem_alloc) #6, !srcloc !41
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %159, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then112.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !36

if.then112.if.end15.sink.split.i.i_crit_edge:     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then112
  %add.i.i295 = add i32 %asmresult.i.i.i.i, %sub
  %160 = or i32 %add.i.i295, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %160)
  %.not.i.i = icmp sgt i32 %160, -1
  br i1 %.not.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !40

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %if.then112.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.then112.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #6
  br label %cleanup

if.else113:                                       ; preds = %if.then106
  %sub114 = sub i32 0, %sub
  %sk_wmem_alloc115 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 23
  %call116 = tail call fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %sub114, ptr noundef %sk_wmem_alloc115)
  br i1 %call116, label %land.rhs, label %if.else113.cleanup_crit_edge

if.else113.cleanup_crit_edge:                     ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %if.else113
  %.b238 = load i1, ptr @__udp_gso_segment.__already_done, align 1
  br i1 %.b238, label %land.rhs.cleanup_crit_edge, label %if.then133, !prof !40

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then133:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @__udp_gso_segment.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %land.rhs.cleanup_crit_edge, %if.else113.cleanup_crit_edge, %if.end15.sink.split.i.i, %if.else.i.i.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.then20, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true22.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call16, %if.then20 ], [ %call16, %if.then18.cleanup_crit_edge ], [ %call16, %if.else113.cleanup_crit_edge ], [ %call16, %if.then133 ], [ %call16, %land.rhs.cleanup_crit_edge ], [ %call16, %if.end104.cleanup_crit_edge ], [ %call2.i, %if.then.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call2.i, %land.lhs.true22.i.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %call16, %if.else.i.i.cleanup_crit_edge ], [ %call16, %if.end15.sink.split.i.i ], [ %call2.i, %while.body.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_segment(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @refcount_sub_and_test(i32 noundef %i, ptr noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %i, ptr elementtype(i32) %r) #6, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i, i32 %i)
  %cmp.i = icmp eq i32 %asmresult.i.i.i.i, %i
  br i1 %cmp.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  br label %__refcount_sub_and_test.exit

if.end5.i:                                        ; preds = %entry
  %sub.i = sub i32 %asmresult.i.i.i.i, %i
  %1 = or i32 %sub.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %if.end5.i.__refcount_sub_and_test.exit_crit_edge, label %if.then10.i, !prof !40

if.end5.i.__refcount_sub_and_test.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__refcount_sub_and_test.exit

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef 3) #6
  br label %__refcount_sub_and_test.exit

__refcount_sub_and_test.exit:                     ; preds = %if.then10.i, %if.end5.i.__refcount_sub_and_test.exit_crit_edge, %do.end.i
  ret i1 %cmp.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udp_gro_receive(ptr noundef %head, ptr noundef %skb, ptr noundef %uh, ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %is_flist = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %2 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_flist, align 2
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %is_flist, align 2
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %gro_receive = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 14
  %3 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gro_receive, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.thread, label %if.end41

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features, align 16
  %and = and i64 %9, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %if.then.land.lhs.true_crit_edge, label %if.end.thread211

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.thread211:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set15214 = or i16 %bf.load, 1
  %10 = ptrtoint ptr %is_flist to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.set15214, ptr %is_flist, align 2
  br label %land.lhs.true

if.then.thread:                                   ; preds = %lor.lhs.false
  %11 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %features185 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 23
  %14 = ptrtoint ptr %features185 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features185, align 16
  %and186 = and i64 %15, 144115188075855872
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and186)
  %tobool3.not187 = icmp eq i64 %and186, 0
  br i1 %tobool3.not187, label %if.then.thread.land.lhs.true22.critedge_crit_edge, label %if.end

if.then.thread.land.lhs.true22.critedge_crit_edge: ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true22.critedge

if.end:                                           ; preds = %if.then.thread
  call void @__sanitizer_cov_trace_pc() #8
  %gro_enabled = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %16 = ptrtoint ptr %gro_enabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load7 = load i8, ptr %gro_enabled, align 1
  %17 = lshr i8 %bf.load7, 4
  %.lobit = and i8 %17, 1
  %18 = xor i8 %.lobit, 1
  %19 = zext i8 %18 to i16
  %bf.set15 = or i16 %bf.clear, %19
  %20 = ptrtoint ptr %is_flist to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %bf.set15, ptr %is_flist, align 2
  br label %land.lhs.true22.critedge

land.lhs.true:                                    ; preds = %if.end.thread211, %if.then.land.lhs.true_crit_edge
  %21 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %features, align 16
  %and18 = and i64 %22, 576460752303423488
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool19.not = icmp eq i64 %and18, 0
  br i1 %tobool19.not, label %land.lhs.true.lor.lhs.false30_crit_edge, label %land.lhs.true.if.then38_crit_edge

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

land.lhs.true.lor.lhs.false30_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false30

land.lhs.true22.critedge:                         ; preds = %if.end, %if.then.thread.land.lhs.true22.critedge_crit_edge
  %gro_enabled24 = getelementptr inbounds %struct.udp_sock, ptr %sk, i32 0, i32 4
  %23 = ptrtoint ptr %gro_enabled24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load25 = load i8, ptr %gro_enabled24, align 1
  %24 = and i8 %bf.load25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool29.not = icmp eq i8 %24, 0
  br i1 %tobool29.not, label %land.lhs.true22.critedge.lor.lhs.false30_crit_edge, label %land.lhs.true22.critedge.if.then38_crit_edge

land.lhs.true22.critedge.if.then38_crit_edge:     ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

land.lhs.true22.critedge.lor.lhs.false30_crit_edge: ; preds = %land.lhs.true22.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true22.critedge.lor.lhs.false30_crit_edge, %land.lhs.true.lor.lhs.false30_crit_edge
  %25 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load34 = load i16, ptr %is_flist, align 2
  %26 = and i16 %bf.load34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool37.not = icmp eq i16 %26, 0
  br i1 %tobool37.not, label %lor.lhs.false30.if.then.i183_crit_edge, label %lor.lhs.false30.if.then38_crit_edge

lor.lhs.false30.if.then38_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

lor.lhs.false30.if.then.i183_crit_edge:           ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i183

if.then38:                                        ; preds = %lor.lhs.false30.if.then38_crit_edge, %land.lhs.true22.critedge.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge
  %27 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i.i = load i16, ptr %is_flist, align 2
  %28 = trunc i16 %bf.load.i.i to i8
  %29 = lshr i8 %28, 1
  %inc.i.i = add nuw i8 %29, 1
  %30 = and i8 %inc.i.i, 15
  %31 = shl nuw nsw i8 %30, 1
  %bf.shl.i.i = zext i8 %31 to i16
  %bf.clear2.i.i = and i16 %bf.load.i.i, -31
  %bf.set.i.i = or i16 %bf.clear2.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %is_flist, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %30)
  %cmp.i.not.i = icmp eq i8 %30, 15
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.i, !prof !36

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %32 = ptrtoint ptr %flush.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flush.i, align 4
  %34 = or i16 %33, 1
  store i16 %34, ptr %flush.i, align 4
  br label %cleanup

if.end.i:                                         ; preds = %if.then38
  %add.i.i.i = add i32 %1, 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %35 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %36, i32 %1
  %frag0_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %37 = ptrtoint ptr %frag0_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %frag0_len.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %add.i.i.i)
  %cmp.i.not.i.i.i = icmp ult i32 %38, %add.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %if.end.i.udp_gro_udphdr.exit.i.i_crit_edge

if.end.i.udp_gro_udphdr.exit.i.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_gro_udphdr.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %41 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %sub.i.i.i.i.i.i = sub i32 %40, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %sub.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp ugt i32 %add.i.i.i, %sub.i.i.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.if.end.i.i.i.i_crit_edge, !prof !36

if.then.i.i.i.if.end.i.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add.i.i.i)
  %cmp3.i.i.i.i.i = icmp ult i32 %40, %add.i.i.i
  br i1 %cmp3.i.i.i.i.i, label %if.end.i.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge, label %pskb_may_pull.exit.i.i.i.i, !prof !36

if.end.i.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_gro_udphdr.exit.i.i

pskb_may_pull.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i.i
  %sub.i.i.i.i.i = sub i32 %add.i.i.i, %sub.i.i.i.i.i.i
  %call13.i.i.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i.i.i) #6
  %cmp14.i.not.i.i.i.i = icmp eq ptr %call13.i.i.i.i.i, null
  br i1 %cmp14.i.not.i.i.i.i, label %pskb_may_pull.exit.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge, label %pskb_may_pull.exit.i.i.i.i.if.end.i.i.i.i_crit_edge

pskb_may_pull.exit.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i.i

pskb_may_pull.exit.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge: ; preds = %pskb_may_pull.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_gro_udphdr.exit.i.i

if.end.i.i.i.i:                                   ; preds = %pskb_may_pull.exit.i.i.i.i.if.end.i.i.i.i_crit_edge, %if.then.i.i.i.if.end.i.i.i.i_crit_edge
  %43 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %cb.i.i.i.i, align 8
  %44 = ptrtoint ptr %frag0_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %frag0_len.i.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i10.i.i.i = getelementptr i8, ptr %46, i32 %1
  br label %udp_gro_udphdr.exit.i.i

udp_gro_udphdr.exit.i.i:                          ; preds = %if.end.i.i.i.i, %pskb_may_pull.exit.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge, %if.end.i.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge, %if.end.i.udp_gro_udphdr.exit.i.i_crit_edge
  %uh.0.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.end.i.udp_gro_udphdr.exit.i.i_crit_edge ], [ %add.ptr.i10.i.i.i, %if.end.i.i.i.i ], [ null, %pskb_may_pull.exit.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge ], [ null, %if.end.i.i.i.i.i.udp_gro_udphdr.exit.i.i_crit_edge ]
  %check.i.i = getelementptr inbounds %struct.udphdr, ptr %uh.0.i.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %check.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %udp_gro_udphdr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flush.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %49 = ptrtoint ptr %flush.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flush.i.i, align 4
  br label %cleanup

if.end.i.i:                                       ; preds = %udp_gro_udphdr.exit.i.i
  %len.i.i = getelementptr inbounds %struct.udphdr, ptr %uh.0.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %51)
  %cmp.i1.i = icmp ult i16 %51, 9
  br i1 %cmp.i1.i, label %if.end.i.i.if.then5.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then5.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %conv.i.i = zext i16 %51 to i32
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i.i, align 4
  %54 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_offset.i, align 8
  %sub.i.i.i = sub i32 %53, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv.i.i)
  %cmp3.not.i.i = icmp eq i32 %sub.i.i.i, %conv.i.i
  br i1 %cmp3.not.i.i, label %if.end9.i.i, label %lor.lhs.false.i.i.if.then5.i.i_crit_edge

lor.lhs.false.i.i.if.then5.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i.i

if.then5.i.i:                                     ; preds = %lor.lhs.false.i.i.if.then5.i.i_crit_edge, %if.end.i.i.if.then5.i.i_crit_edge
  %flush8.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %56 = ptrtoint ptr %flush8.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %flush8.i.i, align 4
  br label %cleanup

if.end9.i.i:                                      ; preds = %lor.lhs.false.i.i
  %add.i168.i.i = add i32 %55, 8
  %57 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add.i168.i.i, ptr %data_offset.i, align 8
  %58 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %58)
  %p.0177.i.i = load ptr, ptr %head, align 4
  %cmp10.not178.i.i = icmp eq ptr %p.0177.i.i, %head
  br i1 %cmp10.not178.i.i, label %if.end9.i.i.cleanup_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  br label %for.body.i.i

if.end9.i.i.cleanup_crit_edge:                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.i.for.body.i.i_crit_edge
  %p.0179.i.i = phi ptr [ %p.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %p.0177.i.i, %if.end9.i.i.for.body.i.i_crit_edge ]
  %same_flow.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 3, i32 26
  %59 = ptrtoint ptr %same_flow.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i2.i = load i16, ptr %same_flow.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i2.i)
  %tobool14.not.i.i = icmp sgt i16 %bf.load.i2.i, -1
  br i1 %tobool14.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end16.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end16.i.i:                                     ; preds = %for.body.i.i
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 15, i32 0, i32 19
  %62 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %63 to i32
  %add.ptr.i.i169.i.i = getelementptr i8, ptr %61, i32 %conv.i.i.i.i
  %64 = ptrtoint ptr %uh.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %uh.0.i.i.i, align 2
  %66 = ptrtoint ptr %add.ptr.i.i169.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 4)
  %67 = load i32, ptr %add.ptr.i.i169.i.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp19.not.i.i = icmp eq i32 %65, %67
  br i1 %cmp19.not.i.i, label %if.end26.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear.i.i = and i16 %bf.load.i2.i, 32767
  %68 = ptrtoint ptr %same_flow.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %bf.clear.i.i, ptr %same_flow.i.i, align 2
  br label %for.inc.i.i

if.end26.i.i:                                     ; preds = %if.end16.i.i
  %69 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %69)
  %bf.load29.i.i = load i16, ptr %is_flist, align 2
  %70 = trunc i16 %bf.load29.i.i to i8
  %bf.cast31.i.i = and i8 %70, 1
  %71 = and i16 %bf.load.i2.i, 1
  %72 = zext i8 %bf.cast31.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %72)
  %cmp40.not.i.i = icmp eq i16 %71, %72
  br i1 %cmp40.not.i.i, label %if.end46.i.i, label %if.then42.i.i

if.then42.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flush45.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %73 = ptrtoint ptr %flush45.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %flush45.i.i, align 4
  br label %cleanup

if.end46.i.i:                                     ; preds = %if.end26.i.i
  %conv.i.i.i.i.le = zext i16 %63 to i32
  %add.ptr.i.i169.i.i.le = getelementptr i8, ptr %61, i32 %conv.i.i.i.i.le
  %len47.i.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i169.i.i.le, i32 0, i32 2
  %74 = ptrtoint ptr %len47.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %len47.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %75)
  %cmp49.i.i = icmp ugt i16 %51, %75
  br i1 %cmp49.i.i, label %if.end46.i.i.lor.lhs.false105.i.i_crit_edge, label %if.else.i.i

if.end46.i.i.lor.lhs.false105.i.i_crit_edge:      ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false105.i.i

if.else.i.i:                                      ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast31.i.i)
  %tobool58.not.i.i = icmp eq i8 %bf.cast31.i.i, 0
  br i1 %tobool58.not.i.i, label %if.else100.i.i, label %if.then59.i.i

if.then59.i.i:                                    ; preds = %if.else.i.i
  %76 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_offset.i, align 8
  %call61.i.i = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %77) #6
  br i1 %call61.i.i, label %if.end66.i.i, label %if.then62.i.i

if.then62.i.i:                                    ; preds = %if.then59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flush65.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %78 = ptrtoint ptr %flush65.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %flush65.i.i, align 4
  br label %cleanup

if.end66.i.i:                                     ; preds = %if.then59.i.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %79 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load67.i.i = load i16, ptr %ip_summed.i.i, align 8
  %ip_summed72.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 15
  %80 = ptrtoint ptr %ip_summed72.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load73.i.i = load i16, ptr %ip_summed72.i.i, align 8
  %bf.lshr68165.i.i = xor i16 %bf.load73.i.i, %bf.load67.i.i
  %81 = and i16 %bf.lshr68165.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %cmp78.not.i.i = icmp eq i16 %81, 0
  br i1 %cmp78.not.i.i, label %lor.lhs.false80.i.i, label %if.end66.i.i.if.then94.i.i_crit_edge

if.end66.i.i.if.then94.i.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.i.i

lor.lhs.false80.i.i:                              ; preds = %if.end66.i.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %82 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %bf.load81.i.i = load i32, ptr %csum_level.i.i, align 2
  %csum_level86.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 15, i32 0, i32 3
  %83 = ptrtoint ptr %csum_level86.i.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %bf.load87.i.i = load i32, ptr %csum_level86.i.i, align 2
  %bf.lshr82166.i.i = xor i32 %bf.load87.i.i, %bf.load81.i.i
  %84 = and i32 %bf.lshr82166.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp92.not.i.i = icmp eq i32 %84, 0
  br i1 %cmp92.not.i.i, label %if.end98.i.i, label %lor.lhs.false80.i.i.if.then94.i.i_crit_edge

lor.lhs.false80.i.i.if.then94.i.i_crit_edge:      ; preds = %lor.lhs.false80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then94.i.i

if.then94.i.i:                                    ; preds = %lor.lhs.false80.i.i.if.then94.i.i_crit_edge, %if.end66.i.i.if.then94.i.i_crit_edge
  %flush97.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %85 = ptrtoint ptr %flush97.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %flush97.i.i, align 4
  br label %cleanup

if.end98.i.i:                                     ; preds = %lor.lhs.false80.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call99.i.i = tail call fastcc i32 @skb_gro_receive_list(ptr noundef %p.0179.i.i, ptr noundef %skb) #6
  br label %if.end103.i.i

if.else100.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @skb_gro_postpull_rcsum(ptr noundef %skb, ptr noundef %uh.0.i.i.i) #6
  %call101.i.i = tail call i32 @skb_gro_receive(ptr noundef %p.0179.i.i, ptr noundef %skb) #6
  br label %if.end103.i.i

if.end103.i.i:                                    ; preds = %if.else100.i.i, %if.end98.i.i
  %ret.0.i.i = phi i32 [ %call99.i.i, %if.end98.i.i ], [ %call101.i.i, %if.else100.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool104.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool104.not.i.i, label %if.end103.i.i.lor.lhs.false105.i.i_crit_edge, label %if.end103.i.i.if.then116.i.i_crit_edge

if.end103.i.i.if.then116.i.i_crit_edge:           ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116.i.i

if.end103.i.i.lor.lhs.false105.i.i_crit_edge:     ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false105.i.i

lor.lhs.false105.i.i:                             ; preds = %if.end103.i.i.lor.lhs.false105.i.i_crit_edge, %if.end46.i.i.lor.lhs.false105.i.i_crit_edge
  %pp.0174.i.i = phi ptr [ null, %if.end103.i.i.lor.lhs.false105.i.i_crit_edge ], [ %p.0179.i.i, %if.end46.i.i.lor.lhs.false105.i.i_crit_edge ]
  %86 = ptrtoint ptr %len47.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %len47.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %51, i16 %87)
  %cmp108.not.i.i = icmp eq i16 %51, %87
  br i1 %cmp108.not.i.i, label %lor.lhs.false110.i.i, label %lor.lhs.false105.i.i.if.then116.i.i_crit_edge

lor.lhs.false105.i.i.if.then116.i.i_crit_edge:    ; preds = %lor.lhs.false105.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116.i.i

lor.lhs.false110.i.i:                             ; preds = %lor.lhs.false105.i.i
  %count.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0179.i.i, i32 0, i32 3, i32 16
  %88 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %89)
  %cmp114.i.i = icmp ugt i16 %89, 63
  br i1 %cmp114.i.i, label %lor.lhs.false110.i.i.if.then116.i.i_crit_edge, label %lor.lhs.false110.i.i.cleanup_crit_edge

lor.lhs.false110.i.i.cleanup_crit_edge:           ; preds = %lor.lhs.false110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false110.i.i.if.then116.i.i_crit_edge:    ; preds = %lor.lhs.false110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then116.i.i

if.then116.i.i:                                   ; preds = %lor.lhs.false110.i.i.if.then116.i.i_crit_edge, %lor.lhs.false105.i.i.if.then116.i.i_crit_edge, %if.end103.i.i.if.then116.i.i_crit_edge
  br label %cleanup

for.inc.i.i:                                      ; preds = %if.then21.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %90 = ptrtoint ptr %p.0179.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %p.0.i.i = load ptr, ptr %p.0179.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %p.0.i.i, %head
  br i1 %cmp10.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false
  %91 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %91)
  %tobool49.not = icmp eq i16 %91, 0
  br i1 %tobool49.not, label %lor.lhs.false50, label %if.end41.if.then.i183_crit_edge

if.end41.if.then.i183_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i183

lor.lhs.false50:                                  ; preds = %if.end41
  %check = getelementptr inbounds %struct.udphdr, ptr %uh, i32 0, i32 3
  %92 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool52.not = icmp eq i16 %93, 0
  br i1 %tobool52.not, label %lor.lhs.false50.if.end79_crit_edge, label %land.lhs.true53

lor.lhs.false50.if.end79_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

land.lhs.true53:                                  ; preds = %lor.lhs.false50
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %94 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load54 = load i16, ptr %ip_summed, align 8
  %95 = and i16 %bf.load54, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %95)
  %cmp.not = icmp ne i16 %95, 1536
  %96 = and i16 %bf.load, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %cmp68 = icmp eq i16 %96, 0
  %or.cond = select i1 %cmp.not, i1 %cmp68, i1 false
  %97 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool77.not = icmp eq i16 %97, 0
  %or.cond168 = select i1 %or.cond, i1 %tobool77.not, i1 false
  br i1 %or.cond168, label %land.lhs.true53.if.then.i183_crit_edge, label %land.lhs.true53.if.end79_crit_edge

land.lhs.true53.if.end79_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

land.lhs.true53.if.then.i183_crit_edge:           ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i183

if.end79:                                         ; preds = %land.lhs.true53.if.end79_crit_edge, %lor.lhs.false50.if.end79_crit_edge
  %bf.set85 = or i16 %bf.clear, 16384
  %98 = ptrtoint ptr %is_flist to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %bf.set85, ptr %is_flist, align 2
  %99 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %99)
  %p.0202 = load ptr, ptr %head, align 4
  %cmp86.not203 = icmp eq ptr %p.0202, %head
  br i1 %cmp86.not203, label %if.end79.for.end_crit_edge, label %if.end79.for.body_crit_edge

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end79.for.body_crit_edge
  %p.0204 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.0202, %if.end79.for.body_crit_edge ]
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %p.0204, i32 0, i32 3, i32 26
  %100 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load92 = load i16, ptr %same_flow, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load92)
  %tobool95.not = icmp sgt i16 %bf.load92, -1
  br i1 %tobool95.not, label %for.body.for.inc_crit_edge, label %if.end97

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end97:                                         ; preds = %for.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %p.0204, i32 0, i32 19
  %101 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data, align 4
  %add.ptr98 = getelementptr i8, ptr %102, i32 %1
  %103 = ptrtoint ptr %uh to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %uh, align 2
  %105 = ptrtoint ptr %add.ptr98 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %add.ptr98, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %106)
  %cmp100.not = icmp eq i32 %104, %106
  br i1 %cmp100.not, label %lor.lhs.false102, label %if.end97.if.then112_crit_edge

if.end97.if.then112_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

lor.lhs.false102:                                 ; preds = %if.end97
  %107 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool104.not = icmp eq i16 %108, 0
  %check107 = getelementptr inbounds %struct.udphdr, ptr %add.ptr98, i32 0, i32 3
  %109 = ptrtoint ptr %check107 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %check107, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool108.not = icmp eq i16 %110, 0
  %xor166 = xor i1 %tobool104.not, %tobool108.not
  br i1 %xor166, label %lor.lhs.false102.if.then112_crit_edge, label %lor.lhs.false102.for.inc_crit_edge

lor.lhs.false102.for.inc_crit_edge:               ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false102.if.then112_crit_edge:            ; preds = %lor.lhs.false102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then112

if.then112:                                       ; preds = %lor.lhs.false102.if.then112_crit_edge, %if.end97.if.then112_crit_edge
  %bf.clear117 = and i16 %bf.load92, 32767
  %111 = ptrtoint ptr %same_flow to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %bf.clear117, ptr %same_flow, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then112, %lor.lhs.false102.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %112 = ptrtoint ptr %p.0204 to i32
  call void @__asan_load4_noabort(i32 %112)
  %p.0 = load ptr, ptr %p.0204, align 4
  %cmp86.not = icmp eq ptr %p.0, %head
  br i1 %cmp86.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end79.for.end_crit_edge
  %113 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_offset.i, align 8
  %add.i = add i32 %114, 8
  store i32 %add.i, ptr %data_offset.i, align 8
  %115 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %115)
  %bf.load.i = load i16, ptr %is_flist, align 2
  %116 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool.not.i = icmp eq i16 %116, 0
  br i1 %tobool.not.i, label %for.end.skb_gro_postpull_rcsum.exit_crit_edge, label %if.then.i170

for.end.skb_gro_postpull_rcsum.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_postpull_rcsum.exit

if.then.i170:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %117 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %csum.i, align 4
  %sub.i.i = sub i32 0, %118
  %call3.i = tail call i32 @csum_partial(ptr noundef %uh, i32 noundef 8, i32 noundef %sub.i.i) #6
  %sub.i2.i = sub i32 0, %call3.i
  %119 = ptrtoint ptr %csum.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub.i2.i, ptr %csum.i, align 4
  br label %skb_gro_postpull_rcsum.exit

skb_gro_postpull_rcsum.exit:                      ; preds = %if.then.i170, %for.end.skb_gro_postpull_rcsum.exit_crit_edge
  %120 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %gro_receive, align 4
  %122 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load.i.i173 = load i16, ptr %is_flist, align 2
  %123 = trunc i16 %bf.load.i.i173 to i8
  %124 = lshr i8 %123, 1
  %inc.i.i174 = add nuw i8 %124, 1
  %125 = and i8 %inc.i.i174, 15
  %126 = shl nuw nsw i8 %125, 1
  %bf.shl.i.i175 = zext i8 %126 to i16
  %bf.clear2.i.i176 = and i16 %bf.load.i.i173, -31
  %bf.set.i.i177 = or i16 %bf.clear2.i.i176, %bf.shl.i.i175
  store i16 %bf.set.i.i177, ptr %is_flist, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %125)
  %cmp.i.not.i178 = icmp eq i8 %125, 15
  br i1 %cmp.i.not.i178, label %if.then.i180, label %out, !prof !36

if.then.i180:                                     ; preds = %skb_gro_postpull_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #8
  %flush.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %127 = ptrtoint ptr %flush.i179 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %flush.i179, align 4
  %129 = or i16 %128, 1
  store i16 %129, ptr %flush.i179, align 4
  br label %if.then.i183

out:                                              ; preds = %skb_gro_postpull_rcsum.exit
  %call5.i = tail call ptr %121(ptr noundef nonnull %sk, ptr noundef %head, ptr noundef %skb) #6
  %cmp.not.i = icmp eq ptr %call5.i, inttoptr (i32 -115 to ptr)
  br i1 %cmp.not.i, label %out.cleanup_crit_edge, label %out.if.then.i183_crit_edge

out.if.then.i183_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i183

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i183:                                     ; preds = %out.if.then.i183_crit_edge, %if.then.i180, %land.lhs.true53.if.then.i183_crit_edge, %if.end41.if.then.i183_crit_edge, %lor.lhs.false30.if.then.i183_crit_edge
  %pp.0198 = phi ptr [ %call5.i, %out.if.then.i183_crit_edge ], [ null, %if.end41.if.then.i183_crit_edge ], [ null, %lor.lhs.false30.if.then.i183_crit_edge ], [ null, %land.lhs.true53.if.then.i183_crit_edge ], [ null, %if.then.i180 ]
  %flush.0197 = phi i16 [ 0, %out.if.then.i183_crit_edge ], [ 1, %if.end41.if.then.i183_crit_edge ], [ 1, %lor.lhs.false30.if.then.i183_crit_edge ], [ 1, %land.lhs.true53.if.then.i183_crit_edge ], [ 0, %if.then.i180 ]
  %flush1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %130 = ptrtoint ptr %flush1.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %flush1.i, align 4
  %conv2.i = or i16 %131, %flush.0197
  store i16 %conv2.i, ptr %flush1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i183, %out.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.then116.i.i, %lor.lhs.false110.i.i.cleanup_crit_edge, %if.then94.i.i, %if.then62.i.i, %if.then42.i.i, %if.end9.i.i.cleanup_crit_edge, %if.then5.i.i, %if.then.i.i, %if.then.i
  %retval.0 = phi ptr [ null, %if.then.i ], [ null, %if.then5.i.i ], [ %p.0179.i.i, %if.then42.i.i ], [ null, %if.then94.i.i ], [ null, %if.then62.i.i ], [ null, %if.then.i.i ], [ %p.0179.i.i, %if.then116.i.i ], [ %pp.0174.i.i, %lor.lhs.false110.i.i.cleanup_crit_edge ], [ null, %if.end9.i.i.cleanup_crit_edge ], [ inttoptr (i32 -115 to ptr), %out.cleanup_crit_edge ], [ %pp.0198, %if.then.i183 ], [ null, %for.inc.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skb_gro_postpull_rcsum(ptr nocapture noundef %skb, ptr noundef %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %0 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %csum_valid, align 2
  %1 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %csum = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %2 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csum, align 4
  %sub.i = sub i32 0, %3
  %call3 = tail call i32 @csum_partial(ptr noundef %start, i32 noundef 8, i32 noundef %sub.i) #6
  %sub.i2 = sub i32 0, %call3
  %4 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i2, ptr %csum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udp_gro_complete(ptr noundef %skb, i32 noundef %nhoff, ptr nocapture noundef readonly %lookup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = sub i32 %1, %nhoff
  %conv = trunc i32 %sub to i16
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %nhoff
  %len1 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 2
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %len1, align 2
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dest, align 2
  %call = tail call ptr %lookup(ptr noundef %skb, i16 noundef zeroext %6, i16 noundef zeroext %8) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %gro_complete = getelementptr inbounds %struct.udp_sock, ptr %call, i32 0, i32 15
  %9 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gro_complete, align 32
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %11 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool5.not = icmp eq i16 %12, 0
  %cond = select i1 %tobool5.not, i32 1024, i32 2048
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %gso_type, align 8
  %encap_mark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %16 = ptrtoint ptr %encap_mark to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load = load i16, ptr %encap_mark, align 2
  %bf.clear = and i16 %bf.load, -16385
  store i16 %bf.clear, ptr %encap_mark, align 2
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load7 = load i16, ptr %encapsulation, align 8
  %bf.set9 = or i16 %bf.load7, 4
  store i16 %bf.set9, ptr %encapsulation, align 8
  %18 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gro_complete, align 32
  %add = add i32 %nhoff, 8
  %call12 = tail call i32 %19(ptr noundef nonnull %call, ptr noundef %skb, i32 noundef %add) #6
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %20 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %transport_header.i.i.i, align 2
  %22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %21, ptr %22, align 8
  %csum_offset.i = getelementptr inbounds %struct.anon.132, ptr %22, i32 0, i32 1
  %24 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 6, ptr %csum_offset.i, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %25 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1536
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %count.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %count.i, align 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %end.i.i, align 4
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %27, ptr %gso_segs.i, align 2
  %31 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gso_type.i, align 8
  %or.i = or i32 %33, 131072
  store i32 %or.i, ptr %gso_type.i, align 8
  %bf.load3.i = load i16, ptr %ip_summed.i, align 8
  %34 = and i16 %bf.load3.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool.not.i = icmp eq i16 %34, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %transport_header.i.i.i, align 2
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %37 = ptrtoint ptr %inner_transport_header.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %inner_transport_header.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %if.then
  %err.0 = phi i32 [ %call12, %if.then ], [ 0, %if.else.if.end_crit_edge ], [ 0, %if.then.i ]
  %remcsum_offload = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %38 = ptrtoint ptr %remcsum_offload to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load14 = load i32, ptr %remcsum_offload, align 2
  %39 = and i32 %bf.load14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool16.not = icmp eq i32 %39, 0
  br i1 %tobool16.not, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %end.i39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %40 = ptrtoint ptr %end.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i39, align 4
  %gso_type19 = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %gso_type19 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %gso_type19, align 8
  %or = or i32 %43, 8192
  store i32 %or, ptr %gso_type19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  ret i32 %err.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udpv4_offload_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @inet_add_offload(ptr noundef nonnull @udpv4_offload, i8 noundef zeroext 17) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_add_offload(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !36

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !36

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #6
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
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
declare dso_local ptr @skb_segment_list(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__udpv4_gso_segment_csum(ptr noundef %seg, ptr nocapture noundef %oldip, ptr nocapture noundef readonly %newip, ptr nocapture noundef %oldport, ptr nocapture noundef readonly %newport) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oldip, align 4
  %2 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %newip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %oldport to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %oldport, align 2
  %6 = ptrtoint ptr %newport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %newport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp2 = icmp eq i16 %5, %7
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %seg, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %seg, i32 0, i32 15, i32 0, i32 19
  %10 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i33 = zext i16 %11 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i33
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %seg, i32 0, i32 15, i32 0, i32 20
  %12 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i35 = zext i16 %13 to i32
  %add.ptr.i.i36 = getelementptr i8, ptr %9, i32 %conv.i.i35
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %if.end
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %seg, i32 noundef %1, i32 noundef %3, i1 noundef zeroext true) #6
  %16 = ptrtoint ptr %oldport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %oldport, align 2
  %18 = ptrtoint ptr %newport to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %newport, align 2
  %conv.i = zext i16 %17 to i32
  %conv1.i = zext i16 %19 to i32
  tail call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %seg, i32 noundef %conv.i, i32 noundef %conv1.i, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not = icmp eq i16 %21, 0
  br i1 %tobool9.not, label %if.then10, label %if.then5.if.end13_crit_edge

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %check, align 2
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %23 = ptrtoint ptr %newport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %newport, align 2
  %25 = ptrtoint ptr %oldport to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %oldport, align 2
  %check14 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i36, i32 0, i32 7
  %26 = ptrtoint ptr %oldip to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oldip, align 4
  %28 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %newip, align 4
  %30 = ptrtoint ptr %check14 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %check14, align 2
  %conv.i.i = zext i16 %31 to i32
  %neg.i = xor i32 %conv.i.i, -1
  %neg.i.i = xor i32 %27, -1
  %add.i.i.i = add i32 %neg.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %neg.i.i)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %neg.i.i
  %conv.i.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %29
  %add.i.i = add i32 %add1.i.i.i, %conv.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %29)
  %cmp.i.i = icmp ult i32 %add.i.i, %29
  %conv.i5.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i5.i
  %32 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #9, !srcloc !38
  %neg.i6.i = xor i32 %32, -1
  %shr.i.i = lshr i32 %neg.i6.i, 16
  %conv.i7.i = trunc i32 %shr.i.i to i16
  %33 = ptrtoint ptr %check14 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i7.i, ptr %check14, align 2
  %34 = ptrtoint ptr %newip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %newip, align 4
  %36 = ptrtoint ptr %oldip to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %oldip, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_gro_receive_list(ptr noundef %p, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1, align 4
  %add = add i32 %3, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add)
  %cmp = icmp ugt i32 %add, 65535
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !36

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %last = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 32
  %4 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %last, align 8
  %cmp3 = icmp eq ptr %5, %p
  br i1 %cmp3, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 6
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %.sink = phi ptr [ %frag_list, %if.then4 ], [ %5, %if.end.if.end8_crit_edge ]
  %8 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %.sink, align 8
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_offset.i, align 8
  %call10 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %10) #6
  %11 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %last, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 16
  %12 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count, align 8
  %inc = add i16 %13, 1
  store i16 %inc, ptr %count, align 8
  %14 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len1, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 7
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len, align 8
  %add17 = add i32 %17, %15
  store i32 %add17, ptr %data_len, align 8
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %destructor, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %19 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %truesize, align 8
  %truesize18 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 20
  %21 = ptrtoint ptr %truesize18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %truesize18, align 8
  %add19 = add i32 %22, %20
  store i32 %add19, ptr %truesize18, align 8
  %23 = load i32, ptr %len1, align 4
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add22 = add i32 %25, %23
  store i32 %add22, ptr %len, align 4
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %26 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %same_flow, align 2
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %same_flow, align 2
  br label %return

return:                                           ; preds = %if.end8, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -7, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udp4_ufo_fragment(ptr noundef %skb, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gso_type, align 8
  %and = and i32 %5, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @skb_udp_tunnel_segment(ptr noundef %skb, i64 noundef %features, i1 noundef zeroext false)
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %end.i78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i78 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i78, align 4
  %gso_type5 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %gso_type5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gso_type5, align 8
  %and6 = and i32 %9, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end9.if.end12_crit_edge, !prof !36

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp3.i = icmp ult i32 %11, 8
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !36

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #6
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end12_crit_edge

pskb_may_pull.exit.if.end12_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %pskb_may_pull.exit.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %14 = ptrtoint ptr %end.i78 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i78, align 4
  %gso_type14 = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %gso_type14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gso_type14, align 8
  %and15 = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @__udp_gso_segment(ptr noundef %skb, i64 noundef %features, i1 noundef zeroext false)
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size, align 4
  %conv21 = zext i16 %19 to i32
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv21)
  %cmp.not = icmp ugt i32 %21, %conv21
  br i1 %cmp.not, label %if.end26, label %if.end19.cleanup_crit_edge, !prof !40

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %24 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %26 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i.i, align 4
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %check, align 2
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  %call30 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef 0, i32 noundef %30, i32 noundef 0) #6
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i, align 4
  %add.i.i.i = add i32 %32, 17
  %conv.i.i82 = zext i16 %27 to i32
  %add.ptr.i.i83 = getelementptr i8, ptr %23, i32 %conv.i.i82
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i83, i32 0, i32 9
  %33 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i83, i32 0, i32 8
  %35 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saddr, align 4
  %37 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call30, i32 %34, i32 %36, i32 %add.i.i.i) #9, !srcloc !45
  %38 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %37) #9, !srcloc !38
  %neg.i.i.i = xor i32 %38, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i.i)
  %cmp36 = icmp eq i16 %conv.i.i.i, 0
  %spec.select = select i1 %cmp36, i16 -1, i16 %conv.i.i.i
  %39 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %spec.select, ptr %check, align 2
  %40 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load41 = load i16, ptr %encapsulation, align 8
  %bf.clear42 = and i16 %bf.load41, -1537
  %bf.set = or i16 %bf.clear42, 512
  store i16 %bf.set, ptr %encapsulation, align 8
  %41 = and i16 %bf.load41, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool47.not = icmp eq i16 %41, 0
  %or = or i64 %features, 8
  %features.addr.0 = select i1 %tobool47.not, i64 %or, i64 %features
  %call50 = tail call ptr @skb_segment(ptr noundef %skb, i64 noundef %features.addr.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end19.cleanup_crit_edge, %if.then17, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call18, %if.then17 ], [ %call3, %if.then ], [ inttoptr (i32 -22 to ptr), %if.end19.cleanup_crit_edge ], [ %call50, %if.end26 ], [ inttoptr (i32 -22 to ptr), %pskb_may_pull.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udp4_gro_receive(ptr noundef %head, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i.i, align 8
  %add.i = add i32 %1, 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %frag0_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frag0_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp.i.not.i = icmp ult i32 %3, %add.i
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.udp_gro_udphdr.exit_crit_edge

entry.udp_gro_udphdr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp_gro_udphdr.exit

if.then.i:                                        ; preds = %entry
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  %sub.i.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i.i)
  %cmp.not.i.i.i = icmp ugt i32 %add.i, %sub.i.i.i.i
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then.i.if.end.i.i_crit_edge, !prof !36

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i)
  %cmp3.i.i.i = icmp ult i32 %5, %add.i
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.flush41_crit_edge, label %pskb_may_pull.exit.i.i, !prof !36

if.end.i.i.i.flush41_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flush41

pskb_may_pull.exit.i.i:                           ; preds = %if.end.i.i.i
  %sub.i.i.i = sub i32 %add.i, %sub.i.i.i.i
  %call13.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i.i) #6
  %cmp14.i.not.i.i = icmp eq ptr %call13.i.i.i, null
  br i1 %cmp14.i.not.i.i, label %pskb_may_pull.exit.i.i.flush41_crit_edge, label %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge

pskb_may_pull.exit.i.i.if.end.i.i_crit_edge:      ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

pskb_may_pull.exit.i.i.flush41_crit_edge:         ; preds = %pskb_may_pull.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flush41

if.end.i.i:                                       ; preds = %pskb_may_pull.exit.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %8 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cb.i.i, align 8
  %9 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %frag0_len.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %udp_gro_udphdr.exit

udp_gro_udphdr.exit:                              ; preds = %if.end.i.i, %entry.udp_gro_udphdr.exit_crit_edge
  %.pn.in = phi ptr [ %cb.i.i, %entry.udp_gro_udphdr.exit_crit_edge ], [ %data.i.i, %if.end.i.i ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn.in, align 4
  %uh.0.i = getelementptr i8, ptr %.pn, i32 %1
  %tobool.not = icmp eq ptr %uh.0.i, null
  br i1 %tobool.not, label %udp_gro_udphdr.exit.flush41_crit_edge, label %if.end, !prof !36

udp_gro_udphdr.exit.flush41_crit_edge:            ; preds = %udp_gro_udphdr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %flush41

if.end:                                           ; preds = %udp_gro_udphdr.exit
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not = icmp eq i16 %12, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.skip_crit_edge

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end6:                                          ; preds = %if.end
  %check = getelementptr inbounds %struct.udphdr, ptr %uh.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %check, align 2
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %16 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %16)
  %cmp.not.i = icmp eq i16 %16, 1536
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end6.land.lhs.true.i_crit_edge

if.end6.land.lhs.true.i_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

lor.lhs.false.i:                                  ; preds = %if.end6
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  %conv.i.i = zext i16 %19 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %24 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %25)
  %cmp3.i = icmp ult i32 %sub.i.i, %25
  br i1 %cmp3.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %lor.lhs.false.i.if.then13_crit_edge

lor.lhs.false.i.if.then13_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i.land.lhs.true.i_crit_edge, %if.end6.land.lhs.true.i_crit_edge
  %gro_remcsum_start.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %26 = ptrtoint ptr %gro_remcsum_start.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gro_remcsum_start.i.i, align 2
  %conv.i1.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv.i1.i)
  %cmp.i.i = icmp eq i32 %29, %conv.i1.i
  br i1 %cmp.i.i, label %land.lhs.true.i.if.then13_crit_edge, label %__skb_gro_checksum_validate_needed.exit

land.lhs.true.i.if.then13_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

__skb_gro_checksum_validate_needed.exit:          ; preds = %land.lhs.true.i
  %csum_cnt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %30 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load7.i = load i16, ptr %csum_cnt.i, align 2
  %31 = and i16 %bf.load7.i, 7168
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp12.i = icmp eq i16 %31, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool15.i = icmp ne i16 %14, 0
  %spec.select.i = and i1 %tobool15.i, %cmp12.i
  br i1 %spec.select.i, label %if.then8, label %__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge

__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge: ; preds = %__skb_gro_checksum_validate_needed.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then8:                                         ; preds = %__skb_gro_checksum_validate_needed.exit
  %32 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then8.inet_gro_compute_pseudo.exit_crit_edge

if.then8.inet_gro_compute_pseudo.exit_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_gro_compute_pseudo.exit

cond.false.i.i:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i67, align 4
  br label %inet_gro_compute_pseudo.exit

inet_gro_compute_pseudo.exit:                     ; preds = %cond.false.i.i, %if.then8.inet_gro_compute_pseudo.exit_crit_edge
  %cond.i.i = phi ptr [ %35, %cond.false.i.i ], [ %33, %if.then8.inet_gro_compute_pseudo.exit_crit_edge ]
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %39 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %37, i32 %conv.i.i.i.i
  %data.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i68, align 4
  %sub.ptr.lhs.cast.i.i.i69 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i70 = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i69, %sub.ptr.rhs.cast.i.i.i70
  %add.ptr.i.i71 = getelementptr i8, ptr %cond.i.i, i32 %sub.ptr.sub.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i71, i32 0, i32 8
  %42 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i71, i32 0, i32 9
  %44 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %daddr.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %46 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i, align 4
  %48 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_offset.i.i, align 8
  %sub.i.i73 = add i32 %47, 17
  %add.i.i = sub i32 %sub.i.i73, %49
  %50 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %45, i32 %43, i32 %add.i.i) #9, !srcloc !46
  %51 = ptrtoint ptr %csum_cnt.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %bf.load.i74 = load i16, ptr %csum_cnt.i, align 2
  %52 = and i16 %bf.load.i74, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i = icmp eq i16 %52, 0
  br i1 %tobool.not.i, label %inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge, label %land.lhs.true.i78

inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %inet_gro_compute_pseudo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i78:                                ; preds = %inet_gro_compute_pseudo.exit
  %csum.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %53 = ptrtoint ptr %csum.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %csum.i, align 4
  %add.i.i75 = add i32 %54, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i75, i32 %54)
  %cmp.i.i76 = icmp ult i32 %add.i.i75, %54
  %conv.i.i77 = zext i1 %cmp.i.i76 to i32
  %add1.i.i = add i32 %add.i.i75, %conv.i.i77
  %55 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i) #9, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %55)
  %tobool4.not.i = icmp ugt i32 %55, -65537
  br i1 %tobool4.not.i, label %land.lhs.true.i78.if.then13_crit_edge, label %land.lhs.true.i78.__skb_gro_checksum_validate_complete.exit_crit_edge

land.lhs.true.i78.__skb_gro_checksum_validate_complete.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %__skb_gro_checksum_validate_complete.exit

land.lhs.true.i78.if.then13_crit_edge:            ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

__skb_gro_checksum_validate_complete.exit:        ; preds = %land.lhs.true.i78.__skb_gro_checksum_validate_complete.exit_crit_edge, %inet_gro_compute_pseudo.exit.__skb_gro_checksum_validate_complete.exit_crit_edge
  %csum7.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %56 = ptrtoint ptr %csum7.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %50, ptr %csum7.i, align 4
  %call8.i = tail call zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call8.i)
  %phi.cmp = icmp eq i16 %call8.i, 0
  br i1 %phi.cmp, label %__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge, label %__skb_gro_checksum_validate_complete.exit.flush41_crit_edge

__skb_gro_checksum_validate_complete.exit.flush41_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %flush41

__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge: ; preds = %__skb_gro_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %__skb_gro_checksum_validate_complete.exit.if.then13_crit_edge, %land.lhs.true.i78.if.then13_crit_edge, %__skb_gro_checksum_validate_needed.exit.if.then13_crit_edge, %land.lhs.true.i.if.then13_crit_edge, %lor.lhs.false.i.if.then13_crit_edge
  %csum_cnt.i80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %57 = ptrtoint ptr %csum_cnt.i80 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i81 = load i16, ptr %csum_cnt.i80, align 2
  %bf.lshr.i = lshr i16 %bf.load.i81, 10
  %58 = trunc i16 %bf.lshr.i to i8
  %bf.cast.i = and i8 %58, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast.i)
  %cmp.not.i82 = icmp eq i8 %bf.cast.i, 0
  br i1 %cmp.not.i82, label %if.else.i, label %if.then.i83

if.then.i83:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add nuw nsw i8 %58, 7
  %59 = and i8 %dec.i, 7
  %bf.value.i = zext i8 %59 to i16
  %bf.shl.i = shl nuw nsw i16 %bf.value.i, 10
  %bf.clear10.i = and i16 %bf.load.i81, -7169
  %bf.set.i = or i16 %bf.shl.i, %bf.clear10.i
  %60 = ptrtoint ptr %csum_cnt.i80 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %bf.set.i, ptr %csum_cnt.i80, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

if.else.i:                                        ; preds = %if.then13
  %61 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i.i = load i16, ptr %ip_summed.i, align 8
  %bf.lshr.i.i = lshr i16 %bf.load.i.i, 9
  %trunc.i.i = trunc i16 %bf.lshr.i.i to i2
  %62 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge [
    i2 1, label %if.then.i.i
    i2 0, label %if.then25.i.i
  ]

if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_incr_csum_unnecessary.exit

if.then.i.i:                                      ; preds = %if.else.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %63 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %64 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %64)
  %cmp7.not.i.i = icmp eq i32 %64, 805306368
  br i1 %cmp7.not.i.i, label %if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, label %if.then9.i.i

if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_incr_csum_unnecessary.exit

if.then9.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = add i32 %bf.load2.i.i, 268435456
  %bf.shl.i.i = and i32 %65, 805306368
  %bf.clear16.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear16.i.i
  %66 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %bf.set.i.i, ptr %csum_level.i.i, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

if.then25.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear28.i.i = and i16 %bf.load.i.i, -1537
  %bf.set29.i.i = or i16 %bf.clear28.i.i, 512
  %67 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %bf.set29.i.i, ptr %ip_summed.i, align 8
  %csum_level30.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %68 = ptrtoint ptr %csum_level30.i.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load31.i.i = load i32, ptr %csum_level30.i.i, align 2
  %bf.clear32.i.i = and i32 %bf.load31.i.i, -805306369
  store i32 %bf.clear32.i.i, ptr %csum_level30.i.i, align 2
  br label %skb_gro_incr_csum_unnecessary.exit

skb_gro_incr_csum_unnecessary.exit:               ; preds = %if.then25.i.i, %if.then9.i.i, %if.then.i.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, %if.else.i.skb_gro_incr_csum_unnecessary.exit_crit_edge, %if.then.i83
  %69 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool18.not = icmp eq i16 %70, 0
  br i1 %tobool18.not, label %skb_gro_incr_csum_unnecessary.exit.skip_crit_edge, label %do.body

skb_gro_incr_csum_unnecessary.exit.skip_crit_edge: ; preds = %skb_gro_incr_csum_unnecessary.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

do.body:                                          ; preds = %skb_gro_incr_csum_unnecessary.exit
  %71 = ptrtoint ptr %csum_cnt.i80 to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load.i86 = load i16, ptr %csum_cnt.i80, align 2
  %72 = and i16 %bf.load.i86, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %if.then21, label %do.body.skip_crit_edge

do.body.skip_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.then21:                                        ; preds = %do.body
  %74 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i88 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i88, label %cond.false.i.i90, label %if.then21.inet_gro_compute_pseudo.exit107_crit_edge

if.then21.inet_gro_compute_pseudo.exit107_crit_edge: ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_gro_compute_pseudo.exit107

cond.false.i.i90:                                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i89 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i89 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i89, align 4
  br label %inet_gro_compute_pseudo.exit107

inet_gro_compute_pseudo.exit107:                  ; preds = %cond.false.i.i90, %if.then21.inet_gro_compute_pseudo.exit107_crit_edge
  %cond.i.i91 = phi ptr [ %77, %cond.false.i.i90 ], [ %75, %if.then21.inet_gro_compute_pseudo.exit107_crit_edge ]
  %head.i.i.i.i92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %78 = ptrtoint ptr %head.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %head.i.i.i.i92, align 8
  %network_header.i.i.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %80 = ptrtoint ptr %network_header.i.i.i.i93 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %network_header.i.i.i.i93, align 4
  %conv.i.i.i.i94 = zext i16 %81 to i32
  %add.ptr.i.i.i.i95 = getelementptr i8, ptr %79, i32 %conv.i.i.i.i94
  %data.i.i.i96 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i96, align 4
  %sub.ptr.lhs.cast.i.i.i97 = ptrtoint ptr %add.ptr.i.i.i.i95 to i32
  %sub.ptr.rhs.cast.i.i.i98 = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i.i.i99 = sub i32 %sub.ptr.lhs.cast.i.i.i97, %sub.ptr.rhs.cast.i.i.i98
  %add.ptr.i.i100 = getelementptr i8, ptr %cond.i.i91, i32 %sub.ptr.sub.i.i.i99
  %saddr.i101 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i100, i32 0, i32 8
  %84 = ptrtoint ptr %saddr.i101 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %saddr.i101, align 4
  %daddr.i102 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i100, i32 0, i32 9
  %86 = ptrtoint ptr %daddr.i102 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %daddr.i102, align 4
  %len.i.i103 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %88 = ptrtoint ptr %len.i.i103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i.i103, align 4
  %90 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_offset.i.i, align 8
  %sub.i.i105 = add i32 %89, 17
  %add.i.i106 = sub i32 %sub.i.i105, %91
  %92 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %87, i32 %85, i32 %add.i.i106) #9, !srcloc !46
  %neg.i = xor i32 %92, -1
  %csum.i108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %93 = ptrtoint ptr %csum.i108 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %neg.i, ptr %csum.i108, align 4
  %bf.set.i111 = or i16 %bf.load.i86, 8192
  %94 = ptrtoint ptr %csum_cnt.i80 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %bf.set.i111, ptr %csum_cnt.i80, align 2
  br label %skip

skip:                                             ; preds = %inet_gro_compute_pseudo.exit107, %do.body.skip_crit_edge, %skb_gro_incr_csum_unnecessary.exit.skip_crit_edge, %if.end.skip_crit_edge
  %is_ipv6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %95 = ptrtoint ptr %is_ipv6 to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load = load i16, ptr %is_ipv6, align 2
  %bf.clear = and i16 %bf.load, -129
  store i16 %bf.clear, ptr %is_ipv6, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @udp_encap_needed_key, ptr blockaddress(@udp4_gro_receive, %if.then37)) #6
          to label %if.end39 [label %if.then37], !srcloc !47

if.then37:                                        ; preds = %skip
  %96 = ptrtoint ptr %uh.0.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %uh.0.i, align 2
  %dest = getelementptr inbounds %struct.udphdr, ptr %uh.0.i, i32 0, i32 1
  %98 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %dest, align 2
  %100 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cb.i.i, align 8
  %tobool.not.i.i113 = icmp eq ptr %101, null
  br i1 %tobool.not.i.i113, label %cond.false.i.i115, label %if.then37.skb_gro_network_header.exit.i_crit_edge

if.then37.skb_gro_network_header.exit.i_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_gro_network_header.exit.i

cond.false.i.i115:                                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %102 = ptrtoint ptr %data.i.i114 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i114, align 4
  br label %skb_gro_network_header.exit.i

skb_gro_network_header.exit.i:                    ; preds = %cond.false.i.i115, %if.then37.skb_gro_network_header.exit.i_crit_edge
  %cond.i.i116 = phi ptr [ %103, %cond.false.i.i115 ], [ %101, %if.then37.skb_gro_network_header.exit.i_crit_edge ]
  %head.i.i.i.i117 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %104 = ptrtoint ptr %head.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i.i.i117, align 8
  %network_header.i.i.i.i118 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %106 = ptrtoint ptr %network_header.i.i.i.i118 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %network_header.i.i.i.i118, align 4
  %conv.i.i.i.i119 = zext i16 %107 to i32
  %add.ptr.i.i.i.i120 = getelementptr i8, ptr %105, i32 %conv.i.i.i.i119
  %data.i.i.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %108 = ptrtoint ptr %data.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %data.i.i.i121, align 4
  %sub.ptr.lhs.cast.i.i.i122 = ptrtoint ptr %add.ptr.i.i.i.i120 to i32
  %sub.ptr.rhs.cast.i.i.i123 = ptrtoint ptr %109 to i32
  %sub.ptr.sub.i.i.i124 = sub i32 %sub.ptr.lhs.cast.i.i.i122, %sub.ptr.rhs.cast.i.i.i123
  %add.ptr.i.i125 = getelementptr i8, ptr %cond.i.i116, i32 %sub.ptr.sub.i.i.i124
  %110 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %112, i32 0, i32 127
  %113 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %nd_net.i.i, align 4
  %saddr.i126 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i125, i32 0, i32 8
  %115 = ptrtoint ptr %saddr.i126 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %saddr.i126, align 4
  %daddr.i127 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i125, i32 0, i32 9
  %117 = ptrtoint ptr %daddr.i127 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %daddr.i127, align 4
  %119 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 8
  %and.i.i.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %skb_gro_network_header.exit.i.skb_rtable.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

skb_gro_network_header.exit.i.skb_rtable.exit.i.i_crit_edge: ; preds = %skb_gro_network_header.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_rtable.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %skb_gro_network_header.exit.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_rtable.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_rtable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_rtable.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_rtable.exit.i.i_crit_edge, !prof !36

land.rhs.i.i.i.i.skb_rtable.exit.i.i_crit_edge:   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_rtable.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #6
  br label %skb_rtable.exit.i.i

skb_rtable.exit.i.i:                              ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_rtable.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_rtable.exit.i.i_crit_edge, %skb_gro_network_header.exit.i.skb_rtable.exit.i.i_crit_edge
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %119, align 8
  %and25.i.i.i.i = and i32 %123, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i.i)
  %tobool.not.i9.i = icmp eq i32 %and25.i.i.i.i, 0
  br i1 %tobool.not.i9.i, label %skb_rtable.exit.i.i.if.end.i.i128_crit_edge, label %land.lhs.true.i.i

skb_rtable.exit.i.i.if.end.i.i128_crit_edge:      ; preds = %skb_rtable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i128

land.lhs.true.i.i:                                ; preds = %skb_rtable.exit.i.i
  %124 = inttoptr i32 %and25.i.i.i.i to ptr
  %rt_iif.i.i = getelementptr inbounds %struct.rtable, ptr %124, i32 0, i32 6
  %125 = ptrtoint ptr %rt_iif.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %rt_iif.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool1.not.i.i = icmp eq i32 %126, 0
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.if.end.i.i128_crit_edge, label %land.lhs.true.i.i.inet_iif.exit.i_crit_edge

land.lhs.true.i.i.inet_iif.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inet_iif.exit.i

land.lhs.true.i.i.if.end.i.i128_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i128

if.end.i.i128:                                    ; preds = %land.lhs.true.i.i.if.end.i.i128_crit_edge, %skb_rtable.exit.i.i.if.end.i.i128_crit_edge
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %127 = ptrtoint ptr %skb_iif.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %skb_iif.i.i, align 8
  br label %inet_iif.exit.i

inet_iif.exit.i:                                  ; preds = %if.end.i.i128, %land.lhs.true.i.i.inet_iif.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %128, %if.end.i.i128 ], [ %126, %land.lhs.true.i.i.inet_iif.exit.i_crit_edge ]
  %tobool.not.i10.i = icmp eq ptr %skb, null
  br i1 %tobool.not.i10.i, label %inet_iif.exit.i.udp4_gro_lookup_skb.exit_crit_edge, label %land.lhs.true.i11.i

inet_iif.exit.i.udp4_gro_lookup_skb.exit_crit_edge: ; preds = %inet_iif.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp4_gro_lookup_skb.exit

land.lhs.true.i11.i:                              ; preds = %inet_iif.exit.i
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %129 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %flags.i.i, align 4
  %131 = and i16 %130, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool.i.not.i.i = icmp eq i16 %131, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i11.i.udp4_gro_lookup_skb.exit_crit_edge, label %if.then.i.i129

land.lhs.true.i11.i.udp4_gro_lookup_skb.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %udp4_gro_lookup_skb.exit

if.then.i.i129:                                   ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cb.i.i, align 8
  br label %udp4_gro_lookup_skb.exit

udp4_gro_lookup_skb.exit:                         ; preds = %if.then.i.i129, %land.lhs.true.i11.i.udp4_gro_lookup_skb.exit_crit_edge, %inet_iif.exit.i.udp4_gro_lookup_skb.exit_crit_edge
  %retval.0.i13.i = phi i32 [ %133, %if.then.i.i129 ], [ 0, %land.lhs.true.i11.i.udp4_gro_lookup_skb.exit_crit_edge ], [ 0, %inet_iif.exit.i.udp4_gro_lookup_skb.exit_crit_edge ]
  %call4.i = tail call ptr @__udp4_lib_lookup(ptr noundef %114, i32 noundef %116, i16 noundef zeroext %97, i32 noundef %118, i16 noundef zeroext %99, i32 noundef %retval.0.i.i, i32 noundef %retval.0.i13.i, ptr noundef nonnull @udp_table, ptr noundef null) #6
  br label %if.end39

if.end39:                                         ; preds = %udp4_gro_lookup_skb.exit, %skip
  %sk.0 = phi ptr [ %call4.i, %udp4_gro_lookup_skb.exit ], [ null, %skip ]
  %call40 = tail call ptr @udp_gro_receive(ptr noundef %head, ptr noundef %skb, ptr noundef nonnull %uh.0.i, ptr noundef %sk.0)
  br label %cleanup

flush41:                                          ; preds = %__skb_gro_checksum_validate_complete.exit.flush41_crit_edge, %udp_gro_udphdr.exit.flush41_crit_edge, %pskb_may_pull.exit.i.i.flush41_crit_edge, %if.end.i.i.i.flush41_crit_edge
  %flush44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %134 = ptrtoint ptr %flush44 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %flush44, align 4
  br label %cleanup

cleanup:                                          ; preds = %flush41, %if.end39
  %retval.0 = phi ptr [ null, %flush41 ], [ %call40, %if.end39 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp4_gro_complete(ptr noundef %skb, i32 noundef %nhoff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %nhoff
  %is_flist = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %6 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %is_flist, align 2
  %7 = and i16 %bf.load, 16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %if.then, label %if.end44

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %sub = sub i32 %10, %nhoff
  %conv7 = trunc i32 %sub to i16
  %len8 = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 2
  %11 = ptrtoint ptr %len8 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv7, ptr %len8, align 2
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gso_type, align 8
  %or = or i32 %15, 393216
  store i32 %or, ptr %gso_type, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %count, align 8
  %18 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %gso_segs to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %gso_segs, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load13 = load i16, ptr %ip_summed, align 8
  %21 = and i16 %bf.load13, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %21)
  %cmp = icmp eq i16 %21, 512
  br i1 %cmp, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %22 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load20 = load i32, ptr %csum_level, align 2
  %23 = and i32 %bf.load20, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %23)
  %cmp25.not = icmp eq i32 %23, 805306368
  br i1 %cmp25.not, label %if.then19.cleanup_crit_edge, label %if.then27

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %24 = add i32 %bf.load20, 268435456
  %bf.shl = and i32 %24, 805306368
  %bf.clear34 = and i32 %bf.load20, -805306369
  %bf.set = or i32 %bf.shl, %bf.clear34
  %25 = ptrtoint ptr %csum_level to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %bf.set, ptr %csum_level, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear37 = and i16 %bf.load13, -1537
  %bf.set38 = or i16 %bf.clear37, 512
  %26 = ptrtoint ptr %ip_summed to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set38, ptr %ip_summed, align 8
  %csum_level39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %27 = ptrtoint ptr %csum_level39 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load40 = load i32, ptr %csum_level39, align 2
  %bf.clear41 = and i32 %bf.load40, -805306369
  store i32 %bf.clear41, ptr %csum_level39, align 2
  br label %cleanup

if.end44:                                         ; preds = %entry
  %check = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 3
  %28 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool45.not = icmp eq i16 %29, 0
  br i1 %tobool45.not, label %if.end44.if.end53_crit_edge, label %if.then46

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %len47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len47, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %daddr, align 4
  %sub48 = sub i32 17, %nhoff
  %add.i.i.i = add i32 %sub48, %31
  %36 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %35, i32 %33, i32 %add.i.i.i) #9, !srcloc !46
  %37 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %36) #9, !srcloc !38
  %neg.i.i.i = xor i32 %37, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %neg = xor i16 %conv.i.i.i, -1
  %38 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %neg, ptr %check, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.end44.if.end53_crit_edge
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %40, %nhoff
  %conv.i = trunc i32 %sub.i to i16
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 %nhoff
  %len1.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i, i32 0, i32 2
  %43 = ptrtoint ptr %len1.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %len1.i, align 2
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i, i32 0, i32 1
  %46 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dest.i, align 2
  %call.i = tail call ptr @udp4_lib_lookup_skb(ptr noundef %skb, i16 noundef zeroext %45, i16 noundef zeroext %47) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end53.if.else.i_crit_edge, label %land.lhs.true.i

if.end53.if.else.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end53
  %gro_complete.i = getelementptr inbounds %struct.udp_sock, ptr %call.i, i32 0, i32 15
  %48 = ptrtoint ptr %gro_complete.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gro_complete.i, align 32
  %tobool3.not.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %check.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i, i32 0, i32 3
  %50 = ptrtoint ptr %check.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %check.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool5.not.i = icmp eq i16 %51, 0
  %cond.i = select i1 %tobool5.not.i, i32 1024, i32 2048
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %52 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %end.i.i, align 4
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond.i, ptr %gso_type.i, align 8
  %55 = ptrtoint ptr %is_flist to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i = load i16, ptr %is_flist, align 2
  %bf.clear.i = and i16 %bf.load.i, -16385
  store i16 %bf.clear.i, ptr %is_flist, align 2
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %56 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load7.i = load i16, ptr %encapsulation.i, align 8
  %bf.set9.i = or i16 %bf.load7.i, 4
  store i16 %bf.set9.i, ptr %encapsulation.i, align 8
  %57 = ptrtoint ptr %gro_complete.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %gro_complete.i, align 32
  %add.i = add i32 %nhoff, 8
  %call12.i = tail call i32 %58(ptr noundef nonnull %call.i, ptr noundef %skb, i32 noundef %add.i) #6
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end53.if.else.i_crit_edge
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %59 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %transport_header.i.i.i.i, align 2
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %60, ptr %61, align 8
  %csum_offset.i.i = getelementptr inbounds %struct.anon.132, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %csum_offset.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 6, ptr %csum_offset.i.i, align 2
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %64 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.set.i.i = or i16 %bf.load.i.i, 1536
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %count.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %65 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %count.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %67 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i.i, align 4
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %66, ptr %gso_segs.i.i, align 2
  %70 = load ptr, ptr %end.i.i.i, align 4
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %gso_type.i.i, align 8
  %or.i.i = or i32 %72, 131072
  store i32 %or.i.i, ptr %gso_type.i.i, align 8
  %bf.load3.i.i = load i16, ptr %ip_summed.i.i, align 8
  %73 = and i16 %bf.load3.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i, label %if.else.i.if.end.i_crit_edge, label %if.then.i.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %transport_header.i.i.i.i, align 2
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %76 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %inner_transport_header.i.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.else.i.if.end.i_crit_edge, %if.then.i
  %err.0.i = phi i32 [ %call12.i, %if.then.i ], [ 0, %if.else.i.if.end.i_crit_edge ], [ 0, %if.then.i.i ]
  %remcsum_offload.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %77 = ptrtoint ptr %remcsum_offload.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %bf.load14.i = load i32, ptr %remcsum_offload.i, align 2
  %78 = and i32 %bf.load14.i, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool16.not.i = icmp eq i32 %78, 0
  br i1 %tobool16.not.i, label %if.end.i.cleanup_crit_edge, label %if.then17.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %end.i39.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %79 = ptrtoint ptr %end.i39.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i39.i, align 4
  %gso_type19.i = getelementptr inbounds %struct.skb_shared_info, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %gso_type19.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %gso_type19.i, align 8
  %or.i = or i32 %82, 8192
  store i32 %or.i, ptr %gso_type19.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17.i, %if.end.i.cleanup_crit_edge, %if.else, %if.then27, %if.then19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.else ], [ %err.0.i, %if.end.i.cleanup_crit_edge ], [ %err.0.i, %if.then17.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udp4_lib_lookup(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udp4_lib_lookup_skb(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/ipv4/udp_offload.c", i32 172, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_skb_udp_tunnel_segment, !5, !"__ksymtab_skb_udp_tunnel_segment", i1 false, i1 false}
!5 = !{!"../net/ipv4/udp_offload.c", i32 189, i32 1}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/ipv4/udp_offload.c", i32 362, i32 4}
!8 = !{ptr @__ksymtab___udp_gso_segment, !9, !"__ksymtab___udp_gso_segment", i1 false, i1 false}
!9 = !{!"../net/ipv4/udp_offload.c", i32 366, i32 1}
!10 = !{ptr @__ksymtab_udp_gro_receive, !11, !"__ksymtab_udp_gro_receive", i1 false, i1 false}
!11 = !{!"../net/ipv4/udp_offload.c", i32 597, i32 1}
!12 = !{ptr @__ksymtab_udp_gro_complete, !13, !"__ksymtab_udp_gro_complete", i1 false, i1 false}
!13 = !{!"../net/ipv4/udp_offload.c", i32 696, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @udpv4_offload, !24, !"udpv4_offload", i1 false, i1 false}
!24 = !{!"../net/ipv4/udp_offload.c", i32 728, i32 33}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2149662895}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2154582057, i64 2154582545, i64 2154582094, i64 2154582150, i64 2154582184, i64 2154582208, i64 2154582249, i64 2154582270, i64 2154582298, i64 2154582332}
!38 = !{i64 6467169}
!39 = !{i64 2149663161}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148367788, i64 2148367820, i64 2148367849, i64 2148367883, i64 2148367914, i64 2148367937}
!42 = !{i64 2148455789}
!43 = !{i64 2148370253, i64 2148370285, i64 2148370314, i64 2148370348, i64 2148370379, i64 2148370402}
!44 = !{i64 2150537442}
!45 = !{i64 6468522, i64 6468562, i64 6468590, i64 6468635}
!46 = !{i64 6468271, i64 6468312, i64 6468357}
!47 = !{i64 2148848073, i64 2148848078, i64 2148848091, i64 2148848135, i64 2148848169, i64 2148848190}
