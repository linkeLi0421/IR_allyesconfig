; ModuleID = '/llk/IR_all_yes/net/batman-adv/fragmentation.c_pt.bc'
source_filename = "../net/batman-adv/fragmentation.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }
%struct.batadv_frag_list_entry = type { %struct.hlist_node, ptr, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.batadv_frag_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16 }
%struct.batadv_hard_iface = type { %struct.list_head, i8, i8, i32, ptr, %struct.kref, %struct.packet_type, ptr, %struct.callback_head, %struct.atomic_t, %struct.batadv_hard_iface_bat_iv, %struct.batadv_hard_iface_bat_v, %struct.hlist_head, %struct.spinlock }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.batadv_hard_iface_bat_iv = type { ptr, i32, %struct.atomic_t, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_hard_iface_bat_v = type { %struct.atomic_t, %struct.atomic_t, ptr, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, i32, %struct.atomic_t, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.batadv_neigh_node = type { %struct.hlist_node, ptr, [6 x i8], %struct.hlist_head, %struct.spinlock, ptr, i32, ptr, %struct.kref, %struct.callback_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.batadv_priv_bla = type { %struct.atomic_t, ptr, ptr, [6 x i8], i32, %struct.atomic_t, [16 x %struct.batadv_bcast_duplist_entry], i32, %struct.spinlock, %struct.batadv_bla_claim_dst, %struct.delayed_work }
%struct.batadv_bcast_duplist_entry = type { [6 x i8], i32, i32 }
%struct.batadv_bla_claim_dst = type { [3 x i8], i8, i16 }
%struct.batadv_priv_gw = type { %struct.hlist_head, %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.batadv_priv_tt = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, ptr, ptr, %struct.hlist_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, i16, %struct.spinlock, %struct.spinlock, %struct.delayed_work }
%struct.batadv_priv_tvlv = type { %struct.hlist_head, %struct.hlist_head, %struct.spinlock, %struct.spinlock }
%struct.batadv_priv_dat = type { i16, ptr, %struct.delayed_work }
%struct.batadv_priv_mcast = type { %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, %struct.batadv_mcast_mla_flags, %struct.spinlock, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.delayed_work }
%struct.batadv_mcast_mla_flags = type { %struct.batadv_mcast_querier_state, %struct.batadv_mcast_querier_state, i8, i8 }
%struct.batadv_mcast_querier_state = type { i8 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/batman-adv/fragmentation.c\00", [33 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@batadv_primary_if_get_selected.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/batman-adv/hard-interface.h\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private constant [34 x i8] c"../net/batman-adv/fragmentation.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 110, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [35 x i8] c"../net/batman-adv/hard-interface.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 110, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 695, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 723, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_frag_purge_orig(ptr noundef %orig_node, ptr noundef readonly %check_cb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %check_cb, null
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 33, i32 %indvars.iv
  %lock = getelementptr %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 33, i32 %indvars.iv, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #7
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call = tail call zeroext i1 %check_cb(ptr noundef %arrayidx) #7
  br i1 %call, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool3.not28.i = icmp eq ptr %1, null
  br i1 %tobool3.not28.i, label %if.then.batadv_frag_clear_chain.exit_crit_edge, label %land.rhs.i.preheader

if.then.batadv_frag_clear_chain.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_clear_chain.exit

land.rhs.i.preheader:                             ; preds = %if.then
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pprev2.i.i.i12 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i.i12, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i.i13 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i13, label %land.rhs.i.preheader.batadv_frag_clear_chain.exit.critedge_crit_edge, label %land.rhs.i.preheader.do.body13.i.i.i_crit_edge

land.rhs.i.preheader.do.body13.i.i.i_crit_edge:   ; preds = %land.rhs.i.preheader
  br label %do.body13.i.i.i

land.rhs.i.preheader.batadv_frag_clear_chain.exit.critedge_crit_edge: ; preds = %land.rhs.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_clear_chain.exit.critedge

do.body13.i.i.i:                                  ; preds = %do.body13.i.i.i.do.body13.i.i.i_crit_edge, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge
  %7 = phi ptr [ %17, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %5, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %pprev2.i.i.i15 = phi ptr [ %pprev14.i.i.i, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %pprev2.i.i.i12, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %8 = phi ptr [ %15, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %3, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %entry1.029.i14 = phi ptr [ %8, %do.body13.i.i.i.do.body13.i.i.i_crit_edge ], [ %1, %land.rhs.i.preheader.do.body13.i.i.i_crit_edge ]
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  %10 = ptrtoint ptr %entry1.029.i14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i14, align 4
  %11 = ptrtoint ptr %pprev2.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i15, align 4
  %skb.i.c = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i14, i32 0, i32 1
  %12 = ptrtoint ptr %skb.i.c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.i.c, align 4
  tail call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %entry1.029.i14) #7
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %8, align 4
  %16 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev14.i.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %15, ptr %17, align 4
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %do.body13.i.i.i.batadv_frag_clear_chain.exit.critedge_crit_edge, label %do.body13.i.i.i.do.body13.i.i.i_crit_edge

do.body13.i.i.i.do.body13.i.i.i_crit_edge:        ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13.i.i.i

do.body13.i.i.i.batadv_frag_clear_chain.exit.critedge_crit_edge: ; preds = %do.body13.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_clear_chain.exit.critedge

batadv_frag_clear_chain.exit.critedge:            ; preds = %do.body13.i.i.i.batadv_frag_clear_chain.exit.critedge_crit_edge, %land.rhs.i.preheader.batadv_frag_clear_chain.exit.critedge_crit_edge
  %entry1.029.i.lcssa = phi ptr [ %1, %land.rhs.i.preheader.batadv_frag_clear_chain.exit.critedge_crit_edge ], [ %8, %do.body13.i.i.i.batadv_frag_clear_chain.exit.critedge_crit_edge ]
  %pprev2.i.i.i.lcssa = phi ptr [ %pprev2.i.i.i12, %land.rhs.i.preheader.batadv_frag_clear_chain.exit.critedge_crit_edge ], [ %pprev14.i.i.i, %do.body13.i.i.i.batadv_frag_clear_chain.exit.critedge_crit_edge ]
  %19 = ptrtoint ptr %entry1.029.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i.lcssa, align 4
  %20 = ptrtoint ptr %pprev2.i.i.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.lcssa, align 4
  %skb.i.c11 = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i.lcssa, i32 0, i32 1
  %21 = ptrtoint ptr %skb.i.c11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb.i.c11, align 4
  tail call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %entry1.029.i.lcssa) #7
  br label %batadv_frag_clear_chain.exit

batadv_frag_clear_chain.exit:                     ; preds = %batadv_frag_clear_chain.exit.critedge, %if.then.batadv_frag_clear_chain.exit_crit_edge
  %size = getelementptr %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 33, i32 %indvars.iv, i32 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %size, align 2
  br label %if.end

if.end:                                           ; preds = %batadv_frag_clear_chain.exit, %lor.lhs.false.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_frag_skb_buffer(ptr nocapture noundef %skb, ptr noundef %orig_node_src) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca %struct.hlist_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head) #7
  %0 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %head, align 4
  %1 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i.i, label %entry.if.end.i_crit_edge, label %cond.true.i.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cond.true.i.i:                                    ; preds = %entry
  %call.i.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %2, i32 noundef %4) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.batadv_frag_insert_packet.exit_crit_edge, label %cond.true.i.i.if.end.i_crit_edge

cond.true.i.i.if.end.i_crit_edge:                 ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cond.true.i.i.batadv_frag_insert_packet.exit_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_insert_packet.exit

if.end.i:                                         ; preds = %cond.true.i.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %seqno1.i = getelementptr inbounds %struct.batadv_frag_packet, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %seqno1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %seqno1.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2592, i32 noundef 16) #10
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.i.batadv_frag_insert_packet.exit_crit_edge, label %if.end5.i

if.end.i.batadv_frag_insert_packet.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_insert_packet.exit

if.end5.i:                                        ; preds = %if.end.i
  %10 = and i16 %8, 7
  %conv2.i = zext i16 %10 to i32
  %skb6.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %skb6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %skb6.i, align 8
  %no.i = getelementptr inbounds %struct.batadv_frag_packet, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %no.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %no.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %no7.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %no7.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.lshr.i, ptr %no7.i, align 4
  %arrayidx.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i
  %lock.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end5.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.end5.i.if.end.i.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.end5.i
  %dep_map.i.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 1, i32 0, i32 0, i32 4
  %call.i.i156.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i156.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i156.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !23

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.end5.i.if.end.i.i_crit_edge
  %seqno24.i.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 3
  %15 = ptrtoint ptr %seqno24.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %seqno24.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %8)
  %cmp26.i.i = icmp eq i16 %16, %8
  br i1 %cmp26.i.i, label %if.end13.i, label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.end.i.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i157.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i157.i, label %if.then9.i.thread, label %land.rhs.i.preheader.i.i

if.then9.i.thread:                                ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %size.i.i26 = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 4
  %19 = ptrtoint ptr %size.i.i26 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %size.i.i26, align 2
  %20 = ptrtoint ptr %seqno24.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %8, ptr %seqno24.i.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr null, ptr %call7.i.i, align 8
  br label %hlist_add_head.exit.i

land.rhs.i.preheader.i.i:                         ; preds = %if.end29.i.i
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %pprev2.i.i.i44.i.i = getelementptr inbounds %struct.hlist_node, ptr %18, i32 0, i32 1
  %24 = ptrtoint ptr %pprev2.i.i.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pprev2.i.i.i44.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %23, ptr %25, align 4
  %tobool.not.i.i.i45.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i45.i.i, label %land.rhs.i.preheader.i.i.if.then9.i_crit_edge, label %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge

land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge: ; preds = %land.rhs.i.preheader.i.i
  br label %do.body13.i.i.i.i.i

land.rhs.i.preheader.i.i.if.then9.i_crit_edge:    ; preds = %land.rhs.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

do.body13.i.i.i.i.i:                              ; preds = %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge, %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge
  %27 = phi ptr [ %37, %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge ], [ %25, %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge ]
  %pprev2.i.i.i47.i.i = phi ptr [ %pprev14.i.i.i.i.i, %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge ], [ %pprev2.i.i.i44.i.i, %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge ]
  %28 = phi ptr [ %35, %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge ], [ %23, %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge ]
  %entry1.029.i46.i.i = phi ptr [ %28, %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge ], [ %18, %land.rhs.i.preheader.i.i.do.body13.i.i.i.i.i_crit_edge ]
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %pprev14.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %entry1.029.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i46.i.i, align 4
  %31 = ptrtoint ptr %pprev2.i.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i47.i.i, align 4
  %skb.i.c.i.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i46.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %skb.i.c.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skb.i.c.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %33, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %entry1.029.i46.i.i) #7
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 4
  %36 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pprev14.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %35, ptr %37, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i.i.i, label %do.body13.i.i.i.i.i.if.then9.i_crit_edge, label %do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge

do.body13.i.i.i.i.i.do.body13.i.i.i.i.i_crit_edge: ; preds = %do.body13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13.i.i.i.i.i

do.body13.i.i.i.i.i.if.then9.i_crit_edge:         ; preds = %do.body13.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9.i

if.then9.i:                                       ; preds = %do.body13.i.i.i.i.i.if.then9.i_crit_edge, %land.rhs.i.preheader.i.i.if.then9.i_crit_edge
  %.lcssa202.sink204.i = phi ptr [ %18, %land.rhs.i.preheader.i.i.if.then9.i_crit_edge ], [ %28, %do.body13.i.i.i.i.i.if.then9.i_crit_edge ]
  %pprev14.i.i.i.i.lcssa.sink.i = phi ptr [ %pprev2.i.i.i44.i.i, %land.rhs.i.preheader.i.i.if.then9.i_crit_edge ], [ %pprev14.i.i.i.i.i, %do.body13.i.i.i.i.i.if.then9.i_crit_edge ]
  %39 = ptrtoint ptr %.lcssa202.sink204.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa202.sink204.i, align 4
  %40 = ptrtoint ptr %pprev14.i.i.i.i.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev14.i.i.i.i.lcssa.sink.i, align 4
  %skb.i.c43.i.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %.lcssa202.sink204.i, i32 0, i32 1
  %41 = ptrtoint ptr %skb.i.c43.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %skb.i.c43.i.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %42, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %.lcssa202.sink204.i) #7
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load ptr, ptr %arrayidx.i, align 4
  %size.i.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 4
  %44 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %size.i.i, align 2
  %45 = ptrtoint ptr %seqno24.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %8, ptr %seqno24.i.i, align 4
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %.pr, ptr %call7.i.i, align 8
  %tobool.not.i158.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i158.i, label %if.then9.i.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then9.i.hlist_add_head.exit.i_crit_edge:       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %.pr, i32 0, i32 1
  %47 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then9.i.hlist_add_head.exit.i_crit_edge, %if.then9.i.thread
  %size.i.i28 = phi ptr [ %size.i.i26, %if.then9.i.thread ], [ %size.i.i, %do.body12.i.i ], [ %size.i.i, %if.then9.i.hlist_add_head.exit.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  %52 = trunc i32 %51 to i16
  %conv11.i = add i16 %52, -20
  %53 = ptrtoint ptr %size.i.i28 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv11.i, ptr %size.i.i28, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %timestamp.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 2
  %55 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %timestamp.i, align 4
  %total_size.i = getelementptr inbounds %struct.batadv_frag_packet, ptr %6, i32 0, i32 7
  %56 = ptrtoint ptr %total_size.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %total_size.i, align 2
  %total_size12.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 5
  %58 = ptrtoint ptr %total_size12.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %total_size12.i, align 4
  br label %out.i

if.end13.i:                                       ; preds = %if.end.i.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %frag_entry_curr.0185.i = load ptr, ptr %arrayidx.i, align 4
  %tobool17.not186.i = icmp eq ptr %frag_entry_curr.0185.i, null
  br i1 %tobool17.not186.i, label %if.end13.i.out.i_crit_edge, label %for.body.lr.ph.i

if.end13.i.out.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

for.body.lr.ph.i:                                 ; preds = %if.end13.i
  %60 = ptrtoint ptr %no7.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %no7.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end25.i
  %62 = ptrtoint ptr %frag_entry_curr.0187.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %frag_entry_curr.0.i = load ptr, ptr %frag_entry_curr.0187.i, align 4
  %tobool17.not.i = icmp eq ptr %frag_entry_curr.0.i, null
  br i1 %tobool17.not.i, label %if.then57.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %frag_entry_curr.0187.i = phi ptr [ %frag_entry_curr.0185.i, %for.body.lr.ph.i ], [ %frag_entry_curr.0.i, %for.cond.i.for.body.i_crit_edge ]
  %no18.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %frag_entry_curr.0187.i, i32 0, i32 2
  %63 = ptrtoint ptr %no18.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %no18.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %61)
  %cmp22.i = icmp eq i8 %64, %61
  br i1 %cmp22.i, label %err.thread177.i, label %if.end25.i

err.thread177.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br label %batadv_frag_insert_packet.exit

if.end25.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %61)
  %cmp30.i = icmp ult i8 %64, %61
  br i1 %cmp30.i, label %if.then32.i, label %for.cond.i

if.then32.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i159.i = getelementptr inbounds %struct.hlist_node, ptr %frag_entry_curr.0187.i, i32 0, i32 1
  %65 = ptrtoint ptr %pprev.i159.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pprev.i159.i, align 4
  %pprev3.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %pprev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %pprev3.i.i, align 4
  %68 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %frag_entry_curr.0187.i, ptr %call7.i.i, align 8
  store volatile ptr %call7.i.i, ptr %pprev.i159.i, align 4
  %69 = load ptr, ptr %pprev3.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %call7.i.i, ptr %69, align 4
  %len35.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %71 = ptrtoint ptr %len35.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len35.i, align 4
  %size38.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 4
  %73 = ptrtoint ptr %size38.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size38.i, align 2
  %75 = trunc i32 %72 to i16
  %76 = add i16 %75, -20
  %conv40.i = add i16 %76, %74
  store i16 %conv40.i, ptr %size38.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %timestamp41.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 2
  %78 = ptrtoint ptr %timestamp41.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %timestamp41.i, align 4
  br label %out.i

if.then57.i:                                      ; preds = %for.cond.i
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr null, ptr %call7.i.i, align 8
  %80 = ptrtoint ptr %frag_entry_curr.0187.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call7.i.i, ptr %frag_entry_curr.0187.i, align 4
  %pprev.i160.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %pprev.i160.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %frag_entry_curr.0187.i, ptr %pprev.i160.i, align 4
  %82 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i161.i = icmp eq ptr %82, null
  br i1 %tobool.not.i161.i, label %if.then57.i.hlist_add_behind.exit.i_crit_edge, label %do.body24.i.i

if.then57.i.hlist_add_behind.exit.i_crit_edge:    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_behind.exit.i

do.body24.i.i:                                    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev27.i.i = getelementptr inbounds %struct.hlist_node, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %pprev27.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %call7.i.i, ptr %pprev27.i.i, align 4
  br label %hlist_add_behind.exit.i

hlist_add_behind.exit.i:                          ; preds = %do.body24.i.i, %if.then57.i.hlist_add_behind.exit.i_crit_edge
  %len60.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %84 = ptrtoint ptr %len60.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len60.i, align 4
  %size63.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 4
  %86 = ptrtoint ptr %size63.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %size63.i, align 2
  %88 = trunc i32 %85 to i16
  %89 = add i16 %88, -20
  %conv66.i = add i16 %89, %87
  store i16 %conv66.i, ptr %size63.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %90 = load volatile i32, ptr @jiffies, align 128
  %timestamp67.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 2
  %91 = ptrtoint ptr %timestamp67.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %timestamp67.i, align 4
  br label %out.i

out.i:                                            ; preds = %hlist_add_behind.exit.i, %if.then32.i, %if.end13.i.out.i_crit_edge, %hlist_add_head.exit.i
  %extract.t.not.i = phi i1 [ false, %hlist_add_behind.exit.i ], [ false, %if.then32.i ], [ false, %hlist_add_head.exit.i ], [ true, %if.end13.i.out.i_crit_edge ]
  %size69.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 4
  %92 = ptrtoint ptr %size69.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %size69.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20160, i16 %93)
  %cmp72.i = icmp ugt i16 %93, 20160
  br i1 %cmp72.i, label %out.i.if.then86.i_crit_edge, label %lor.lhs.false.i

out.i.if.then86.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i

lor.lhs.false.i:                                  ; preds = %out.i
  %total_size74.i = getelementptr %struct.batadv_orig_node, ptr %orig_node_src, i32 0, i32 33, i32 %conv2.i, i32 5
  %94 = ptrtoint ptr %total_size74.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %total_size74.i, align 4
  %total_size76.i = getelementptr inbounds %struct.batadv_frag_packet, ptr %6, i32 0, i32 7
  %96 = ptrtoint ptr %total_size76.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %total_size76.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %97)
  %cmp78.not.i = icmp ne i16 %95, %97
  call void @__sanitizer_cov_trace_const_cmp2(i16 20160, i16 %95)
  %cmp84.i = icmp ugt i16 %95, 20160
  %or.cond.i = or i1 %cmp84.i, %cmp78.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then86.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then86.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86.i

if.then86.i:                                      ; preds = %lor.lhs.false.i.if.then86.i_crit_edge, %out.i.if.then86.i_crit_edge
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not28.i.i = icmp eq ptr %99, null
  br i1 %tobool3.not28.i.i, label %if.then86.i.err.sink.split.i_crit_edge, label %land.rhs.i163.preheader.i

if.then86.i.err.sink.split.i_crit_edge:           ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split.i

land.rhs.i163.preheader.i:                        ; preds = %if.then86.i
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %pprev2.i.i.i188.i = getelementptr inbounds %struct.hlist_node, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %pprev2.i.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pprev2.i.i.i188.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %101, ptr %103, align 4
  %tobool.not.i.i.i189.i = icmp eq ptr %101, null
  br i1 %tobool.not.i.i.i189.i, label %land.rhs.i163.preheader.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge, label %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge

land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge: ; preds = %land.rhs.i163.preheader.i
  br label %do.body13.i.i.i.i

land.rhs.i163.preheader.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge: ; preds = %land.rhs.i163.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_clear_chain.exit.critedge.i

do.body13.i.i.i.i:                                ; preds = %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge, %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge
  %105 = phi ptr [ %115, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %103, %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge ]
  %pprev2.i.i.i191.i = phi ptr [ %pprev14.i.i.i.i, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %pprev2.i.i.i188.i, %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge ]
  %106 = phi ptr [ %113, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %101, %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge ]
  %entry1.029.i190.i = phi ptr [ %106, %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge ], [ %99, %land.rhs.i163.preheader.i.do.body13.i.i.i.i_crit_edge ]
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %pprev14.i.i.i.i, align 4
  %108 = ptrtoint ptr %entry1.029.i190.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i190.i, align 4
  %109 = ptrtoint ptr %pprev2.i.i.i191.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i191.i, align 4
  %skb.i.c.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i190.i, i32 0, i32 1
  %110 = ptrtoint ptr %skb.i.c.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %skb.i.c.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %111, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %entry1.029.i190.i) #7
  %112 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %106, align 4
  %114 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pprev14.i.i.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %113, ptr %115, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %113, null
  br i1 %tobool.not.i.i.i.i, label %do.body13.i.i.i.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge, label %do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge

do.body13.i.i.i.i.do.body13.i.i.i.i_crit_edge:    ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13.i.i.i.i

do.body13.i.i.i.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge: ; preds = %do.body13.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_clear_chain.exit.critedge.i

batadv_frag_clear_chain.exit.critedge.i:          ; preds = %do.body13.i.i.i.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge, %land.rhs.i163.preheader.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge
  %entry1.029.i.lcssa.i = phi ptr [ %99, %land.rhs.i163.preheader.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge ], [ %106, %do.body13.i.i.i.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge ]
  %pprev2.i.i.i.lcssa.i = phi ptr [ %pprev2.i.i.i188.i, %land.rhs.i163.preheader.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge ], [ %pprev14.i.i.i.i, %do.body13.i.i.i.i.batadv_frag_clear_chain.exit.critedge.i_crit_edge ]
  %117 = ptrtoint ptr %entry1.029.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i.lcssa.i, align 4
  %118 = ptrtoint ptr %pprev2.i.i.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.lcssa.i, align 4
  %skb.i.c180.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i.lcssa.i, i32 0, i32 1
  %119 = ptrtoint ptr %skb.i.c180.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %skb.i.c180.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %120, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %entry1.029.i.lcssa.i) #7
  br label %err.sink.split.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %93)
  %cmp93.i = icmp eq i16 %95, %93
  br i1 %cmp93.i, label %if.then95.i, label %if.else.i.err.i_crit_edge

if.else.i.err.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.then95.i:                                      ; preds = %if.else.i
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i, align 4
  %123 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %head, align 4
  %tobool.not.i165.i = icmp eq ptr %122, null
  br i1 %tobool.not.i165.i, label %if.then95.i.hlist_move_list.exit.i_crit_edge, label %if.then.i.i

if.then95.i.hlist_move_list.exit.i_crit_edge:     ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_move_list.exit.i

if.then.i.i:                                      ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i166.i = getelementptr inbounds %struct.hlist_node, ptr %122, i32 0, i32 1
  %124 = ptrtoint ptr %pprev.i166.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %head, ptr %pprev.i166.i, align 4
  br label %hlist_move_list.exit.i

hlist_move_list.exit.i:                           ; preds = %if.then.i.i, %if.then95.i.hlist_move_list.exit.i_crit_edge
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %arrayidx.i, align 4
  br label %err.sink.split.i

err.sink.split.i:                                 ; preds = %hlist_move_list.exit.i, %batadv_frag_clear_chain.exit.critedge.i, %if.then86.i.err.sink.split.i_crit_edge
  %126 = ptrtoint ptr %size69.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %size69.i, align 2
  br label %err.i

err.i:                                            ; preds = %err.sink.split.i, %if.else.i.err.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #7
  br i1 %extract.t.not.i, label %err.i.batadv_frag_insert_packet.exit_crit_edge, label %if.end

err.i.batadv_frag_insert_packet.exit_crit_edge:   ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_insert_packet.exit

batadv_frag_insert_packet.exit:                   ; preds = %err.i.batadv_frag_insert_packet.exit_crit_edge, %err.thread177.i, %if.end.i.batadv_frag_insert_packet.exit_crit_edge, %cond.true.i.i.batadv_frag_insert_packet.exit_crit_edge
  %frag_entry_new.0176.i = phi ptr [ %call7.i.i, %err.i.batadv_frag_insert_packet.exit_crit_edge ], [ %call7.i.i, %err.thread177.i ], [ null, %if.end.i.batadv_frag_insert_packet.exit_crit_edge ], [ null, %cond.true.i.i.batadv_frag_insert_packet.exit_crit_edge ]
  call void @kfree(ptr noundef %frag_entry_new.0176.i) #7
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #7
  br label %out_err

if.end:                                           ; preds = %err.i
  %127 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %head, align 4
  %tobool.not.i11.not = icmp eq ptr %128, null
  br i1 %tobool.not.i11.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end3:                                          ; preds = %if.end
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %128, i32 0, i32 1
  %131 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pprev2.i.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %130, ptr %132, align 4
  %tobool.not.i.i.i12 = icmp eq ptr %130, null
  br i1 %tobool.not.i.i.i12, label %if.end3.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

if.end3.hlist_del.exit.i_crit_edge:               ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %130, i32 0, i32 1
  %134 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %132, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %if.end3.hlist_del.exit.i_crit_edge
  %135 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 256 to ptr), ptr %128, align 4
  %136 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %skb.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %128, i32 0, i32 1
  %137 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %skb.i, align 4
  call void @kfree(ptr noundef nonnull %128) #7
  %data.i13 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 19
  %139 = ptrtoint ptr %data.i13 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data.i13, align 4
  %total_size.i14 = getelementptr inbounds %struct.batadv_frag_packet, ptr %140, i32 0, i32 7
  %141 = ptrtoint ptr %total_size.i14 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %total_size.i14, align 2
  %conv.i = zext i16 %142 to i32
  %add.i = add nuw nsw i32 %conv.i, 20
  %len.i15 = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 6
  %143 = ptrtoint ptr %len.i15 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %len.i15, align 4
  %sub.i = sub i32 %add.i, %144
  %call.i = call i32 @pskb_expand_head(ptr noundef %138, i32 noundef 0, i32 noundef %sub.i, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i17

if.then.i:                                        ; preds = %hlist_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %138, i32 noundef 0) #7
  br label %free.i

if.end.i17:                                       ; preds = %hlist_del.exit.i
  %call3.i = call ptr @skb_pull(ptr noundef %138, i32 noundef 20) #7
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 15
  %145 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load.i16 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i16, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %146 = ptrtoint ptr %data.i13 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i13, align 4
  %add.ptr5.i = getelementptr i8, ptr %147, i32 -14
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 18
  %148 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 15, i32 0, i32 21
  %150 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %151 to i32
  %add.ptr.i.i = getelementptr i8, ptr %149, i32 %conv.i.i
  %152 = call ptr @memmove(ptr %add.ptr5.i, ptr %add.ptr.i.i, i32 14)
  %153 = load ptr, ptr %data.i13, align 4
  %154 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %153 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %154 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %add.i.i = add i16 %conv.i.i.i, -14
  store i16 %add.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 15, i32 0, i32 20
  %155 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %138, i32 0, i32 15, i32 0, i32 19
  %156 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i.i.i, ptr %transport_header.i.i, align 2
  %157 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %157)
  %entry1.068.i = load ptr, ptr %head, align 4
  %tobool12.not69.i = icmp eq ptr %entry1.068.i, null
  br i1 %tobool12.not69.i, label %if.end.i17.batadv_frag_merge_packets.exit_crit_edge, label %if.end.i17.for.body.i18_crit_edge

if.end.i17.for.body.i18_crit_edge:                ; preds = %if.end.i17
  br label %for.body.i18

if.end.i17.batadv_frag_merge_packets.exit_crit_edge: ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_merge_packets.exit

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %if.end.i17.for.body.i18_crit_edge
  %entry1.070.i = phi ptr [ %entry1.0.i, %for.body.i18.for.body.i18_crit_edge ], [ %entry1.068.i, %if.end.i17.for.body.i18_crit_edge ]
  %skb13.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.070.i, i32 0, i32 1
  %158 = ptrtoint ptr %skb13.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %skb13.i, align 4
  %len14.i = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 6
  %160 = ptrtoint ptr %len14.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len14.i, align 4
  %sub15.i = add i32 %161, -20
  %data17.i = getelementptr inbounds %struct.sk_buff, ptr %159, i32 0, i32 19
  %162 = ptrtoint ptr %data17.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %data17.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %163, i32 20
  %call.i.i = call ptr @skb_put(ptr noundef %138, i32 noundef %sub15.i) #7
  %164 = call ptr @memcpy(ptr %call.i.i, ptr %add.ptr18.i, i32 %sub15.i)
  %165 = ptrtoint ptr %entry1.070.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %entry1.0.i = load ptr, ptr %entry1.070.i, align 4
  %tobool12.not.i = icmp eq ptr %entry1.0.i, null
  br i1 %tobool12.not.i, label %for.body.i18.free.i_crit_edge, label %for.body.i18.for.body.i18_crit_edge

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i18

for.body.i18.free.i_crit_edge:                    ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i

free.i:                                           ; preds = %for.body.i18.free.i_crit_edge, %if.then.i
  %skb_out.0.ph.i = phi ptr [ null, %if.then.i ], [ %138, %for.body.i18.free.i_crit_edge ]
  %166 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr.i = load ptr, ptr %head, align 4
  %tobool3.not28.i.i19 = icmp eq ptr %.pr.i, null
  br i1 %tobool3.not28.i.i19, label %free.i.batadv_frag_merge_packets.exit_crit_edge, label %free.i.land.rhs.i.i21_crit_edge

free.i.land.rhs.i.i21_crit_edge:                  ; preds = %free.i
  br label %land.rhs.i.i21

free.i.batadv_frag_merge_packets.exit_crit_edge:  ; preds = %free.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_merge_packets.exit

land.rhs.i.i21:                                   ; preds = %if.end.i.i25.land.rhs.i.i21_crit_edge, %free.i.land.rhs.i.i21_crit_edge
  %entry1.029.i.i = phi ptr [ %168, %if.end.i.i25.land.rhs.i.i21_crit_edge ], [ %.pr.i, %free.i.land.rhs.i.i21_crit_edge ]
  %167 = ptrtoint ptr %entry1.029.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %entry1.029.i.i, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.029.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %168, ptr %170, align 4
  %tobool.not.i.i.i.i20 = icmp eq ptr %168, null
  br i1 %tobool.not.i.i.i.i20, label %land.rhs.i.i21.hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i.i23

land.rhs.i.i21.hlist_del.exit.i.i_crit_edge:      ; preds = %land.rhs.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit.i.i

do.body13.i.i.i.i23:                              ; preds = %land.rhs.i.i21
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i.i.i22 = getelementptr inbounds %struct.hlist_node, ptr %168, i32 0, i32 1
  %172 = ptrtoint ptr %pprev14.i.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %170, ptr %pprev14.i.i.i.i22, align 4
  br label %hlist_del.exit.i.i

hlist_del.exit.i.i:                               ; preds = %do.body13.i.i.i.i23, %land.rhs.i.i21.hlist_del.exit.i.i_crit_edge
  %173 = ptrtoint ptr %entry1.029.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.029.i.i, align 4
  %174 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i.i, align 4
  %skb.i.i = getelementptr inbounds %struct.batadv_frag_list_entry, ptr %entry1.029.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %skb.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %skb.i.i, align 4
  br i1 %cmp.i, label %if.then.i.i24, label %if.else.i.i

if.then.i.i24:                                    ; preds = %hlist_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree_skb_reason(ptr noundef %176, i32 noundef 0) #7
  br label %if.end.i.i25

if.else.i.i:                                      ; preds = %hlist_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @consume_skb(ptr noundef %176) #7
  br label %if.end.i.i25

if.end.i.i25:                                     ; preds = %if.else.i.i, %if.then.i.i24
  call void @kfree(ptr noundef nonnull %entry1.029.i.i) #7
  br i1 %tobool.not.i.i.i.i20, label %if.end.i.i25.batadv_frag_merge_packets.exit_crit_edge, label %if.end.i.i25.land.rhs.i.i21_crit_edge

if.end.i.i25.land.rhs.i.i21_crit_edge:            ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i21

if.end.i.i25.batadv_frag_merge_packets.exit_crit_edge: ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_frag_merge_packets.exit

batadv_frag_merge_packets.exit:                   ; preds = %if.end.i.i25.batadv_frag_merge_packets.exit_crit_edge, %free.i.batadv_frag_merge_packets.exit_crit_edge, %if.end.i17.batadv_frag_merge_packets.exit_crit_edge
  %skb_out.073.i = phi ptr [ %skb_out.0.ph.i, %free.i.batadv_frag_merge_packets.exit_crit_edge ], [ %138, %if.end.i17.batadv_frag_merge_packets.exit_crit_edge ], [ %skb_out.0.ph.i, %if.end.i.i25.batadv_frag_merge_packets.exit_crit_edge ]
  %tobool5.not = icmp eq ptr %skb_out.073.i, null
  br i1 %tobool5.not, label %batadv_frag_merge_packets.exit.out_err_crit_edge, label %batadv_frag_merge_packets.exit.out_crit_edge

batadv_frag_merge_packets.exit.out_crit_edge:     ; preds = %batadv_frag_merge_packets.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

batadv_frag_merge_packets.exit.out_err_crit_edge: ; preds = %batadv_frag_merge_packets.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_err

out:                                              ; preds = %batadv_frag_merge_packets.exit.out_crit_edge, %if.end.out_crit_edge
  %skb_out.0 = phi ptr [ null, %if.end.out_crit_edge ], [ %skb_out.073.i, %batadv_frag_merge_packets.exit.out_crit_edge ]
  br label %out_err

out_err:                                          ; preds = %out, %batadv_frag_merge_packets.exit.out_err_crit_edge, %batadv_frag_insert_packet.exit
  %skb_out.1 = phi ptr [ %skb_out.0, %out ], [ null, %batadv_frag_merge_packets.exit.out_err_crit_edge ], [ null, %batadv_frag_insert_packet.exit ]
  %ret.0.off0 = phi i1 [ true, %out ], [ false, %batadv_frag_merge_packets.exit.out_err_crit_edge ], [ false, %batadv_frag_insert_packet.exit ]
  %177 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %skb_out.1, ptr %skb, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head) #7
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @batadv_frag_skb_fwd(ptr noundef %skb, ptr noundef %recv_if, ptr nocapture noundef readnone %orig_node_src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %soft_iface = getelementptr inbounds %struct.batadv_hard_iface, ptr %recv_if, i32 0, i32 7
  %0 = ptrtoint ptr %soft_iface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soft_iface, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dest = getelementptr inbounds %struct.batadv_frag_packet, ptr %3, i32 0, i32 4
  %call1 = tail call ptr @batadv_orig_hash_find(ptr noundef %add.ptr.i, ptr noundef %dest) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.batadv_neigh_node_put.exit_crit_edge, label %if.end

entry.batadv_neigh_node_put.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @batadv_find_router(ptr noundef %add.ptr.i, ptr noundef nonnull %call1, ptr noundef %recv_if) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end.i_crit_edge, label %if.end5

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end5:                                          ; preds = %if.end
  %total_size6 = getelementptr inbounds %struct.batadv_frag_packet, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %total_size6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %total_size6, align 2
  %conv = zext i16 %5 to i32
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_incoming, align 4
  %net_dev = getelementptr inbounds %struct.batadv_hard_iface, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp ult i32 %11, %conv
  br i1 %cmp, label %if.then8, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then8:                                         ; preds = %if.end5
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %bat_counters.i = getelementptr i8, ptr %1, i32 2312
  %13 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %14, i32 15
  %15 = ptrtoint ptr %arrayidx.i to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %add15.i = add i64 %24, 1
  store i64 %add15.i, ptr %22, align 8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.batadv_add_counter.exit_crit_edge, !prof !23

if.then8.batadv_add_counter.exit_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i, %if.then8.batadv_add_counter.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #7, !srcloc !26
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %add = add i32 %27, 14
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %conv6.i = zext i32 %add to i64
  %29 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i26 = getelementptr i64, ptr %30, i32 16
  %31 = ptrtoint ptr %arrayidx.i26 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i27 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i27 to ptr
  %cpu.i28 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i28, align 4
  %arrayidx14.i29 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx14.i29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.i29, align 4
  %add.i30 = add i32 %37, %31
  %38 = inttoptr i32 %add.i30 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %38, align 8
  %add15.i31 = add i64 %40, %conv6.i
  store i64 %add15.i31, ptr %38, align 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i32 = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i32)
  %tobool.not.i33 = icmp eq i32 %and.i.i.i32, 0
  br i1 %tobool.not.i33, label %if.then.i34, label %batadv_add_counter.exit.batadv_add_counter.exit35_crit_edge, !prof !23

batadv_add_counter.exit.batadv_add_counter.exit35_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit35

if.then.i34:                                      ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit35

batadv_add_counter.exit35:                        ; preds = %if.then.i34, %batadv_add_counter.exit.batadv_add_counter.exit35_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #7, !srcloc !26
  %ttl = getelementptr inbounds %struct.batadv_frag_packet, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ttl, align 2
  %dec = add i8 %43, -1
  store i8 %dec, ptr %ttl, align 2
  %call9 = tail call i32 @batadv_send_unicast_skb(ptr noundef %skb, ptr noundef nonnull %call2) #7
  br label %if.end.i

if.end.i:                                         ; preds = %batadv_add_counter.exit35, %if.end5.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %ret.0.off0.ph = phi i1 [ false, %if.end.if.end.i_crit_edge ], [ false, %if.end5.if.end.i_crit_edge ], [ true, %batadv_add_counter.exit35 ]
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call1, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_orig_node_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #7
  br label %batadv_orig_node_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #7, !callees !31
  br label %batadv_orig_node_put.exit

batadv_orig_node_put.exit:                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_orig_node_put.exit_crit_edge
  br i1 %tobool3.not, label %batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge, label %if.end.i42

batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge: ; preds = %batadv_orig_node_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.end.i42:                                       ; preds = %batadv_orig_node_put.exit
  %refcount.i38 = getelementptr inbounds %struct.batadv_neigh_node, ptr %call2, i32 0, i32 8
  %call.i.i.i.i.i.i.i39 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i38, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i38, i32 1, i32 3, i32 1) #7
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i38, ptr %refcount.i38, i32 1, ptr elementtype(i32) %refcount.i38) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i40 = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %cmp.i.i.i.i.i41 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i40, 1
  br i1 %cmp.i.i.i.i.i41, label %if.then.i.i46, label %if.end5.i.i.i.i.i44

if.end5.i.i.i.i.i44:                              ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i40)
  %.not.i.i.i.i.i43 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i40, 0
  br i1 %.not.i.i.i.i.i43, label %if.end5.i.i.i.i.i44.batadv_neigh_node_put.exit_crit_edge, label %if.then10.i.i.i.i.i45, !prof !29

if.end5.i.i.i.i.i44.batadv_neigh_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_neigh_node_put.exit

if.then10.i.i.i.i.i45:                            ; preds = %if.end5.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i38, i32 noundef 3) #7
  br label %batadv_neigh_node_put.exit

if.then.i.i46:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @batadv_neigh_node_release(ptr noundef %refcount.i38) #7, !callees !31
  br label %batadv_neigh_node_put.exit

batadv_neigh_node_put.exit:                       ; preds = %if.then.i.i46, %if.then10.i.i.i.i.i45, %if.end5.i.i.i.i.i44.batadv_neigh_node_put.exit_crit_edge, %batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge, %entry.batadv_neigh_node_put.exit_crit_edge
  %ret.0.off05256 = phi i1 [ %ret.0.off0.ph, %batadv_orig_node_put.exit.batadv_neigh_node_put.exit_crit_edge ], [ %ret.0.off0.ph, %if.end5.i.i.i.i.i44.batadv_neigh_node_put.exit_crit_edge ], [ %ret.0.off0.ph, %if.then10.i.i.i.i.i45 ], [ %ret.0.off0.ph, %if.then.i.i46 ], [ false, %entry.batadv_neigh_node_put.exit_crit_edge ]
  ret i1 %ret.0.off05256
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_find_router(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_unicast_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_frag_send_packet(ptr noundef %skb, ptr nocapture noundef readonly %orig_node, ptr noundef %neigh_node) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %if_incoming = getelementptr inbounds %struct.batadv_neigh_node, ptr %neigh_node, i32 0, i32 5
  %0 = ptrtoint ptr %if_incoming to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %if_incoming, align 4
  %net_dev1 = getelementptr inbounds %struct.batadv_hard_iface, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %net_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev1, align 4
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %5)
  %cmp = icmp ult i32 %5, 1280
  %phi.bo = add i32 %5, -20
  %cond = select i1 %cmp, i32 %phi.bo, i32 1260
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp4 = icmp eq i32 %cond, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub6 = add i32 %7, -1
  %div = udiv i32 %sub6, %cond
  %add = add nuw i32 %div, 1
  %div9 = udiv i32 %sub6, %add
  %add10 = add nuw i32 %div9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div)
  %cmp11 = icmp ugt i32 %div, 15
  br i1 %cmp11, label %if.end.free_skb_crit_edge, label %if.end13

if.end.free_skb_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end13:                                         ; preds = %if.end
  %bat_priv14 = getelementptr inbounds %struct.batadv_orig_node, ptr %orig_node, i32 0, i32 25
  %8 = ptrtoint ptr %bat_priv14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bat_priv14, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !32
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i137 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i137, label %if.end13.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end13.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end13
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end13.rcu_read_lock.exit.i_crit_edge
  %primary_if.i = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 29
  %14 = ptrtoint ptr %primary_if.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %primary_if.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b18.i = load i1, ptr @batadv_primary_if_get_selected.__warned, align 1
  br i1 %.b18.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @batadv_primary_if_get_selected.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 110, ptr noundef nonnull @.str.2) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %15, null
  br i1 %tobool9.not.i, label %do.end7.i.out.i_crit_edge, label %if.end11.i

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end11.i:                                       ; preds = %do.end7.i
  %refcount.i = getelementptr inbounds %struct.batadv_hard_iface, ptr %15, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i, i32 noundef 4) #7
  %16 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcount.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.end11.i
  %18 = phi i32 [ %17, %if.end11.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %18, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 %21, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i) #7, !srcloc !33
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %21
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !29

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %23 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %24, 1
  %25 = or i32 %add5.i.i.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i.i.i = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !29

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 0) #7
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  %spec.select.i = select i1 %tobool12.i.i.i.i.not.i, ptr null, ptr %15
  br label %out.i

out.i:                                            ; preds = %kref_get_unless_zero.exit.i, %do.end7.i.out.i_crit_edge
  %hard_iface.0.i = phi ptr [ null, %do.end7.i.out.i_crit_edge ], [ %spec.select.i, %kref_get_unless_zero.exit.i ]
  %call.i19.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i19.i, label %out.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true.i22.i

out.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_primary_if_get_selected.exit

land.lhs.true.i22.i:                              ; preds = %out.i
  %call1.i20.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call1.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, label %land.lhs.true2.i24.i

land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_primary_if_get_selected.exit

land.lhs.true2.i24.i:                             ; preds = %land.lhs.true.i22.i
  %.b4.i23.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23.i, label %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, label %if.then.i25.i

land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge: ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_primary_if_get_selected.exit

if.then.i25.i:                                    ; preds = %land.lhs.true2.i24.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %batadv_primary_if_get_selected.exit

batadv_primary_if_get_selected.exit:              ; preds = %if.then.i25.i, %land.lhs.true2.i24.i.batadv_primary_if_get_selected.exit_crit_edge, %land.lhs.true.i22.i.batadv_primary_if_get_selected.exit_crit_edge, %out.i.batadv_primary_if_get_selected.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %28 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i.i.i.i26.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i26.i to ptr
  %preempt_count.i.i.i.i27.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i27.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i27.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool.not = icmp eq ptr %hard_iface.0.i, null
  br i1 %tobool.not, label %batadv_primary_if_get_selected.exit.free_skb_crit_edge, label %if.end16

batadv_primary_if_get_selected.exit.free_skb_crit_edge: ; preds = %batadv_primary_if_get_selected.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.end16:                                         ; preds = %batadv_primary_if_get_selected.exit
  %frag_seqno = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %frag_seqno, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @llvm.prefetch.p0(ptr %frag_seqno, i32 1, i32 3, i32 1) #7
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %frag_seqno, ptr %frag_seqno, i32 1, ptr elementtype(i32) %frag_seqno) #7, !srcloc !36
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  %conv = trunc i32 %asmresult.i.i.i.i to i16
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %conv22 = trunc i32 %34 to i16
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %35 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority, align 4
  %37 = and i32 %36, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %37)
  %38 = icmp eq i32 %37, 256
  %conv31 = trunc i32 %36 to i8
  %bf.value = shl nuw nsw i8 %conv31, 1
  %bf.shl = and i8 %bf.value, 14
  %storemerge = select i1 %38, i8 %bf.shl, i8 0
  %net_dev41 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 4
  %39 = ptrtoint ptr %net_dev41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev41, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 4
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i, align 2
  %47 = ptrtoint ptr %orig_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %orig_node, align 4
  %add.ptr.i138 = getelementptr i8, ptr %orig_node, i32 4
  %49 = ptrtoint ptr %add.ptr.i138 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i138, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add10)
  %cmp46254 = icmp ugt i32 %34, %add10
  br i1 %cmp46254, label %while.body.lr.ph, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end16
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 21
  %needed_tailroom.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 22
  %bat_counters.i = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %frag_header.sroa.10.0255 = phi i8 [ %storemerge, %while.body.lr.ph ], [ %108, %if.end67.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %frag_header.sroa.10.0255)
  %cmp51 = icmp ugt i8 %frag_header.sroa.10.0255, -17
  br i1 %cmp51, label %while.body.if.end.i184_crit_edge, label %if.end56, !prof !23

while.body.if.end.i184_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i184

if.end56:                                         ; preds = %while.body
  %51 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %needed_headroom.i, align 8
  %conv1.i = zext i16 %54 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %and.i = and i32 %add.i, 131056
  %55 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %needed_tailroom.i, align 2
  %conv3.i = zext i16 %56 to i32
  %add4.i = add nuw nsw i32 %and.i, 36
  %add5.i = add i32 %add10, %conv3.i
  %add6.i = add i32 %add5.i, %add4.i
  %call.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add6.i, i32 noundef 2592) #7
  %tobool.not.i140 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i140, label %if.end56.if.end.i184_crit_edge, label %if.end60

if.end56.if.end.i184_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i184

if.end60:                                         ; preds = %if.end56
  %57 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %priority, align 4
  %priority7.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 6
  %59 = ptrtoint ptr %priority7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %priority7.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %60 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %61, i32 %add4.i
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %62 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %63, i32 %add4.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %sub.i = sub i32 %65, %add10
  call void @skb_split(ptr noundef %skb, ptr noundef nonnull %call.i.i.i, i32 noundef %sub.i) #7
  %call9.i = call ptr @skb_push(ptr noundef nonnull %call.i.i.i, i32 noundef 20) #7
  %66 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 65, ptr %67, align 1
  %frag_header.sroa.6.0..sroa_idx189 = getelementptr inbounds i8, ptr %67, i32 1
  %69 = ptrtoint ptr %frag_header.sroa.6.0..sroa_idx189 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 15, ptr %frag_header.sroa.6.0..sroa_idx189, align 1
  %frag_header.sroa.8.0..sroa_idx191 = getelementptr inbounds i8, ptr %67, i32 2
  %70 = ptrtoint ptr %frag_header.sroa.8.0..sroa_idx191 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 50, ptr %frag_header.sroa.8.0..sroa_idx191, align 1
  %frag_header.sroa.10.0..sroa_idx193 = getelementptr inbounds i8, ptr %67, i32 3
  %71 = ptrtoint ptr %frag_header.sroa.10.0..sroa_idx193 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %frag_header.sroa.10.0255, ptr %frag_header.sroa.10.0..sroa_idx193, align 1
  %frag_header.sroa.19.0..sroa_idx195 = getelementptr inbounds i8, ptr %67, i32 4
  %72 = ptrtoint ptr %frag_header.sroa.19.0..sroa_idx195 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %48, ptr %frag_header.sroa.19.0..sroa_idx195, align 1
  %frag_header.sroa.24.0..sroa_idx197 = getelementptr inbounds i8, ptr %67, i32 8
  %73 = ptrtoint ptr %frag_header.sroa.24.0..sroa_idx197 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 2)
  store i16 %50, ptr %frag_header.sroa.24.0..sroa_idx197, align 1
  %frag_header.sroa.27.0..sroa_idx199 = getelementptr inbounds i8, ptr %67, i32 10
  %74 = ptrtoint ptr %frag_header.sroa.27.0..sroa_idx199 to i32
  call void @__asan_storeN_noabort(i32 %74, i32 4)
  store i32 %44, ptr %frag_header.sroa.27.0..sroa_idx199, align 1
  %frag_header.sroa.32.0..sroa_idx201 = getelementptr inbounds i8, ptr %67, i32 14
  %75 = ptrtoint ptr %frag_header.sroa.32.0..sroa_idx201 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %46, ptr %frag_header.sroa.32.0..sroa_idx201, align 1
  %frag_header.sroa.35.0..sroa_idx203 = getelementptr inbounds i8, ptr %67, i32 16
  %76 = ptrtoint ptr %frag_header.sroa.35.0..sroa_idx203 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %conv, ptr %frag_header.sroa.35.0..sroa_idx203, align 1
  %frag_header.sroa.37.0..sroa_idx205 = getelementptr inbounds i8, ptr %67, i32 18
  %77 = ptrtoint ptr %frag_header.sroa.37.0..sroa_idx205 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %conv22, ptr %frag_header.sroa.37.0..sroa_idx205, align 1
  %78 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %79 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i = getelementptr i64, ptr %80, i32 11
  %81 = ptrtoint ptr %arrayidx.i to i32
  %82 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx14.i, align 4
  %add.i141 = add i32 %87, %81
  %88 = inttoptr i32 %add.i141 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %88, align 8
  %add15.i = add i64 %90, 1
  store i64 %add15.i, ptr %88, align 8
  %91 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i = and i32 %91, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i142 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i142, label %if.then.i143, label %if.end60.batadv_add_counter.exit_crit_edge, !prof !23

if.end60.batadv_add_counter.exit_crit_edge:       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit

if.then.i143:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit

batadv_add_counter.exit:                          ; preds = %if.then.i143, %if.end60.batadv_add_counter.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %78) #7, !srcloc !26
  %len61 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %92 = ptrtoint ptr %len61 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len61, align 4
  %add62 = add i32 %93, 14
  %94 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %conv6.i = zext i32 %add62 to i64
  %95 = ptrtoint ptr %bat_counters.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bat_counters.i, align 4
  %arrayidx.i145 = getelementptr i64, ptr %96, i32 12
  %97 = ptrtoint ptr %arrayidx.i145 to i32
  %98 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i146 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i146 to ptr
  %cpu.i147 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu.i147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu.i147, align 4
  %arrayidx14.i148 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx14.i148 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx14.i148, align 4
  %add.i149 = add i32 %103, %97
  %104 = inttoptr i32 %add.i149 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %104, align 8
  %add15.i150 = add i64 %106, %conv6.i
  store i64 %add15.i150, ptr %104, align 8
  %107 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i151 = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i151)
  %tobool.not.i152 = icmp eq i32 %and.i.i.i151, 0
  br i1 %tobool.not.i152, label %if.then.i153, label %batadv_add_counter.exit.batadv_add_counter.exit154_crit_edge, !prof !23

batadv_add_counter.exit.batadv_add_counter.exit154_crit_edge: ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit154

if.then.i153:                                     ; preds = %batadv_add_counter.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit154

batadv_add_counter.exit154:                       ; preds = %if.then.i153, %batadv_add_counter.exit.batadv_add_counter.exit154_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %94) #7, !srcloc !26
  %call63 = call i32 @batadv_send_unicast_skb(ptr noundef nonnull %call.i.i.i, ptr noundef %neigh_node) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64.not = icmp eq i32 %call63, 0
  br i1 %cmp64.not, label %if.end67, label %batadv_add_counter.exit154.if.end.i184_crit_edge

batadv_add_counter.exit154.if.end.i184_crit_edge: ; preds = %batadv_add_counter.exit154
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i184

if.end67:                                         ; preds = %batadv_add_counter.exit154
  %108 = add nuw i8 %frag_header.sroa.10.0255, 16
  %109 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %len, align 4
  %cmp46 = icmp ugt i32 %110, %add10
  br i1 %cmp46, label %if.end67.while.body_crit_edge, label %if.end67.while.end_crit_edge

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %if.end16.while.end_crit_edge
  %frag_header.sroa.10.0.lcssa = phi i8 [ %storemerge, %if.end16.while.end_crit_edge ], [ %108, %if.end67.while.end_crit_edge ]
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %111 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i155 = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i155, label %skb_header_cloned.exit.thread.i, label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %while.end
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %112 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %113, i32 0, i32 10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #7
  %114 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %dataref1.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %118 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %117 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %119 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %sub.ptr.sub.i.i.i)
  %cmp.i1.i = icmp ult i32 %sub.ptr.sub.i.i.i, 34
  br i1 %cmp.i1.i, label %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge, label %if.end.i2.i

skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

skb_header_cloned.exit.thread.i:                  ; preds = %while.end
  %data.i.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %120 = ptrtoint ptr %data.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data.i.i5.i, align 4
  %head.i.i6.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %122 = ptrtoint ptr %head.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %head.i.i6.i, align 8
  %sub.ptr.lhs.cast.i.i7.i = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast.i.i8.i = ptrtoint ptr %123 to i32
  %sub.ptr.sub.i.i9.i = sub i32 %sub.ptr.lhs.cast.i.i7.i, %sub.ptr.rhs.cast.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %sub.ptr.sub.i.i9.i)
  %cmp.i110.i = icmp ult i32 %sub.ptr.sub.i.i9.i, 34
  br i1 %cmp.i110.i, label %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.if.end81_crit_edge

skb_header_cloned.exit.thread.i.if.end81_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i.i

if.end.thread.i.i:                                ; preds = %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge
  %sub.ptr.sub.i.i12.i = phi i32 [ %sub.ptr.sub.i.i9.i, %skb_header_cloned.exit.thread.i.if.end.thread.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i, %skb_header_cloned.exit.i.if.end.thread.i.i_crit_edge ]
  %phi.bo.i.i = sub nuw nsw i32 161, %sub.ptr.sub.i.i12.i
  %phi.bo11.i.i = and i32 %phi.bo.i.i, -128
  br label %skb_cow_head.exit

if.end.i2.i:                                      ; preds = %skb_header_cloned.exit.i
  %and.i.i156 = and i32 %115, 65535
  %shr.i.i = ashr i32 %115, 16
  %sub.i.i = sub nsw i32 %and.i.i156, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i2.i.if.end81_crit_edge, label %if.end.i2.i.skb_cow_head.exit_crit_edge

if.end.i2.i.skb_cow_head.exit_crit_edge:          ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_cow_head.exit

if.end.i2.i.if.end81_crit_edge:                   ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

skb_cow_head.exit:                                ; preds = %if.end.i2.i.skb_cow_head.exit_crit_edge, %if.end.thread.i.i
  %delta.010.i.i = phi i32 [ %phi.bo11.i.i, %if.end.thread.i.i ], [ 0, %if.end.i2.i.skb_cow_head.exit_crit_edge ]
  %call4.i.i = call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp78 = icmp slt i32 %call4.i.i, 0
  br i1 %cmp78, label %skb_cow_head.exit.if.end.i184_crit_edge, label %skb_cow_head.exit.if.end81_crit_edge

skb_cow_head.exit.if.end81_crit_edge:             ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

skb_cow_head.exit.if.end.i184_crit_edge:          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i184

if.end81:                                         ; preds = %skb_cow_head.exit.if.end81_crit_edge, %if.end.i2.i.if.end81_crit_edge, %skb_header_cloned.exit.thread.i.if.end81_crit_edge
  %call82 = call ptr @skb_push(ptr noundef %skb, i32 noundef 20) #7
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %124 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %data, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 65, ptr %125, align 1
  %frag_header.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 1
  %127 = ptrtoint ptr %frag_header.sroa.6.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 15, ptr %frag_header.sroa.6.0..sroa_idx, align 1
  %frag_header.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 2
  %128 = ptrtoint ptr %frag_header.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 50, ptr %frag_header.sroa.8.0..sroa_idx, align 1
  %frag_header.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 3
  %129 = ptrtoint ptr %frag_header.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %frag_header.sroa.10.0.lcssa, ptr %frag_header.sroa.10.0..sroa_idx, align 1
  %frag_header.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 4
  %130 = ptrtoint ptr %frag_header.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %130, i32 4)
  store i32 %48, ptr %frag_header.sroa.19.0..sroa_idx, align 1
  %frag_header.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 8
  %131 = ptrtoint ptr %frag_header.sroa.24.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 %50, ptr %frag_header.sroa.24.0..sroa_idx, align 1
  %frag_header.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 10
  %132 = ptrtoint ptr %frag_header.sroa.27.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %132, i32 4)
  store i32 %44, ptr %frag_header.sroa.27.0..sroa_idx, align 1
  %frag_header.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 14
  %133 = ptrtoint ptr %frag_header.sroa.32.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %133, i32 2)
  store i16 %46, ptr %frag_header.sroa.32.0..sroa_idx, align 1
  %frag_header.sroa.35.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 16
  %134 = ptrtoint ptr %frag_header.sroa.35.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %134, i32 2)
  store i16 %conv, ptr %frag_header.sroa.35.0..sroa_idx, align 1
  %frag_header.sroa.37.0..sroa_idx = getelementptr inbounds i8, ptr %125, i32 18
  %135 = ptrtoint ptr %frag_header.sroa.37.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %conv22, ptr %frag_header.sroa.37.0..sroa_idx, align 1
  %136 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %bat_counters.i157 = getelementptr inbounds %struct.batadv_priv, ptr %9, i32 0, i32 2
  %137 = ptrtoint ptr %bat_counters.i157 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bat_counters.i157, align 4
  %arrayidx.i158 = getelementptr i64, ptr %138, i32 11
  %139 = ptrtoint ptr %arrayidx.i158 to i32
  %140 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i159 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i159 to ptr
  %cpu.i160 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %cpu.i160 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cpu.i160, align 4
  %arrayidx14.i161 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx14.i161 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx14.i161, align 4
  %add.i162 = add i32 %145, %139
  %146 = inttoptr i32 %add.i162 to ptr
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %146, align 8
  %add15.i163 = add i64 %148, 1
  store i64 %add15.i163, ptr %146, align 8
  %149 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i164 = and i32 %149, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i164)
  %tobool.not.i165 = icmp eq i32 %and.i.i.i164, 0
  br i1 %tobool.not.i165, label %if.then.i166, label %if.end81.batadv_add_counter.exit167_crit_edge, !prof !23

if.end81.batadv_add_counter.exit167_crit_edge:    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit167

if.then.i166:                                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit167

batadv_add_counter.exit167:                       ; preds = %if.then.i166, %if.end81.batadv_add_counter.exit167_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %136) #7, !srcloc !26
  %150 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len, align 4
  %add84 = add i32 %151, 14
  %152 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !24
  %conv6.i168 = zext i32 %add84 to i64
  %153 = ptrtoint ptr %bat_counters.i157 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bat_counters.i157, align 4
  %arrayidx.i170 = getelementptr i64, ptr %154, i32 12
  %155 = ptrtoint ptr %arrayidx.i170 to i32
  %156 = call i32 @llvm.read_register.i32(metadata !13) #7
  %and.i.i171 = and i32 %156, -16384
  %157 = inttoptr i32 %and.i.i171 to ptr
  %cpu.i172 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %cpu.i172 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cpu.i172, align 4
  %arrayidx14.i173 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %159
  %160 = ptrtoint ptr %arrayidx14.i173 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx14.i173, align 4
  %add.i174 = add i32 %161, %155
  %162 = inttoptr i32 %add.i174 to ptr
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %162, align 8
  %add15.i175 = add i64 %164, %conv6.i168
  store i64 %add15.i175, ptr %162, align 8
  %165 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !25
  %and.i.i.i176 = and i32 %165, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i176)
  %tobool.not.i177 = icmp eq i32 %and.i.i.i176, 0
  br i1 %tobool.not.i177, label %if.then.i178, label %batadv_add_counter.exit167.batadv_add_counter.exit179_crit_edge, !prof !23

batadv_add_counter.exit167.batadv_add_counter.exit179_crit_edge: ; preds = %batadv_add_counter.exit167
  call void @__sanitizer_cov_trace_pc() #9
  br label %batadv_add_counter.exit179

if.then.i178:                                     ; preds = %batadv_add_counter.exit167
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %batadv_add_counter.exit179

batadv_add_counter.exit179:                       ; preds = %if.then.i178, %batadv_add_counter.exit167.batadv_add_counter.exit179_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %152) #7, !srcloc !26
  %call85 = call i32 @batadv_send_unicast_skb(ptr noundef %skb, ptr noundef %neigh_node) #7
  br label %if.end.i184

if.end.i184:                                      ; preds = %batadv_add_counter.exit179, %skb_cow_head.exit.if.end.i184_crit_edge, %batadv_add_counter.exit154.if.end.i184_crit_edge, %if.end56.if.end.i184_crit_edge, %while.body.if.end.i184_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %skb_cow_head.exit.if.end.i184_crit_edge ], [ null, %batadv_add_counter.exit179 ], [ %skb, %batadv_add_counter.exit154.if.end.i184_crit_edge ], [ %skb, %while.body.if.end.i184_crit_edge ], [ %skb, %if.end56.if.end.i184_crit_edge ]
  %ret.0 = phi i32 [ %call4.i.i, %skb_cow_head.exit.if.end.i184_crit_edge ], [ %call85, %batadv_add_counter.exit179 ], [ -12, %if.end56.if.end.i184_crit_edge ], [ -22, %while.body.if.end.i184_crit_edge ], [ 1, %batadv_add_counter.exit154.if.end.i184_crit_edge ]
  %refcount.i181 = getelementptr inbounds %struct.batadv_hard_iface, ptr %hard_iface.0.i, i32 0, i32 5
  %call.i.i.i.i.i.i.i182 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i181, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  call void @llvm.prefetch.p0(ptr %refcount.i181, i32 1, i32 3, i32 1) #7
  %166 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i181, ptr %refcount.i181, i32 1, ptr elementtype(i32) %refcount.i181) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i.i.i183 = extractvalue { i32, i32, i32 } %166, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i183)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i183, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i187, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i183)
  %.not.i.i.i.i.i185 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i183, 0
  br i1 %.not.i.i.i.i.i185, label %if.end5.i.i.i.i.i.free_skb_crit_edge, label %if.then10.i.i.i.i.i186, !prof !29

if.end5.i.i.i.i.i.free_skb_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

if.then10.i.i.i.i.i186:                           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i181, i32 noundef 3) #7
  br label %free_skb

if.then.i.i187:                                   ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @batadv_hardif_release(ptr noundef %refcount.i181) #7, !callees !31
  br label %free_skb

free_skb:                                         ; preds = %if.then.i.i187, %if.then10.i.i.i.i.i186, %if.end5.i.i.i.i.i.free_skb_crit_edge, %batadv_primary_if_get_selected.exit.free_skb_crit_edge, %if.end.free_skb_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %if.end.free_skb_crit_edge ], [ %skb, %batadv_primary_if_get_selected.exit.free_skb_crit_edge ], [ %skb.addr.0, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %skb.addr.0, %if.then10.i.i.i.i.i186 ], [ %skb.addr.0, %if.then.i.i187 ]
  %ret.1 = phi i32 [ -11, %if.end.free_skb_crit_edge ], [ -22, %batadv_primary_if_get_selected.exit.free_skb_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.free_skb_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i186 ], [ %ret.0, %if.then.i.i187 ]
  call void @kfree_skb_reason(ptr noundef %skb.addr.1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_skb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_neigh_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_hardif_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/batman-adv/fragmentation.c", i32 110, i32 2}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/batman-adv/hard-interface.h", i32 110, i32 15}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{!"sp"}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 599702, i64 599763}
!25 = !{i64 602434}
!26 = !{i64 602719}
!27 = !{i64 2148235906}
!28 = !{i64 2148150370, i64 2148150402, i64 2148150431, i64 2148150465, i64 2148150496, i64 2148150519}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2150566917}
!31 = !{ptr @batadv_hardif_release, ptr @batadv_neigh_node_release, ptr @batadv_orig_node_release}
!32 = !{i64 2149692370}
!33 = !{i64 521209, i64 521233, i64 521254, i64 521271, i64 521288}
!34 = !{i64 2149692636}
!35 = !{i64 2148231786}
!36 = !{i64 2148147095, i64 2148147127, i64 2148147156, i64 2148147190, i64 2148147221, i64 2148147244}
!37 = !{i64 2148232015}
