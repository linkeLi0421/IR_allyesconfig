; ModuleID = '/llk/IR_all_yes/net/netlink/policy.c_pt.bc'
source_filename = "../net/netlink/policy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.netlink_policy_dump_state = type { i32, i32, i32, [0 x %struct.anon] }
%struct.anon = type { ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.netlink_range_validation = type { i64, i64 }
%struct.netlink_range_validation_signed = type { i64, i64 }
%struct.sk_buff = type { %union.anon.1, %union.anon.4, %union.anon.5, [48 x i8], %union.anon.6, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.8, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { i64 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32, ptr }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.10, i32, i32, i32, i16, i16, %union.anon.12, i32, %union.anon.13, %union.anon.14, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.10 = type { i32 }
%union.anon.12 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/netlink/policy.c\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@switch.table.netlink_policy_dump_attr_size_estimate = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 48, i32 48, i32 48, i32 48, i32 32, i32 16, i32 48, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 24], [32 x i8] zeroinitializer }, align 32
@switch.table.__netlink_policy_dump_write_attr = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 48, i32 48, i32 48, i32 48, i32 32, i32 16, i32 48, i32 32, i32 32, i32 32, i32 32, i32 48, i32 48, i32 48, i32 48, i32 24], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@___asan_gen_.3 = private constant [24 x i8] c"../net/netlink/policy.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 87, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 991, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [52 x i8] c"switch.table.netlink_policy_dump_attr_size_estimate\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [46 x i8] c"switch.table.__netlink_policy_dump_write_attr\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @switch.table.netlink_policy_dump_attr_size_estimate, ptr @switch.table.__netlink_policy_dump_write_attr], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netlink_policy_dump_attr_size_estimate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__netlink_policy_dump_write_attr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_get_policy_idx(ptr nocapture noundef readonly %state, ptr noundef readnone %policy, i32 noundef %maxtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %policy, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxtype)
  %tobool1.not = icmp eq i32 %maxtype, 0
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup.sink.split_crit_edge, label %for.cond.preheader, !prof !13

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %n_alloc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp70.not = icmp eq i32 %1, 0
  br i1 %cmp70.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %i.071
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp26 = icmp eq ptr %3, %policy
  br i1 %cmp26, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %maxtype29 = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %i.071, i32 1
  %4 = ptrtoint ptr %maxtype29 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxtype29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %maxtype)
  %cmp30 = icmp eq i32 %5, %maxtype
  br i1 %cmp30, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 87, %entry.cleanup.sink.split_crit_edge ], [ 96, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 96, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cleanup.sink.split ], [ %i.071, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_add_policy(ptr nocapture noundef %pstate, ptr noundef %policy, i32 noundef %maxtype) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pstate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pstate, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 92) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.then2_crit_edge, label %alloc_state.exit

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

alloc_state.exit:                                 ; preds = %if.then
  %n_alloc.i = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %call7.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %n_alloc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %n_alloc.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %alloc_state.exit.if.then2_crit_edge, label %alloc_state.exit.if.end4_crit_edge

alloc_state.exit.if.end4_crit_edge:               ; preds = %alloc_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

alloc_state.exit.if.then2_crit_edge:              ; preds = %alloc_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then2

if.then2:                                         ; preds = %alloc_state.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %retval.0.i95 = phi ptr [ %call7.i.i.i, %alloc_state.exit.if.then2_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then2_crit_edge ]
  %4 = ptrtoint ptr %retval.0.i95 to i32
  br label %cleanup34

if.end4:                                          ; preds = %alloc_state.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %state.0 = phi ptr [ %call7.i.i.i, %alloc_state.exit.if.end4_crit_edge ], [ %1, %entry.if.end4_crit_edge ]
  %tobool.not.i51 = icmp eq ptr %policy, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxtype)
  %tobool1.not.i = icmp eq i32 %maxtype, 0
  %or.cond.i = or i1 %tobool.not.i51, %tobool1.not.i
  br i1 %or.cond.i, label %if.end4.add_policy.exit_crit_edge, label %for.cond.preheader.i

if.end4.add_policy.exit_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_policy.exit

for.cond.preheader.i:                             ; preds = %if.end4
  %n_alloc2.i = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state.0, i32 0, i32 2
  %5 = ptrtoint ptr %n_alloc2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_alloc2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp82.not.i = icmp eq i32 %6, 0
  br i1 %cmp82.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.083.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netlink_policy_dump_state, ptr %state.0, i32 0, i32 3, i32 %i.083.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %cmp4.i = icmp eq ptr %8, %policy
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %maxtype7.i = getelementptr %struct.netlink_policy_dump_state, ptr %state.0, i32 0, i32 3, i32 %i.083.i, i32 1
  %9 = ptrtoint ptr %maxtype7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %maxtype7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %maxtype)
  %cmp8.i = icmp eq i32 %10, %maxtype
  br i1 %cmp8.i, label %land.lhs.true.i.add_policy.exit_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

land.lhs.true.i.add_policy.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %add_policy.exit

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %for.body.i.if.end10.i_crit_edge
  %tobool14.not.i = icmp eq ptr %8, null
  br i1 %tobool14.not.i, label %if.then15.i, label %for.inc.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %policy, ptr %arrayidx.i, align 4
  %maxtype21.i = getelementptr %struct.netlink_policy_dump_state, ptr %state.0, i32 0, i32 3, i32 %i.083.i, i32 1
  %12 = ptrtoint ptr %maxtype21.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %maxtype, ptr %maxtype21.i, align 4
  br label %add_policy.exit

for.inc.i:                                        ; preds = %if.end10.i
  %inc.i = add nuw i32 %i.083.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %add.i = add i32 %6, 10
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 8) #7
  %14 = extractvalue { i32, i1 } %13, 1
  %15 = extractvalue { i32, i1 } %13, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %15, i32 12) #7
  %retval.0.i.i = select i1 %14, i32 -1, i32 %spec.select.i.i
  %call24.i = tail call noalias ptr @krealloc(ptr noundef %state.0, i32 noundef %retval.0.i.i, i32 noundef 3264) #11
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %for.end.i.cleanup34_crit_edge, label %if.end27.i

for.end.i.cleanup34_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end27.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %n_alloc29.i = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %call24.i, i32 0, i32 2
  %16 = ptrtoint ptr %n_alloc29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_alloc29.i, align 4
  %arrayidx30.i = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i, i32 0, i32 3, i32 %17
  %sub.i = sub i32 %add.i, %17
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i, i32 8) #7
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %retval.0.i76.i = select i1 %19, i32 -1, i32 %20
  %21 = call ptr @memset(ptr %arrayidx30.i, i32 0, i32 %retval.0.i76.i)
  %22 = ptrtoint ptr %n_alloc29.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_alloc29.i, align 4
  %arrayidx35.i = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i, i32 0, i32 3, i32 %23
  %24 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %policy, ptr %arrayidx35.i, align 4
  %maxtype40.i = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i, i32 0, i32 3, i32 %23, i32 1
  %25 = ptrtoint ptr %maxtype40.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %maxtype, ptr %maxtype40.i, align 4
  store i32 %add.i, ptr %n_alloc29.i, align 4
  br label %add_policy.exit

add_policy.exit:                                  ; preds = %if.end27.i, %if.then15.i, %land.lhs.true.i.add_policy.exit_crit_edge, %if.end4.add_policy.exit_crit_edge
  %state.1 = phi ptr [ %state.0, %if.end4.add_policy.exit_crit_edge ], [ %call24.i, %if.end27.i ], [ %state.0, %if.then15.i ], [ %state.0, %land.lhs.true.i.add_policy.exit_crit_edge ]
  %n_alloc123 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state.1, i32 0, i32 2
  %26 = ptrtoint ptr %n_alloc123 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_alloc123, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp124.not = icmp eq i32 %27, 0
  br i1 %cmp124.not, label %add_policy.exit.for.end33_crit_edge, label %add_policy.exit.land.rhs_crit_edge

add_policy.exit.land.rhs_crit_edge:               ; preds = %add_policy.exit
  br label %land.rhs

add_policy.exit.for.end33_crit_edge:              ; preds = %add_policy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

land.rhs:                                         ; preds = %for.inc31.land.rhs_crit_edge, %add_policy.exit.land.rhs_crit_edge
  %policy_idx.0126 = phi i32 [ %inc32, %for.inc31.land.rhs_crit_edge ], [ 0, %add_policy.exit.land.rhs_crit_edge ]
  %state.2125 = phi ptr [ %state.5, %for.inc31.land.rhs_crit_edge ], [ %state.1, %add_policy.exit.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.netlink_policy_dump_state, ptr %state.2125, i32 0, i32 3, i32 %policy_idx.0126
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %29, null
  br i1 %tobool10.not, label %land.rhs.for.end33_crit_edge, label %land.rhs.for.body20_crit_edge

land.rhs.for.body20_crit_edge:                    ; preds = %land.rhs
  br label %for.body20

land.rhs.for.end33_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %land.rhs.for.body20_crit_edge
  %type.0120 = phi i32 [ %inc, %for.inc.for.body20_crit_edge ], [ 0, %land.rhs.for.body20_crit_edge ]
  %state.3119 = phi ptr [ %state.5, %for.inc.for.body20_crit_edge ], [ %state.2125, %land.rhs.for.body20_crit_edge ]
  %arrayidx21 = getelementptr %struct.nla_policy, ptr %29, i32 %type.0120
  %30 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx21, align 4
  %32 = and i8 %31, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %32)
  %switch = icmp eq i8 %32, 8
  br i1 %switch, label %sw.bb, label %for.body20.for.inc_crit_edge

for.body20.for.inc_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %for.body20
  %33 = getelementptr %struct.nla_policy, ptr %29, i32 %type.0120, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %len = getelementptr %struct.nla_policy, ptr %29, i32 %type.0120, i32 2
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %len, align 2
  %conv25 = zext i16 %37 to i32
  %tobool.not.i53 = icmp eq ptr %35, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool1.not.i54 = icmp eq i16 %37, 0
  %or.cond.i55 = or i1 %tobool.not.i53, %tobool1.not.i54
  br i1 %or.cond.i55, label %sw.bb.for.inc_crit_edge, label %for.cond.preheader.i58

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.cond.preheader.i58:                           ; preds = %sw.bb
  %n_alloc2.i56 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state.3119, i32 0, i32 2
  %38 = ptrtoint ptr %n_alloc2.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_alloc2.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp82.not.i57 = icmp eq i32 %39, 0
  br i1 %cmp82.not.i57, label %for.cond.preheader.i58.for.end.i78_crit_edge, label %for.cond.preheader.i58.for.body.i62_crit_edge

for.cond.preheader.i58.for.body.i62_crit_edge:    ; preds = %for.cond.preheader.i58
  br label %for.body.i62

for.cond.preheader.i58.for.end.i78_crit_edge:     ; preds = %for.cond.preheader.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i78

for.body.i62:                                     ; preds = %for.inc.i72.for.body.i62_crit_edge, %for.cond.preheader.i58.for.body.i62_crit_edge
  %i.083.i59 = phi i32 [ %inc.i70, %for.inc.i72.for.body.i62_crit_edge ], [ 0, %for.cond.preheader.i58.for.body.i62_crit_edge ]
  %arrayidx.i60 = getelementptr %struct.netlink_policy_dump_state, ptr %state.3119, i32 0, i32 3, i32 %i.083.i59
  %40 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i60, align 4
  %cmp4.i61 = icmp eq ptr %41, %35
  br i1 %cmp4.i61, label %land.lhs.true.i65, label %for.body.i62.if.end10.i67_crit_edge

for.body.i62.if.end10.i67_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i67

land.lhs.true.i65:                                ; preds = %for.body.i62
  %maxtype7.i63 = getelementptr %struct.netlink_policy_dump_state, ptr %state.3119, i32 0, i32 3, i32 %i.083.i59, i32 1
  %42 = ptrtoint ptr %maxtype7.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxtype7.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv25)
  %cmp8.i64 = icmp eq i32 %43, %conv25
  br i1 %cmp8.i64, label %land.lhs.true.i65.for.inc_crit_edge, label %land.lhs.true.i65.if.end10.i67_crit_edge

land.lhs.true.i65.if.end10.i67_crit_edge:         ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i67

land.lhs.true.i65.for.inc_crit_edge:              ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10.i67:                                     ; preds = %land.lhs.true.i65.if.end10.i67_crit_edge, %for.body.i62.if.end10.i67_crit_edge
  %tobool14.not.i66 = icmp eq ptr %41, null
  br i1 %tobool14.not.i66, label %if.then15.i69, label %for.inc.i72

if.then15.i69:                                    ; preds = %if.end10.i67
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %35, ptr %arrayidx.i60, align 4
  %maxtype21.i68 = getelementptr %struct.netlink_policy_dump_state, ptr %state.3119, i32 0, i32 3, i32 %i.083.i59, i32 1
  %45 = ptrtoint ptr %maxtype21.i68 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv25, ptr %maxtype21.i68, align 4
  br label %for.inc

for.inc.i72:                                      ; preds = %if.end10.i67
  %inc.i70 = add nuw i32 %i.083.i59, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %39
  br i1 %exitcond.not.i71, label %for.inc.i72.for.end.i78_crit_edge, label %for.inc.i72.for.body.i62_crit_edge

for.inc.i72.for.body.i62_crit_edge:               ; preds = %for.inc.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i62

for.inc.i72.for.end.i78_crit_edge:                ; preds = %for.inc.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i78

for.end.i78:                                      ; preds = %for.inc.i72.for.end.i78_crit_edge, %for.cond.preheader.i58.for.end.i78_crit_edge
  %add.i73 = add i32 %39, 10
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i73, i32 8) #7
  %47 = extractvalue { i32, i1 } %46, 1
  %48 = extractvalue { i32, i1 } %46, 0
  %spec.select.i.i74 = tail call i32 @llvm.uadd.sat.i32(i32 %48, i32 12) #7
  %retval.0.i.i75 = select i1 %47, i32 -1, i32 %spec.select.i.i74
  %call24.i76 = tail call noalias ptr @krealloc(ptr noundef %state.3119, i32 noundef %retval.0.i.i75, i32 noundef 3264) #11
  %tobool25.not.i77 = icmp eq ptr %call24.i76, null
  br i1 %tobool25.not.i77, label %for.end.i78.cleanup34_crit_edge, label %if.end27.i85

for.end.i78.cleanup34_crit_edge:                  ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end27.i85:                                     ; preds = %for.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  %n_alloc29.i79 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %call24.i76, i32 0, i32 2
  %49 = ptrtoint ptr %n_alloc29.i79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_alloc29.i79, align 4
  %arrayidx30.i80 = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i76, i32 0, i32 3, i32 %50
  %sub.i81 = sub i32 %add.i73, %50
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub.i81, i32 8) #7
  %52 = extractvalue { i32, i1 } %51, 1
  %53 = extractvalue { i32, i1 } %51, 0
  %retval.0.i76.i82 = select i1 %52, i32 -1, i32 %53
  %54 = call ptr @memset(ptr %arrayidx30.i80, i32 0, i32 %retval.0.i76.i82)
  %55 = ptrtoint ptr %n_alloc29.i79 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_alloc29.i79, align 4
  %arrayidx35.i83 = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i76, i32 0, i32 3, i32 %56
  %57 = ptrtoint ptr %arrayidx35.i83 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %35, ptr %arrayidx35.i83, align 4
  %maxtype40.i84 = getelementptr %struct.netlink_policy_dump_state, ptr %call24.i76, i32 0, i32 3, i32 %56, i32 1
  %58 = ptrtoint ptr %maxtype40.i84 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv25, ptr %maxtype40.i84, align 4
  store i32 %add.i73, ptr %n_alloc29.i79, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27.i85, %if.then15.i69, %land.lhs.true.i65.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %for.body20.for.inc_crit_edge
  %state.5 = phi ptr [ %state.3119, %for.body20.for.inc_crit_edge ], [ %state.3119, %if.then15.i69 ], [ %call24.i76, %if.end27.i85 ], [ %state.3119, %sw.bb.for.inc_crit_edge ], [ %state.3119, %land.lhs.true.i65.for.inc_crit_edge ]
  %inc = add i32 %type.0120, 1
  %maxtype18 = getelementptr %struct.netlink_policy_dump_state, ptr %state.5, i32 0, i32 3, i32 %policy_idx.0126, i32 1
  %59 = ptrtoint ptr %maxtype18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %maxtype18, align 4
  %cmp19.not = icmp ugt i32 %inc, %60
  br i1 %cmp19.not, label %for.inc31, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

for.inc31:                                        ; preds = %for.inc
  %inc32 = add nuw i32 %policy_idx.0126, 1
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state.5, i32 0, i32 2
  %61 = ptrtoint ptr %n_alloc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %n_alloc, align 4
  %cmp = icmp ult i32 %inc32, %62
  br i1 %cmp, label %for.inc31.land.rhs_crit_edge, label %for.inc31.for.end33_crit_edge

for.inc31.for.end33_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

for.inc31.land.rhs_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end33:                                        ; preds = %for.inc31.for.end33_crit_edge, %land.rhs.for.end33_crit_edge, %add_policy.exit.for.end33_crit_edge
  %state.2.lcssa = phi ptr [ %state.1, %add_policy.exit.for.end33_crit_edge ], [ %state.5, %for.inc31.for.end33_crit_edge ], [ %state.2125, %land.rhs.for.end33_crit_edge ]
  %63 = ptrtoint ptr %pstate to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %state.2.lcssa, ptr %pstate, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %for.end33, %for.end.i78.cleanup34_crit_edge, %for.end.i.cleanup34_crit_edge, %if.then2
  %retval.2 = phi i32 [ 0, %for.end33 ], [ %4, %if.then2 ], [ -12, %for.end.i.cleanup34_crit_edge ], [ -12, %for.end.i78.cleanup34_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @netlink_policy_dump_loop(ptr nocapture noundef readonly %state) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %n_alloc.i = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %n_alloc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_alloc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp ult i32 %1, %3
  br i1 %cmp.not.i, label %lor.rhs.i, label %entry.netlink_policy_dump_finished.exit_crit_edge

entry.netlink_policy_dump_finished.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %netlink_policy_dump_finished.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp ne ptr %5, null
  br label %netlink_policy_dump_finished.exit

netlink_policy_dump_finished.exit:                ; preds = %lor.rhs.i, %entry.netlink_policy_dump_finished.exit_crit_edge
  %6 = phi i1 [ false, %entry.netlink_policy_dump_finished.exit_crit_edge ], [ %tobool.not.i, %lor.rhs.i ]
  ret i1 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @netlink_policy_dump_attr_size_estimate(ptr nocapture noundef readonly %pt) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pt, align 4
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 16
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.netlink_policy_dump_attr_size_estimate, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_write_attr(ptr noundef %skb, ptr noundef %pt, i32 noundef %nestattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef null, ptr noundef %skb, ptr noundef %pt, i32 noundef %nestattr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef readonly %state, ptr noundef %skb, ptr noundef %pt, i32 noundef %nestattr) unnamed_addr #0 align 64 {
entry:
  %tmp.i275 = alloca i32, align 4
  %tmp.i273 = alloca i32, align 4
  %tmp.i271 = alloca i32, align 4
  %tmp.i269 = alloca i32, align 4
  %tmp.i267 = alloca i32, align 4
  %tmp.i265 = alloca i64, align 8
  %tmp.i263 = alloca i64, align 8
  %tmp.i261 = alloca i64, align 8
  %tmp.i259 = alloca i64, align 8
  %tmp.i257 = alloca i64, align 8
  %tmp.i255 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %range = alloca %struct.netlink_range_validation, align 8
  %range66 = alloca %struct.netlink_range_validation_signed, align 8
  %range129 = alloca %struct.netlink_range_validation, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pt, align 4
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 16
  br i1 %2, label %switch.lookup, label %entry.netlink_policy_dump_attr_size_estimate.exit_crit_edge

entry.netlink_policy_dump_attr_size_estimate.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %netlink_policy_dump_attr_size_estimate.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.__netlink_policy_dump_write_attr, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %netlink_policy_dump_attr_size_estimate.exit

netlink_policy_dump_attr_size_estimate.exit:      ; preds = %switch.lookup, %entry.netlink_policy_dump_attr_size_estimate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.netlink_policy_dump_attr_size_estimate.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %or.i = or i32 %nestattr, 32768
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not294 = icmp eq ptr %6, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not294
  br i1 %tobool.not, label %netlink_policy_dump_attr_size_estimate.exit.cleanup193_crit_edge, label %if.end

netlink_policy_dump_attr_size_estimate.exit.cleanup193_crit_edge: ; preds = %netlink_policy_dump_attr_size_estimate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

if.end:                                           ; preds = %netlink_policy_dump_attr_size_estimate.exit
  %7 = ptrtoint ptr %pt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pt, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %if.then.i.i [
    i8 6, label %if.end.sw.epilog_crit_edge
    i8 11, label %if.end.sw.bb104_crit_edge
    i8 8, label %sw.bb3
    i8 9, label %if.end.sw.bb4_crit_edge
    i8 1, label %if.end.sw.bb27_crit_edge
    i8 2, label %if.end.sw.bb27_crit_edge305
    i8 3, label %if.end.sw.bb27_crit_edge306
    i8 4, label %if.end.sw.bb27_crit_edge307
    i8 7, label %if.end.sw.bb27_crit_edge308
    i8 12, label %if.end.sw.bb65_crit_edge
    i8 13, label %if.end.sw.bb65_crit_edge309
    i8 14, label %if.end.sw.bb65_crit_edge310
    i8 15, label %if.end.sw.bb65_crit_edge311
    i8 16, label %sw.bb99
    i8 5, label %if.end.sw.bb104_crit_edge312
    i8 10, label %if.end.sw.bb104_crit_edge313
  ]

if.end.sw.bb104_crit_edge313:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end.sw.bb104_crit_edge312:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end.sw.bb65_crit_edge311:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.end.sw.bb65_crit_edge310:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.end.sw.bb65_crit_edge309:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.end.sw.bb65_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

if.end.sw.bb27_crit_edge308:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end.sw.bb27_crit_edge307:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end.sw.bb27_crit_edge306:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end.sw.bb27_crit_edge305:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end.sw.bb27_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

if.end.sw.bb104_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb104

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i254 = icmp ugt ptr %11, %6
  br i1 %cmp.i.i254, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !13

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %cleanup193

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb3, %if.end.sw.bb4_crit_edge
  %type.0 = phi i32 [ -1, %if.end.sw.bb4_crit_edge ], [ 13, %sw.bb3 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %8)
  %cmp = icmp eq i8 %8, 9
  %spec.select = select i1 %cmp, i32 14, i32 %type.0
  %tobool10.not = icmp eq ptr %state, null
  br i1 %tobool10.not, label %sw.bb4.sw.epilog_crit_edge, label %land.lhs.true

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb4
  %14 = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true12

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true12:                                  ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool14.not = icmp eq i16 %18, 0
  br i1 %tobool14.not, label %land.lhs.true12.sw.epilog_crit_edge, label %land.lhs.true15

land.lhs.true12.sw.epilog_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %conv13 = zext i16 %18 to i32
  %call18 = tail call i32 @netlink_policy_dump_get_policy_idx(ptr noundef nonnull %state, ptr noundef nonnull %16, i32 noundef %conv13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %19 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call18, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %land.lhs.true15.if.then.i.i280_crit_edge

land.lhs.true15.if.then.i.i280_crit_edge:         ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len, align 2
  %conv22 = zext i16 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i255) #7
  %22 = ptrtoint ptr %tmp.i255 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv22, ptr %tmp.i255, align 4
  %call.i256 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i255) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i256)
  %tobool24.not = icmp eq i32 %call.i256, 0
  br i1 %tobool24.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.if.then.i.i280_crit_edge

lor.lhs.false.if.then.i.i280_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end.sw.bb27_crit_edge, %if.end.sw.bb27_crit_edge305, %if.end.sw.bb27_crit_edge306, %if.end.sw.bb27_crit_edge307, %if.end.sw.bb27_crit_edge308
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range) #7
  %23 = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 1
  %24 = call ptr @memset(ptr %range, i32 255, i32 16)
  %switch.tableidx300 = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx300)
  %25 = icmp ult i8 %switch.tableidx300, 3
  %switch.idx.cast = zext i8 %switch.tableidx300 to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 2
  %type.2 = select i1 %25, i32 %switch.offset, i32 5
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 1
  %26 = ptrtoint ptr %validation_type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %validation_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %cmp49 = icmp eq i8 %27, 5
  br i1 %cmp49, label %if.then51, label %if.end57

if.then51:                                        ; preds = %sw.bb27
  %28 = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 3
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %conv52 = zext i32 %30 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i257) #7
  %31 = ptrtoint ptr %tmp.i257 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv52, ptr %tmp.i257, align 8
  %call.i258 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 12, i32 noundef 8, ptr noundef nonnull %tmp.i257, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i257) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258)
  %tobool54.not = icmp eq i32 %call.i258, 0
  br i1 %tobool54.not, label %if.then51.cleanup_crit_edge, label %if.then51.cleanup.thread296_crit_edge

if.then51.cleanup.thread296_crit_edge:            ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread296

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %sw.bb27
  call void @nla_get_range_unsigned(ptr noundef %pt, ptr noundef nonnull %range) #7
  %32 = ptrtoint ptr %range to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %range, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i259) #7
  %34 = ptrtoint ptr %tmp.i259 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tmp.i259, align 8
  %call.i260 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 8, ptr noundef nonnull %tmp.i259, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i259) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260)
  %tobool59.not = icmp eq i32 %call.i260, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range) #7
  br label %if.then.i.i280

lor.lhs.false60:                                  ; preds = %if.end57
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i261) #7
  %37 = ptrtoint ptr %tmp.i261 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %tmp.i261, align 8
  %call.i262 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i261, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i261) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool62.not = icmp eq i32 %call.i262, 0
  br i1 %tobool62.not, label %lor.lhs.false60.cleanup_crit_edge, label %lor.lhs.false60.cleanup.thread296_crit_edge

lor.lhs.false60.cleanup.thread296_crit_edge:      ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread296

lor.lhs.false60.cleanup_crit_edge:                ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread296:                                ; preds = %lor.lhs.false60.cleanup.thread296_crit_edge, %if.then51.cleanup.thread296_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range) #7
  br label %if.then.i.i280

cleanup:                                          ; preds = %lor.lhs.false60.cleanup_crit_edge, %if.then51.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range) #7
  br label %sw.epilog

sw.bb65:                                          ; preds = %if.end.sw.bb65_crit_edge, %if.end.sw.bb65_crit_edge309, %if.end.sw.bb65_crit_edge310, %if.end.sw.bb65_crit_edge311
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range66) #7
  %38 = call ptr @memset(ptr %range66, i32 255, i32 16)
  call void @nla_get_range_signed(ptr noundef %pt, ptr noundef nonnull %range66) #7
  %39 = ptrtoint ptr %range66 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %range66, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i263) #7
  %41 = ptrtoint ptr %tmp.i263 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %tmp.i263, align 8
  %call.i264 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i263, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i263) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool90.not = icmp eq i32 %call.i264, 0
  br i1 %tobool90.not, label %cleanup97, label %cleanup97.thread

cleanup97.thread:                                 ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range66) #7
  br label %if.then.i.i280

cleanup97:                                        ; preds = %sw.bb65
  %switch.tableidx302 = add i8 %8, -12
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx302)
  %42 = icmp ult i8 %switch.tableidx302, 3
  %switch.idx.cast303 = zext i8 %switch.tableidx302 to i32
  %switch.offset304 = add nuw nsw i32 %switch.idx.cast303, 6
  %type.3 = select i1 %42, i32 %switch.offset304, i32 9
  %43 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %range66, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %43, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i265) #7
  %46 = ptrtoint ptr %tmp.i265 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %tmp.i265, align 8
  %call.i266 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i265, i32 noundef 11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i265) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool94.not.not = icmp eq i32 %call.i266, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range66) #7
  br i1 %tobool94.not.not, label %cleanup97.sw.epilog_crit_edge, label %cleanup97.if.then.i.i280_crit_edge

cleanup97.if.then.i.i280_crit_edge:               ; preds = %cleanup97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

cleanup97.sw.epilog_crit_edge:                    ; preds = %cleanup97
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb99:                                          ; preds = %if.end
  %47 = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i267) #7
  %50 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %tmp.i267, align 4
  %call.i268 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i267) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i267) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool101.not = icmp eq i32 %call.i268, 0
  br i1 %tobool101.not, label %sw.bb99.sw.epilog_crit_edge, label %sw.bb99.if.then.i.i280_crit_edge

sw.bb99.if.then.i.i280_crit_edge:                 ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

sw.bb99.sw.epilog_crit_edge:                      ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb104:                                         ; preds = %if.end.sw.bb104_crit_edge, %if.end.sw.bb104_crit_edge312, %if.end.sw.bb104_crit_edge313
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %switch.selectcmp = icmp eq i8 %8, 10
  %switch.select = select i1 %switch.selectcmp, i32 12, i32 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %switch.selectcmp251 = icmp eq i8 %8, 5
  %switch.select252 = select i1 %switch.selectcmp251, i32 11, i32 %switch.select
  %validation_type119 = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 1
  %51 = ptrtoint ptr %validation_type119 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %validation_type119, align 1
  %.off = add i8 %52, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch253 = icmp ult i8 %.off, 2
  br i1 %switch253, label %if.then128, label %if.else151

if.then128:                                       ; preds = %sw.bb104
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range129) #7
  %53 = getelementptr inbounds %struct.netlink_range_validation, ptr %range129, i32 0, i32 1
  %54 = call ptr @memset(ptr %range129, i32 255, i32 16)
  call void @nla_get_range_unsigned(ptr noundef %pt, ptr noundef nonnull %range129) #7
  %55 = ptrtoint ptr %range129 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %range129, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool131.not = icmp eq i64 %56, 0
  br i1 %tobool131.not, label %if.then128.if.end138_crit_edge, label %land.lhs.true132

if.then128.if.end138_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

land.lhs.true132:                                 ; preds = %if.then128
  %conv134 = trunc i64 %56 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i269) #7
  %57 = ptrtoint ptr %tmp.i269 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv134, ptr %tmp.i269, align 4
  %call.i270 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i269) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i269) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool136.not = icmp eq i32 %call.i270, 0
  br i1 %tobool136.not, label %land.lhs.true132.if.end138_crit_edge, label %land.lhs.true132.cleanup149.thread_crit_edge

land.lhs.true132.cleanup149.thread_crit_edge:     ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149.thread

land.lhs.true132.if.end138_crit_edge:             ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.end138:                                        ; preds = %land.lhs.true132.if.end138_crit_edge, %if.then128.if.end138_crit_edge
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %59)
  %cmp140 = icmp ult i64 %59, 65535
  br i1 %cmp140, label %land.lhs.true142, label %if.end138.cleanup149_crit_edge

if.end138.cleanup149_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149

land.lhs.true142:                                 ; preds = %if.end138
  %conv144 = trunc i64 %59 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i271) #7
  %60 = ptrtoint ptr %tmp.i271 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv144, ptr %tmp.i271, align 4
  %call.i272 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i271) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i271) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool146.not = icmp eq i32 %call.i272, 0
  br i1 %tobool146.not, label %land.lhs.true142.cleanup149_crit_edge, label %land.lhs.true142.cleanup149.thread_crit_edge

land.lhs.true142.cleanup149.thread_crit_edge:     ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149.thread

land.lhs.true142.cleanup149_crit_edge:            ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup149

cleanup149.thread:                                ; preds = %land.lhs.true142.cleanup149.thread_crit_edge, %land.lhs.true132.cleanup149.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range129) #7
  br label %if.then.i.i280

cleanup149:                                       ; preds = %land.lhs.true142.cleanup149_crit_edge, %if.end138.cleanup149_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range129) #7
  br label %sw.epilog

if.else151:                                       ; preds = %sw.bb104
  %len152 = getelementptr inbounds %struct.nla_policy, ptr %pt, i32 0, i32 2
  %61 = ptrtoint ptr %len152 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %len152, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool154.not = icmp eq i16 %62, 0
  br i1 %tobool154.not, label %if.else151.sw.epilog_crit_edge, label %land.lhs.true155

if.else151.sw.epilog_crit_edge:                   ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true155:                                 ; preds = %if.else151
  %conv153 = zext i16 %62 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i273) #7
  %63 = ptrtoint ptr %tmp.i273 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv153, ptr %tmp.i273, align 4
  %call.i274 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i273) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i273) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool159.not = icmp eq i32 %call.i274, 0
  br i1 %tobool159.not, label %land.lhs.true155.sw.epilog_crit_edge, label %land.lhs.true155.if.then.i.i280_crit_edge

land.lhs.true155.if.then.i.i280_crit_edge:        ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

land.lhs.true155.sw.epilog_crit_edge:             ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true155.sw.epilog_crit_edge, %if.else151.sw.epilog_crit_edge, %cleanup149, %sw.bb99.sw.epilog_crit_edge, %cleanup97.sw.epilog_crit_edge, %cleanup, %lor.lhs.false.sw.epilog_crit_edge, %land.lhs.true12.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %type.5 = phi i32 [ 15, %sw.bb99.sw.epilog_crit_edge ], [ %type.3, %cleanup97.sw.epilog_crit_edge ], [ %type.2, %cleanup ], [ %spec.select, %lor.lhs.false.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true12.sw.epilog_crit_edge ], [ %spec.select, %land.lhs.true.sw.epilog_crit_edge ], [ %spec.select, %sw.bb4.sw.epilog_crit_edge ], [ %switch.select252, %cleanup149 ], [ %switch.select252, %land.lhs.true155.sw.epilog_crit_edge ], [ %switch.select252, %if.else151.sw.epilog_crit_edge ], [ 1, %if.end.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i275) #7
  %64 = ptrtoint ptr %tmp.i275 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %type.5, ptr %tmp.i275, align 4
  %call.i276 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i275) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool165.not = icmp eq i32 %call.i276, 0
  br i1 %tobool165.not, label %if.end167, label %sw.epilog.if.then.i.i280_crit_edge

sw.epilog.if.then.i.i280_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i280

if.end167:                                        ; preds = %sw.epilog
  %65 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %67 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i, ptr %6, align 2
  %conv169 = and i32 %sub.ptr.sub.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %conv169)
  %cmp170 = icmp ult i32 %retval.0.i, %conv169
  br i1 %cmp170, label %do.end, label %if.end167.cleanup193_crit_edge, !prof !13

if.end167.cleanup193_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup193

do.end:                                           ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 379, i32 noundef 9, ptr noundef null) #7
  br label %cleanup193

if.then.i.i280:                                   ; preds = %sw.epilog.if.then.i.i280_crit_edge, %land.lhs.true155.if.then.i.i280_crit_edge, %cleanup149.thread, %sw.bb99.if.then.i.i280_crit_edge, %cleanup97.if.then.i.i280_crit_edge, %cleanup97.thread, %cleanup.thread296, %cleanup.thread, %lor.lhs.false.if.then.i.i280_crit_edge, %land.lhs.true15.if.then.i.i280_crit_edge
  %data.i.i278 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %68 = ptrtoint ptr %data.i.i278 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i278, align 4
  %cmp.i.i279 = icmp ugt ptr %69, %6
  br i1 %cmp.i.i279, label %do.end.i.i281, label %if.then.i.i280.nla_nest_cancel.exit286_crit_edge, !prof !13

if.then.i.i280.nla_nest_cancel.exit286_crit_edge: ; preds = %if.then.i.i280
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit286

do.end.i.i281:                                    ; preds = %if.then.i.i280
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit286

nla_nest_cancel.exit286:                          ; preds = %do.end.i.i281, %if.then.i.i280.nla_nest_cancel.exit286_crit_edge
  %70 = ptrtoint ptr %data.i.i278 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i278, align 4
  %sub.ptr.lhs.cast.i.i282 = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i283 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i.i284 = sub i32 %sub.ptr.lhs.cast.i.i282, %sub.ptr.rhs.cast.i.i283
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i284) #7
  br label %cleanup193

cleanup193:                                       ; preds = %nla_nest_cancel.exit286, %do.end, %if.end167.cleanup193_crit_edge, %nla_nest_cancel.exit, %netlink_policy_dump_attr_size_estimate.exit.cleanup193_crit_edge
  %retval.0 = phi i32 [ -61, %nla_nest_cancel.exit ], [ -105, %nla_nest_cancel.exit286 ], [ -105, %netlink_policy_dump_attr_size_estimate.exit.cleanup193_crit_edge ], [ 0, %do.end ], [ 0, %if.end167.cleanup193_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_policy_dump_write(ptr noundef %skb, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_idx = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 1
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %n_alloc.i = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 2
  br label %send_attribute

send_attribute:                                   ; preds = %netlink_policy_dump_finished.exit.send_attribute_crit_edge, %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %arrayidx = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %attr_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attr_idx, align 4
  %or.i = or i32 %1, 32768
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i, i32 noundef 0, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not62 = icmp eq ptr %7, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not62
  br i1 %tobool.not, label %send_attribute.cleanup_crit_edge, label %if.end

send_attribute.cleanup_crit_edge:                 ; preds = %send_attribute
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %send_attribute
  %arrayidx2 = getelementptr %struct.nla_policy, ptr %3, i32 %5
  %8 = ptrtoint ptr %attr_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %attr_idx, align 4
  %call5 = tail call fastcc i32 @__netlink_policy_dump_write_attr(ptr noundef %state, ptr noundef %skb, ptr noundef %arrayidx2, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %call5)
  %cmp = icmp eq i32 %call5, -61
  br i1 %cmp, label %if.then.i.i, label %if.else

if.then.i.i:                                      ; preds = %if.end
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i51 = icmp ugt ptr %11, %7
  br i1 %cmp.i.i51, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !13

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #7
  br label %next

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.end10, label %if.then.i.i55

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %7, align 2
  br label %next

next:                                             ; preds = %if.end10, %nla_nest_cancel.exit
  %17 = ptrtoint ptr %attr_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr_idx, align 4
  %add = add i32 %18, 1
  store i32 %add, ptr %attr_idx, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %maxtype = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %20, i32 1
  %21 = ptrtoint ptr %maxtype to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxtype, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp17 = icmp ugt i32 %add, %22
  br i1 %cmp17, label %if.then18, label %next.if.end21_crit_edge

next.if.end21_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %attr_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %attr_idx, align 4
  %inc = add i32 %20, 1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc, ptr %state, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %next.if.end21_crit_edge
  br i1 %cmp, label %if.then23, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end21
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  %27 = ptrtoint ptr %n_alloc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_alloc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i = icmp ult i32 %26, %28
  br i1 %cmp.not.i, label %netlink_policy_dump_finished.exit, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

netlink_policy_dump_finished.exit:                ; preds = %if.then23
  %arrayidx.i = getelementptr %struct.netlink_policy_dump_state, ptr %state, i32 0, i32 3, i32 %26
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %netlink_policy_dump_finished.exit.cleanup_crit_edge, label %netlink_policy_dump_finished.exit.send_attribute_crit_edge

netlink_policy_dump_finished.exit.send_attribute_crit_edge: ; preds = %netlink_policy_dump_finished.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_attribute

netlink_policy_dump_finished.exit.cleanup_crit_edge: ; preds = %netlink_policy_dump_finished.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i.i55:                                    ; preds = %if.else
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i54 = icmp ugt ptr %32, %7
  br i1 %cmp.i.i54, label %do.end.i.i56, label %if.then.i.i55.nla_nest_cancel.exit61_crit_edge, !prof !13

if.then.i.i55.nla_nest_cancel.exit61_crit_edge:   ; preds = %if.then.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_nest_cancel.exit61

do.end.i.i56:                                     ; preds = %if.then.i.i55
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nla_nest_cancel.exit61

nla_nest_cancel.exit61:                           ; preds = %do.end.i.i56, %if.then.i.i55.nla_nest_cancel.exit61_crit_edge
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i57 = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i57, %sub.ptr.rhs.cast.i.i58
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i59) #7
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit61, %netlink_policy_dump_finished.exit.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %send_attribute.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %nla_nest_cancel.exit61 ], [ -61, %if.then23.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ -61, %netlink_policy_dump_finished.exit.cleanup_crit_edge ], [ -105, %send_attribute.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_policy_dump_free(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nla_get_range_unsigned(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nla_get_range_signed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netlink/policy.c", i32 87, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/net/netlink.h", i32 991, i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
