; ModuleID = '/llk/IR_all_yes/net/netlabel/netlabel_addrlist.c_pt.bc'
source_filename = "../net/netlabel/netlabel_addrlist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netlbl_af4list = type { i32, i32, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.netlbl_af6list = type { %struct.in6_addr, %struct.in6_addr, i32, %struct.list_head }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }

@netlbl_af4list_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"net/netlabel/netlabel_addrlist.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@netlbl_af4list_search_exact.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_af6list_search.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_af6list_search_exact.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_af4list_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlbl_af6list_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dst\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" netif=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s=%pI4\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" %s_prefixlen=%d\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" %s=%pI6\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 51, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 315, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 315, i32 29 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 318, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 319, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 326, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [36 x i8] c"../net/netlabel/netlabel_addrlist.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 353, i32 30 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af4list_search(i32 noundef %addr, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @netlbl_af4list_search.__warned, align 1
  br i1 %.b30, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af4list_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31 = load volatile ptr, ptr %head, align 4
  %cmp.not33 = icmp eq ptr %.pn31, %head
  br i1 %cmp.not33, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %do.end.for.body_crit_edge ]
  %valid = getelementptr i8, ptr %.pn34, i32 -4
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %iter.035 = getelementptr i8, ptr %.pn34, i32 -12
  %mask = getelementptr i8, ptr %.pn34, i32 -8
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %and = and i32 %4, %addr
  %5 = ptrtoint ptr %iter.035 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iter.035, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %6)
  %cmp12 = icmp eq i32 %and, %6
  br i1 %cmp12, label %cleanup.loopexit.split.loop.exit37, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.loopexit.split.loop.exit37:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  %iter.035.le = getelementptr i8, ptr %.pn34, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit37, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %iter.035.le, %cleanup.loopexit.split.loop.exit37 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af4list_search_exact(i32 noundef %addr, i32 noundef %mask, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @netlbl_af4list_search_exact.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af4list_search_exact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn34 = load volatile ptr, ptr %head, align 4
  %cmp.not36 = icmp eq ptr %.pn34, %head
  br i1 %cmp.not36, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn34, %do.end.for.body_crit_edge ]
  %iter.038 = getelementptr i8, ptr %.pn37, i32 -12
  %valid = getelementptr i8, ptr %.pn37, i32 -4
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %3 = ptrtoint ptr %iter.038 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iter.038, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %addr)
  %cmp12 = icmp eq i32 %4, %addr
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %mask14 = getelementptr i8, ptr %.pn37, i32 -8
  %5 = ptrtoint ptr %mask14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mask)
  %cmp15 = icmp eq i32 %6, %mask
  br i1 %cmp15, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load volatile ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %iter.038, %land.lhs.true13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af6list_search(ptr nocapture noundef readonly %addr, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b32 = load i1, ptr @netlbl_af6list_search.__warned, align 1
  br i1 %.b32, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af6list_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 101, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn33 = load volatile ptr, ptr %head, align 4
  %cmp.not35 = icmp eq ptr %.pn33, %head
  br i1 %cmp.not35, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx8.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %arrayidx16.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %arrayidx25.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn36 = phi ptr [ %.pn33, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %valid = getelementptr i8, ptr %.pn36, i32 -4
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %iter.037 = getelementptr i8, ptr %.pn36, i32 -36
  %mask = getelementptr i8, ptr %.pn36, i32 -20
  %3 = ptrtoint ptr %iter.037 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iter.037, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %6, %4
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %and.i = and i32 %xor.i, %8
  %arrayidx6.i = getelementptr i8, ptr %.pn36, i32 -32
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  %11 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8.i, align 4
  %xor9.i = xor i32 %12, %10
  %arrayidx11.i = getelementptr i8, ptr %.pn36, i32 -16
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %and12.i = and i32 %xor9.i, %14
  %or.i = or i32 %and12.i, %and.i
  %arrayidx14.i = getelementptr i8, ptr %.pn36, i32 -28
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14.i, align 4
  %17 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16.i, align 4
  %xor17.i = xor i32 %18, %16
  %arrayidx19.i = getelementptr i8, ptr %.pn36, i32 -12
  %19 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19.i, align 4
  %and20.i = and i32 %xor17.i, %20
  %or21.i = or i32 %or.i, %and20.i
  %arrayidx23.i = getelementptr i8, ptr %.pn36, i32 -24
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx23.i, align 4
  %23 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx25.i, align 4
  %xor26.i = xor i32 %24, %22
  %arrayidx28.i = getelementptr i8, ptr %.pn36, i32 -8
  %25 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx28.i, align 4
  %and29.i = and i32 %xor26.i, %26
  %or30.i = or i32 %or21.i, %and29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i)
  %tobool.i.not = icmp eq i32 %or30.i, 0
  br i1 %tobool.i.not, label %cleanup.loopexit.split.loop.exit39, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load volatile ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.loopexit.split.loop.exit39:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  %iter.037.le = getelementptr i8, ptr %.pn36, i32 -36
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit39, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %iter.037.le, %cleanup.loopexit.split.loop.exit39 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af6list_search_exact(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %mask, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @netlbl_af6list_search_exact.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af6list_search_exact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn48 = load volatile ptr, ptr %head, align 4
  %cmp.not50 = icmp eq ptr %.pn48, %head
  br i1 %cmp.not50, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx6.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %arrayidx11.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %arrayidx17.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %arrayidx6.i36 = getelementptr [4 x i32], ptr %mask, i32 0, i32 1
  %arrayidx11.i40 = getelementptr [4 x i32], ptr %mask, i32 0, i32 2
  %arrayidx17.i44 = getelementptr [4 x i32], ptr %mask, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn51 = phi ptr [ %.pn48, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %iter.052 = getelementptr i8, ptr %.pn51, i32 -36
  %valid = getelementptr i8, ptr %.pn51, i32 -4
  %1 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true10:                                  ; preds = %for.body
  %3 = ptrtoint ptr %iter.052 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iter.052, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %xor.i = xor i32 %6, %4
  %arrayidx4.i = getelementptr i8, ptr %.pn51, i32 -32
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx4.i, align 4
  %9 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %10, %8
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr i8, ptr %.pn51, i32 -28
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9.i, align 4
  %13 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %14, %12
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr i8, ptr %.pn51, i32 -24
  %15 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx15.i, align 4
  %17 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %18, %16
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true13, label %land.lhs.true10.for.inc_crit_edge

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %mask14 = getelementptr i8, ptr %.pn51, i32 -20
  %19 = ptrtoint ptr %mask14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask14, align 4
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %xor.i34 = xor i32 %22, %20
  %arrayidx4.i35 = getelementptr i8, ptr %.pn51, i32 -16
  %23 = ptrtoint ptr %arrayidx4.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx4.i35, align 4
  %25 = ptrtoint ptr %arrayidx6.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.i36, align 4
  %xor7.i37 = xor i32 %26, %24
  %or.i38 = or i32 %xor7.i37, %xor.i34
  %arrayidx9.i39 = getelementptr i8, ptr %.pn51, i32 -12
  %27 = ptrtoint ptr %arrayidx9.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9.i39, align 4
  %29 = ptrtoint ptr %arrayidx11.i40 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.i40, align 4
  %xor12.i41 = xor i32 %30, %28
  %or13.i42 = or i32 %or.i38, %xor12.i41
  %arrayidx15.i43 = getelementptr i8, ptr %.pn51, i32 -8
  %31 = ptrtoint ptr %arrayidx15.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx15.i43, align 4
  %33 = ptrtoint ptr %arrayidx17.i44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.i44, align 4
  %xor18.i45 = xor i32 %34, %32
  %or19.i46 = or i32 %or13.i42, %xor18.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i46)
  %cmp.i47 = icmp eq i32 %or19.i46, 0
  br i1 %cmp.i47, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true13.for.inc_crit_edge, %land.lhs.true10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %35 = ptrtoint ptr %.pn51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load volatile ptr, ptr %.pn51, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %iter.052, %land.lhs.true13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_af4list_add(ptr noundef %entry1, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry1, align 4
  %call.i = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b30.i = load i1, ptr @netlbl_af4list_search.__warned, align 1
  br i1 %.b30.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af4list_search.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 51, ptr noundef nonnull @.str.1) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn31.i = load volatile ptr, ptr %head, align 4
  %cmp.not33.i = icmp eq ptr %.pn31.i, %head
  br i1 %cmp.not33.i, label %do.end.i.do.body_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.do.body_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn34.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn31.i, %do.end.i.for.body.i_crit_edge ]
  %valid.i = getelementptr i8, ptr %.pn34.i, i32 -4
  %3 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not.i = icmp eq i32 %4, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %iter.035.i = getelementptr i8, ptr %.pn34.i, i32 -12
  %mask.i = getelementptr i8, ptr %.pn34.i, i32 -8
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %6, %1
  %7 = ptrtoint ptr %iter.035.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iter.035.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %8)
  %cmp12.i = icmp eq i32 %and.i, %8
  br i1 %cmp12.i, label %netlbl_af4list_search.exit, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load volatile ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head
  br i1 %cmp.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

netlbl_af4list_search.exit:                       ; preds = %land.lhs.true10.i
  %iter.035.i.le = getelementptr i8, ptr %.pn34.i, i32 -12
  %mask.i.le = getelementptr i8, ptr %.pn34.i, i32 -8
  %cmp.not = icmp eq ptr %iter.035.i.le, null
  br i1 %cmp.not, label %netlbl_af4list_search.exit.do.body_crit_edge, label %land.lhs.true

netlbl_af4list_search.exit.do.body_crit_edge:     ; preds = %netlbl_af4list_search.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true:                                    ; preds = %netlbl_af4list_search.exit
  %10 = ptrtoint ptr %iter.035.i.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iter.035.i.le, align 4
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp4 = icmp eq i32 %11, %13
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %mask.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask.i.le, align 4
  %mask6 = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 1
  %16 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp7 = icmp eq i32 %15, %17
  br i1 %cmp7, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.do.body_crit_edge

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true5.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %netlbl_af4list_search.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %do.end.i.do.body_crit_edge
  %call8 = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true9, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true9:                                   ; preds = %do.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b57 = load i1, ptr @netlbl_af4list_add.__warned, align 1
  br i1 %.b57, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af4list_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true9.do.end_crit_edge, %do.body.do.end_crit_edge
  %18 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn64 = load volatile ptr, ptr %head, align 4
  %cmp20.not65 = icmp eq ptr %.pn64, %head
  br i1 %cmp20.not65, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mask23 = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn66 = phi ptr [ %.pn64, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %valid = getelementptr i8, ptr %.pn66, i32 -4
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %land.lhs.true22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true22:                                  ; preds = %for.body
  %21 = ptrtoint ptr %mask23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask23, align 4
  %mask24 = getelementptr i8, ptr %.pn66, i32 -8
  %23 = ptrtoint ptr %mask24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp25 = icmp ugt i32 %22, %24
  br i1 %cmp25, label %if.then26, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then26:                                        ; preds = %land.lhs.true22
  %list27 = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn66, i32 0, i32 1
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev, align 4
  %call.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef %list27, ptr noundef %26, ptr noundef %.pn66) #4
  br i1 %call.i58, label %if.end.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %list27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn66, ptr %list27, align 4
  %prev2.i = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list27, ptr %26, align 4
  %30 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list27, ptr %prev, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %31 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load volatile ptr, ptr %.pn66, align 4
  %cmp20.not = icmp eq ptr %.pn, %head
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %list40 = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list40, ptr noundef %33, ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %list40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %head, ptr %list40, align 4
  %prev2.i.i = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list40, ptr %33, align 4
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list40, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %if.end.i, %if.then26.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %land.lhs.true5.cleanup_crit_edge ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlbl_af6list_add(ptr noundef %entry1, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netlbl_af6list_search(ptr noundef %entry1, ptr noundef %head)
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  %xor.i = xor i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %entry1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %7, %5
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %entry1, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %11, %9
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %entry1, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %15, %13
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true5, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true5:                                   ; preds = %land.lhs.true
  %mask = getelementptr inbounds %struct.netlbl_af6list, ptr %call, i32 0, i32 1
  %mask6 = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %18 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask6, align 4
  %xor.i59 = xor i32 %19, %17
  %arrayidx4.i60 = getelementptr %struct.netlbl_af6list, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx4.i60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i60, align 4
  %arrayidx6.i61 = getelementptr %struct.netlbl_af6list, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx6.i61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i61, align 4
  %xor7.i62 = xor i32 %23, %21
  %or.i63 = or i32 %xor7.i62, %xor.i59
  %arrayidx9.i64 = getelementptr %struct.netlbl_af6list, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx9.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9.i64, align 4
  %arrayidx11.i65 = getelementptr %struct.netlbl_af6list, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx11.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11.i65, align 4
  %xor12.i66 = xor i32 %27, %25
  %or13.i67 = or i32 %or.i63, %xor12.i66
  %arrayidx15.i68 = getelementptr %struct.netlbl_af6list, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx15.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i68, align 4
  %arrayidx17.i69 = getelementptr %struct.netlbl_af6list, ptr %entry1, i32 0, i32 1, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx17.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i69, align 4
  %xor18.i70 = xor i32 %31, %29
  %or19.i71 = or i32 %or13.i67, %xor18.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i71)
  %cmp.i72 = icmp eq i32 %or19.i71, 0
  br i1 %cmp.i72, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.do.body_crit_edge

land.lhs.true5.do.body_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true5.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  %call8 = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %land.lhs.true9, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true9:                                   ; preds = %do.body
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b58 = load i1, ptr @netlbl_af6list_add.__warned, align 1
  br i1 %.b58, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af6list_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true9.do.end_crit_edge, %do.body.do.end_crit_edge
  %32 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn75 = load volatile ptr, ptr %head, align 4
  %cmp20.not76 = icmp eq ptr %.pn75, %head
  br i1 %cmp20.not76, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %mask23 = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn77 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %valid = getelementptr i8, ptr %.pn77, i32 -4
  %33 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool21.not = icmp eq i32 %34, 0
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %land.lhs.true22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true22:                                  ; preds = %for.body
  %mask24 = getelementptr i8, ptr %.pn77, i32 -20
  %call.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %mask23, ptr noundef dereferenceable(16) %mask24, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26 = icmp sgt i32 %call.i, 0
  br i1 %cmp26, label %if.then27, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true22
  %list28 = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn77, i32 0, i32 1
  %35 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev, align 4
  %call.i73 = tail call zeroext i1 @__list_add_valid(ptr noundef %list28, ptr noundef %36, ptr noundef %.pn77) #4
  br i1 %call.i73, label %if.end.i, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %list28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.pn77, ptr %list28, align 4
  %prev2.i = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %list28, ptr %36, align 4
  %40 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list28, ptr %prev, align 4
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load volatile ptr, ptr %.pn77, align 4
  %cmp20.not = icmp eq ptr %.pn, %head
  br i1 %cmp20.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %list41 = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list41, ptr noundef %43, ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %list41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %list41, align 4
  %prev2.i.i = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3, i32 1
  %45 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !35
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list41, ptr %43, align 4
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %list41, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %for.end.cleanup_crit_edge, %if.end.i, %if.then27.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %land.lhs.true5.cleanup_crit_edge ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %if.end.i ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_af4list_remove_entry(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %valid, align 4
  %list = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.netlbl_af4list, ptr %entry1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af4list_remove(i32 noundef %addr, i32 noundef %mask, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b33.i = load i1, ptr @netlbl_af4list_search_exact.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @netlbl_af4list_search_exact.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn34.i = load volatile ptr, ptr %head, align 4
  %cmp.not36.i = icmp eq ptr %.pn34.i, %head
  br i1 %cmp.not36.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn37.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn34.i, %do.end.i.for.body.i_crit_edge ]
  %iter.038.i = getelementptr i8, ptr %.pn37.i, i32 -12
  %valid.i = getelementptr i8, ptr %.pn37.i, i32 -4
  %1 = ptrtoint ptr %valid.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool9.not.i = icmp eq i32 %2, 0
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %3 = ptrtoint ptr %iter.038.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iter.038.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %addr)
  %cmp12.i = icmp eq i32 %4, %addr
  br i1 %cmp12.i, label %land.lhs.true13.i, label %land.lhs.true10.i.for.inc.i_crit_edge

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true13.i:                                ; preds = %land.lhs.true10.i
  %mask14.i = getelementptr i8, ptr %.pn37.i, i32 -8
  %5 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mask)
  %cmp15.i = icmp eq i32 %6, %mask
  br i1 %cmp15.i, label %netlbl_af4list_search_exact.exit, label %land.lhs.true13.i.for.inc.i_crit_edge

land.lhs.true13.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true13.i.for.inc.i_crit_edge, %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load volatile ptr, ptr %.pn37.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

netlbl_af4list_search_exact.exit:                 ; preds = %land.lhs.true13.i
  %cmp = icmp eq ptr %iter.038.i, null
  br i1 %cmp, label %netlbl_af4list_search_exact.exit.cleanup_crit_edge, label %if.end

netlbl_af4list_search_exact.exit.cleanup_crit_edge: ; preds = %netlbl_af4list_search_exact.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %netlbl_af4list_search_exact.exit
  %valid.i.le = getelementptr i8, ptr %.pn37.i, i32 -4
  %8 = ptrtoint ptr %valid.i.le to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %valid.i.le, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn37.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.netlbl_af4list_remove_entry.exit_crit_edge

if.end.netlbl_af4list_remove_entry.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %netlbl_af4list_remove_entry.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr i8, ptr %.pn37.i, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn37.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %netlbl_af4list_remove_entry.exit

netlbl_af4list_remove_entry.exit:                 ; preds = %if.end.i.i.i, %if.end.netlbl_af4list_remove_entry.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn37.i, i32 4
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %netlbl_af4list_remove_entry.exit, %netlbl_af4list_search_exact.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %iter.038.i, %netlbl_af4list_remove_entry.exit ], [ null, %netlbl_af4list_search_exact.exit.cleanup_crit_edge ], [ null, %do.end.i.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_af6list_remove_entry(ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %valid, align 4
  %list = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_rcu.exit_crit_edge

entry.list_del_rcu.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %entry.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.netlbl_af6list, ptr %entry1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlbl_af6list_remove(ptr nocapture noundef readonly %addr, ptr nocapture noundef readonly %mask, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @netlbl_af6list_search_exact(ptr noundef %addr, ptr noundef %mask, ptr noundef %head)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid.i = getelementptr inbounds %struct.netlbl_af6list, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %valid.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %valid.i, align 4
  %list.i = getelementptr inbounds %struct.netlbl_af6list, ptr %call, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.netlbl_af6list_remove_entry.exit_crit_edge

if.end.netlbl_af6list_remove_entry.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %netlbl_af6list_remove_entry.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.netlbl_af6list, ptr %call, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %netlbl_af6list_remove_entry.exit

netlbl_af6list_remove_entry.exit:                 ; preds = %if.end.i.i.i, %if.end.netlbl_af6list_remove_entry.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.netlbl_af6list, ptr %call, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %netlbl_af6list_remove_entry.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_af4list_audit_addr(ptr noundef %audit_buf, i32 noundef %src, ptr noundef %dev, i32 noundef %addr, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %addr, ptr %addr.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %tobool.not = icmp eq i32 %src, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.2
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.4, ptr noundef nonnull %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond, ptr noundef nonnull %addr.addr) #4
  %1 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.while.body_crit_edge [
    i32 -1, label %if.end.if.end4_crit_edge
    i32 0, label %if.end.while.end_crit_edge
  ]

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %mask_len.014 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %mask_val.013 = phi i32 [ %shl, %while.body.while.body_crit_edge ], [ %mask, %if.end.while.body_crit_edge ]
  %shl = shl i32 %mask_val.013, 1
  %inc = add nuw nsw i32 %mask_len.014, 1
  %cmp3.not = icmp eq i32 %shl, 0
  br i1 %cmp3.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %mask_len.0.lcssa = phi i32 [ %mask, %if.end.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i32 noundef %mask_len.0.lcssa) #4
  br label %if.end4

if.end4:                                          ; preds = %while.end, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @audit_log_format(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlbl_af6list_audit_addr(ptr noundef %audit_buf, i32 noundef %src, ptr noundef %dev, ptr noundef %addr, ptr nocapture noundef readonly %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %tobool.not = icmp eq i32 %src, 0
  %cond = select i1 %tobool.not, ptr @.str.3, ptr @.str.2
  %cmp.not = icmp eq ptr %dev, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.4, ptr noundef nonnull %dev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond, ptr noundef %addr) #4
  %arrayidx = getelementptr [4 x i32], ptr %mask, i32 0, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1.not = icmp eq i32 %1, -1
  br i1 %cmp1.not, label %if.end.if.end13_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %mask_len.0 = phi i32 [ %add, %while.cond.while.cond_crit_edge ], [ 0, %if.end.while.cond_crit_edge ]
  %iter.0 = phi i32 [ %inc, %while.cond.while.cond_crit_edge ], [ -1, %if.end.while.cond_crit_edge ]
  %inc = add i32 %iter.0, 1
  %arrayidx4 = getelementptr [4 x i32], ptr %mask, i32 0, i32 %inc
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %cmp5 = icmp eq i32 %3, -1
  %add = add i32 %mask_len.0, 32
  br i1 %cmp5, label %while.cond.while.cond_crit_edge, label %while.cond8.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond8.preheader:                            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not24 = icmp eq i32 %3, 0
  %4 = call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !36
  %5 = sub nuw nsw i32 32, %4
  %6 = select i1 %cmp9.not24, i32 0, i32 %5
  %mask_len.1.lcssa = add i32 %mask_len.0, %6
  tail call void (ptr, ptr, ...) @audit_log_format(ptr noundef %audit_buf, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond, i32 noundef %mask_len.1.lcssa) #4
  br label %if.end13

if.end13:                                         ; preds = %while.cond8.preheader, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netlabel/netlabel_addrlist.c", i32 51, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/netlabel/netlabel_addrlist.c", i32 76, i32 2}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netlabel/netlabel_addrlist.c", i32 101, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netlabel/netlabel_addrlist.c", i32 127, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/netlabel/netlabel_addrlist.c", i32 161, i32 2}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/netlabel/netlabel_addrlist.c", i32 199, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/netlabel/netlabel_addrlist.c", i32 315, i32 21}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/netlabel/netlabel_addrlist.c", i32 315, i32 29}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/netlabel/netlabel_addrlist.c", i32 318, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/netlabel/netlabel_addrlist.c", i32 319, i32 30}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/netlabel/netlabel_addrlist.c", i32 326, i32 31}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netlabel/netlabel_addrlist.c", i32 353, i32 30}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2150403137}
!36 = !{i32 0, i32 33}
