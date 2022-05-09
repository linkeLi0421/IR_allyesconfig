; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_set_rbtree.c_pt.bc'
source_filename = "../net/netfilter/nft_set_rbtree.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_set_type = type { %struct.nft_set_ops, i32 }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.nft_set_elem = type { %union.anon.121, %union.anon.122, %union.anon.123, ptr, [4 x i8] }
%union.anon.121 = type { [16 x i32] }
%union.anon.122 = type { [16 x i32] }
%union.anon.123 = type { [16 x i32] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.38, i32, %struct.spinlock }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, ptr }
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
%struct.nft_rbtree_elem = type { %struct.rb_node, %struct.nft_set_ext }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_set_iter = type { i8, i32, i32, i32, ptr }
%struct.nft_set_desc = type { i32, i32, i32, [16 x i8], i8, i8 }
%struct.nft_set_estimate = type { i64, i32, i32 }
%struct.nft_set_gc_batch_head = type { %struct.callback_head, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.nft_set_gc_batch = type { %struct.nft_set_gc_batch_head, [1020 x ptr] }

@nft_set_rbtree_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_rbtree_lookup, ptr null, ptr null, ptr @nft_rbtree_insert, ptr @nft_rbtree_activate, ptr @nft_rbtree_deactivate, ptr @nft_rbtree_flush, ptr @nft_rbtree_remove, ptr @nft_rbtree_walk, ptr @nft_rbtree_get, ptr @nft_rbtree_privsize, ptr @nft_rbtree_estimate, ptr @nft_rbtree_init, ptr @nft_rbtree_destroy, ptr null, i32 12 }, i32 92 }, [60 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nft_rbtree_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@nft_rbtree_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@nft_rbtree_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&priv->gc_work)->work)\00", [53 x i8] zeroinitializer }, align 32
@nft_rbtree_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&priv->gc_work)->timer\00", [39 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"nft_set_rbtree_type\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 614, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 278, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 569, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 570, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [34 x i8] c"../net/netfilter/nft_set_rbtree.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 573, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @nft_set_rbtree_type, ptr @.str, ptr @nft_rbtree_init.__key, ptr @.str.1, ptr @nft_rbtree_init.__key.2, ptr @.str.3, ptr @nft_rbtree_init.__key.4, ptr @.str.5, ptr @nft_rbtree_init.__key.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_rbtree_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rbtree_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rbtree_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rbtree_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_rbtree_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rbtree_lookup(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %count)
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count, align 4
  %and76 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool.not77 = icmp eq i32 %and76, 0
  br i1 %tobool.not77, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !26
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa75 = phi i32 [ %1, %entry.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !27
  %call18 = tail call fastcc zeroext i1 @__nft_rbtree_lookup(ptr noundef %net, ptr noundef %set, ptr noundef %key, ptr noundef %ext, i32 noundef %.lcssa75)
  br i1 %call18, label %while.end.cleanup_crit_edge, label %lor.lhs.false

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !28
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %.lcssa75)
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa75
  br i1 %cmp.i.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %count)
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %count, align 4
  %and3378 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3378)
  %tobool34.not79 = icmp eq i32 %and3378, 0
  br i1 %tobool34.not79, label %if.end.while.end45_crit_edge, label %if.end.do.end40_crit_edge

if.end.do.end40_crit_edge:                        ; preds = %if.end
  br label %do.end40

if.end.while.end45_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end45

do.end40:                                         ; preds = %do.end40.do.end40_crit_edge, %if.end.do.end40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !29
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !30
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %count, align 4
  %and33 = and i32 %9, 1
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end40.while.end45_crit_edge, label %do.end40.do.end40_crit_edge

do.end40.do.end40_crit_edge:                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end40.while.end45_crit_edge:                   ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end45

while.end45:                                      ; preds = %do.end40.while.end45_crit_edge, %if.end.while.end45_crit_edge
  %.lcssa = phi i32 [ %7, %if.end.while.end45_crit_edge ], [ %9, %do.end40.while.end45_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !31
  %call54 = tail call fastcc zeroext i1 @__nft_rbtree_lookup(ptr noundef %net, ptr noundef %set, ptr noundef %key, ptr noundef %ext, i32 noundef %.lcssa)
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end45, %lor.lhs.false.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %call54, %while.end45 ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ true, %while.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rbtree_insert(ptr nocapture noundef readonly %net, ptr noundef %set, ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #10
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.__seqprop_rwlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_rwlock_assert.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 80
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %4, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, !prof !32

land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_rwlock_assert.exit

__seqprop_rwlock_assert.exit:                     ; preds = %do.end.i, %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, %entry.__seqprop_rwlock_assert.exit_crit_edge
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  %dep_map.i.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 52
  %7 = tail call ptr @llvm.returnaddress(i32 0) #10
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %9 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i.i.i = icmp eq i8 %10, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %cmp.not402410.i = icmp eq ptr %12, null
  br i1 %cmp.not402410.i, label %__seqprop_rwlock_assert.exit.if.end128.i_crit_edge, label %while.body.lr.ph.lr.ph.i

__seqprop_rwlock_assert.exit.if.end128.i_crit_edge: ; preds = %__seqprop_rwlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128.i

while.body.lr.ph.lr.ph.i:                         ; preds = %__seqprop_rwlock_assert.exit
  %ext4.i = getelementptr inbounds %struct.nft_rbtree_elem, ptr %1, i32 0, i32 1
  %arrayidx.i.i206.i = getelementptr %struct.nft_rbtree_elem, ptr %1, i32 0, i32 1, i32 1
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %arrayidx.i.i.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %1, i32 0, i32 1, i32 1, i32 3
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %13 = phi ptr [ %12, %while.body.lr.ph.lr.ph.i ], [ %145, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %overlap.0.off0.ph413.i = phi i1 [ false, %while.body.lr.ph.lr.ph.i ], [ %overlap.0.off0.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %dup_end_right.0.off0.ph412.i = phi i1 [ false, %while.body.lr.ph.lr.ph.i ], [ %dup_end_right.0.off0.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %dup_end_left.0.off0.ph411.i = phi i1 [ false, %while.body.lr.ph.lr.ph.i ], [ %dup_end_left.0.off0.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %ext2.i57 = getelementptr inbounds %struct.nft_rbtree_elem, ptr %13, i32 0, i32 1
  %arrayidx.i.i.i58 = getelementptr %struct.nft_rbtree_elem, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i.i58 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i58, align 1
  %conv.i.i.i59 = zext i8 %15 to i32
  %add.ptr.i.i.i60 = getelementptr i8, ptr %ext2.i57, i32 %conv.i.i.i59
  %16 = ptrtoint ptr %arrayidx.i.i206.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i206.i, align 1
  %conv.i.i207.i61 = zext i8 %17 to i32
  %add.ptr.i.i208.i62 = getelementptr i8, ptr %ext4.i, i32 %conv.i.i207.i61
  %18 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %klen.i, align 2
  %conv.i63 = zext i8 %19 to i32
  %call6.i64 = tail call i32 @memcmp(ptr noundef %add.ptr.i.i.i60, ptr noundef %add.ptr.i.i208.i62, i32 noundef %conv.i63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i64)
  %cmp7.i65 = icmp slt i32 %call6.i64, 0
  br i1 %cmp7.i65, label %if.then.i.preheader, label %while.body.lr.ph.i.if.else39.i_crit_edge

while.body.lr.ph.i.if.else39.i_crit_edge:         ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39.i

if.then.i.preheader:                              ; preds = %while.body.lr.ph.i
  %rb_left.i130 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.i.i.not.i.i.i131 = icmp eq i8 %21, 0
  br i1 %tobool.i.i.not.i.i.i131, label %if.then.i.preheader.if.then10.i_crit_edge, label %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge

if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge: ; preds = %if.then.i.preheader
  br label %nft_rbtree_interval_start.exit.i

if.then.i.preheader.if.then10.i_crit_edge:        ; preds = %if.then.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

while.body.i:                                     ; preds = %while.cond.backedge.i
  %ext2.i = getelementptr inbounds %struct.nft_rbtree_elem, ptr %66, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %66, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext2.i, i32 %conv.i.i.i
  %24 = ptrtoint ptr %arrayidx.i.i206.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i206.i, align 1
  %conv.i.i207.i = zext i8 %25 to i32
  %add.ptr.i.i208.i = getelementptr i8, ptr %ext4.i, i32 %conv.i.i207.i
  %26 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %klen.i, align 2
  %conv.i = zext i8 %27 to i32
  %call6.i = tail call i32 @memcmp(ptr noundef %add.ptr.i.i.i, ptr noundef %add.ptr.i.i208.i, i32 noundef %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then.i, label %while.body.i.if.else39.i_crit_edge

while.body.i.if.else39.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else39.i

if.then.i:                                        ; preds = %while.body.i
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %tobool.i.i.not.i.i.i = icmp eq i8 %29, 0
  br i1 %tobool.i.i.not.i.i.i, label %if.then.i.if.then10.i_crit_edge, label %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge

if.then.i.nft_rbtree_interval_start.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_rbtree_interval_start.exit.i

if.then.i.if.then10.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

nft_rbtree_interval_start.exit.i:                 ; preds = %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge
  %30 = phi i8 [ %29, %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge ], [ %21, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge ]
  %rb_left.i134 = phi ptr [ %rb_left.i, %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge ], [ %rb_left.i130, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge ]
  %31 = phi ptr [ %66, %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge ], [ %13, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge ]
  %overlap.0.off0404.i66133 = phi i1 [ true, %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge ], [ %overlap.0.off0.ph413.i, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge ]
  %ext2.i67132 = phi ptr [ %ext2.i, %if.then.i.nft_rbtree_interval_start.exit.i_crit_edge ], [ %ext2.i57, %if.then.i.preheader.nft_rbtree_interval_start.exit.i_crit_edge ]
  %conv.i.i.i.i.i = zext i8 %30 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %ext4.i, i32 %conv.i.i.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i.i.i.i, align 1
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.i.i.i, label %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge, label %if.else.i

nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge: ; preds = %nft_rbtree_interval_start.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then10.i

if.then10.i:                                      ; preds = %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge, %if.then.i.if.then10.i_crit_edge, %if.then.i.preheader.if.then10.i_crit_edge
  %ext2.i67.lcssa = phi ptr [ %ext2.i57, %if.then.i.preheader.if.then10.i_crit_edge ], [ %ext2.i, %if.then.i.if.then10.i_crit_edge ], [ %ext2.i67132, %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge ]
  %overlap.0.off0404.i66.lcssa = phi i1 [ %overlap.0.off0.ph413.i, %if.then.i.preheader.if.then10.i_crit_edge ], [ true, %if.then.i.if.then10.i_crit_edge ], [ %overlap.0.off0404.i66133, %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge ]
  %.lcssa115 = phi ptr [ %13, %if.then.i.preheader.if.then10.i_crit_edge ], [ %66, %if.then.i.if.then10.i_crit_edge ], [ %31, %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge ]
  %rb_left.i.lcssa = phi ptr [ %rb_left.i130, %if.then.i.preheader.if.then10.i_crit_edge ], [ %rb_left.i, %if.then.i.if.then10.i_crit_edge ], [ %rb_left.i134, %nft_rbtree_interval_start.exit.i.if.then10.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa115, i32 0, i32 1, i32 1, i32 3
  %35 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i.i.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool.i.i.not.i.i, label %if.then10.i.if.end125.i_crit_edge, label %nft_rbtree_interval_end.exit.i

if.then10.i.if.end125.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

nft_rbtree_interval_end.exit.i:                   ; preds = %if.then10.i
  %conv.i.i.i.i = zext i8 %36 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ext2.i67.lcssa, i32 %conv.i.i.i.i
  %37 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not.i = icmp eq i8 %39, 0
  br i1 %tobool.i.not.i, label %nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge, label %land.lhs.true.i

nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true.i:                                  ; preds = %nft_rbtree_interval_end.exit.i
  %40 = ptrtoint ptr %ext2.i67.lcssa to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ext2.i67.lcssa, align 1
  %and3.i.i = and i8 %41, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i.i)
  %tobool.not.i.i = icmp eq i8 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true16.i, label %land.lhs.true.i.if.end125.i_crit_edge

land.lhs.true.i.if.end125.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %arrayidx.i.i.i209.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa115, i32 0, i32 1, i32 1, i32 5
  %42 = ptrtoint ptr %arrayidx.i.i.i209.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.i209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.i.i.not.i210.i = icmp eq i8 %43, 0
  br i1 %tobool.i.i.not.i210.i, label %land.lhs.true16.i.land.lhs.true19.i_crit_edge, label %nft_set_elem_expired.exit.i

land.lhs.true16.i.land.lhs.true19.i_crit_edge:    ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true19.i

nft_set_elem_expired.exit.i:                      ; preds = %land.lhs.true16.i
  %call1.i.i = tail call i64 @get_jiffies_64() #10
  %44 = ptrtoint ptr %arrayidx.i.i.i209.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i.i209.i, align 1
  %conv.i.i.i211.i = zext i8 %45 to i32
  %add.ptr.i.i.i212.i = getelementptr i8, ptr %ext2.i67.lcssa, i32 %conv.i.i.i211.i
  %46 = ptrtoint ptr %add.ptr.i.i.i212.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i.i.i212.i, align 8
  %sub.i.i = sub i64 %call1.i.i, %47
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i.i)
  %cmp.i.i = icmp sgt i64 %sub.i.i, -1
  br i1 %cmp.i.i, label %nft_set_elem_expired.exit.i.if.end125.i_crit_edge, label %nft_set_elem_expired.exit.i.land.lhs.true19.i_crit_edge

nft_set_elem_expired.exit.i.land.lhs.true19.i_crit_edge: ; preds = %nft_set_elem_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true19.i

nft_set_elem_expired.exit.i.if.end125.i_crit_edge: ; preds = %nft_set_elem_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true19.i:                                ; preds = %nft_set_elem_expired.exit.i.land.lhs.true19.i_crit_edge, %land.lhs.true16.i.land.lhs.true19.i_crit_edge
  %48 = ptrtoint ptr %rb_left.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rb_left.i.lcssa, align 4
  %tobool.not.i30 = icmp ne ptr %49, null
  %spec.select.i = select i1 %tobool.not.i30, i1 %overlap.0.off0404.i66.lcssa, i1 false
  br label %if.end125.i

if.else.i:                                        ; preds = %nft_rbtree_interval_start.exit.i
  br i1 %dup_end_left.0.off0.ph411.i, label %land.lhs.true23.i, label %if.else.i.if.end26.i_crit_edge

if.else.i.if.end26.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

land.lhs.true23.i:                                ; preds = %if.else.i
  %50 = ptrtoint ptr %rb_left.i134 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rb_left.i134, align 4
  %tobool24.not.i = icmp eq ptr %51, null
  br i1 %tobool24.not.i, label %land.lhs.true23.i.__nft_rbtree_insert.exit_crit_edge, label %land.lhs.true23.i.if.end26.i_crit_edge

land.lhs.true23.i.if.end26.i_crit_edge:           ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

land.lhs.true23.i.__nft_rbtree_insert.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nft_rbtree_insert.exit

if.end26.i:                                       ; preds = %land.lhs.true23.i.if.end26.i_crit_edge, %if.else.i.if.end26.i_crit_edge
  %arrayidx.i.i.i215.i = getelementptr %struct.nft_rbtree_elem, ptr %31, i32 0, i32 1, i32 1, i32 3
  %52 = ptrtoint ptr %arrayidx.i.i.i215.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i.i215.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.i.i.not.i216.i = icmp eq i8 %53, 0
  br i1 %tobool.i.i.not.i216.i, label %if.end26.i.if.end125.i_crit_edge, label %nft_rbtree_interval_end.exit222.i

if.end26.i.if.end125.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

nft_rbtree_interval_end.exit222.i:                ; preds = %if.end26.i
  %conv.i.i.i218.i = zext i8 %53 to i32
  %add.ptr.i.i.i219.i = getelementptr i8, ptr %ext2.i67132, i32 %conv.i.i.i218.i
  %54 = ptrtoint ptr %add.ptr.i.i.i219.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %add.ptr.i.i.i219.i, align 1
  %56 = and i8 %55, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.i220.not.i = icmp eq i8 %56, 0
  br i1 %tobool.i220.not.i, label %nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge, label %land.lhs.true29.i

nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true29.i:                                ; preds = %nft_rbtree_interval_end.exit222.i
  %57 = ptrtoint ptr %ext2.i67132 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %ext2.i67132, align 1
  %and3.i223.i = and i8 %58, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i223.i)
  %tobool.not.i224.i = icmp eq i8 %and3.i223.i, 0
  br i1 %tobool.not.i224.i, label %land.rhs.i31, label %land.lhs.true29.i.if.end125.i_crit_edge

land.lhs.true29.i.if.end125.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.rhs.i31:                                     ; preds = %land.lhs.true29.i
  %arrayidx.i.i.i226.i = getelementptr %struct.nft_rbtree_elem, ptr %31, i32 0, i32 1, i32 1, i32 5
  %59 = ptrtoint ptr %arrayidx.i.i.i226.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.i226.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.i.not.i227.i = icmp eq i8 %60, 0
  br i1 %tobool.i.i.not.i227.i, label %land.rhs.i31.while.cond.backedge.i_crit_edge, label %land.rhs.i234.i

land.rhs.i31.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.rhs.i234.i:                                  ; preds = %land.rhs.i31
  %call1.i229.i = tail call i64 @get_jiffies_64() #10
  %61 = ptrtoint ptr %arrayidx.i.i.i226.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i.i.i226.i, align 1
  %conv.i.i.i230.i = zext i8 %62 to i32
  %add.ptr.i.i.i231.i = getelementptr i8, ptr %ext2.i67132, i32 %conv.i.i.i230.i
  %63 = ptrtoint ptr %add.ptr.i.i.i231.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr.i.i.i231.i, align 8
  %sub.i232.i = sub i64 %call1.i229.i, %64
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i232.i)
  %cmp.i233.i = icmp sgt i64 %sub.i232.i, -1
  br i1 %cmp.i233.i, label %land.rhs.i234.i.if.end125.i_crit_edge, label %land.rhs.i234.i.while.cond.backedge.i_crit_edge

land.rhs.i234.i.while.cond.backedge.i_crit_edge:  ; preds = %land.rhs.i234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.rhs.i234.i.if.end125.i_crit_edge:            ; preds = %land.rhs.i234.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

while.cond.backedge.i:                            ; preds = %land.rhs.i234.i.while.cond.backedge.i_crit_edge, %land.rhs.i31.while.cond.backedge.i_crit_edge
  %65 = ptrtoint ptr %rb_left.i134 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rb_left.i134, align 4
  %cmp.not.i32 = icmp eq ptr %66, null
  br i1 %cmp.not.i32, label %while.cond.backedge.i.__nft_rbtree_insert.exit_crit_edge, label %while.body.i

while.cond.backedge.i.__nft_rbtree_insert.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nft_rbtree_insert.exit

if.else39.i:                                      ; preds = %while.body.i.if.else39.i_crit_edge, %while.body.lr.ph.i.if.else39.i_crit_edge
  %.lcssa = phi ptr [ %13, %while.body.lr.ph.i.if.else39.i_crit_edge ], [ %66, %while.body.i.if.else39.i_crit_edge ]
  %overlap.0.off0404.i.lcssa = phi i1 [ %overlap.0.off0.ph413.i, %while.body.lr.ph.i.if.else39.i_crit_edge ], [ true, %while.body.i.if.else39.i_crit_edge ]
  %dup_end_right.0.off0403.i.lcssa = phi i1 [ %dup_end_right.0.off0.ph412.i, %while.body.lr.ph.i.if.else39.i_crit_edge ], [ true, %while.body.i.if.else39.i_crit_edge ]
  %ext2.i.lcssa = phi ptr [ %ext2.i57, %while.body.lr.ph.i.if.else39.i_crit_edge ], [ %ext2.i, %while.body.i.if.else39.i_crit_edge ]
  %call6.i.lcssa = phi i32 [ %call6.i64, %while.body.lr.ph.i.if.else39.i_crit_edge ], [ %call6.i, %while.body.i.if.else39.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.lcssa)
  %cmp40.not.i = icmp eq i32 %call6.i.lcssa, 0
  br i1 %cmp40.not.i, label %if.else78.i, label %if.then42.i

if.then42.i:                                      ; preds = %if.else39.i
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %.lcssa, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.i.i.not.i238.i = icmp eq i8 %68, 0
  br i1 %tobool.i.i.not.i238.i, label %if.then42.i.if.else66.i_crit_edge, label %nft_rbtree_interval_end.exit244.i

if.then42.i.if.else66.i_crit_edge:                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else66.i

nft_rbtree_interval_end.exit244.i:                ; preds = %if.then42.i
  %conv.i.i.i240.i = zext i8 %68 to i32
  %add.ptr.i.i.i241.i = getelementptr i8, ptr %ext4.i, i32 %conv.i.i.i240.i
  %69 = ptrtoint ptr %add.ptr.i.i.i241.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %add.ptr.i.i.i241.i, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i242.not.i = icmp eq i8 %71, 0
  br i1 %tobool.i242.not.i, label %nft_rbtree_interval_end.exit244.i.if.else66.i_crit_edge, label %if.then44.i

nft_rbtree_interval_end.exit244.i.if.else66.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit244.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else66.i

if.then44.i:                                      ; preds = %nft_rbtree_interval_end.exit244.i
  br i1 %dup_end_right.0.off0403.i.lcssa, label %land.lhs.true47.i, label %if.then44.i.if.end50.i_crit_edge

if.then44.i.if.end50.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

land.lhs.true47.i:                                ; preds = %if.then44.i
  %72 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rb_right.i, align 4
  %tobool48.not.i = icmp eq ptr %73, null
  br i1 %tobool48.not.i, label %land.lhs.true47.i.__nft_rbtree_insert.exit_crit_edge, label %land.lhs.true47.i.if.end50.i_crit_edge

land.lhs.true47.i.if.end50.i_crit_edge:           ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

land.lhs.true47.i.__nft_rbtree_insert.exit_crit_edge: ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nft_rbtree_insert.exit

if.end50.i:                                       ; preds = %land.lhs.true47.i.if.end50.i_crit_edge, %if.then44.i.if.end50.i_crit_edge
  %arrayidx.i.i.i246.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 3
  %74 = ptrtoint ptr %arrayidx.i.i.i246.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i.i.i246.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.i.i.not.i247.i = icmp eq i8 %75, 0
  br i1 %tobool.i.i.not.i247.i, label %if.end50.i.if.end125.i_crit_edge, label %nft_rbtree_interval_end.exit253.i

if.end50.i.if.end125.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

nft_rbtree_interval_end.exit253.i:                ; preds = %if.end50.i
  %conv.i.i.i249.i = zext i8 %75 to i32
  %add.ptr.i.i.i250.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i249.i
  %76 = ptrtoint ptr %add.ptr.i.i.i250.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %add.ptr.i.i.i250.i, align 1
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.i251.not.i = icmp eq i8 %78, 0
  br i1 %tobool.i251.not.i, label %nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge, label %land.lhs.true53.i

nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit253.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true53.i:                                ; preds = %nft_rbtree_interval_end.exit253.i
  %79 = ptrtoint ptr %ext2.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %ext2.i.lcssa, align 1
  %and3.i254.i = and i8 %80, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i254.i)
  %tobool.not.i255.i = icmp eq i8 %and3.i254.i, 0
  br i1 %tobool.not.i255.i, label %land.rhs57.i, label %land.lhs.true53.i.if.end125.i_crit_edge

land.lhs.true53.i.if.end125.i_crit_edge:          ; preds = %land.lhs.true53.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.rhs57.i:                                     ; preds = %land.lhs.true53.i
  %arrayidx.i.i.i257.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 5
  %81 = ptrtoint ptr %arrayidx.i.i.i257.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.i.i.i257.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.i.i.not.i258.i = icmp eq i8 %82, 0
  br i1 %tobool.i.i.not.i258.i, label %land.rhs57.i.while.cond.outer.backedge.i_crit_edge, label %land.rhs.i265.i

land.rhs57.i.while.cond.outer.backedge.i_crit_edge: ; preds = %land.rhs57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge.i

land.rhs.i265.i:                                  ; preds = %land.rhs57.i
  %call1.i260.i = tail call i64 @get_jiffies_64() #10
  %83 = ptrtoint ptr %arrayidx.i.i.i257.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i.i257.i, align 1
  %conv.i.i.i261.i = zext i8 %84 to i32
  %add.ptr.i.i.i262.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i261.i
  %85 = ptrtoint ptr %add.ptr.i.i.i262.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %add.ptr.i.i.i262.i, align 8
  %sub.i263.i = sub i64 %call1.i260.i, %86
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i263.i)
  %cmp.i264.i = icmp sgt i64 %sub.i263.i, -1
  br i1 %cmp.i264.i, label %land.rhs.i265.i.if.end125.i_crit_edge, label %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge

land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge: ; preds = %land.rhs.i265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge.i

land.rhs.i265.i.if.end125.i_crit_edge:            ; preds = %land.rhs.i265.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.else66.i:                                      ; preds = %nft_rbtree_interval_end.exit244.i.if.else66.i_crit_edge, %if.then42.i.if.else66.i_crit_edge
  %87 = ptrtoint ptr %ext2.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %ext2.i.lcssa, align 1
  %and3.i267.i = and i8 %88, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i267.i)
  %tobool.not.i268.i = icmp eq i8 %and3.i267.i, 0
  br i1 %tobool.not.i268.i, label %land.lhs.true70.i, label %if.else66.i.if.end125.i_crit_edge

if.else66.i.if.end125.i_crit_edge:                ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true70.i:                                ; preds = %if.else66.i
  %arrayidx.i.i.i270.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 5
  %89 = ptrtoint ptr %arrayidx.i.i.i270.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i.i270.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.i.i.not.i271.i = icmp eq i8 %90, 0
  br i1 %tobool.i.i.not.i271.i, label %land.lhs.true70.i.if.then73.i_crit_edge, label %nft_set_elem_expired.exit279.i

land.lhs.true70.i.if.then73.i_crit_edge:          ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

nft_set_elem_expired.exit279.i:                   ; preds = %land.lhs.true70.i
  %call1.i273.i = tail call i64 @get_jiffies_64() #10
  %91 = ptrtoint ptr %arrayidx.i.i.i270.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.i.i270.i, align 1
  %conv.i.i.i274.i = zext i8 %92 to i32
  %add.ptr.i.i.i275.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i274.i
  %93 = ptrtoint ptr %add.ptr.i.i.i275.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.i.i.i275.i, align 8
  %sub.i276.i = sub i64 %call1.i273.i, %94
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i276.i)
  %cmp.i277.i = icmp sgt i64 %sub.i276.i, -1
  br i1 %cmp.i277.i, label %nft_set_elem_expired.exit279.i.if.end125.i_crit_edge, label %nft_set_elem_expired.exit279.i.if.then73.i_crit_edge

nft_set_elem_expired.exit279.i.if.then73.i_crit_edge: ; preds = %nft_set_elem_expired.exit279.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then73.i

nft_set_elem_expired.exit279.i.if.end125.i_crit_edge: ; preds = %nft_set_elem_expired.exit279.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.then73.i:                                      ; preds = %nft_set_elem_expired.exit279.i.if.then73.i_crit_edge, %land.lhs.true70.i.if.then73.i_crit_edge
  %arrayidx.i.i.i281.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 3
  %95 = ptrtoint ptr %arrayidx.i.i.i281.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.i281.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.i.i.not.i282.i = icmp eq i8 %96, 0
  br i1 %tobool.i.i.not.i282.i, label %if.then73.i.if.end125.i_crit_edge, label %land.rhs.i287.i

if.then73.i.if.end125.i_crit_edge:                ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.rhs.i287.i:                                  ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i284.i = zext i8 %96 to i32
  %add.ptr.i.i.i285.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i284.i
  %97 = ptrtoint ptr %add.ptr.i.i.i285.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i.i.i285.i, align 1
  %99 = and i8 %98, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.i286.i = icmp ne i8 %99, 0
  br label %if.end125.i

if.else78.i:                                      ; preds = %if.else39.i
  %arrayidx.i.i.i290.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 3
  %100 = ptrtoint ptr %arrayidx.i.i.i290.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.i290.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.i.i.not.i291.i = icmp eq i8 %101, 0
  br i1 %tobool.i.i.not.i291.i, label %if.else78.i.land.lhs.true97.i_crit_edge, label %nft_rbtree_interval_end.exit297.i

if.else78.i.land.lhs.true97.i_crit_edge:          ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i

nft_rbtree_interval_end.exit297.i:                ; preds = %if.else78.i
  %conv.i.i.i293.i = zext i8 %101 to i32
  %add.ptr.i.i.i294.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i293.i
  %102 = ptrtoint ptr %add.ptr.i.i.i294.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %add.ptr.i.i.i294.i, align 1
  %104 = and i8 %103, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i295.not.i = icmp eq i8 %104, 0
  br i1 %tobool.i295.not.i, label %nft_rbtree_interval_end.exit297.i.land.lhs.true97.i_crit_edge, label %land.lhs.true81.i

nft_rbtree_interval_end.exit297.i.land.lhs.true97.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit297.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true97.i

land.lhs.true81.i:                                ; preds = %nft_rbtree_interval_end.exit297.i
  %105 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.i.i.not.i.i299.i = icmp eq i8 %106, 0
  br i1 %tobool.i.i.not.i.i299.i, label %land.lhs.true81.i.if.then84.i_crit_edge, label %nft_rbtree_interval_start.exit305.i

land.lhs.true81.i.if.then84.i_crit_edge:          ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

nft_rbtree_interval_start.exit305.i:              ; preds = %land.lhs.true81.i
  %conv.i.i.i.i301.i = zext i8 %106 to i32
  %add.ptr.i.i.i.i302.i = getelementptr i8, ptr %ext4.i, i32 %conv.i.i.i.i301.i
  %107 = ptrtoint ptr %add.ptr.i.i.i.i302.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %add.ptr.i.i.i.i302.i, align 1
  %109 = and i8 %108, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.i.i303.i = icmp eq i8 %109, 0
  br i1 %tobool.i.i303.i, label %nft_rbtree_interval_start.exit305.i.if.then84.i_crit_edge, label %nft_rbtree_interval_start.exit305.i.if.else110.i_crit_edge

nft_rbtree_interval_start.exit305.i.if.else110.i_crit_edge: ; preds = %nft_rbtree_interval_start.exit305.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110.i

nft_rbtree_interval_start.exit305.i.if.then84.i_crit_edge: ; preds = %nft_rbtree_interval_start.exit305.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then84.i

if.then84.i:                                      ; preds = %nft_rbtree_interval_start.exit305.i.if.then84.i_crit_edge, %land.lhs.true81.i.if.then84.i_crit_edge
  %rb_left85.i = getelementptr inbounds %struct.rb_node, ptr %.lcssa, i32 0, i32 2
  %110 = ptrtoint ptr %ext2.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %ext2.i.lcssa, align 1
  %and3.i306.i = and i8 %111, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i306.i)
  %tobool.not.i307.i = icmp eq i8 %and3.i306.i, 0
  br i1 %tobool.not.i307.i, label %land.lhs.true89.i, label %if.then84.i.if.end125.i_crit_edge

if.then84.i.if.end125.i_crit_edge:                ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true89.i:                                ; preds = %if.then84.i
  %arrayidx.i.i.i309.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 5
  %112 = ptrtoint ptr %arrayidx.i.i.i309.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.i.i309.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.i.i.not.i310.i = icmp eq i8 %113, 0
  br i1 %tobool.i.i.not.i310.i, label %land.lhs.true89.i.nft_set_elem_expired.exit318.i_crit_edge, label %land.rhs.i317.i

land.lhs.true89.i.nft_set_elem_expired.exit318.i_crit_edge: ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_elem_expired.exit318.i

land.rhs.i317.i:                                  ; preds = %land.lhs.true89.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i312.i = tail call i64 @get_jiffies_64() #10
  %114 = ptrtoint ptr %arrayidx.i.i.i309.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx.i.i.i309.i, align 1
  %conv.i.i.i313.i = zext i8 %115 to i32
  %add.ptr.i.i.i314.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i313.i
  %116 = ptrtoint ptr %add.ptr.i.i.i314.i to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %add.ptr.i.i.i314.i, align 8
  %sub.i315.i = sub i64 %call1.i312.i, %117
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i315.i)
  %cmp.i316.i = icmp sgt i64 %sub.i315.i, -1
  br label %nft_set_elem_expired.exit318.i

nft_set_elem_expired.exit318.i:                   ; preds = %land.rhs.i317.i, %land.lhs.true89.i.nft_set_elem_expired.exit318.i_crit_edge
  %118 = phi i1 [ false, %land.lhs.true89.i.nft_set_elem_expired.exit318.i_crit_edge ], [ %cmp.i316.i, %land.rhs.i317.i ]
  %spec.select204.i = select i1 %118, i1 %overlap.0.off0404.i.lcssa, i1 false
  br label %if.end125.i

land.lhs.true97.i:                                ; preds = %nft_rbtree_interval_end.exit297.i.land.lhs.true97.i_crit_edge, %if.else78.i.land.lhs.true97.i_crit_edge
  %119 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.i.i.not.i329.i = icmp eq i8 %120, 0
  br i1 %tobool.i.i.not.i329.i, label %land.lhs.true97.i.if.else110.i_crit_edge, label %nft_rbtree_interval_end.exit335.i

land.lhs.true97.i.if.else110.i_crit_edge:         ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110.i

nft_rbtree_interval_end.exit335.i:                ; preds = %land.lhs.true97.i
  %conv.i.i.i331.i = zext i8 %120 to i32
  %add.ptr.i.i.i332.i = getelementptr i8, ptr %ext4.i, i32 %conv.i.i.i331.i
  %121 = ptrtoint ptr %add.ptr.i.i.i332.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %add.ptr.i.i.i332.i, align 1
  %123 = and i8 %122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.i333.not.i = icmp eq i8 %123, 0
  br i1 %tobool.i333.not.i, label %nft_rbtree_interval_end.exit335.i.if.else110.i_crit_edge, label %if.then100.i

nft_rbtree_interval_end.exit335.i.if.else110.i_crit_edge: ; preds = %nft_rbtree_interval_end.exit335.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else110.i

if.then100.i:                                     ; preds = %nft_rbtree_interval_end.exit335.i
  %rb_right101.i = getelementptr inbounds %struct.rb_node, ptr %.lcssa, i32 0, i32 1
  %124 = ptrtoint ptr %ext2.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %ext2.i.lcssa, align 1
  %and3.i336.i = and i8 %125, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i336.i)
  %tobool.not.i337.i = icmp eq i8 %and3.i336.i, 0
  br i1 %tobool.not.i337.i, label %land.lhs.true105.i, label %if.then100.i.if.end125.i_crit_edge

if.then100.i.if.end125.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

land.lhs.true105.i:                               ; preds = %if.then100.i
  %arrayidx.i.i.i339.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 5
  %126 = ptrtoint ptr %arrayidx.i.i.i339.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.i.i.i339.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.i.i.not.i340.i = icmp eq i8 %127, 0
  br i1 %tobool.i.i.not.i340.i, label %land.lhs.true105.i.nft_set_elem_expired.exit348.i_crit_edge, label %land.rhs.i347.i

land.lhs.true105.i.nft_set_elem_expired.exit348.i_crit_edge: ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_elem_expired.exit348.i

land.rhs.i347.i:                                  ; preds = %land.lhs.true105.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i342.i = tail call i64 @get_jiffies_64() #10
  %128 = ptrtoint ptr %arrayidx.i.i.i339.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i.i339.i, align 1
  %conv.i.i.i343.i = zext i8 %129 to i32
  %add.ptr.i.i.i344.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i343.i
  %130 = ptrtoint ptr %add.ptr.i.i.i344.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %add.ptr.i.i.i344.i, align 8
  %sub.i345.i = sub i64 %call1.i342.i, %131
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i345.i)
  %cmp.i346.i = icmp sgt i64 %sub.i345.i, -1
  br label %nft_set_elem_expired.exit348.i

nft_set_elem_expired.exit348.i:                   ; preds = %land.rhs.i347.i, %land.lhs.true105.i.nft_set_elem_expired.exit348.i_crit_edge
  %132 = phi i1 [ false, %land.lhs.true105.i.nft_set_elem_expired.exit348.i_crit_edge ], [ %cmp.i346.i, %land.rhs.i347.i ]
  %spec.select205.i = select i1 %132, i1 %overlap.0.off0404.i.lcssa, i1 false
  br label %if.end125.i

if.else110.i:                                     ; preds = %nft_rbtree_interval_end.exit335.i.if.else110.i_crit_edge, %land.lhs.true97.i.if.else110.i_crit_edge, %nft_rbtree_interval_start.exit305.i.if.else110.i_crit_edge
  %133 = ptrtoint ptr %ext2.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ext2.i.lcssa, align 1
  %and3.i349.i = and i8 %134, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i349.i)
  %tobool.not.i350.i = icmp eq i8 %and3.i349.i, 0
  br i1 %tobool.not.i350.i, label %land.lhs.true114.i, label %if.else110.i.if.else119.i_crit_edge

if.else110.i.if.else119.i_crit_edge:              ; preds = %if.else110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else119.i

land.lhs.true114.i:                               ; preds = %if.else110.i
  %arrayidx.i.i.i352.i = getelementptr %struct.nft_rbtree_elem, ptr %.lcssa, i32 0, i32 1, i32 1, i32 5
  %135 = ptrtoint ptr %arrayidx.i.i.i352.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i.i.i352.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.i.i.not.i353.i = icmp eq i8 %136, 0
  br i1 %tobool.i.i.not.i353.i, label %land.lhs.true114.i.if.then117.i_crit_edge, label %nft_set_elem_expired.exit361.i

land.lhs.true114.i.if.then117.i_crit_edge:        ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117.i

nft_set_elem_expired.exit361.i:                   ; preds = %land.lhs.true114.i
  %call1.i355.i = tail call i64 @get_jiffies_64() #10
  %137 = ptrtoint ptr %arrayidx.i.i.i352.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i.i.i352.i, align 1
  %conv.i.i.i356.i = zext i8 %138 to i32
  %add.ptr.i.i.i357.i = getelementptr i8, ptr %ext2.i.lcssa, i32 %conv.i.i.i356.i
  %139 = ptrtoint ptr %add.ptr.i.i.i357.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %add.ptr.i.i.i357.i, align 8
  %sub.i358.i = sub i64 %call1.i355.i, %140
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i358.i)
  %cmp.i359.i = icmp sgt i64 %sub.i358.i, -1
  br i1 %cmp.i359.i, label %nft_set_elem_expired.exit361.i.if.else119.i_crit_edge, label %nft_set_elem_expired.exit361.i.if.then117.i_crit_edge

nft_set_elem_expired.exit361.i.if.then117.i_crit_edge: ; preds = %nft_set_elem_expired.exit361.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then117.i

nft_set_elem_expired.exit361.i.if.else119.i_crit_edge: ; preds = %nft_set_elem_expired.exit361.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else119.i

if.then117.i:                                     ; preds = %nft_set_elem_expired.exit361.i.if.then117.i_crit_edge, %land.lhs.true114.i.if.then117.i_crit_edge
  %141 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %ext2.i.lcssa, ptr %ext, align 4
  br label %__nft_rbtree_insert.exit

if.else119.i:                                     ; preds = %nft_set_elem_expired.exit361.i.if.else119.i_crit_edge, %if.else110.i.if.else119.i_crit_edge
  %rb_left120.i = getelementptr inbounds %struct.rb_node, ptr %.lcssa, i32 0, i32 2
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.else119.i, %nft_set_elem_expired.exit348.i, %if.then100.i.if.end125.i_crit_edge, %nft_set_elem_expired.exit318.i, %if.then84.i.if.end125.i_crit_edge, %land.rhs.i287.i, %if.then73.i.if.end125.i_crit_edge, %nft_set_elem_expired.exit279.i.if.end125.i_crit_edge, %if.else66.i.if.end125.i_crit_edge, %land.rhs.i265.i.if.end125.i_crit_edge, %land.lhs.true53.i.if.end125.i_crit_edge, %nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge, %if.end50.i.if.end125.i_crit_edge, %land.rhs.i234.i.if.end125.i_crit_edge, %land.lhs.true29.i.if.end125.i_crit_edge, %nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge, %if.end26.i.if.end125.i_crit_edge, %land.lhs.true19.i, %nft_set_elem_expired.exit.i.if.end125.i_crit_edge, %land.lhs.true.i.if.end125.i_crit_edge, %nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge, %if.then10.i.if.end125.i_crit_edge
  %142 = phi ptr [ %.lcssa115, %nft_set_elem_expired.exit.i.if.end125.i_crit_edge ], [ %.lcssa115, %land.lhs.true.i.if.end125.i_crit_edge ], [ %.lcssa115, %nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge ], [ %.lcssa, %land.rhs.i265.i.if.end125.i_crit_edge ], [ %.lcssa, %nft_set_elem_expired.exit279.i.if.end125.i_crit_edge ], [ %.lcssa, %if.else66.i.if.end125.i_crit_edge ], [ %.lcssa, %if.then84.i.if.end125.i_crit_edge ], [ %.lcssa, %if.then100.i.if.end125.i_crit_edge ], [ %.lcssa, %if.else119.i ], [ %.lcssa115, %land.lhs.true19.i ], [ %.lcssa, %nft_set_elem_expired.exit318.i ], [ %.lcssa, %nft_set_elem_expired.exit348.i ], [ %.lcssa, %if.then73.i.if.end125.i_crit_edge ], [ %.lcssa, %land.rhs.i287.i ], [ %.lcssa115, %if.then10.i.if.end125.i_crit_edge ], [ %.lcssa, %land.lhs.true53.i.if.end125.i_crit_edge ], [ %.lcssa, %nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge ], [ %.lcssa, %if.end50.i.if.end125.i_crit_edge ], [ %31, %if.end26.i.if.end125.i_crit_edge ], [ %31, %nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge ], [ %31, %land.lhs.true29.i.if.end125.i_crit_edge ], [ %31, %land.rhs.i234.i.if.end125.i_crit_edge ]
  %p.1.i = phi ptr [ %rb_left.i.lcssa, %nft_set_elem_expired.exit.i.if.end125.i_crit_edge ], [ %rb_left.i.lcssa, %land.lhs.true.i.if.end125.i_crit_edge ], [ %rb_left.i.lcssa, %nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge ], [ %rb_right.i, %land.rhs.i265.i.if.end125.i_crit_edge ], [ %rb_right.i, %nft_set_elem_expired.exit279.i.if.end125.i_crit_edge ], [ %rb_right.i, %if.else66.i.if.end125.i_crit_edge ], [ %rb_left85.i, %if.then84.i.if.end125.i_crit_edge ], [ %rb_right101.i, %if.then100.i.if.end125.i_crit_edge ], [ %rb_left120.i, %if.else119.i ], [ %rb_left.i.lcssa, %land.lhs.true19.i ], [ %rb_left85.i, %nft_set_elem_expired.exit318.i ], [ %rb_right101.i, %nft_set_elem_expired.exit348.i ], [ %rb_right.i, %if.then73.i.if.end125.i_crit_edge ], [ %rb_right.i, %land.rhs.i287.i ], [ %rb_left.i.lcssa, %if.then10.i.if.end125.i_crit_edge ], [ %rb_right.i, %land.lhs.true53.i.if.end125.i_crit_edge ], [ %rb_right.i, %nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge ], [ %rb_right.i, %if.end50.i.if.end125.i_crit_edge ], [ %rb_left.i134, %if.end26.i.if.end125.i_crit_edge ], [ %rb_left.i134, %nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge ], [ %rb_left.i134, %land.lhs.true29.i.if.end125.i_crit_edge ], [ %rb_left.i134, %land.rhs.i234.i.if.end125.i_crit_edge ]
  %overlap.1.off0.i = phi i1 [ %overlap.0.off0404.i66.lcssa, %nft_set_elem_expired.exit.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i66.lcssa, %land.lhs.true.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i66.lcssa, %nft_rbtree_interval_end.exit.i.if.end125.i_crit_edge ], [ false, %land.rhs.i265.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i.lcssa, %nft_set_elem_expired.exit279.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i.lcssa, %if.else66.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i.lcssa, %if.then84.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i.lcssa, %if.then100.i.if.end125.i_crit_edge ], [ %overlap.0.off0404.i.lcssa, %if.else119.i ], [ %spec.select.i, %land.lhs.true19.i ], [ %spec.select204.i, %nft_set_elem_expired.exit318.i ], [ %spec.select205.i, %nft_set_elem_expired.exit348.i ], [ false, %if.then73.i.if.end125.i_crit_edge ], [ %tobool.i286.i, %land.rhs.i287.i ], [ %overlap.0.off0404.i66.lcssa, %if.then10.i.if.end125.i_crit_edge ], [ false, %land.lhs.true53.i.if.end125.i_crit_edge ], [ false, %nft_rbtree_interval_end.exit253.i.if.end125.i_crit_edge ], [ false, %if.end50.i.if.end125.i_crit_edge ], [ false, %if.end26.i.if.end125.i_crit_edge ], [ false, %nft_rbtree_interval_end.exit222.i.if.end125.i_crit_edge ], [ false, %land.lhs.true29.i.if.end125.i_crit_edge ], [ false, %land.rhs.i234.i.if.end125.i_crit_edge ]
  br label %while.cond.outer.backedge.i

while.cond.outer.backedge.i:                      ; preds = %if.end125.i, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge
  %143 = phi ptr [ %.lcssa, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge ], [ %.lcssa, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge ], [ %142, %if.end125.i ]
  %dup_end_left.0.off0.ph.be.i = phi i1 [ true, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge ], [ true, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge ], [ false, %if.end125.i ]
  %dup_end_right.0.off0.ph.be.i = phi i1 [ %dup_end_right.0.off0403.i.lcssa, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge ], [ %dup_end_right.0.off0403.i.lcssa, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge ], [ false, %if.end125.i ]
  %p.0.ph.be.i = phi ptr [ %rb_right.i, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge ], [ %rb_right.i, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge ], [ %p.1.i, %if.end125.i ]
  %overlap.0.off0.ph.be.i = phi i1 [ true, %land.rhs57.i.while.cond.outer.backedge.i_crit_edge ], [ true, %land.rhs.i265.i.while.cond.outer.backedge.i_crit_edge ], [ %overlap.1.off0.i, %if.end125.i ]
  %144 = ptrtoint ptr %p.0.ph.be.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %p.0.ph.be.i, align 4
  %cmp.not402.i = icmp eq ptr %145, null
  br i1 %cmp.not402.i, label %while.end.i, label %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge

while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

while.end.i:                                      ; preds = %while.cond.outer.backedge.i
  br i1 %overlap.0.off0.ph.be.i, label %while.end.i.__nft_rbtree_insert.exit_crit_edge, label %while.end.i.if.end128.i_crit_edge

while.end.i.if.end128.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128.i

while.end.i.__nft_rbtree_insert.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nft_rbtree_insert.exit

if.end128.i:                                      ; preds = %while.end.i.if.end128.i_crit_edge, %__seqprop_rwlock_assert.exit.if.end128.i_crit_edge
  %p.0.lcssa454.i = phi ptr [ %p.0.ph.be.i, %while.end.i.if.end128.i_crit_edge ], [ %data.i, %__seqprop_rwlock_assert.exit.if.end128.i_crit_edge ]
  %parent.0.lcssa453.i = phi ptr [ %143, %while.end.i.if.end128.i_crit_edge ], [ null, %__seqprop_rwlock_assert.exit.if.end128.i_crit_edge ]
  %146 = ptrtoint ptr %parent.0.lcssa453.i to i32
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %1, align 4
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  %148 = ptrtoint ptr %rb_right.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %rb_right.i.i, align 4
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  %149 = ptrtoint ptr %rb_left.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %rb_left.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !34
  %150 = ptrtoint ptr %p.0.lcssa454.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %1, ptr %p.0.lcssa454.i, align 4
  tail call void @rb_insert_color(ptr noundef %1, ptr noundef %data.i) #10
  br label %__nft_rbtree_insert.exit

__nft_rbtree_insert.exit:                         ; preds = %if.end128.i, %while.end.i.__nft_rbtree_insert.exit_crit_edge, %if.then117.i, %land.lhs.true47.i.__nft_rbtree_insert.exit_crit_edge, %while.cond.backedge.i.__nft_rbtree_insert.exit_crit_edge, %land.lhs.true23.i.__nft_rbtree_insert.exit_crit_edge
  %retval.0.i = phi i32 [ -17, %if.then117.i ], [ 0, %if.end128.i ], [ -39, %while.end.i.__nft_rbtree_insert.exit_crit_edge ], [ -39, %while.cond.backedge.i.__nft_rbtree_insert.exit_crit_edge ], [ -39, %land.lhs.true23.i.__nft_rbtree_insert.exit_crit_edge ], [ -39, %land.lhs.true47.i.__nft_rbtree_insert.exit_crit_edge ]
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  %151 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %count, align 4
  %inc.i.i = add i32 %152, 1
  store i32 %inc.i.i, ptr %count, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rbtree_activate(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ext = getelementptr inbounds %struct.nft_rbtree_elem, ptr %1, i32 0, i32 1
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %4 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %5
  store i8 %xor1.i, ptr %ext, align 1
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %ext) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_rbtree_deactivate(ptr noundef %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp eq i8 %1, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %parent.079 = load ptr, ptr %data.i, align 4
  %cmp.not80 = icmp eq ptr %parent.079, null
  br i1 %cmp.not80, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %3 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv1, align 8
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %5 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %klen, align 2
  %conv = zext i8 %6 to i32
  %arrayidx.i.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %4, i32 0, i32 1, i32 1, i32 3
  %ext.i.i = getelementptr inbounds %struct.nft_rbtree_elem, ptr %4, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %parent.081 = phi ptr [ %parent.079, %while.body.lr.ph ], [ %parent.0, %while.cond.backedge.while.body_crit_edge ]
  %ext = getelementptr inbounds %struct.nft_rbtree_elem, ptr %parent.081, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_rbtree_elem, ptr %parent.081, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %call4 = tail call i32 @memcmp(ptr noundef %add.ptr.i.i, ptr noundef %elem, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %parent.081, i32 0, i32 2
  br label %while.cond.backedge

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp7.not = icmp eq i32 %call4, 0
  br i1 %cmp7.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %parent.081, i32 0, i32 1
  br label %while.cond.backedge

if.else10:                                        ; preds = %if.else
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %parent.081, i32 0, i32 1, i32 1, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.i.not.i = icmp eq i8 %10, 0
  br i1 %tobool.i.i.not.i, label %if.else10.land.lhs.true20_crit_edge, label %nft_rbtree_interval_end.exit

if.else10.land.lhs.true20_crit_edge:              ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

nft_rbtree_interval_end.exit:                     ; preds = %if.else10
  %conv.i.i.i = zext i8 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %11 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i.i, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.not = icmp eq i8 %13, 0
  br i1 %tobool.i.not, label %nft_rbtree_interval_end.exit.nft_rbtree_interval_start.exit64_crit_edge, label %land.lhs.true

nft_rbtree_interval_end.exit.nft_rbtree_interval_start.exit64_crit_edge: ; preds = %nft_rbtree_interval_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_rbtree_interval_start.exit64

land.lhs.true:                                    ; preds = %nft_rbtree_interval_end.exit
  %14 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.i.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool.i.i.not.i.i, label %land.lhs.true.if.then15_crit_edge, label %nft_rbtree_interval_start.exit

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

nft_rbtree_interval_start.exit:                   ; preds = %land.lhs.true
  %conv.i.i.i.i = zext i8 %15 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ext.i.i, i32 %conv.i.i.i.i
  %16 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.i = icmp eq i8 %18, 0
  br i1 %tobool.i.i, label %nft_rbtree_interval_start.exit.if.then15_crit_edge, label %nft_rbtree_interval_start.exit.nft_rbtree_interval_start.exit64_crit_edge

nft_rbtree_interval_start.exit.nft_rbtree_interval_start.exit64_crit_edge: ; preds = %nft_rbtree_interval_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_rbtree_interval_start.exit64

nft_rbtree_interval_start.exit.if.then15_crit_edge: ; preds = %nft_rbtree_interval_start.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15

if.then15:                                        ; preds = %nft_rbtree_interval_start.exit.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %rb_left16 = getelementptr inbounds %struct.rb_node, ptr %parent.081, i32 0, i32 2
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then28, %if.then23, %if.then15, %if.then9, %if.then
  %parent.0.in.be = phi ptr [ %rb_left16, %if.then15 ], [ %rb_right24, %if.then23 ], [ %rb_left29, %if.then28 ], [ %rb_left, %if.then ], [ %rb_right, %if.then9 ]
  %19 = ptrtoint ptr %parent.0.in.be to i32
  call void @__asan_load4_noabort(i32 %19)
  %parent.0 = load ptr, ptr %parent.0.in.be, align 4
  %cmp.not = icmp eq ptr %parent.0, null
  br i1 %cmp.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nft_rbtree_interval_start.exit64:                 ; preds = %nft_rbtree_interval_start.exit.nft_rbtree_interval_start.exit64_crit_edge, %nft_rbtree_interval_end.exit.nft_rbtree_interval_start.exit64_crit_edge
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i.i, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.i.i62 = icmp eq i8 %22, 0
  br i1 %tobool.i.i62, label %nft_rbtree_interval_start.exit64.land.lhs.true20_crit_edge, label %nft_rbtree_interval_start.exit64.if.else25_crit_edge

nft_rbtree_interval_start.exit64.if.else25_crit_edge: ; preds = %nft_rbtree_interval_start.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else25

nft_rbtree_interval_start.exit64.land.lhs.true20_crit_edge: ; preds = %nft_rbtree_interval_start.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %nft_rbtree_interval_start.exit64.land.lhs.true20_crit_edge, %if.else10.land.lhs.true20_crit_edge
  %23 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.i.not.i67 = icmp eq i8 %24, 0
  br i1 %tobool.i.i.not.i67, label %land.lhs.true20.if.else25_crit_edge, label %nft_rbtree_interval_end.exit72

land.lhs.true20.if.else25_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else25

nft_rbtree_interval_end.exit72:                   ; preds = %land.lhs.true20
  %conv.i.i.i68 = zext i8 %24 to i32
  %add.ptr.i.i.i69 = getelementptr i8, ptr %ext.i.i, i32 %conv.i.i.i68
  %25 = ptrtoint ptr %add.ptr.i.i.i69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i.i69, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i70.not = icmp eq i8 %27, 0
  br i1 %tobool.i70.not, label %nft_rbtree_interval_end.exit72.if.else25_crit_edge, label %if.then23

nft_rbtree_interval_end.exit72.if.else25_crit_edge: ; preds = %nft_rbtree_interval_end.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else25

if.then23:                                        ; preds = %nft_rbtree_interval_end.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right24 = getelementptr inbounds %struct.rb_node, ptr %parent.081, i32 0, i32 1
  br label %while.cond.backedge

if.else25:                                        ; preds = %nft_rbtree_interval_end.exit72.if.else25_crit_edge, %land.lhs.true20.if.else25_crit_edge, %nft_rbtree_interval_start.exit64.if.else25_crit_edge
  %28 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ext, align 1
  %and3.i = and i8 %29, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left29 = getelementptr inbounds %struct.rb_node, ptr %parent.081, i32 0, i32 2
  br label %while.cond.backedge

if.end31:                                         ; preds = %if.else25
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %ext) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i74 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i74, label %if.end31.if.then.i_crit_edge, label %lor.lhs.false.i

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end31
  %30 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ext, align 4
  %32 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %nft.i.i, align 4
  %conv.i.i76 = zext i8 %33 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i76
  %conv1.i.i = trunc i32 %shl.i.i to i8
  %and9.i = and i8 %31, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9.i)
  %cmp.i = icmp eq i8 %and9.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end31.if.then.i_crit_edge
  %34 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp.i.i.i.i = icmp eq i8 %35, 0
  %cond.i.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %shl.i.i.i = shl nuw nsw i8 1, %cond.i.i.i.i
  %36 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ext, align 1
  %xor1.i.i = xor i8 %shl.i.i.i, %37
  store i8 %xor1.i.i, ptr %ext, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %parent.078 = phi ptr [ %parent.081, %if.then.i ], [ %parent.081, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %while.cond.backedge.cleanup_crit_edge ]
  ret ptr %parent.078
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_rbtree_flush(ptr noundef %net, ptr nocapture noundef readnone %set, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext = getelementptr inbounds %struct.nft_rbtree_elem, ptr %priv, i32 0, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef %ext) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ext, align 4
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %and9 = and i8 %1, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and9)
  %cmp = icmp eq i8 %and9, 0
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %4 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i.i = icmp eq i8 %5, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %6 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %7
  store i8 %xor1.i, ptr %ext, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then ], [ false, %lor.lhs.false.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rbtree_remove(ptr nocapture noundef readnone %net, ptr noundef %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.__seqprop_rwlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_rwlock_assert.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %lock.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 80
  %3 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %4, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, !prof !32

land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_rwlock_assert.exit

__seqprop_rwlock_assert.exit:                     ; preds = %do.end.i, %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, %entry.__seqprop_rwlock_assert.exit_crit_edge
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  %dep_map.i.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 52
  %7 = tail call ptr @llvm.returnaddress(i32 0) #10
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  tail call void @rb_erase(ptr noundef %1, ptr noundef %data.i) #10
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %inc.i.i = add i32 %10, 1
  store i32 %inc.i.i, ptr %count, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rbtree_walk(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter) #0 align 64 {
entry:
  %elem = alloca %struct.nft_set_elem, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %elem) #10
  %0 = call ptr @memset(ptr %elem, i32 255, i32 200)
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  %call1 = tail call ptr @rb_first(ptr noundef %data.i) #10
  %cmp.not38 = icmp eq ptr %call1, null
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %priv10 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %err = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %node.039 = phi ptr [ %call1, %for.body.lr.ph ], [ %call18, %cont.for.body_crit_edge ]
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 4
  %3 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp2 = icmp ult i32 %2, %4
  br i1 %cmp2, label %for.body.cont_crit_edge, label %if.end

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end:                                           ; preds = %for.body
  %ext = getelementptr inbounds %struct.nft_rbtree_elem, ptr %node.039, i32 0, i32 1
  %tobool.not.i.i = icmp eq ptr %ext, null
  br i1 %tobool.not.i.i, label %if.end.if.end5_crit_edge, label %nft_set_ext_exists.exit.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

nft_set_ext_exists.exit.i:                        ; preds = %if.end
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %node.039, i32 0, i32 1, i32 1, i32 5
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.i.not.i = icmp eq i8 %6, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.if.end5_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.if.end5_crit_edge:      ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = call i64 @get_jiffies_64() #10
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.i.i.i, align 8
  %sub.i = sub i64 %call1.i, %10
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i, label %nft_set_elem_expired.exit.cont_crit_edge, label %nft_set_elem_expired.exit.if.end5_crit_edge

nft_set_elem_expired.exit.if.end5_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

nft_set_elem_expired.exit.cont_crit_edge:         ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end5:                                          ; preds = %nft_set_elem_expired.exit.if.end5_crit_edge, %nft_set_ext_exists.exit.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iter, align 4
  %13 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ext, align 1
  %and3.i = and i8 %14, %12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end9, label %if.end5.cont_crit_edge

if.end5.cont_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end9:                                          ; preds = %if.end5
  %15 = ptrtoint ptr %priv10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.039, ptr %priv10, align 8
  %16 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fn, align 4
  %call11 = call i32 %17(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter, ptr noundef nonnull %elem) #10
  %18 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call11, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp13 = icmp slt i32 %call11, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end9.cont_crit_edge

if.end9.cont_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cont:                                             ; preds = %if.end9.cont_crit_edge, %if.end5.cont_crit_edge, %nft_set_elem_expired.exit.cont_crit_edge, %for.body.cont_crit_edge
  %19 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %count, align 4
  %call18 = call ptr @rb_next(ptr noundef nonnull %node.039) #10
  %cmp.not = icmp eq ptr %call18, null
  br i1 %cmp.not, label %cont.cleanup_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cont.cleanup_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cont.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_rbtree_get(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %elem, i32 noundef %flags) #0 align 64 {
entry:
  %rbe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %count)
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %count, align 4
  %and85 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool.not86 = icmp eq i32 %and85, 0
  br i1 %tobool.not86, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !36
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !37
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count, align 4
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa84 = phi i32 [ %1, %entry.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbe) #10
  %4 = ptrtoint ptr %rbe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -2 to ptr), ptr %rbe, align 4
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %5 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %6 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %call21 = call fastcc zeroext i1 @__nft_rbtree_get(ptr noundef %set, ptr noundef %elem, ptr noundef nonnull %rbe, i32 noundef %.lcssa84, i32 noundef %flags, i8 noundef zeroext %conv1.i)
  br i1 %call21, label %while.end.cleanup_crit_edge, label %lor.lhs.false

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !28
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %.lcssa84)
  %cmp.i.i.not = icmp eq i32 %8, %.lcssa84
  br i1 %cmp.i.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #10
  tail call fastcc void @seqcount_lockdep_reader_access(ptr noundef %count)
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %count, align 4
  %and3587 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3587)
  %tobool36.not88 = icmp eq i32 %and3587, 0
  br i1 %tobool36.not88, label %if.end.while.end47_crit_edge, label %if.end.do.end42_crit_edge

if.end.do.end42_crit_edge:                        ; preds = %if.end
  br label %do.end42

if.end.while.end47_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end47

do.end42:                                         ; preds = %do.end42.do.end42_crit_edge, %if.end.do.end42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !40
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %count, align 4
  %and35 = and i32 %12, 1
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end42.while.end47_crit_edge, label %do.end42.do.end42_crit_edge

do.end42.do.end42_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end42.while.end47_crit_edge:                   ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end47

while.end47:                                      ; preds = %do.end42.while.end47_crit_edge, %if.end.while.end47_crit_edge
  %.lcssa = phi i32 [ %10, %if.end.while.end47_crit_edge ], [ %12, %do.end42.while.end47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !41
  %call56 = call fastcc zeroext i1 @__nft_rbtree_get(ptr noundef %set, ptr noundef %elem, ptr noundef nonnull %rbe, i32 noundef %.lcssa, i32 noundef %flags, i8 noundef zeroext %conv1.i)
  br i1 %call56, label %while.end47.if.end61_crit_edge, label %if.then59

while.end47.if.end61_crit_edge:                   ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then59:                                        ; preds = %while.end47
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %rbe to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -2 to ptr), ptr %rbe, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %while.end47.if.end61_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %lor.lhs.false.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %14 = ptrtoint ptr %rbe to i32
  call void @__asan_load4_noabort(i32 %14)
  %retval.0 = load ptr, ptr %rbe, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbe) #10
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nft_rbtree_privsize(ptr nocapture noundef readnone %nla, ptr nocapture noundef readnone %desc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 184
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_rbtree_estimate(ptr nocapture noundef readonly %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %field_count = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %field_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %field_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp ugt i8 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %mul = mul i32 %3, 24
  %add = add i32 %mul, 184
  %conv4 = zext i32 %add to i64
  %storemerge = select i1 %tobool.not, i64 -1, i64 %conv4
  %4 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %5 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %6 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %space, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %7 = xor i1 %cmp, true
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_rbtree_init(ptr noundef %set, ptr nocapture noundef readnone %desc, ptr nocapture noundef readnone %nla) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %lock = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nft_rbtree_init.__key) #10
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  %dep_map.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 52
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @nft_rbtree_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %count, align 4
  %lock6 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 80
  %1 = ptrtoint ptr %lock6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %lock, ptr %lock6, align 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data.i, align 4
  %gc_work = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 84
  tail call void @__init_work(ptr noundef %gc_work, i32 noundef 0) #10
  %3 = ptrtoint ptr %gc_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %gc_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @nft_rbtree_init.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry18 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 88
  %4 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 92
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry18, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nft_set, ptr %set, i32 1
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nft_rbtree_gc, ptr %func, align 4
  %timer = getelementptr inbounds %struct.nft_set, ptr %set, i32 1, i32 5
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.7, ptr noundef nonnull @nft_rbtree_init.__key.6) #10
  %flags = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 22
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %flags, align 4
  %8 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %9 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_int.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 16
  %10 = ptrtoint ptr %gc_int.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gc_int.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.nft_set_gc_interval.exit_crit_edge, label %if.else.i.i

if.then.nft_set_gc_interval.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_interval.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #10
  br label %nft_set_gc_interval.exit

nft_set_gc_interval.exit:                         ; preds = %if.else.i.i, %if.then.nft_set_gc_interval.exit_crit_edge
  %cond.i = phi i32 [ 100, %if.then.nft_set_gc_interval.exit_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %gc_work, i32 noundef %cond.i) #10
  br label %if.end

if.end:                                           ; preds = %nft_set_gc_interval.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rbtree_destroy(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %gc_work = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 84
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc_work) #10
  tail call void @rcu_barrier() #10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.not7 = icmp eq ptr %1, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %2, ptr noundef %data.i) #10
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %2, i1 noundef zeroext true) #10
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access(ptr noundef %s) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !42
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %dep_map.c = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef %dep_map.c, i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dep_map.c48 = getelementptr inbounds %struct.seqcount, ptr %s, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef %dep_map.c48, i32 noundef %4) #10
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !43
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !32

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !44
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__nft_rbtree_lookup(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %ext, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %data.i, align 4
  %cmp.not171174 = icmp eq ptr %3, null
  br i1 %cmp.not171174, label %entry.cleanup_crit_edge, label %while.body.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %flags.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 22
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %interval.0.ph176 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %interval.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %parent.0.ph175 = phi ptr [ %3, %while.body.lr.ph.lr.ph ], [ %parent.0.ph.be, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %tobool17.not = icmp eq ptr %interval.0.ph176, null
  %ext.i = getelementptr inbounds %struct.nft_rbtree_elem, ptr %interval.0.ph176, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph176, i32 0, i32 1, i32 1
  %arrayidx.i.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph176, i32 0, i32 1, i32 1, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %parent.0172 = phi ptr [ %parent.0.ph175, %while.body.lr.ph ], [ %parent.0.be, %while.cond.backedge.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !28
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %seq)
  %cmp.i.i.not = icmp eq i32 %5, %seq
  br i1 %cmp.i.i.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %ext6 = getelementptr inbounds %struct.nft_rbtree_elem, ptr %parent.0172, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_rbtree_elem, ptr %parent.0172, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext6, i32 %conv.i.i
  %8 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %klen, align 2
  %conv = zext i8 %9 to i32
  %call8 = tail call i32 @memcmp(ptr noundef %add.ptr.i.i, ptr noundef %key, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %parent.0172, i32 0, i32 2
  %10 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rb_left, align 4
  br i1 %tobool17.not, label %if.then11.while.cond.outer.backedge_crit_edge, label %land.lhs.true

if.then11.while.cond.outer.backedge_crit_edge:    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

land.lhs.true:                                    ; preds = %if.then11
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %add.ptr.i.i.i, i32 %conv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i, label %land.lhs.true20, label %land.lhs.true.while.cond.outer.backedge_crit_edge

land.lhs.true.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

land.lhs.true20:                                  ; preds = %land.lhs.true
  %arrayidx.i.i.i119 = getelementptr %struct.nft_rbtree_elem, ptr %parent.0172, i32 0, i32 1, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i.i119 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i119, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.i.not.i = icmp eq i8 %15, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true20.while.cond.outer.backedge_crit_edge, label %nft_rbtree_interval_end.exit

land.lhs.true20.while.cond.outer.backedge_crit_edge: ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

nft_rbtree_interval_end.exit:                     ; preds = %land.lhs.true20
  %conv.i.i.i120 = zext i8 %15 to i32
  %add.ptr.i.i.i121 = getelementptr i8, ptr %ext6, i32 %conv.i.i.i120
  %16 = ptrtoint ptr %add.ptr.i.i.i121 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i.i121, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not = icmp eq i8 %18, 0
  br i1 %tobool.i.not, label %nft_rbtree_interval_end.exit.while.cond.outer.backedge_crit_edge, label %land.lhs.true23

nft_rbtree_interval_end.exit.while.cond.outer.backedge_crit_edge: ; preds = %nft_rbtree_interval_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

land.lhs.true23:                                  ; preds = %nft_rbtree_interval_end.exit
  %19 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.i.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.i.i.not.i.i, label %land.lhs.true23.while.cond.backedge_crit_edge, label %land.rhs.i.i

land.lhs.true23.while.cond.backedge_crit_edge:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

land.rhs.i.i:                                     ; preds = %land.lhs.true23
  %conv.i.i.i.i = zext i8 %20 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i.i
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.while.cond.backedge_crit_edge, label %land.rhs.i.i.while.cond.outer.backedge_crit_edge

land.rhs.i.i.while.cond.outer.backedge_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.outer.backedge

land.rhs.i.i.while.cond.backedge_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp28.not = icmp eq i32 %call8, 0
  br i1 %cmp28.not, label %if.else36, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %parent.0172, i32 0, i32 1
  br label %while.cond.outer.backedge.sink.split

if.else36:                                        ; preds = %if.else
  %24 = ptrtoint ptr %ext6 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ext6, align 1
  %and3.i = and i8 %25, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end46, label %if.then39

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left44 = getelementptr inbounds %struct.rb_node, ptr %parent.0172, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %rb_left44, align 4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then39, %land.rhs.i.i.while.cond.backedge_crit_edge, %land.lhs.true23.while.cond.backedge_crit_edge
  %parent.0.be = phi ptr [ %27, %if.then39 ], [ %11, %land.rhs.i.i.while.cond.backedge_crit_edge ], [ %11, %land.lhs.true23.while.cond.backedge_crit_edge ]
  %cmp.not = icmp eq ptr %parent.0.be, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end46:                                         ; preds = %if.else36
  %tobool.not.i.i = icmp eq ptr %ext6, null
  br i1 %tobool.not.i.i, label %if.end46.if.end50_crit_edge, label %nft_set_ext_exists.exit.i

if.end46.if.end50_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

nft_set_ext_exists.exit.i:                        ; preds = %if.end46
  %arrayidx.i.i.i122 = getelementptr %struct.nft_rbtree_elem, ptr %parent.0172, i32 0, i32 1, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i.i122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.i.not.i123 = icmp eq i8 %29, 0
  br i1 %tobool.i.i.not.i123, label %nft_set_ext_exists.exit.i.if.end50_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.if.end50_crit_edge:     ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #10
  %30 = ptrtoint ptr %arrayidx.i.i.i122 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.i122, align 1
  %conv.i.i.i124 = zext i8 %31 to i32
  %add.ptr.i.i.i125 = getelementptr i8, ptr %ext6, i32 %conv.i.i.i124
  %32 = ptrtoint ptr %add.ptr.i.i.i125 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr.i.i.i125, align 8
  %sub.i = sub i64 %call1.i, %33
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i126 = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i126, label %nft_set_elem_expired.exit.cleanup_crit_edge, label %nft_set_elem_expired.exit.if.end50_crit_edge

nft_set_elem_expired.exit.if.end50_crit_edge:     ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

nft_set_elem_expired.exit.cleanup_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %nft_set_elem_expired.exit.if.end50_crit_edge, %nft_set_ext_exists.exit.i.if.end50_crit_edge, %if.end46.if.end50_crit_edge
  %arrayidx.i.i.i129 = getelementptr %struct.nft_rbtree_elem, ptr %parent.0172, i32 0, i32 1, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i.i129 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.i129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.i.not.i130 = icmp eq i8 %35, 0
  br i1 %tobool.i.i.not.i130, label %if.end50.cleanup.sink.split_crit_edge, label %nft_rbtree_interval_end.exit136

if.end50.cleanup.sink.split_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_rbtree_interval_end.exit136:                  ; preds = %if.end50
  %conv.i.i.i132 = zext i8 %35 to i32
  %add.ptr.i.i.i133 = getelementptr i8, ptr %ext6, i32 %conv.i.i.i132
  %36 = ptrtoint ptr %add.ptr.i.i.i133 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %add.ptr.i.i.i133, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i134.not = icmp eq i8 %38, 0
  br i1 %tobool.i134.not, label %nft_rbtree_interval_end.exit136.cleanup.sink.split_crit_edge, label %if.then52

nft_rbtree_interval_end.exit136.cleanup.sink.split_crit_edge: ; preds = %nft_rbtree_interval_end.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then52:                                        ; preds = %nft_rbtree_interval_end.exit136
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i = load i16, ptr %flags.i, align 4
  %40 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool.i137.not = icmp eq i16 %40, 0
  br i1 %tobool.i137.not, label %if.end55, label %if.then52.cleanup_crit_edge

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left60 = getelementptr inbounds %struct.rb_node, ptr %parent.0172, i32 0, i32 2
  br label %while.cond.outer.backedge.sink.split

while.cond.outer.backedge.sink.split:             ; preds = %if.end55, %if.then30
  %rb_right.sink = phi ptr [ %rb_right, %if.then30 ], [ %rb_left60, %if.end55 ]
  %interval.0.ph.be.ph = phi ptr [ %interval.0.ph176, %if.then30 ], [ null, %if.end55 ]
  %41 = ptrtoint ptr %rb_right.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %rb_right.sink, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %while.cond.outer.backedge.sink.split, %land.rhs.i.i.while.cond.outer.backedge_crit_edge, %nft_rbtree_interval_end.exit.while.cond.outer.backedge_crit_edge, %land.lhs.true20.while.cond.outer.backedge_crit_edge, %land.lhs.true.while.cond.outer.backedge_crit_edge, %if.then11.while.cond.outer.backedge_crit_edge
  %parent.0.ph.be = phi ptr [ %42, %while.cond.outer.backedge.sink.split ], [ %11, %land.lhs.true20.while.cond.outer.backedge_crit_edge ], [ %11, %land.rhs.i.i.while.cond.outer.backedge_crit_edge ], [ %11, %if.then11.while.cond.outer.backedge_crit_edge ], [ %11, %land.lhs.true.while.cond.outer.backedge_crit_edge ], [ %11, %nft_rbtree_interval_end.exit.while.cond.outer.backedge_crit_edge ]
  %interval.0.ph.be = phi ptr [ %interval.0.ph.be.ph, %while.cond.outer.backedge.sink.split ], [ %parent.0172, %land.lhs.true20.while.cond.outer.backedge_crit_edge ], [ %parent.0172, %land.rhs.i.i.while.cond.outer.backedge_crit_edge ], [ %parent.0172, %if.then11.while.cond.outer.backedge_crit_edge ], [ %parent.0172, %land.lhs.true.while.cond.outer.backedge_crit_edge ], [ %parent.0172, %nft_rbtree_interval_end.exit.while.cond.outer.backedge_crit_edge ]
  %cmp.not171 = icmp eq ptr %parent.0.ph.be, null
  br i1 %cmp.not171, label %while.cond.outer.backedge.while.end_crit_edge, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.cond.outer.backedge.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge
  %interval.0.ph.lcssa170 = phi ptr [ %interval.0.ph176, %while.cond.backedge.while.end_crit_edge ], [ %interval.0.ph.be, %while.cond.outer.backedge.while.end_crit_edge ]
  %flags = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 22
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load = load i16, ptr %flags, align 4
  %44 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool67.not = icmp eq i16 %44, 0
  %cmp69.not = icmp eq ptr %interval.0.ph.lcssa170, null
  %or.cond = select i1 %tobool67.not, i1 true, i1 %cmp69.not
  br i1 %or.cond, label %while.end.cleanup_crit_edge, label %land.lhs.true71

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true71:                                  ; preds = %while.end
  %ext72 = getelementptr inbounds %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa170, i32 0, i32 1
  %45 = ptrtoint ptr %ext72 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ext72, align 1
  %and3.i138 = and i8 %46, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i138)
  %tobool.not.i139 = icmp eq i8 %and3.i138, 0
  br i1 %tobool.not.i139, label %land.lhs.true75, label %land.lhs.true71.cleanup_crit_edge

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %tobool.not.i.i140 = icmp eq ptr %ext72, null
  br i1 %tobool.not.i.i140, label %land.lhs.true75.land.lhs.true78_crit_edge, label %nft_set_ext_exists.exit.i143

land.lhs.true75.land.lhs.true78_crit_edge:        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true78

nft_set_ext_exists.exit.i143:                     ; preds = %land.lhs.true75
  %arrayidx.i.i.i141 = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa170, i32 0, i32 1, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx.i.i.i141 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.i.not.i142 = icmp eq i8 %48, 0
  br i1 %tobool.i.i.not.i142, label %nft_set_ext_exists.exit.i143.land.lhs.true78_crit_edge, label %nft_set_elem_expired.exit150

nft_set_ext_exists.exit.i143.land.lhs.true78_crit_edge: ; preds = %nft_set_ext_exists.exit.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true78

nft_set_elem_expired.exit150:                     ; preds = %nft_set_ext_exists.exit.i143
  %call1.i144 = tail call i64 @get_jiffies_64() #10
  %49 = ptrtoint ptr %arrayidx.i.i.i141 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i.i.i141, align 1
  %conv.i.i.i145 = zext i8 %50 to i32
  %add.ptr.i.i.i146 = getelementptr i8, ptr %ext72, i32 %conv.i.i.i145
  %51 = ptrtoint ptr %add.ptr.i.i.i146 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.i.i.i146, align 8
  %sub.i147 = sub i64 %call1.i144, %52
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i147)
  %cmp.i148 = icmp sgt i64 %sub.i147, -1
  br i1 %cmp.i148, label %nft_set_elem_expired.exit150.cleanup_crit_edge, label %nft_set_elem_expired.exit150.land.lhs.true78_crit_edge

nft_set_elem_expired.exit150.land.lhs.true78_crit_edge: ; preds = %nft_set_elem_expired.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true78

nft_set_elem_expired.exit150.cleanup_crit_edge:   ; preds = %nft_set_elem_expired.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true78:                                  ; preds = %nft_set_elem_expired.exit150.land.lhs.true78_crit_edge, %nft_set_ext_exists.exit.i143.land.lhs.true78_crit_edge, %land.lhs.true75.land.lhs.true78_crit_edge
  %arrayidx.i.i.i.i151 = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa170, i32 0, i32 1, i32 1, i32 3
  %53 = ptrtoint ptr %arrayidx.i.i.i.i151 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.i.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.i.i.not.i.i152 = icmp eq i8 %54, 0
  br i1 %tobool.i.i.not.i.i152, label %land.lhs.true78.cleanup.sink.split_crit_edge, label %nft_rbtree_interval_start.exit158

land.lhs.true78.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_rbtree_interval_start.exit158:                ; preds = %land.lhs.true78
  %conv.i.i.i.i154 = zext i8 %54 to i32
  %add.ptr.i.i.i.i155 = getelementptr i8, ptr %ext72, i32 %conv.i.i.i.i154
  %55 = ptrtoint ptr %add.ptr.i.i.i.i155 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i.i.i.i155, align 1
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.i.i156 = icmp eq i8 %57, 0
  br i1 %tobool.i.i156, label %nft_rbtree_interval_start.exit158.cleanup.sink.split_crit_edge, label %nft_rbtree_interval_start.exit158.cleanup_crit_edge

nft_rbtree_interval_start.exit158.cleanup_crit_edge: ; preds = %nft_rbtree_interval_start.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nft_rbtree_interval_start.exit158.cleanup.sink.split_crit_edge: ; preds = %nft_rbtree_interval_start.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nft_rbtree_interval_start.exit158.cleanup.sink.split_crit_edge, %land.lhs.true78.cleanup.sink.split_crit_edge, %nft_rbtree_interval_end.exit136.cleanup.sink.split_crit_edge, %if.end50.cleanup.sink.split_crit_edge
  %ext72.sink = phi ptr [ %ext72, %land.lhs.true78.cleanup.sink.split_crit_edge ], [ %ext72, %nft_rbtree_interval_start.exit158.cleanup.sink.split_crit_edge ], [ %ext6, %if.end50.cleanup.sink.split_crit_edge ], [ %ext6, %nft_rbtree_interval_end.exit136.cleanup.sink.split_crit_edge ]
  %58 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %ext72.sink, ptr %ext, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nft_rbtree_interval_start.exit158.cleanup_crit_edge, %nft_set_elem_expired.exit150.cleanup_crit_edge, %land.lhs.true71.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then52.cleanup_crit_edge, %nft_set_elem_expired.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nft_rbtree_interval_start.exit158.cleanup_crit_edge ], [ false, %nft_set_elem_expired.exit150.cleanup_crit_edge ], [ false, %land.lhs.true71.cleanup_crit_edge ], [ false, %while.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %cleanup.sink.split ], [ false, %while.body.cleanup_crit_edge ], [ false, %nft_set_elem_expired.exit.cleanup_crit_edge ], [ false, %if.then52.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__nft_rbtree_get(ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef writeonly %elem, i32 noundef %seq, i32 noundef %flags, i8 noundef zeroext %genmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.07276 = load volatile ptr, ptr %data.i, align 4
  %cmp.not7377 = icmp eq ptr %parent.07276, null
  br i1 %cmp.not7377, label %entry.cleanup_crit_edge, label %while.body.lr.ph.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %count = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 48
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %and26 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end66.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %parent.07279 = phi ptr [ %parent.07276, %while.body.lr.ph.lr.ph ], [ %parent.072, %if.end66.while.body.lr.ph_crit_edge ]
  %interval.0.ph78 = phi ptr [ null, %while.body.lr.ph.lr.ph ], [ %interval.2, %if.end66.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then33.while.body_crit_edge, %while.body.lr.ph
  %parent.074 = phi ptr [ %parent.07279, %while.body.lr.ph ], [ %parent.0, %if.then33.while.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !28
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %seq)
  %cmp.i.i.not = icmp eq i32 %2, %seq
  br i1 %cmp.i.i.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %ext = getelementptr inbounds %struct.nft_rbtree_elem, ptr %parent.074, i32 0, i32 1
  %arrayidx.i.i = getelementptr %struct.nft_rbtree_elem, ptr %parent.074, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %5 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %klen, align 2
  %conv = zext i8 %6 to i32
  %call6 = tail call i32 @memcmp(ptr noundef %add.ptr.i.i, ptr noundef %key, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %parent.074, i32 0, i32 2
  %spec.select = select i1 %tobool27.not, ptr %parent.074, ptr %interval.0.ph78
  br label %if.end66

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp18.not = icmp eq i32 %call6, 0
  br i1 %cmp18.not, label %if.else30, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %parent.074, i32 0, i32 1
  %spec.select1 = select i1 %tobool27.not, ptr %interval.0.ph78, ptr %parent.074
  br label %if.end66

if.else30:                                        ; preds = %if.else
  %7 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext, align 1
  %and3.i = and i8 %8, %genmask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end40, label %if.then33

if.then33:                                        ; preds = %if.else30
  %rb_left38 = getelementptr inbounds %struct.rb_node, ptr %parent.074, i32 0, i32 2
  %9 = ptrtoint ptr %rb_left38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %parent.0 = load volatile ptr, ptr %rb_left38, align 4
  %cmp.not = icmp eq ptr %parent.0, null
  br i1 %cmp.not, label %if.then33.while.end_crit_edge, label %if.then33.while.body_crit_edge

if.then33.while.body_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.then33.while.end_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end40:                                         ; preds = %if.else30
  %tobool.not.i.i = icmp eq ptr %ext, null
  br i1 %tobool.not.i.i, label %if.end40.cleanup.sink.split_crit_edge, label %nft_set_ext_exists.exit.i

if.end40.cleanup.sink.split_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_set_ext_exists.exit.i:                        ; preds = %if.end40
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %parent.074, i32 0, i32 1, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.i.not.i = icmp eq i8 %11, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.nft_set_ext_exists.exit_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.nft_set_ext_exists.exit_crit_edge: ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_ext_exists.exit

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #10
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %13 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i.i
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.i.i.i, align 8
  %sub.i = sub i64 %call1.i, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i, label %nft_set_elem_expired.exit.cleanup_crit_edge, label %nft_set_elem_expired.exit.nft_set_ext_exists.exit_crit_edge

nft_set_elem_expired.exit.nft_set_ext_exists.exit_crit_edge: ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_ext_exists.exit

nft_set_elem_expired.exit.cleanup_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nft_set_ext_exists.exit:                          ; preds = %nft_set_elem_expired.exit.nft_set_ext_exists.exit_crit_edge, %nft_set_ext_exists.exit.i.nft_set_ext_exists.exit_crit_edge
  %arrayidx.i.i6 = getelementptr %struct.nft_rbtree_elem, ptr %parent.074, i32 0, i32 1, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.i.not = icmp eq i8 %17, 0
  br i1 %tobool.i.i.not, label %nft_set_ext_exists.exit.cleanup.sink.split_crit_edge, label %lor.lhs.false

nft_set_ext_exists.exit.cleanup.sink.split_crit_edge: ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %nft_set_ext_exists.exit
  %18 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i6, align 1
  %conv.i.i9 = zext i8 %19 to i32
  %add.ptr.i.i10 = getelementptr i8, ptr %ext, i32 %conv.i.i9
  %20 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr.i.i10, align 1
  %22 = and i8 %21, 1
  %and50 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %and50)
  %cmp52 = icmp eq i32 %and26, %and50
  br i1 %cmp52, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end55

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end55:                                         ; preds = %lor.lhs.false
  %23 = ptrtoint ptr %arrayidx.i.i6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.i.not.i12 = icmp eq i8 %24, 0
  br i1 %tobool.i.i.not.i12, label %if.end55.nft_rbtree_interval_end.exit.thread_crit_edge, label %nft_rbtree_interval_end.exit

if.end55.nft_rbtree_interval_end.exit.thread_crit_edge: ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_rbtree_interval_end.exit.thread

nft_rbtree_interval_end.exit:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i14 = zext i8 %24 to i32
  %add.ptr.i.i.i15 = getelementptr i8, ptr %ext, i32 %conv.i.i.i14
  %25 = ptrtoint ptr %add.ptr.i.i.i15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr.i.i.i15, align 1
  %27 = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.not = icmp eq i8 %27, 0
  %spec.select60 = select i1 %tobool.i.not, ptr %interval.0.ph78, ptr null
  br label %nft_rbtree_interval_end.exit.thread

nft_rbtree_interval_end.exit.thread:              ; preds = %nft_rbtree_interval_end.exit, %if.end55.nft_rbtree_interval_end.exit.thread_crit_edge
  %28 = phi ptr [ %interval.0.ph78, %if.end55.nft_rbtree_interval_end.exit.thread_crit_edge ], [ %spec.select60, %nft_rbtree_interval_end.exit ]
  %rb_left63 = getelementptr inbounds %struct.rb_node, ptr %parent.074, i32 0, i32 2
  br label %if.end66

if.end66:                                         ; preds = %nft_rbtree_interval_end.exit.thread, %if.then20, %if.then9
  %parent.1.in = phi ptr [ %rb_left63, %nft_rbtree_interval_end.exit.thread ], [ %rb_left, %if.then9 ], [ %rb_right, %if.then20 ]
  %interval.2 = phi ptr [ %28, %nft_rbtree_interval_end.exit.thread ], [ %spec.select, %if.then9 ], [ %spec.select1, %if.then20 ]
  %29 = ptrtoint ptr %parent.1.in to i32
  call void @__asan_load4_noabort(i32 %29)
  %parent.072 = load volatile ptr, ptr %parent.1.in, align 4
  %cmp.not73 = icmp eq ptr %parent.072, null
  br i1 %cmp.not73, label %if.end66.while.end_crit_edge, label %if.end66.while.body.lr.ph_crit_edge

if.end66.while.body.lr.ph_crit_edge:              ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.end66.while.end_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end66.while.end_crit_edge, %if.then33.while.end_crit_edge
  %interval.0.ph.lcssa71 = phi ptr [ %interval.0.ph78, %if.then33.while.end_crit_edge ], [ %interval.2, %if.end66.while.end_crit_edge ]
  %flags67 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 22
  %30 = ptrtoint ptr %flags67 to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %flags67, align 4
  %31 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool70.not = icmp eq i16 %31, 0
  %cmp71.not = icmp eq ptr %interval.0.ph.lcssa71, null
  %or.cond = select i1 %tobool70.not, i1 true, i1 %cmp71.not
  br i1 %or.cond, label %while.end.cleanup_crit_edge, label %land.lhs.true73

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true73:                                  ; preds = %while.end
  %ext74 = getelementptr inbounds %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa71, i32 0, i32 1
  %32 = ptrtoint ptr %ext74 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ext74, align 1
  %and3.i17 = and i8 %33, %genmask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i17)
  %tobool.not.i18 = icmp eq i8 %and3.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true77, label %land.lhs.true73.cleanup_crit_edge

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true77:                                  ; preds = %land.lhs.true73
  %tobool.not.i.i19 = icmp eq ptr %ext74, null
  br i1 %tobool.not.i.i19, label %land.lhs.true77.land.lhs.true80_crit_edge, label %nft_set_ext_exists.exit.i22

land.lhs.true77.land.lhs.true80_crit_edge:        ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true80

nft_set_ext_exists.exit.i22:                      ; preds = %land.lhs.true77
  %arrayidx.i.i.i20 = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa71, i32 0, i32 1, i32 1, i32 5
  %34 = ptrtoint ptr %arrayidx.i.i.i20 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.i.i.not.i21 = icmp eq i8 %35, 0
  br i1 %tobool.i.i.not.i21, label %nft_set_ext_exists.exit.i22.land.lhs.true80_crit_edge, label %nft_set_elem_expired.exit29

nft_set_ext_exists.exit.i22.land.lhs.true80_crit_edge: ; preds = %nft_set_ext_exists.exit.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true80

nft_set_elem_expired.exit29:                      ; preds = %nft_set_ext_exists.exit.i22
  %call1.i23 = tail call i64 @get_jiffies_64() #10
  %36 = ptrtoint ptr %arrayidx.i.i.i20 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i20, align 1
  %conv.i.i.i24 = zext i8 %37 to i32
  %add.ptr.i.i.i25 = getelementptr i8, ptr %ext74, i32 %conv.i.i.i24
  %38 = ptrtoint ptr %add.ptr.i.i.i25 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.i.i.i25, align 8
  %sub.i26 = sub i64 %call1.i23, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i26)
  %cmp.i27 = icmp sgt i64 %sub.i26, -1
  br i1 %cmp.i27, label %nft_set_elem_expired.exit29.cleanup_crit_edge, label %nft_set_elem_expired.exit29.land.lhs.true80_crit_edge

nft_set_elem_expired.exit29.land.lhs.true80_crit_edge: ; preds = %nft_set_elem_expired.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true80

nft_set_elem_expired.exit29.cleanup_crit_edge:    ; preds = %nft_set_elem_expired.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true80:                                  ; preds = %nft_set_elem_expired.exit29.land.lhs.true80_crit_edge, %nft_set_ext_exists.exit.i22.land.lhs.true80_crit_edge, %land.lhs.true77.land.lhs.true80_crit_edge
  %arrayidx.i.i.i31 = getelementptr %struct.nft_rbtree_elem, ptr %interval.0.ph.lcssa71, i32 0, i32 1, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.i31 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.i.not.i32 = icmp eq i8 %41, 0
  br i1 %tobool.i.i.not.i32, label %nft_rbtree_interval_end.exit38, label %nft_rbtree_interval_end.exit38.thread

nft_rbtree_interval_end.exit38:                   ; preds = %land.lhs.true80
  %and83 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %nft_rbtree_interval_end.exit38.cleanup.sink.split_crit_edge, label %nft_rbtree_interval_end.exit38.cleanup_crit_edge

nft_rbtree_interval_end.exit38.cleanup_crit_edge: ; preds = %nft_rbtree_interval_end.exit38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nft_rbtree_interval_end.exit38.cleanup.sink.split_crit_edge: ; preds = %nft_rbtree_interval_end.exit38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_rbtree_interval_end.exit38.thread:            ; preds = %land.lhs.true80
  %conv.i.i.i34 = zext i8 %41 to i32
  %add.ptr.i.i.i35 = getelementptr i8, ptr %ext74, i32 %conv.i.i.i34
  %42 = ptrtoint ptr %add.ptr.i.i.i35 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i.i35, align 1
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.i36.not = icmp eq i8 %44, 0
  %and8350 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8350)
  %tobool84.not51 = icmp eq i32 %and8350, 0
  %or.cond352 = and i1 %tobool84.not51, %tobool.i36.not
  br i1 %or.cond352, label %nft_rbtree_interval_end.exit38.thread.cleanup.sink.split_crit_edge, label %nft_rbtree_interval_end.exit47

nft_rbtree_interval_end.exit38.thread.cleanup.sink.split_crit_edge: ; preds = %nft_rbtree_interval_end.exit38.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_rbtree_interval_end.exit47:                   ; preds = %nft_rbtree_interval_end.exit38.thread
  %45 = ptrtoint ptr %add.ptr.i.i.i35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %add.ptr.i.i.i35, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i45.not = icmp eq i8 %47, 0
  %or.cond4 = or i1 %tobool84.not51, %tobool.i45.not
  br i1 %or.cond4, label %nft_rbtree_interval_end.exit47.cleanup_crit_edge, label %nft_rbtree_interval_end.exit47.cleanup.sink.split_crit_edge

nft_rbtree_interval_end.exit47.cleanup.sink.split_crit_edge: ; preds = %nft_rbtree_interval_end.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

nft_rbtree_interval_end.exit47.cleanup_crit_edge: ; preds = %nft_rbtree_interval_end.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %nft_rbtree_interval_end.exit47.cleanup.sink.split_crit_edge, %nft_rbtree_interval_end.exit38.thread.cleanup.sink.split_crit_edge, %nft_rbtree_interval_end.exit38.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %nft_set_ext_exists.exit.cleanup.sink.split_crit_edge, %if.end40.cleanup.sink.split_crit_edge
  %interval.0.ph.lcssa71.sink = phi ptr [ %interval.0.ph.lcssa71, %nft_rbtree_interval_end.exit38.thread.cleanup.sink.split_crit_edge ], [ %interval.0.ph.lcssa71, %nft_rbtree_interval_end.exit47.cleanup.sink.split_crit_edge ], [ %interval.0.ph.lcssa71, %nft_rbtree_interval_end.exit38.cleanup.sink.split_crit_edge ], [ %parent.074, %if.end40.cleanup.sink.split_crit_edge ], [ %parent.074, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %parent.074, %nft_set_ext_exists.exit.cleanup.sink.split_crit_edge ]
  %48 = ptrtoint ptr %elem to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %interval.0.ph.lcssa71.sink, ptr %elem, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nft_rbtree_interval_end.exit47.cleanup_crit_edge, %nft_rbtree_interval_end.exit38.cleanup_crit_edge, %nft_set_elem_expired.exit29.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %while.end.cleanup_crit_edge, %nft_set_elem_expired.exit.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nft_rbtree_interval_end.exit47.cleanup_crit_edge ], [ false, %nft_set_elem_expired.exit29.cleanup_crit_edge ], [ false, %land.lhs.true73.cleanup_crit_edge ], [ false, %while.end.cleanup_crit_edge ], [ false, %nft_rbtree_interval_end.exit38.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ true, %cleanup.sink.split ], [ false, %while.body.cleanup_crit_edge ], [ false, %nft_set_elem_expired.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_rbtree_gc(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %add.ptr.i = getelementptr i8, ptr %work, i32 -244
  %lock = getelementptr i8, ptr %work, i32 -80
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #10
  %count = getelementptr i8, ptr %work, i32 -36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_rwlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_rwlock_assert.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %lock.i = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock.i, align 4
  %dep_map.i = getelementptr inbounds %struct.rwlock_t, ptr %2, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, !prof !32

land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_rwlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 278, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_rwlock_assert.exit

__seqprop_rwlock_assert.exit:                     ; preds = %do.end.i, %land.rhs.i.__seqprop_rwlock_assert.exit_crit_edge, %entry.__seqprop_rwlock_assert.exit_crit_edge
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %inc.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !33
  %dep_map.i.i = getelementptr i8, ptr %work, i32 -32
  %5 = tail call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #10
  %call8 = tail call ptr @rb_first(ptr noundef %add.ptr) #10
  %cmp.not170 = icmp eq ptr %call8, null
  br i1 %cmp.not170, label %__seqprop_rwlock_assert.exit.do.body47_crit_edge, label %for.body.lr.ph

__seqprop_rwlock_assert.exit.do.body47_crit_edge: ; preds = %__seqprop_rwlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

for.body.lr.ph:                                   ; preds = %__seqprop_rwlock_assert.exit
  %nelems = getelementptr i8, ptr %work, i32 -164
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rbe_end.0174 = phi ptr [ null, %for.body.lr.ph ], [ %rbe_end.2, %for.inc.for.body_crit_edge ]
  %rbe_prev.0173 = phi ptr [ null, %for.body.lr.ph ], [ %rbe_prev.2, %for.inc.for.body_crit_edge ]
  %gcb.0172 = phi ptr [ null, %for.body.lr.ph ], [ %gcb.1, %for.inc.for.body_crit_edge ]
  %node.0171 = phi ptr [ %call8, %for.body.lr.ph ], [ %call41, %for.inc.for.body_crit_edge ]
  %ext.i = getelementptr inbounds %struct.nft_rbtree_elem, ptr %node.0171, i32 0, i32 1
  %arrayidx.i.i.i = getelementptr %struct.nft_rbtree_elem, ptr %node.0171, i32 0, i32 1, i32 1, i32 3
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.i.not.i = icmp eq i8 %8, 0
  br i1 %tobool.i.i.not.i, label %for.body.if.end14_crit_edge, label %nft_rbtree_interval_end.exit

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

nft_rbtree_interval_end.exit:                     ; preds = %for.body
  %conv.i.i.i = zext i8 %8 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i
  %9 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i.i, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.i.not = icmp eq i8 %11, 0
  br i1 %tobool.i.not, label %nft_rbtree_interval_end.exit.if.end14_crit_edge, label %nft_rbtree_interval_end.exit.for.inc_crit_edge

nft_rbtree_interval_end.exit.for.inc_crit_edge:   ; preds = %nft_rbtree_interval_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

nft_rbtree_interval_end.exit.if.end14_crit_edge:  ; preds = %nft_rbtree_interval_end.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %nft_rbtree_interval_end.exit.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %tobool.not.i.i = icmp eq ptr %ext.i, null
  br i1 %tobool.not.i.i, label %if.end14.for.inc_crit_edge, label %nft_set_ext_exists.exit.i

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

nft_set_ext_exists.exit.i:                        ; preds = %if.end14
  %arrayidx.i.i.i113 = getelementptr %struct.nft_rbtree_elem, ptr %node.0171, i32 0, i32 1, i32 1, i32 5
  %12 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i.i113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i.i.not.i114 = icmp eq i8 %13, 0
  br i1 %tobool.i.i.not.i114, label %nft_set_ext_exists.exit.i.for.inc_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.for.inc_crit_edge:      ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #10
  %14 = ptrtoint ptr %arrayidx.i.i.i113 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i113, align 1
  %conv.i.i.i115 = zext i8 %15 to i32
  %add.ptr.i.i.i116 = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i115
  %16 = ptrtoint ptr %add.ptr.i.i.i116 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.i.i.i116, align 8
  %sub.i = sub i64 %call1.i, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i, label %if.end17, label %nft_set_elem_expired.exit.for.inc_crit_edge

nft_set_elem_expired.exit.for.inc_crit_edge:      ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end17:                                         ; preds = %nft_set_elem_expired.exit
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef nonnull %ext.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end21, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end21:                                         ; preds = %if.end17
  %tobool22.not = icmp eq ptr %rbe_prev.0173, null
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rb_erase(ptr noundef nonnull %rbe_prev.0173, ptr noundef %add.ptr) #10
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  %cmp.not.i118 = icmp eq ptr %gcb.0172, null
  br i1 %cmp.not.i118, label %if.end26.nft_set_gc_batch_check.exit_crit_edge, label %if.then.i

if.end26.nft_set_gc_batch_check.exit_crit_edge:   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_batch_check.exit

if.then.i:                                        ; preds = %if.end26
  %cnt.i = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %gcb.0172, i32 0, i32 2
  %18 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnt.i, align 4
  %add.i = add i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %add.i)
  %cmp1.i = icmp ult i32 %add.i, 1020
  br i1 %cmp1.i, label %if.then.i.if.end30_crit_edge, label %nft_set_gc_batch_complete.exit.i

if.then.i.if.end30_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

nft_set_gc_batch_complete.exit.i:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %gcb.0172, ptr noundef nonnull @nft_set_gc_batch_release) #10
  br label %nft_set_gc_batch_check.exit

nft_set_gc_batch_check.exit:                      ; preds = %nft_set_gc_batch_complete.exit.i, %if.end26.nft_set_gc_batch_check.exit_crit_edge
  %call.i119 = tail call ptr @nft_set_gc_batch_alloc(ptr noundef %add.ptr.i, i32 noundef 2592) #10
  %tobool28.not = icmp eq ptr %call.i119, null
  br i1 %tobool28.not, label %nft_set_gc_batch_check.exit.do.body47_crit_edge, label %nft_set_gc_batch_check.exit.if.end30_crit_edge

nft_set_gc_batch_check.exit.if.end30_crit_edge:   ; preds = %nft_set_gc_batch_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

nft_set_gc_batch_check.exit.do.body47_crit_edge:  ; preds = %nft_set_gc_batch_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

if.end30:                                         ; preds = %nft_set_gc_batch_check.exit.if.end30_crit_edge, %if.then.i.if.end30_crit_edge
  %retval.0.i144 = phi ptr [ %call.i119, %nft_set_gc_batch_check.exit.if.end30_crit_edge ], [ %gcb.0172, %if.then.i.if.end30_crit_edge ]
  %call.i.i110 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems, i32 1, i32 3, i32 1) #10
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems, ptr %nelems, i32 1, ptr elementtype(i32) %nelems) #10, !srcloc !45
  %cnt.i120 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %retval.0.i144, i32 0, i32 2
  %21 = ptrtoint ptr %cnt.i120 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cnt.i120, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %cnt.i120, align 4
  %arrayidx.i = getelementptr %struct.nft_set_gc_batch, ptr %retval.0.i144, i32 0, i32 1, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node.0171, ptr %arrayidx.i, align 4
  %tobool31.not = icmp eq ptr %rbe_end.0174, null
  br i1 %tobool31.not, label %if.end30.if.end36_crit_edge, label %if.then32

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %nelems, i32 1, i32 3, i32 1) #10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems, ptr %nelems, i32 1, ptr elementtype(i32) %nelems) #10, !srcloc !45
  %25 = ptrtoint ptr %cnt.i120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cnt.i120, align 4
  %inc.i122 = add i32 %26, 1
  store i32 %inc.i122, ptr %cnt.i120, align 4
  %arrayidx.i123 = getelementptr %struct.nft_set_gc_batch, ptr %retval.0.i144, i32 0, i32 1, i32 %26
  %27 = ptrtoint ptr %arrayidx.i123 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rbe_end.0174, ptr %arrayidx.i123, align 4
  tail call void @rb_erase(ptr noundef nonnull %rbe_end.0174, ptr noundef %add.ptr) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end30.if.end36_crit_edge
  %call37 = tail call ptr @rb_next(ptr noundef nonnull %node.0171) #10
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.if.then43_crit_edge, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end36.if.then43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

for.inc:                                          ; preds = %if.end36.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %nft_set_elem_expired.exit.for.inc_crit_edge, %nft_set_ext_exists.exit.i.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %nft_rbtree_interval_end.exit.for.inc_crit_edge
  %node.1 = phi ptr [ %node.0171, %if.end17.for.inc_crit_edge ], [ %call37, %if.end36.for.inc_crit_edge ], [ %node.0171, %nft_set_elem_expired.exit.for.inc_crit_edge ], [ %node.0171, %nft_rbtree_interval_end.exit.for.inc_crit_edge ], [ %node.0171, %nft_set_ext_exists.exit.i.for.inc_crit_edge ], [ %node.0171, %if.end14.for.inc_crit_edge ]
  %gcb.1 = phi ptr [ %gcb.0172, %if.end17.for.inc_crit_edge ], [ %retval.0.i144, %if.end36.for.inc_crit_edge ], [ %gcb.0172, %nft_set_elem_expired.exit.for.inc_crit_edge ], [ %gcb.0172, %nft_rbtree_interval_end.exit.for.inc_crit_edge ], [ %gcb.0172, %nft_set_ext_exists.exit.i.for.inc_crit_edge ], [ %gcb.0172, %if.end14.for.inc_crit_edge ]
  %rbe_prev.2 = phi ptr [ %rbe_prev.0173, %if.end17.for.inc_crit_edge ], [ %node.0171, %if.end36.for.inc_crit_edge ], [ %rbe_prev.0173, %nft_set_elem_expired.exit.for.inc_crit_edge ], [ %rbe_prev.0173, %nft_rbtree_interval_end.exit.for.inc_crit_edge ], [ %rbe_prev.0173, %nft_set_ext_exists.exit.i.for.inc_crit_edge ], [ %rbe_prev.0173, %if.end14.for.inc_crit_edge ]
  %rbe_end.2 = phi ptr [ %rbe_end.0174, %if.end17.for.inc_crit_edge ], [ null, %if.end36.for.inc_crit_edge ], [ %rbe_end.0174, %nft_set_elem_expired.exit.for.inc_crit_edge ], [ %node.0171, %nft_rbtree_interval_end.exit.for.inc_crit_edge ], [ %rbe_end.0174, %nft_set_ext_exists.exit.i.for.inc_crit_edge ], [ %rbe_end.0174, %if.end14.for.inc_crit_edge ]
  %call41 = tail call ptr @rb_next(ptr noundef nonnull %node.1) #10
  %cmp.not = icmp eq ptr %call41, null
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool42.not = icmp eq ptr %rbe_prev.2, null
  br i1 %tobool42.not, label %for.end.do.body47_crit_edge, label %for.end.if.then43_crit_edge

for.end.if.then43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

for.end.do.body47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

if.then43:                                        ; preds = %for.end.if.then43_crit_edge, %if.end36.if.then43_crit_edge
  %rbe_prev.3154 = phi ptr [ %rbe_prev.2, %for.end.if.then43_crit_edge ], [ %node.0171, %if.end36.if.then43_crit_edge ]
  %gcb.2153 = phi ptr [ %gcb.1, %for.end.if.then43_crit_edge ], [ %retval.0.i144, %if.end36.if.then43_crit_edge ]
  tail call void @rb_erase(ptr noundef nonnull %rbe_prev.3154, ptr noundef %add.ptr) #10
  br label %do.body47

do.body47:                                        ; preds = %if.then43, %for.end.do.body47_crit_edge, %nft_set_gc_batch_check.exit.do.body47_crit_edge, %__seqprop_rwlock_assert.exit.do.body47_crit_edge
  %gcb.2148 = phi ptr [ %gcb.1, %for.end.do.body47_crit_edge ], [ %gcb.2153, %if.then43 ], [ null, %__seqprop_rwlock_assert.exit.do.body47_crit_edge ], [ null, %nft_set_gc_batch_check.exit.do.body47_crit_edge ]
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  %28 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %count, align 4
  %inc.i.i = add i32 %29, 1
  store i32 %inc.i.i, ptr %count, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #10
  %call60 = tail call ptr @nft_set_catchall_gc(ptr noundef %add.ptr.i) #10
  %tobool61.not = icmp eq ptr %call60, null
  %cmp.not.i138 = icmp eq ptr %gcb.2148, null
  br i1 %tobool61.not, label %if.end67, label %if.then62

if.then62:                                        ; preds = %do.body47
  br i1 %cmp.not.i138, label %if.then62.nft_set_gc_batch_check.exit134_crit_edge, label %if.then.i129

if.then62.nft_set_gc_batch_check.exit134_crit_edge: ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_batch_check.exit134

if.then.i129:                                     ; preds = %if.then62
  %cnt.i126 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %gcb.2148, i32 0, i32 2
  %30 = ptrtoint ptr %cnt.i126 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cnt.i126, align 4
  %add.i127 = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %add.i127)
  %cmp1.i128 = icmp ult i32 %add.i127, 1020
  br i1 %cmp1.i128, label %if.then.i129.if.end67.thread160_crit_edge, label %nft_set_gc_batch_complete.exit.i130

if.then.i129.if.end67.thread160_crit_edge:        ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.thread160

nft_set_gc_batch_complete.exit.i130:              ; preds = %if.then.i129
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @call_rcu(ptr noundef nonnull %gcb.2148, ptr noundef nonnull @nft_set_gc_batch_release) #10
  br label %nft_set_gc_batch_check.exit134

nft_set_gc_batch_check.exit134:                   ; preds = %nft_set_gc_batch_complete.exit.i130, %if.then62.nft_set_gc_batch_check.exit134_crit_edge
  %call.i131 = tail call ptr @nft_set_gc_batch_alloc(ptr noundef %add.ptr.i, i32 noundef 2592) #10
  %tobool64.not = icmp eq ptr %call.i131, null
  br i1 %tobool64.not, label %nft_set_gc_batch_check.exit134.nft_set_gc_batch_complete.exit_crit_edge, label %nft_set_gc_batch_check.exit134.if.end67.thread160_crit_edge

nft_set_gc_batch_check.exit134.if.end67.thread160_crit_edge: ; preds = %nft_set_gc_batch_check.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.thread160

nft_set_gc_batch_check.exit134.nft_set_gc_batch_complete.exit_crit_edge: ; preds = %nft_set_gc_batch_check.exit134
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_batch_complete.exit

if.end67.thread160:                               ; preds = %nft_set_gc_batch_check.exit134.if.end67.thread160_crit_edge, %if.then.i129.if.end67.thread160_crit_edge
  %retval.0.i133157 = phi ptr [ %call.i131, %nft_set_gc_batch_check.exit134.if.end67.thread160_crit_edge ], [ %gcb.2148, %if.then.i129.if.end67.thread160_crit_edge ]
  %cnt.i135 = getelementptr inbounds %struct.nft_set_gc_batch_head, ptr %retval.0.i133157, i32 0, i32 2
  %32 = ptrtoint ptr %cnt.i135 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cnt.i135, align 4
  %inc.i136 = add i32 %33, 1
  store i32 %inc.i136, ptr %cnt.i135, align 4
  %arrayidx.i137 = getelementptr %struct.nft_set_gc_batch, ptr %retval.0.i133157, i32 0, i32 1, i32 %33
  %34 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call60, ptr %arrayidx.i137, align 4
  br label %if.then.i139

if.end67:                                         ; preds = %do.body47
  br i1 %cmp.not.i138, label %if.end67.nft_set_gc_batch_complete.exit_crit_edge, label %if.end67.if.then.i139_crit_edge

if.end67.if.then.i139_crit_edge:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i139

if.end67.nft_set_gc_batch_complete.exit_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_batch_complete.exit

if.then.i139:                                     ; preds = %if.end67.if.then.i139_crit_edge, %if.end67.thread160
  %gcb.3163 = phi ptr [ %retval.0.i133157, %if.end67.thread160 ], [ %gcb.2148, %if.end67.if.then.i139_crit_edge ]
  tail call void @call_rcu(ptr noundef nonnull %gcb.3163, ptr noundef nonnull @nft_set_gc_batch_release) #10
  br label %nft_set_gc_batch_complete.exit

nft_set_gc_batch_complete.exit:                   ; preds = %if.then.i139, %if.end67.nft_set_gc_batch_complete.exit_crit_edge, %nft_set_gc_batch_check.exit134.nft_set_gc_batch_complete.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %35 = load ptr, ptr @system_power_efficient_wq, align 4
  %gc_int.i = getelementptr i8, ptr %work, i32 -148
  %36 = ptrtoint ptr %gc_int.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gc_int.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i140 = icmp eq i32 %37, 0
  br i1 %tobool.not.i140, label %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge, label %if.else.i.i

nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge: ; preds = %nft_set_gc_batch_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nft_set_gc_interval.exit

if.else.i.i:                                      ; preds = %nft_set_gc_batch_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %37) #10
  br label %nft_set_gc_interval.exit

nft_set_gc_interval.exit:                         ; preds = %if.else.i.i, %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge
  %cond.i = phi i32 [ 100, %nft_set_gc_batch_complete.exit.nft_set_gc_interval.exit_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %call.i141 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work, i32 noundef %cond.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_catchall_gc(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_gc_batch_alloc(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_gc_batch_release(ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_elem_destroy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14}
!llvm.named.register.sp = !{!15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @nft_set_rbtree_type, !1, !"nft_set_rbtree_type", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_set_rbtree.c", i32 614, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/seqlock.h", i32 278, i32 1}
!4 = !{ptr @nft_rbtree_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_set_rbtree.c", i32 569, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @nft_rbtree_init.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_set_rbtree.c", i32 570, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nft_rbtree_init.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../net/netfilter/nft_set_rbtree.c", i32 573, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nft_rbtree_init.__key.6, !11, !"__key", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{!"sp"}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2156597721}
!26 = !{i64 2156597563}
!27 = !{i64 2156597891}
!28 = !{i64 2149987606}
!29 = !{i64 2156606430}
!30 = !{i64 2156606272}
!31 = !{i64 2156606600}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2149987931}
!34 = !{i64 2149390850}
!35 = !{i64 2149988256}
!36 = !{i64 2156629463}
!37 = !{i64 2156629305}
!38 = !{i64 2156629633}
!39 = !{i64 2156638174}
!40 = !{i64 2156638016}
!41 = !{i64 2156638344}
!42 = !{i64 617951, i64 618012}
!43 = !{i64 620683}
!44 = !{i64 620968}
!45 = !{i64 2148227935, i64 2148227961, i64 2148227990, i64 2148228024, i64 2148228055, i64 2148228078}
