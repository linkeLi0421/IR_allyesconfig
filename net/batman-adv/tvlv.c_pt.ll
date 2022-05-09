; ModuleID = '/llk/IR_all_yes/net/batman-adv/tvlv.c_pt.bc'
source_filename = "../net/batman-adv/tvlv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.batadv_priv = type { %struct.atomic_t, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, ptr, %struct.hlist_head, %struct.spinlock, %struct.batadv_priv_bla, ptr, %struct.batadv_priv_gw, %struct.batadv_priv_tt, %struct.batadv_priv_tvlv, %struct.batadv_priv_dat, %struct.batadv_priv_mcast, %struct.atomic_t, %struct.batadv_priv_nc, %struct.batadv_priv_bat_v }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.batadv_priv_nc = type { %struct.delayed_work, i8, i32, i32, i32, i32, ptr, ptr }
%struct.batadv_priv_bat_v = type { ptr, i32, %struct.atomic_t, %struct.mutex, %struct.delayed_work }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.batadv_tvlv_container = type { %struct.hlist_node, %struct.batadv_tvlv_hdr, %struct.kref }
%struct.batadv_tvlv_hdr = type { i8, i8, i16 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.batadv_tvlv_handler = type { %struct.hlist_node, ptr, ptr, i8, i8, i8, %struct.kref, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.batadv_ogm_packet = type { i8, i8, i8, i8, i32, [6 x i8], [6 x i8], i8, i8, i16 }
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
%struct.batadv_unicast_tvlv_packet = type { i8, i8, i8, i8, [6 x i8], [6 x i8], i16, i16 }
%struct.batadv_orig_node = type { [6 x i8], %struct.hlist_head, ptr, i16, i32, i32, %struct.spinlock, i8, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, i32, i32, %struct.atomic_t, ptr, i16, %struct.spinlock, %struct.spinlock, [2 x i32], i32, %struct.hlist_head, %struct.spinlock, %struct.hlist_node, ptr, %struct.spinlock, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, [8 x %struct.batadv_frag_table_entry], %struct.hlist_head, %struct.spinlock, %struct.batadv_orig_bat_iv }
%struct.batadv_frag_table_entry = type { %struct.hlist_head, %struct.spinlock, i32, i16, i16, i16 }
%struct.batadv_orig_bat_iv = type { %struct.spinlock }

@batadv_tvlv_containers_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/batman-adv/tvlv.c\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@batadv_tvlv_handler_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private constant [25 x i8] c"../net/batman-adv/tvlv.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 456, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 695, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 723, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_container_unregister(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %container_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %container_list_lock) #8
  %call = tail call fastcc ptr @batadv_tvlv_container_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version)
  tail call fastcc void @batadv_tvlv_container_remove(ptr noundef %bat_priv, ptr noundef %call)
  tail call void @_raw_spin_unlock_bh(ptr noundef %container_list_lock) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tvlv_container_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !23

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tvlv25 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37
  %1 = ptrtoint ptr %tvlv25 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tvlv_tmp.067 = load ptr, ptr %tvlv25, align 4
  %tobool29.not68 = icmp eq ptr %tvlv_tmp.067, null
  br i1 %tobool29.not68, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %tvlv_tmp.069 = phi ptr [ %tvlv_tmp.0, %for.inc.for.body_crit_edge ], [ %tvlv_tmp.067, %if.end.for.body_crit_edge ]
  %tvlv_hdr = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv_tmp.069, i32 0, i32 1
  %2 = ptrtoint ptr %tvlv_hdr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tvlv_hdr, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %type)
  %cmp32.not = icmp eq i8 %3, %type
  br i1 %cmp32.not, label %if.end35, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end35:                                         ; preds = %for.body
  %version37 = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv_tmp.069, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %version37 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version37, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %version)
  %cmp40.not = icmp eq i8 %5, %version
  br i1 %cmp40.not, label %if.end43, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end43:                                         ; preds = %if.end35
  %refcount = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv_tmp.069, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end43.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !23

if.end43.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end43
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !25

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.end_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end43.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end43.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %for.end

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %tvlv_tmp.069 to i32
  call void @__asan_load4_noabort(i32 %8)
  %tvlv_tmp.0 = load ptr, ptr %tvlv_tmp.069, align 4
  %tobool29.not = icmp eq ptr %tvlv_tmp.0, null
  br i1 %tobool29.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %tvlv_tmp.066 = phi ptr [ %tvlv_tmp.069, %if.end15.sink.split.i.i.i.i ], [ %tvlv_tmp.069, %if.else.i.i.i.i.for.end_crit_edge ], [ null, %if.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  ret ptr %tvlv_tmp.066
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @batadv_tvlv_container_remove(ptr noundef %bat_priv, ptr noundef %tvlv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !23

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool25.not = icmp eq ptr %tvlv, null
  br i1 %tobool25.not, label %if.end.return_crit_edge, label %if.end27

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end27:                                         ; preds = %if.end
  %1 = ptrtoint ptr %tvlv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tvlv, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %tvlv, i32 0, i32 1
  %3 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev2.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end27.if.end.i_crit_edge, label %do.body13.i.i

if.end27.if.end.i_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body13.i.i:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %pprev14.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body13.i.i, %if.end27.if.end.i_crit_edge
  %7 = ptrtoint ptr %tvlv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %tvlv, align 4
  %8 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %refcount.i = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end.i37_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.if.end.i37_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i37

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %if.end.i37

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @kfree(ptr noundef nonnull %tvlv) #8
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end.i37_crit_edge
  %call.i.i.i.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i35 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %cmp.i.i.i.i.i36 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i35, 1
  br i1 %cmp.i.i.i.i.i36, label %if.then.i.i41, label %if.end5.i.i.i.i.i39

if.end5.i.i.i.i.i39:                              ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i35)
  %.not.i.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i35, 0
  br i1 %.not.i.i.i.i.i38, label %if.end5.i.i.i.i.i39.return_crit_edge, label %if.then10.i.i.i.i.i40, !prof !25

if.end5.i.i.i.i.i39.return_crit_edge:             ; preds = %if.end5.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i.i.i40:                            ; preds = %if.end5.i.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %return

if.then.i.i41:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @kfree(ptr noundef nonnull %tvlv) #8
  br label %return

return:                                           ; preds = %if.then.i.i41, %if.then10.i.i.i.i.i40, %if.end5.i.i.i.i.i39.return_crit_edge, %if.end.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_container_register(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version, ptr noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tvlv_value, null
  %spec.select = select i1 %tobool.not, i16 0, i16 %tvlv_value_len
  %conv = zext i16 %spec.select to i32
  %add = add nuw nsw i32 %conv, 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2848) #11
  %tobool1.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %entry
  %tvlv_hdr = getelementptr inbounds %struct.batadv_tvlv_container, ptr %call9.i.i, i32 0, i32 1
  %version4 = getelementptr inbounds %struct.batadv_tvlv_container, ptr %call9.i.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %version4 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %version, ptr %version4, align 1
  %1 = ptrtoint ptr %tvlv_hdr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %type, ptr %tvlv_hdr, align 8
  %len = getelementptr inbounds %struct.batadv_tvlv_container, ptr %call9.i.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %spec.select, ptr %len, align 2
  %add.ptr = getelementptr %struct.batadv_tvlv_container, ptr %call9.i.i, i32 1
  %3 = call ptr @memcpy(ptr %add.ptr, ptr %tvlv_value, i32 %conv)
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call9.i.i, align 128
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call9.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pprev.i, align 4
  %refcount = getelementptr inbounds %struct.batadv_tvlv_container, ptr %call9.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %refcount, align 4
  %tvlv = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37
  %container_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %container_list_lock) #8
  %call11 = tail call fastcc ptr @batadv_tvlv_container_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version)
  tail call fastcc void @batadv_tvlv_container_remove(ptr noundef %bat_priv, ptr noundef %call11)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !23

if.end3.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !25

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %9 = ptrtoint ptr %tvlv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tvlv, align 4
  %11 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %10, ptr %call9.i.i, align 128
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %kref_get.exit.if.end.i_crit_edge, label %do.body12.i

kref_get.exit.if.end.i_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.body12.i:                                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i36 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call9.i.i, ptr %pprev.i36, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %do.body12.i, %kref_get.exit.if.end.i_crit_edge
  %13 = ptrtoint ptr %tvlv to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call9.i.i, ptr %tvlv, align 4
  %14 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %tvlv, ptr %pprev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %container_list_lock) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i38, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup

if.then.i.i38:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i38, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @batadv_tvlv_container_ogm_append(ptr noundef %bat_priv, ptr nocapture noundef %packet_buff, ptr nocapture noundef writeonly %packet_buff_len, i32 noundef %packet_min_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tvlv1 = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37
  %container_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %container_list_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 2, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !23

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = ptrtoint ptr %tvlv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tvlv.055.i = load ptr, ptr %tvlv1, align 4
  %tobool29.not56.i = icmp eq ptr %tvlv.055.i, null
  br i1 %tobool29.not56.i, label %if.end.i.batadv_tvlv_container_list_size.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.batadv_tvlv_container_list_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_tvlv_container_list_size.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %tvlv.058.i = phi ptr [ %tvlv.0.i, %for.body.i.for.body.i_crit_edge ], [ %tvlv.055.i, %if.end.i.for.body.i_crit_edge ]
  %tvlv_len.057.i = phi i16 [ %add33.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %add.i = add i16 %tvlv_len.057.i, 4
  %len.i = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv.058.i, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len.i, align 2
  %add33.i = add i16 %add.i, %3
  %4 = ptrtoint ptr %tvlv.058.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tvlv.0.i = load ptr, ptr %tvlv.058.i, align 4
  %tobool29.not.i = icmp eq ptr %tvlv.0.i, null
  br i1 %tobool29.not.i, label %for.body.i.batadv_tvlv_container_list_size.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.batadv_tvlv_container_list_size.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_tvlv_container_list_size.exit

batadv_tvlv_container_list_size.exit:             ; preds = %for.body.i.batadv_tvlv_container_list_size.exit_crit_edge, %if.end.i.batadv_tvlv_container_list_size.exit_crit_edge
  %tvlv_len.0.lcssa.i = phi i16 [ 0, %if.end.i.batadv_tvlv_container_list_size.exit_crit_edge ], [ %add33.i, %for.body.i.batadv_tvlv_container_list_size.exit_crit_edge ]
  %conv = zext i16 %tvlv_len.0.lcssa.i to i32
  %add.i61 = add i32 %conv, %packet_min_len
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i61, i32 noundef 2592) #11
  %tobool.not.i62 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i62, label %batadv_tvlv_container_list_size.exit.end_crit_edge, label %batadv_tvlv_realloc_packet_buff.exit

batadv_tvlv_container_list_size.exit.end_crit_edge: ; preds = %batadv_tvlv_container_list_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

batadv_tvlv_realloc_packet_buff.exit:             ; preds = %batadv_tvlv_container_list_size.exit
  %5 = ptrtoint ptr %packet_buff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %packet_buff, align 4
  %7 = call ptr @memcpy(ptr %call9.i.i, ptr %6, i32 %packet_min_len)
  tail call void @kfree(ptr noundef %6) #8
  %8 = ptrtoint ptr %packet_buff to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i.i, ptr %packet_buff, align 4
  %9 = ptrtoint ptr %packet_buff_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i61, ptr %packet_buff_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tvlv_len.0.lcssa.i)
  %tobool3.not = icmp eq i16 %tvlv_len.0.lcssa.i, 0
  br i1 %tobool3.not, label %batadv_tvlv_realloc_packet_buff.exit.end_crit_edge, label %if.end5

batadv_tvlv_realloc_packet_buff.exit.end_crit_edge: ; preds = %batadv_tvlv_realloc_packet_buff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end5:                                          ; preds = %batadv_tvlv_realloc_packet_buff.exit
  %10 = ptrtoint ptr %tvlv1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %tvlv.068 = load ptr, ptr %tvlv1, align 4
  %tobool10.not69 = icmp eq ptr %tvlv.068, null
  br i1 %tobool10.not69, label %if.end5.end_crit_edge, label %for.body.preheader

if.end5.end_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

for.body.preheader:                               ; preds = %if.end5
  %11 = ptrtoint ptr %packet_buff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %packet_buff, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %packet_min_len
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %tvlv.071 = phi ptr [ %tvlv.0, %for.body.for.body_crit_edge ], [ %tvlv.068, %for.body.preheader ]
  %tvlv_value.070 = phi ptr [ %add.ptr25, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %tvlv_hdr11 = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv.071, i32 0, i32 1
  %13 = ptrtoint ptr %tvlv_hdr11 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tvlv_hdr11, align 4
  %15 = ptrtoint ptr %tvlv_value.070 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tvlv_value.070, align 2
  %version = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv.071, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %version, align 1
  %version14 = getelementptr inbounds %struct.batadv_tvlv_hdr, ptr %tvlv_value.070, i32 0, i32 1
  %18 = ptrtoint ptr %version14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %version14, align 1
  %len = getelementptr inbounds %struct.batadv_tvlv_container, ptr %tvlv.071, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len, align 2
  %len16 = getelementptr inbounds %struct.batadv_tvlv_hdr, ptr %tvlv_value.070, i32 0, i32 2
  %21 = ptrtoint ptr %len16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %len16, align 2
  %add.ptr17 = getelementptr %struct.batadv_tvlv_hdr, ptr %tvlv_value.070, i32 1
  %add.ptr18 = getelementptr %struct.batadv_tvlv_container, ptr %tvlv.071, i32 1
  %22 = load i16, ptr %len, align 2
  %conv21 = zext i16 %22 to i32
  %23 = call ptr @memcpy(ptr %add.ptr17, ptr %add.ptr18, i32 %conv21)
  %24 = load i16, ptr %len, align 2
  %conv24 = zext i16 %24 to i32
  %add.ptr25 = getelementptr i8, ptr %add.ptr17, i32 %conv24
  %25 = ptrtoint ptr %tvlv.071 to i32
  call void @__asan_load4_noabort(i32 %25)
  %tvlv.0 = load ptr, ptr %tvlv.071, align 4
  %tobool10.not = icmp eq ptr %tvlv.0, null
  br i1 %tobool10.not, label %for.body.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.end_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

end:                                              ; preds = %for.body.end_crit_edge, %if.end5.end_crit_edge, %batadv_tvlv_realloc_packet_buff.exit.end_crit_edge, %batadv_tvlv_container_list_size.exit.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %container_list_lock) #8
  ret i16 %tvlv_len.0.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @batadv_tvlv_containers_process(ptr noundef %bat_priv, i1 noundef zeroext %ogm_source, ptr noundef %orig_node, ptr noundef %src, ptr noundef %dst, ptr noundef %tvlv_value, i16 noundef zeroext %tvlv_value_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %tvlv_value_len)
  %cmp113 = icmp ugt i16 %tvlv_value_len, 3
  br i1 %cmp113, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool11.not.i = icmp eq ptr %src, null
  %tobool14.not.i = icmp eq ptr %dst, null
  %or.cond34.i = or i1 %tobool11.not.i, %tobool14.not.i
  %tobool6.not.i = icmp eq ptr %orig_node, null
  br label %while.body

while.body:                                       ; preds = %batadv_tvlv_handler_put.exit.while.body_crit_edge, %while.body.lr.ph
  %tvlv_value.addr.0116 = phi ptr [ %tvlv_value, %while.body.lr.ph ], [ %add.ptr10, %batadv_tvlv_handler_put.exit.while.body_crit_edge ]
  %tvlv_value_len.addr.0115 = phi i16 [ %tvlv_value_len, %while.body.lr.ph ], [ %sub13, %batadv_tvlv_handler_put.exit.while.body_crit_edge ]
  %ret.0114 = phi i32 [ 0, %while.body.lr.ph ], [ %or112, %batadv_tvlv_handler_put.exit.while.body_crit_edge ]
  %len = getelementptr inbounds %struct.batadv_tvlv_hdr, ptr %tvlv_value.addr.0116, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 2
  %sub = add i16 %tvlv_value_len.addr.0115, -4
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %1)
  %cmp6 = icmp ult i16 %sub, %1
  br i1 %cmp6, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end:                                           ; preds = %while.body
  %conv4 = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.batadv_tvlv_hdr, ptr %tvlv_value.addr.0116, i32 1
  %2 = ptrtoint ptr %tvlv_value.addr.0116 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tvlv_value.addr.0116, align 2
  %version = getelementptr inbounds %struct.batadv_tvlv_hdr, ptr %tvlv_value.addr.0116, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %version, align 1
  %call = tail call fastcc ptr @batadv_tvlv_handler_get(ptr noundef %bat_priv, i8 noundef zeroext %3, i8 noundef zeroext %5)
  %tobool.not.i96 = icmp eq ptr %call, null
  br i1 %tobool.not.i96, label %if.end.batadv_tvlv_handler_put.exit_crit_edge, label %if.end.i

if.end.batadv_tvlv_handler_put.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_tvlv_handler_put.exit

if.end.i:                                         ; preds = %if.end
  br i1 %ogm_source, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %ogm_handler.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %ogm_handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ogm_handler.i, align 4
  %tobool3.not.i = icmp eq ptr %7, null
  %or.cond.i = or i1 %tobool6.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.then2.i.if.end.i99_crit_edge, label %if.end8.i

if.then2.i.if.end.i99_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i99

if.end8.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %bat_priv, ptr noundef nonnull %orig_node, i8 noundef zeroext 0, ptr noundef %add.ptr, i16 noundef zeroext %1) #8
  %flags.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags.i, align 2
  %10 = or i8 %9, 4
  store i8 %10, ptr %flags.i, align 2
  br label %if.end.i99

if.else.i:                                        ; preds = %if.end.i
  br i1 %or.cond34.i, label %if.else.i.if.end.i99_crit_edge, label %if.end16.i

if.else.i.if.end.i99_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i99

if.end16.i:                                       ; preds = %if.else.i
  %unicast_handler.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %unicast_handler.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unicast_handler.i, align 4
  %tobool17.not.i = icmp eq ptr %12, null
  br i1 %tobool17.not.i, label %if.end16.i.if.end.i99_crit_edge, label %if.end19.i

if.end16.i.if.end.i99_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i99

if.end19.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i97 = tail call i32 %12(ptr noundef %bat_priv, ptr noundef nonnull %src, ptr noundef nonnull %dst, ptr noundef %add.ptr, i16 noundef zeroext %1) #8
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.end19.i, %if.end16.i.if.end.i99_crit_edge, %if.else.i.if.end.i99_crit_edge, %if.end8.i, %if.then2.i.if.end.i99_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.end16.i.if.end.i99_crit_edge ], [ 0, %if.else.i.if.end.i99_crit_edge ], [ 0, %if.then2.i.if.end.i99_crit_edge ], [ %call.i97, %if.end19.i ], [ 0, %if.end8.i ]
  %or110 = or i32 %retval.0.i.ph, %ret.0114
  %refcount.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_tvlv_handler_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %batadv_tvlv_handler_put.exit

if.then.i.i:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %rcu.i.i = getelementptr %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %batadv_tvlv_handler_put.exit

batadv_tvlv_handler_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge, %if.end.batadv_tvlv_handler_put.exit_crit_edge
  %or112 = phi i32 [ %or110, %if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge ], [ %or110, %if.then10.i.i.i.i.i ], [ %or110, %if.then.i.i ], [ %ret.0114, %if.end.batadv_tvlv_handler_put.exit_crit_edge ]
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %conv4
  %sub13 = sub i16 %sub, %1
  %cmp = icmp ugt i16 %sub13, 3
  br i1 %cmp, label %batadv_tvlv_handler_put.exit.while.body_crit_edge, label %batadv_tvlv_handler_put.exit.while.end_crit_edge

batadv_tvlv_handler_put.exit.while.end_crit_edge: ; preds = %batadv_tvlv_handler_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

batadv_tvlv_handler_put.exit.while.body_crit_edge: ; preds = %batadv_tvlv_handler_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %batadv_tvlv_handler_put.exit.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.0114, %while.body.while.end_crit_edge ], [ %or112, %batadv_tvlv_handler_put.exit.while.end_crit_edge ]
  br i1 %ogm_source, label %if.end17, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %while.end
  %14 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end17.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end17.rcu_read_lock.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end17
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end17.rcu_read_lock.exit_crit_edge
  %call18 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call20 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true22

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b94 = load i1, ptr @batadv_tvlv_containers_process.__warned, align 1
  br i1 %.b94, label %land.lhs.true22.do.end_crit_edge, label %if.then24

land.lhs.true22.do.end_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @batadv_tvlv_containers_process.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 457, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then24, %land.lhs.true22.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %handler_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 1
  %18 = ptrtoint ptr %handler_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %tvlv_handler.0118 = load volatile ptr, ptr %handler_list, align 4
  %tobool34.not119 = icmp eq ptr %tvlv_handler.0118, null
  br i1 %tobool34.not119, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end43.for.body_crit_edge, %do.end.for.body_crit_edge
  %tvlv_handler.0120 = phi ptr [ %tvlv_handler.0, %if.end43.for.body_crit_edge ], [ %tvlv_handler.0118, %do.end.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %tvlv_handler.0120, i32 0, i32 5
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 2
  %21 = and i8 %20, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %22 = icmp eq i8 %21, 2
  br i1 %22, label %if.then42, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %ogm_handler = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %tvlv_handler.0120, i32 0, i32 1
  %23 = ptrtoint ptr %ogm_handler to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ogm_handler, align 4
  tail call void %24(ptr noundef %bat_priv, ptr noundef %orig_node, i8 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %for.body.if.end43_crit_edge
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flags, align 2
  %27 = and i8 %26, -5
  store i8 %27, ptr %flags, align 2
  %28 = ptrtoint ptr %tvlv_handler.0120 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tvlv_handler.0 = load volatile ptr, ptr %tvlv_handler.0120, align 4
  %tobool34.not = icmp eq ptr %tvlv_handler.0, null
  br i1 %tobool34.not, label %if.end43.for.end_crit_edge, label %if.end43.for.body_crit_edge

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end43.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i100, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i103

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i103:                               ; preds = %for.end
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, label %if.then.i106

land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i106, %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %29 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i107 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ %ret.0.lcssa, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @batadv_tvlv_handler_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @batadv_tvlv_handler_get.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @batadv_tvlv_handler_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %handler_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 1
  %4 = ptrtoint ptr %handler_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %tvlv_handler_tmp.063 = load volatile ptr, ptr %handler_list, align 4
  %tobool12.not64 = icmp eq ptr %tvlv_handler_tmp.063, null
  br i1 %tobool12.not64, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %tvlv_handler_tmp.065 = phi ptr [ %tvlv_handler_tmp.0, %for.inc.for.body_crit_edge ], [ %tvlv_handler_tmp.063, %do.end.for.body_crit_edge ]
  %type13 = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %tvlv_handler_tmp.065, i32 0, i32 3
  %5 = ptrtoint ptr %type13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type13, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %type)
  %cmp.not = icmp eq i8 %6, %type
  br i1 %cmp.not, label %if.end17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %version18 = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %tvlv_handler_tmp.065, i32 0, i32 4
  %7 = ptrtoint ptr %version18 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %version18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %version)
  %cmp21.not = icmp eq i8 %8, %version
  br i1 %cmp21.not, label %if.end24, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end24:                                         ; preds = %if.end17
  %refcount = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %tvlv_handler_tmp.065, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %9 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end24
  %11 = phi i32 [ %10, %if.end24 ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %11, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %15 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %14, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %15, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %14
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !25

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %17, 1
  %18 = or i32 %add5.i.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  %19 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %20 = phi i32 [ %17, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.i.i.i.i.not = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.for.inc_crit_edge, label %kref_get_unless_zero.exit.for.end_crit_edge

kref_get_unless_zero.exit.for.end_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

kref_get_unless_zero.exit.for.inc_crit_edge:      ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %kref_get_unless_zero.exit.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %tvlv_handler_tmp.065 to i32
  call void @__asan_load4_noabort(i32 %21)
  %tvlv_handler_tmp.0 = load volatile ptr, ptr %tvlv_handler_tmp.065, align 4
  %tobool12.not = icmp eq ptr %tvlv_handler_tmp.0, null
  br i1 %tobool12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %kref_get_unless_zero.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %tvlv_handler_tmp.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %tvlv_handler_tmp.065, %kref_get_unless_zero.exit.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i54 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i54, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %for.end
  %call1.i55 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !30
  %22 = call i32 @llvm.read_register.i32(metadata !13) #8
  %and.i.i.i.i.i61 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret ptr %tvlv_handler_tmp.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_ogm_receive(ptr noundef %bat_priv, ptr noundef %batadv_ogm_packet, ptr noundef %orig_node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %batadv_ogm_packet, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tvlv_len = getelementptr inbounds %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 0, i32 9
  %0 = ptrtoint ptr %tvlv_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tvlv_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr %struct.batadv_ogm_packet, ptr %batadv_ogm_packet, i32 1
  %call = tail call i32 @batadv_tvlv_containers_process(ptr noundef %bat_priv, i1 noundef zeroext true, ptr noundef %orig_node, ptr noundef null, ptr noundef null, ptr noundef %add.ptr, i16 noundef zeroext %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_handler_register(ptr noundef %bat_priv, ptr noundef %optr, ptr noundef %uptr, i8 noundef zeroext %type, i8 noundef zeroext %version, i8 noundef zeroext %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %handler_list_lock) #8
  %call = tail call fastcc ptr @batadv_tvlv_handler_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %entry
  tail call void @_raw_spin_unlock_bh(ptr noundef %handler_list_lock) #8
  %refcount.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %rcu.i.i = getelementptr %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 32) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %handler_list_lock) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %ogm_handler = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ogm_handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %optr, ptr %ogm_handler, align 8
  %unicast_handler = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %unicast_handler to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %uptr, ptr %unicast_handler, align 4
  %type9 = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %type9 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %type, ptr %type9, align 8
  %version10 = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %version10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %version, ptr %version10, align 1
  %flags11 = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %flags11 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %flags, ptr %flags11, align 2
  %refcount = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcount, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %pprev.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !23

if.end8.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end8
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !25

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %handler_list = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 1
  %12 = ptrtoint ptr %handler_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handler_list, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %handler_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  %16 = ptrtoint ptr %handler_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call7.i.i, ptr %handler_list, align 4
  %tobool.not.i38 = icmp eq ptr %13, null
  br i1 %tobool.not.i38, label %kref_get.exit.if.end.i44_crit_edge, label %do.body49.i

kref_get.exit.if.end.i44_crit_edge:               ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i44

do.body49.i:                                      ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %if.end.i44

if.end.i44:                                       ; preds = %do.body49.i, %kref_get.exit.if.end.i44_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %handler_list_lock) #8
  %call.i.i.i.i.i.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i42 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %cmp.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i42, 1
  br i1 %cmp.i.i.i.i.i43, label %if.then.i.i49, label %if.end5.i.i.i.i.i46

if.end5.i.i.i.i.i46:                              ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i42)
  %.not.i.i.i.i.i45 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i42, 0
  br i1 %.not.i.i.i.i.i45, label %if.end5.i.i.i.i.i46.cleanup_crit_edge, label %if.then10.i.i.i.i.i47, !prof !25

if.end5.i.i.i.i.i46.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i47:                            ; preds = %if.end5.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %cleanup

if.then.i.i49:                                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %rcu.i.i48 = getelementptr %struct.batadv_tvlv_handler, ptr %call7.i.i, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i48, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i49, %if.then10.i.i.i.i.i47, %if.end5.i.i.i.i.i46.cleanup_crit_edge, %if.then5, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_handler_unregister(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @batadv_tvlv_handler_get(ptr noundef %bat_priv, i8 noundef zeroext %type, i8 noundef zeroext %version)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %batadv_tvlv_handler_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %batadv_tvlv_handler_put.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %rcu.i.i = getelementptr %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %batadv_tvlv_handler_put.exit

batadv_tvlv_handler_put.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.batadv_tvlv_handler_put.exit_crit_edge
  %handler_list_lock = getelementptr inbounds %struct.batadv_priv, ptr %bat_priv, i32 0, i32 37, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %handler_list_lock) #8
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev2.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %batadv_tvlv_handler_put.exit.if.end.i13_crit_edge, label %do.body13.i.i

batadv_tvlv_handler_put.exit.if.end.i13_crit_edge: ; preds = %batadv_tvlv_handler_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i13

do.body13.i.i:                                    ; preds = %batadv_tvlv_handler_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %pprev14.i.i, align 4
  br label %if.end.i13

if.end.i13:                                       ; preds = %do.body13.i.i, %batadv_tvlv_handler_put.exit.if.end.i13_crit_edge
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %handler_list_lock) #8
  %call.i.i.i.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i11 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i11)
  %cmp.i.i.i.i.i12 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i11, 1
  br i1 %cmp.i.i.i.i.i12, label %if.then.i.i18, label %if.end5.i.i.i.i.i15

if.end5.i.i.i.i.i15:                              ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i11)
  %.not.i.i.i.i.i14 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i11, 0
  br i1 %.not.i.i.i.i.i14, label %if.end5.i.i.i.i.i15.cleanup_crit_edge, label %if.then10.i.i.i.i.i16, !prof !25

if.end5.i.i.i.i.i15.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i16:                            ; preds = %if.end5.i.i.i.i.i15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i18:                                    ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  %rcu.i.i17 = getelementptr %struct.batadv_tvlv_handler, ptr %call, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i17, ptr noundef nonnull inttoptr (i32 24 to ptr)) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i18, %if.then10.i.i.i.i.i16, %if.end5.i.i.i.i.i15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @batadv_tvlv_unicast_send(ptr noundef %bat_priv, ptr nocapture noundef readonly %src, ptr noundef %dst, i8 noundef zeroext %type, i8 noundef zeroext %version, ptr nocapture noundef readonly %tvlv_value, i16 noundef zeroext %tvlv_value_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @batadv_orig_hash_find(ptr noundef %bat_priv, ptr noundef %dst) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %tvlv_value_len to i32
  %add.i.i = add nuw nsw i32 %conv, 40
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add.i.i, i32 noundef 2592) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.if.end.i_crit_edge, label %if.end6

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add = add i16 %tvlv_value_len, 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %priority, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  store ptr %add.ptr.i, ptr %data.i.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr1.i, ptr %tail.i.i.i, align 8
  %add7 = add nuw nsw i32 %conv, 24
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add7) #8
  %5 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 68, ptr %call8, align 2
  %version9 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 1
  %6 = ptrtoint ptr %version9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 15, ptr %version9, align 1
  %ttl = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 2
  %7 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 50, ptr %ttl, align 2
  %reserved = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 3
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %reserved, align 1
  %tvlv_len11 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 6
  %9 = ptrtoint ptr %tvlv_len11 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %add, ptr %tvlv_len11, align 2
  %align = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 7
  %10 = ptrtoint ptr %align to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %align, align 2
  %src12 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 5
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %src, align 4
  %13 = ptrtoint ptr %src12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %src12, align 4
  %add.ptr.i50 = getelementptr i8, ptr %src, i32 4
  %14 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i50, align 2
  %add.ptr1.i51 = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %add.ptr1.i51 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %add.ptr1.i51, align 2
  %dst13 = getelementptr inbounds %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 4
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst, align 4
  %19 = ptrtoint ptr %dst13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dst13, align 4
  %add.ptr.i52 = getelementptr i8, ptr %dst, i32 4
  %20 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i52, align 2
  %add.ptr1.i53 = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %add.ptr1.i53 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i53, align 2
  %add.ptr = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 1
  %version15 = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 1, i32 1
  %23 = ptrtoint ptr %version15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %version, ptr %version15, align 1
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %type, ptr %add.ptr, align 2
  %len = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 1, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %tvlv_value_len, ptr %len, align 2
  %add.ptr17 = getelementptr %struct.batadv_unicast_tvlv_packet, ptr %call8, i32 1, i32 4
  %26 = call ptr @memcpy(ptr %add.ptr17, ptr %tvlv_value, i32 %conv)
  %call19 = tail call i32 @batadv_send_skb_to_orig(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end6, %if.end.if.end.i_crit_edge
  %refcount.i = getelementptr inbounds %struct.batadv_orig_node, ptr %call, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !27
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i54, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !25

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i.i54:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @batadv_orig_node_release(ptr noundef %refcount.i) #8, !callees !33
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i54, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @batadv_orig_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @batadv_send_skb_to_orig(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @batadv_orig_node_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !10, !12}
!llvm.named.register.sp = !{!13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/batman-adv/tvlv.c", i32 456, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/batman-adv/tvlv.c", i32 74, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
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
!24 = !{i64 2148149553, i64 2148149585, i64 2148149614, i64 2148149648, i64 2148149679, i64 2148149702}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148237554}
!27 = !{i64 2148152018, i64 2148152050, i64 2148152079, i64 2148152113, i64 2148152144, i64 2148152167}
!28 = !{i64 2150568565}
!29 = !{i64 2149694018}
!30 = !{i64 2149694284}
!31 = !{i64 522857, i64 522881, i64 522902, i64 522919, i64 522936}
!32 = !{i64 2149795629}
!33 = distinct !{ptr @batadv_orig_node_release, null, null}
