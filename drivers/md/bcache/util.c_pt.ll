; ModuleID = '/llk/IR_all_yes/drivers/md/bcache/util.c_pt.bc'
source_filename = "../drivers/md/bcache/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.time_stats = type { %struct.spinlock, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bch_ratelimit = type { i64, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.atomic_t }

@bch_hprint.units = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"?kMGTPEZY\00", [22 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"-%llu.%i%c\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%llu.%i%c\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"-0123456789:ABCDEFabcdef\00", [39 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 10, i64 101, i64 103, i64 107, i64 109, i64 112, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.4 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 10, i64 101, i64 103, i64 107, i64 109, i64 112, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.5 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 10, i64 101, i64 103, i64 107, i64 109, i64 112, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.6 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 10, i64 101, i64 103, i64 107, i64 109, i64 112, i64 116, i64 121, i64 122]
@__sancov_gen_cov_switch_values.7 = internal global [18 x i64] [i64 16, i64 8, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102]
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"units\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 94, i32 20 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 119, i32 23 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 121, i32 23 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [28 x i8] c"../drivers/md/bcache/util.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 141, i32 21 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @bch_hprint.units, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bch_hprint.units to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_strtoint_h(ptr noundef %cp, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #9
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !20
  %call = call i32 @simple_strtol(ptr noundef %cp, ptr noundef nonnull %e, i32 noundef 10) #9
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %e, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %sub.i = add i8 %4, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %4, i8 %sub.i
  %8 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %spec.select.i, label %entry.cleanup_crit_edge [
    i8 121, label %entry.sw.bb_crit_edge
    i8 122, label %entry.sw.bb_crit_edge59
    i8 101, label %entry.sw.bb2_crit_edge
    i8 112, label %entry.sw.bb4_crit_edge
    i8 116, label %entry.sw.bb6_crit_edge
    i8 103, label %entry.sw.bb8_crit_edge
    i8 109, label %entry.sw.bb10_crit_edge
    i8 107, label %entry.sw.bb12_crit_edge
    i8 10, label %entry.sw.bb15_crit_edge
    i8 0, label %entry.sw.bb15_crit_edge60
  ]

entry.sw.bb15_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge59
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %u.0 = phi i32 [ 6, %entry.sw.bb2_crit_edge ], [ 7, %sw.bb ]
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %u.1 = phi i32 [ 5, %entry.sw.bb4_crit_edge ], [ %u.0, %sw.bb2 ]
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %entry.sw.bb6_crit_edge
  %u.2 = phi i32 [ 4, %entry.sw.bb6_crit_edge ], [ %u.1, %sw.bb4 ]
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %entry.sw.bb8_crit_edge
  %u.3 = phi i32 [ 3, %entry.sw.bb8_crit_edge ], [ %u.2, %sw.bb6 ]
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %entry.sw.bb10_crit_edge
  %u.4 = phi i32 [ 2, %entry.sw.bb10_crit_edge ], [ %u.3, %sw.bb8 ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %u.5 = phi i32 [ 1, %entry.sw.bb12_crit_edge ], [ %u.4, %sw.bb10 ]
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %e, align 4
  %cmp = icmp eq ptr %2, %cp
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.sw.bb15_crit_edge

sw.bb12.sw.bb15_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge60
  %u.6 = phi i32 [ 0, %entry.sw.bb15_crit_edge ], [ 0, %entry.sw.bb15_crit_edge60 ], [ %u.5, %sw.bb12.sw.bb15_crit_edge ]
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp17 = icmp eq i8 %13, 10
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr20 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr20, ptr %e, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb15.sw.epilog_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.cond.preheader, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.6)
  %tobool24.not56 = icmp eq i32 %u.6, 0
  br i1 %tobool24.not56, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  %19 = add i32 %call, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4194303, i32 %19)
  %20 = icmp ult i32 %19, -4194303
  br i1 %20, label %while.body.cleanup_crit_edge, label %if.end35

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %while.body
  %mul = shl nsw i32 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %u.6)
  %tobool24.not = icmp eq i32 %u.6, 1
  br i1 %tobool24.not, label %if.end35.while.end_crit_edge, label %while.body.1

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %if.end35
  %21 = add i32 %mul, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4194303, i32 %21)
  %22 = icmp ult i32 %21, -4194303
  br i1 %22, label %while.body.1.cleanup_crit_edge, label %if.end35.1

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.1:                                       ; preds = %while.body.1
  %mul.1 = shl nsw i32 %call, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %u.6)
  %tobool24.not.1 = icmp eq i32 %u.6, 2
  br i1 %tobool24.not.1, label %if.end35.1.while.end_crit_edge, label %while.body.2

if.end35.1.while.end_crit_edge:                   ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %if.end35.1
  %23 = add i32 %mul.1, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4194303, i32 %23)
  %24 = icmp ult i32 %23, -4194303
  br i1 %24, label %while.body.2.cleanup_crit_edge, label %if.end35.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.2:                                       ; preds = %while.body.2
  %mul.2 = shl nsw i32 %call, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %u.6)
  %tobool24.not.2 = icmp eq i32 %u.6, 3
  br i1 %tobool24.not.2, label %if.end35.2.while.end_crit_edge, label %while.body.3

if.end35.2.while.end_crit_edge:                   ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %if.end35.2
  %25 = add i32 %mul.2, -2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4194303, i32 %25)
  %26 = icmp ult i32 %25, -4194303
  br i1 %26, label %while.body.3.cleanup_crit_edge, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %while.body.3.while.end_crit_edge, %if.end35.2.while.end_crit_edge, %if.end35.1.while.end_crit_edge, %if.end35.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %call, %while.cond.preheader.while.end_crit_edge ], [ %mul, %if.end35.while.end_crit_edge ], [ %mul.1, %if.end35.1.while.end_crit_edge ], [ %mul.2, %if.end35.2.while.end_crit_edge ], [ 0, %while.body.3.while.end_crit_edge ]
  %27 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.0.lcssa, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %while.body.3.cleanup_crit_edge ], [ -22, %while.body.2.cleanup_crit_edge ], [ -22, %while.body.1.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_strtouint_h(ptr noundef %cp, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #9
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !20
  %call = call i32 @simple_strtoul(ptr noundef %cp, ptr noundef nonnull %e, i32 noundef 10) #9
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %e, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %sub.i = add i8 %4, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %4, i8 %sub.i
  %8 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %spec.select.i, label %entry.cleanup_crit_edge [
    i8 121, label %entry.sw.bb_crit_edge
    i8 122, label %entry.sw.bb_crit_edge63
    i8 101, label %entry.sw.bb2_crit_edge
    i8 112, label %entry.sw.bb4_crit_edge
    i8 116, label %entry.sw.bb6_crit_edge
    i8 103, label %entry.sw.bb8_crit_edge
    i8 109, label %entry.sw.bb10_crit_edge
    i8 107, label %entry.sw.bb12_crit_edge
    i8 10, label %entry.sw.bb15_crit_edge
    i8 0, label %entry.sw.bb15_crit_edge64
  ]

entry.sw.bb15_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge63
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %u.0 = phi i32 [ 6, %entry.sw.bb2_crit_edge ], [ 7, %sw.bb ]
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %u.1 = phi i32 [ 5, %entry.sw.bb4_crit_edge ], [ %u.0, %sw.bb2 ]
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %entry.sw.bb6_crit_edge
  %u.2 = phi i32 [ 4, %entry.sw.bb6_crit_edge ], [ %u.1, %sw.bb4 ]
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %entry.sw.bb8_crit_edge
  %u.3 = phi i32 [ 3, %entry.sw.bb8_crit_edge ], [ %u.2, %sw.bb6 ]
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %entry.sw.bb10_crit_edge
  %u.4 = phi i32 [ 2, %entry.sw.bb10_crit_edge ], [ %u.3, %sw.bb8 ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %u.5 = phi i32 [ 1, %entry.sw.bb12_crit_edge ], [ %u.4, %sw.bb10 ]
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %e, align 4
  %cmp = icmp eq ptr %2, %cp
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.sw.bb15_crit_edge

sw.bb12.sw.bb15_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge64
  %u.6 = phi i32 [ 0, %entry.sw.bb15_crit_edge ], [ 0, %entry.sw.bb15_crit_edge64 ], [ %u.5, %sw.bb12.sw.bb15_crit_edge ]
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp17 = icmp eq i8 %13, 10
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr20 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr20, ptr %e, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb15.sw.epilog_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.cond.preheader, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.6)
  %tobool24.not60 = icmp eq i32 %u.6, 0
  br i1 %tobool24.not60, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %call)
  %cmp31 = icmp ugt i32 %call, 2097151
  br i1 %cmp31, label %while.body.cleanup_crit_edge, label %if.end39

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %while.body
  %mul = shl nuw nsw i32 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %u.6)
  %tobool24.not = icmp eq i32 %u.6, 1
  br i1 %tobool24.not, label %if.end39.while.end_crit_edge, label %while.body.1

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call)
  %cmp31.1 = icmp ugt i32 %call, 2047
  br i1 %cmp31.1, label %while.body.1.cleanup_crit_edge, label %if.end39.1

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.1:                                       ; preds = %while.body.1
  %mul.1 = shl nuw nsw i32 %call, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %u.6)
  %tobool24.not.1 = icmp eq i32 %u.6, 2
  br i1 %tobool24.not.1, label %if.end39.1.while.end_crit_edge, label %while.body.2

if.end39.1.while.end_crit_edge:                   ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp31.2 = icmp ugt i32 %call, 1
  br i1 %cmp31.2, label %while.body.2.cleanup_crit_edge, label %if.end39.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.2:                                       ; preds = %while.body.2
  %mul.2 = shl nuw nsw i32 %call, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %u.6)
  %tobool24.not.2 = icmp eq i32 %u.6, 3
  br i1 %tobool24.not.2, label %if.end39.2.while.end_crit_edge, label %while.body.3

if.end39.2.while.end_crit_edge:                   ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31.3.not = icmp eq i32 %call, 0
  br i1 %cmp31.3.not, label %while.body.3.while.end_crit_edge, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.3.while.end_crit_edge, %if.end39.2.while.end_crit_edge, %if.end39.1.while.end_crit_edge, %if.end39.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i32 [ %call, %while.cond.preheader.while.end_crit_edge ], [ %mul, %if.end39.while.end_crit_edge ], [ %mul.1, %if.end39.1.while.end_crit_edge ], [ %mul.2, %if.end39.2.while.end_crit_edge ], [ 0, %while.body.3.while.end_crit_edge ]
  %19 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0.lcssa, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %while.body.3.cleanup_crit_edge ], [ -22, %while.body.2.cleanup_crit_edge ], [ -22, %while.body.1.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_strtoll_h(ptr noundef %cp, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #9
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !20
  %call = call i64 @simple_strtoll(ptr noundef %cp, ptr noundef nonnull %e, i32 noundef 10) #9
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %e, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %sub.i = add i8 %4, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %4, i8 %sub.i
  %8 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %spec.select.i, label %entry.cleanup_crit_edge [
    i8 121, label %entry.sw.bb_crit_edge
    i8 122, label %entry.sw.bb_crit_edge59
    i8 101, label %entry.sw.bb2_crit_edge
    i8 112, label %entry.sw.bb4_crit_edge
    i8 116, label %entry.sw.bb6_crit_edge
    i8 103, label %entry.sw.bb8_crit_edge
    i8 109, label %entry.sw.bb10_crit_edge
    i8 107, label %entry.sw.bb12_crit_edge
    i8 10, label %entry.sw.bb15_crit_edge
    i8 0, label %entry.sw.bb15_crit_edge60
  ]

entry.sw.bb15_crit_edge60:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge59:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge59
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %u.0 = phi i32 [ 6, %entry.sw.bb2_crit_edge ], [ 7, %sw.bb ]
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %u.1 = phi i32 [ 5, %entry.sw.bb4_crit_edge ], [ %u.0, %sw.bb2 ]
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %entry.sw.bb6_crit_edge
  %u.2 = phi i32 [ 4, %entry.sw.bb6_crit_edge ], [ %u.1, %sw.bb4 ]
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %entry.sw.bb8_crit_edge
  %u.3 = phi i32 [ 3, %entry.sw.bb8_crit_edge ], [ %u.2, %sw.bb6 ]
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %entry.sw.bb10_crit_edge
  %u.4 = phi i32 [ 2, %entry.sw.bb10_crit_edge ], [ %u.3, %sw.bb8 ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %u.5 = phi i32 [ 1, %entry.sw.bb12_crit_edge ], [ %u.4, %sw.bb10 ]
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %e, align 4
  %cmp = icmp eq ptr %2, %cp
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.sw.bb15_crit_edge

sw.bb12.sw.bb15_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge60
  %u.6 = phi i32 [ 0, %entry.sw.bb15_crit_edge ], [ 0, %entry.sw.bb15_crit_edge60 ], [ %u.5, %sw.bb12.sw.bb15_crit_edge ]
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp17 = icmp eq i8 %13, 10
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr20 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr20, ptr %e, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb15.sw.epilog_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.cond.preheader, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.6)
  %tobool24.not56 = icmp eq i32 %u.6, 0
  br i1 %tobool24.not56, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  %19 = add i64 %call, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %19)
  %20 = icmp ult i64 %19, -18014398509481983
  br i1 %20, label %while.body.cleanup_crit_edge, label %if.end35

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %while.body
  %mul = shl nsw i64 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %u.6)
  %tobool24.not = icmp eq i32 %u.6, 1
  br i1 %tobool24.not, label %if.end35.while.end_crit_edge, label %while.body.1

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %if.end35
  %21 = add i64 %mul, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %21)
  %22 = icmp ult i64 %21, -18014398509481983
  br i1 %22, label %while.body.1.cleanup_crit_edge, label %if.end35.1

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.1:                                       ; preds = %while.body.1
  %mul.1 = shl nsw i64 %call, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %u.6)
  %tobool24.not.1 = icmp eq i32 %u.6, 2
  br i1 %tobool24.not.1, label %if.end35.1.while.end_crit_edge, label %while.body.2

if.end35.1.while.end_crit_edge:                   ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %if.end35.1
  %23 = add i64 %mul.1, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %23)
  %24 = icmp ult i64 %23, -18014398509481983
  br i1 %24, label %while.body.2.cleanup_crit_edge, label %if.end35.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.2:                                       ; preds = %while.body.2
  %mul.2 = shl nsw i64 %call, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %u.6)
  %tobool24.not.2 = icmp eq i32 %u.6, 3
  br i1 %tobool24.not.2, label %if.end35.2.while.end_crit_edge, label %while.body.3

if.end35.2.while.end_crit_edge:                   ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %if.end35.2
  %25 = add i64 %mul.2, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %25)
  %26 = icmp ult i64 %25, -18014398509481983
  br i1 %26, label %while.body.3.cleanup_crit_edge, label %if.end35.3

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.3:                                       ; preds = %while.body.3
  %mul.3 = shl nsw i64 %call, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %u.6)
  %tobool24.not.3 = icmp eq i32 %u.6, 4
  br i1 %tobool24.not.3, label %if.end35.3.while.end_crit_edge, label %while.body.4

if.end35.3.while.end_crit_edge:                   ; preds = %if.end35.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.4:                                     ; preds = %if.end35.3
  %27 = add i64 %mul.3, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %27)
  %28 = icmp ult i64 %27, -18014398509481983
  br i1 %28, label %while.body.4.cleanup_crit_edge, label %if.end35.4

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.4:                                       ; preds = %while.body.4
  %mul.4 = shl nsw i64 %call, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %u.6)
  %tobool24.not.4 = icmp eq i32 %u.6, 5
  br i1 %tobool24.not.4, label %if.end35.4.while.end_crit_edge, label %while.body.5

if.end35.4.while.end_crit_edge:                   ; preds = %if.end35.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.5:                                     ; preds = %if.end35.4
  %29 = add i64 %mul.4, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %29)
  %30 = icmp ult i64 %29, -18014398509481983
  br i1 %30, label %while.body.5.cleanup_crit_edge, label %if.end35.5

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35.5:                                       ; preds = %while.body.5
  %mul.5 = shl nsw i64 %call, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %u.6)
  %tobool24.not.5 = icmp eq i32 %u.6, 6
  br i1 %tobool24.not.5, label %if.end35.5.while.end_crit_edge, label %while.body.6

if.end35.5.while.end_crit_edge:                   ; preds = %if.end35.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6:                                     ; preds = %if.end35.5
  %31 = add i64 %mul.5, -9007199254740992
  call void @__sanitizer_cov_trace_const_cmp8(i64 -18014398509481983, i64 %31)
  %32 = icmp ult i64 %31, -18014398509481983
  br i1 %32, label %while.body.6.cleanup_crit_edge, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6.cleanup_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %while.body.6.while.end_crit_edge, %if.end35.5.while.end_crit_edge, %if.end35.4.while.end_crit_edge, %if.end35.3.while.end_crit_edge, %if.end35.2.while.end_crit_edge, %if.end35.1.while.end_crit_edge, %if.end35.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i64 [ %call, %while.cond.preheader.while.end_crit_edge ], [ %mul, %if.end35.while.end_crit_edge ], [ %mul.1, %if.end35.1.while.end_crit_edge ], [ %mul.2, %if.end35.2.while.end_crit_edge ], [ %mul.3, %if.end35.3.while.end_crit_edge ], [ %mul.4, %if.end35.4.while.end_crit_edge ], [ %mul.5, %if.end35.5.while.end_crit_edge ], [ 0, %while.body.6.while.end_crit_edge ]
  %33 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %i.0.lcssa, ptr %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.6.cleanup_crit_edge, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %while.body.6.cleanup_crit_edge ], [ -22, %while.body.5.cleanup_crit_edge ], [ -22, %while.body.4.cleanup_crit_edge ], [ -22, %while.body.3.cleanup_crit_edge ], [ -22, %while.body.2.cleanup_crit_edge ], [ -22, %while.body.1.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_strtoull_h(ptr noundef %cp, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  %e = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #9
  %0 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %e, align 4, !annotation !20
  %call = call i64 @simple_strtoull(ptr noundef %cp, ptr noundef nonnull %e, i32 noundef 10) #9
  %1 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %e, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  %conv.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not.i = icmp eq i8 %7, 0
  %sub.i = add i8 %4, 32
  %spec.select.i = select i1 %cmp.not.i, i8 %4, i8 %sub.i
  %8 = zext i8 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %spec.select.i, label %entry.cleanup_crit_edge [
    i8 121, label %entry.sw.bb_crit_edge
    i8 122, label %entry.sw.bb_crit_edge63
    i8 101, label %entry.sw.bb2_crit_edge
    i8 112, label %entry.sw.bb4_crit_edge
    i8 116, label %entry.sw.bb6_crit_edge
    i8 103, label %entry.sw.bb8_crit_edge
    i8 109, label %entry.sw.bb10_crit_edge
    i8 107, label %entry.sw.bb12_crit_edge
    i8 10, label %entry.sw.bb15_crit_edge
    i8 0, label %entry.sw.bb15_crit_edge64
  ]

entry.sw.bb15_crit_edge64:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb15_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb6

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb_crit_edge63:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge63
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge
  %u.0 = phi i32 [ 6, %entry.sw.bb2_crit_edge ], [ 7, %sw.bb ]
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb2, %entry.sw.bb4_crit_edge
  %u.1 = phi i32 [ 5, %entry.sw.bb4_crit_edge ], [ %u.0, %sw.bb2 ]
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb4, %entry.sw.bb6_crit_edge
  %u.2 = phi i32 [ 4, %entry.sw.bb6_crit_edge ], [ %u.1, %sw.bb4 ]
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %entry.sw.bb8_crit_edge
  %u.3 = phi i32 [ 3, %entry.sw.bb8_crit_edge ], [ %u.2, %sw.bb6 ]
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb8, %entry.sw.bb10_crit_edge
  %u.4 = phi i32 [ 2, %entry.sw.bb10_crit_edge ], [ %u.3, %sw.bb8 ]
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb10, %entry.sw.bb12_crit_edge
  %u.5 = phi i32 [ 1, %entry.sw.bb12_crit_edge ], [ %u.4, %sw.bb10 ]
  %incdec.ptr = getelementptr i8, ptr %2, i32 1
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %incdec.ptr, ptr %e, align 4
  %cmp = icmp eq ptr %2, %cp
  br i1 %cmp, label %sw.bb12.cleanup_crit_edge, label %sw.bb12.sw.bb15_crit_edge

sw.bb12.sw.bb15_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge, %entry.sw.bb15_crit_edge64
  %u.6 = phi i32 [ 0, %entry.sw.bb15_crit_edge ], [ 0, %entry.sw.bb15_crit_edge64 ], [ %u.5, %sw.bb12.sw.bb15_crit_edge ]
  %10 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %e, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %13)
  %cmp17 = icmp eq i8 %13, 10
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr20 = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %incdec.ptr20, ptr %e, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb15.sw.epilog_crit_edge
  %15 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %e, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.cond.preheader, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u.6)
  %tobool24.not60 = icmp eq i32 %u.6, 0
  br i1 %tobool24.not60, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp8(i64 9007199254740991, i64 %call)
  %cmp31 = icmp ugt i64 %call, 9007199254740991
  br i1 %cmp31, label %while.body.cleanup_crit_edge, label %if.end39

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %while.body
  %mul = shl nuw nsw i64 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %u.6)
  %tobool24.not = icmp eq i32 %u.6, 1
  br i1 %tobool24.not, label %if.end39.while.end_crit_edge, label %while.body.1

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.1:                                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp8(i64 8796093022207, i64 %call)
  %cmp31.1 = icmp ugt i64 %call, 8796093022207
  br i1 %cmp31.1, label %while.body.1.cleanup_crit_edge, label %if.end39.1

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.1:                                       ; preds = %while.body.1
  %mul.1 = shl nuw nsw i64 %call, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %u.6)
  %tobool24.not.1 = icmp eq i32 %u.6, 2
  br i1 %tobool24.not.1, label %if.end39.1.while.end_crit_edge, label %while.body.2

if.end39.1.while.end_crit_edge:                   ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.2:                                     ; preds = %if.end39.1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8589934591, i64 %call)
  %cmp31.2 = icmp ugt i64 %call, 8589934591
  br i1 %cmp31.2, label %while.body.2.cleanup_crit_edge, label %if.end39.2

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.2:                                       ; preds = %while.body.2
  %mul.2 = shl nuw nsw i64 %call, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %u.6)
  %tobool24.not.2 = icmp eq i32 %u.6, 3
  br i1 %tobool24.not.2, label %if.end39.2.while.end_crit_edge, label %while.body.3

if.end39.2.while.end_crit_edge:                   ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.3:                                     ; preds = %if.end39.2
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388607, i64 %call)
  %cmp31.3 = icmp ugt i64 %call, 8388607
  br i1 %cmp31.3, label %while.body.3.cleanup_crit_edge, label %if.end39.3

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.3:                                       ; preds = %while.body.3
  %mul.3 = shl nuw nsw i64 %call, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %u.6)
  %tobool24.not.3 = icmp eq i32 %u.6, 4
  br i1 %tobool24.not.3, label %if.end39.3.while.end_crit_edge, label %while.body.4

if.end39.3.while.end_crit_edge:                   ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.4:                                     ; preds = %if.end39.3
  call void @__sanitizer_cov_trace_const_cmp8(i64 8191, i64 %call)
  %cmp31.4 = icmp ugt i64 %call, 8191
  br i1 %cmp31.4, label %while.body.4.cleanup_crit_edge, label %if.end39.4

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.4:                                       ; preds = %while.body.4
  %mul.4 = shl nuw nsw i64 %call, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %u.6)
  %tobool24.not.4 = icmp eq i32 %u.6, 5
  br i1 %tobool24.not.4, label %if.end39.4.while.end_crit_edge, label %while.body.5

if.end39.4.while.end_crit_edge:                   ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.5:                                     ; preds = %if.end39.4
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %call)
  %cmp31.5 = icmp ugt i64 %call, 7
  br i1 %cmp31.5, label %while.body.5.cleanup_crit_edge, label %if.end39.5

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39.5:                                       ; preds = %while.body.5
  %mul.5 = shl nuw nsw i64 %call, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %u.6)
  %tobool24.not.5 = icmp eq i32 %u.6, 6
  br i1 %tobool24.not.5, label %if.end39.5.while.end_crit_edge, label %while.body.6

if.end39.5.while.end_crit_edge:                   ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.6:                                     ; preds = %if.end39.5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call)
  %cmp31.6.not = icmp eq i64 %call, 0
  br i1 %cmp31.6.not, label %while.body.6.while.end_crit_edge, label %while.body.6.cleanup_crit_edge

while.body.6.cleanup_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.6.while.end_crit_edge, %if.end39.5.while.end_crit_edge, %if.end39.4.while.end_crit_edge, %if.end39.3.while.end_crit_edge, %if.end39.2.while.end_crit_edge, %if.end39.1.while.end_crit_edge, %if.end39.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %i.0.lcssa = phi i64 [ %call, %while.cond.preheader.while.end_crit_edge ], [ %mul, %if.end39.while.end_crit_edge ], [ %mul.1, %if.end39.1.while.end_crit_edge ], [ %mul.2, %if.end39.2.while.end_crit_edge ], [ %mul.3, %if.end39.3.while.end_crit_edge ], [ %mul.4, %if.end39.4.while.end_crit_edge ], [ %mul.5, %if.end39.5.while.end_crit_edge ], [ 0, %while.body.6.while.end_crit_edge ]
  %19 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %i.0.lcssa, ptr %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.6.cleanup_crit_edge, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %while.body.6.cleanup_crit_edge ], [ -22, %while.body.5.cleanup_crit_edge ], [ -22, %while.body.4.cleanup_crit_edge ], [ -22, %while.body.3.cleanup_crit_edge ], [ -22, %while.body.2.cleanup_crit_edge ], [ -22, %while.body.1.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_hprint(ptr nocapture noundef writeonly %buf, i64 noundef %v) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 @llvm.abs.i64(i64 %v, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %u.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %q.1 = phi i64 [ %0, %entry ], [ %shr, %do.body.do.body_crit_edge ]
  %inc = add nuw nsw i32 %u.0, 1
  %shr = lshr i64 %q.1, 10
  %cmp1 = icmp ugt i64 %q.1, 1023999
  br i1 %cmp1, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %v)
  %cmp = icmp slt i64 %v, 0
  %1 = trunc i64 %q.1 to i32
  %conv.le = and i32 %1, 1023
  %mul = mul nuw nsw i32 %conv.le, 10
  %div27 = lshr i32 %mul, 10
  %arrayidx = getelementptr [10 x i8], ptr @bch_hprint.units, i32 0, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %3 to i32
  %.str..str.1 = select i1 %cmp, ptr @.str, ptr @.str.1
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %.str..str.1, i64 noundef %shr, i32 noundef %div27, i32 noundef %conv6)
  ret i32 %call12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bch_is_zero(ptr nocapture noundef readonly %p, i32 noundef %n) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp3.not = icmp eq i32 %n, 0
  br i1 %cmp3.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not7 = icmp eq i8 %1, 0
  br i1 %tobool.not7, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw i32 %i.048, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n)
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i8, ptr %p, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %n)
  %cmp.le = icmp uge i32 %inc, %n
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %for.body.preheader.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_parse_uuid(ptr nocapture noundef readonly %s, ptr nocapture noundef %uuid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %uuid, i32 0, i32 16)
  %call20 = tail call i32 @strspn(ptr noundef %s, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %j.023 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc8, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %s, i32 %i.022
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = or i8 %2, 32
  %or = zext i8 %3 to i32
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %3, label %for.body.for.inc_crit_edge [
    i8 48, label %for.body.sw.epilog_crit_edge
    i8 49, label %for.body.sw.epilog_crit_edge24
    i8 50, label %for.body.sw.epilog_crit_edge25
    i8 51, label %for.body.sw.epilog_crit_edge26
    i8 52, label %for.body.sw.epilog_crit_edge27
    i8 53, label %for.body.sw.epilog_crit_edge28
    i8 54, label %for.body.sw.epilog_crit_edge29
    i8 55, label %for.body.sw.epilog_crit_edge30
    i8 56, label %for.body.sw.epilog_crit_edge31
    i8 57, label %for.body.sw.epilog_crit_edge32
    i8 97, label %for.body.sw.bb2_crit_edge
    i8 98, label %for.body.sw.bb2_crit_edge33
    i8 99, label %for.body.sw.bb2_crit_edge34
    i8 100, label %for.body.sw.bb2_crit_edge35
    i8 101, label %for.body.sw.bb2_crit_edge36
    i8 102, label %for.body.sw.bb2_crit_edge37
  ]

for.body.sw.bb2_crit_edge37:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.bb2_crit_edge36:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.bb2_crit_edge35:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.bb2_crit_edge34:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.bb2_crit_edge33:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.bb2_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

for.body.sw.epilog_crit_edge32:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge31:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge30:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge29:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge28:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge27:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge26:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge25:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge24:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb2:                                           ; preds = %for.body.sw.bb2_crit_edge, %for.body.sw.bb2_crit_edge33, %for.body.sw.bb2_crit_edge34, %for.body.sw.bb2_crit_edge35, %for.body.sw.bb2_crit_edge36, %for.body.sw.bb2_crit_edge37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %for.body.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge24, %for.body.sw.epilog_crit_edge25, %for.body.sw.epilog_crit_edge26, %for.body.sw.epilog_crit_edge27, %for.body.sw.epilog_crit_edge28, %for.body.sw.epilog_crit_edge29, %for.body.sw.epilog_crit_edge30, %for.body.sw.epilog_crit_edge31, %for.body.sw.epilog_crit_edge32
  %.sink = phi i32 [ -87, %sw.bb2 ], [ -48, %for.body.sw.epilog_crit_edge ], [ -48, %for.body.sw.epilog_crit_edge24 ], [ -48, %for.body.sw.epilog_crit_edge25 ], [ -48, %for.body.sw.epilog_crit_edge26 ], [ -48, %for.body.sw.epilog_crit_edge27 ], [ -48, %for.body.sw.epilog_crit_edge28 ], [ -48, %for.body.sw.epilog_crit_edge29 ], [ -48, %for.body.sw.epilog_crit_edge30 ], [ -48, %for.body.sw.epilog_crit_edge31 ], [ -48, %for.body.sw.epilog_crit_edge32 ]
  %sub3 = add nsw i32 %.sink, %or
  %and = and i32 %j.023, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shl = shl nuw nsw i32 %sub3, 4
  %spec.select = select i1 %tobool.not, i32 %shl, i32 %sub3
  %inc = add nuw nsw i32 %j.023, 1
  %shr = lshr i32 %j.023, 1
  %arrayidx4 = getelementptr i8, ptr %uuid, i32 %shr
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %7 = trunc i32 %spec.select to i8
  %conv7 = or i8 %6, %7
  store i8 %conv7, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.023, %for.body.for.inc_crit_edge ], [ %inc, %sw.epilog ]
  %inc8 = add nuw i32 %i.022, 1
  %call = tail call i32 @strspn(ptr noundef %s, ptr noundef nonnull @.str.2)
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8, i32 %call)
  %cmp = icmp ult i32 %inc8, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.1)
  %cmp1 = icmp ult i32 %j.1, 32
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc8, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_time_stats_update(ptr noundef %stats, i64 noundef %start_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %stats) #9
  %call.i = tail call i64 @sched_clock() #9
  %sub = sub i64 %start_time, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  %sub1 = sub i64 %call.i, %start_time
  %spec.select = select i1 %cmp, i64 %sub1, i64 0
  %last2 = getelementptr inbounds %struct.time_stats, ptr %stats, i32 0, i32 4
  %0 = ptrtoint ptr %last2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last2, align 8
  %sub3 = sub i64 %1, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub3)
  %cmp4 = icmp slt i64 %sub3, 0
  %sub7 = sub i64 %call.i, %1
  %phi.bo = shl i64 %sub7, 8
  %cond10 = select i1 %cmp4, i64 %phi.bo, i64 0
  %max_duration = getelementptr inbounds %struct.time_stats, ptr %stats, i32 0, i32 1
  %2 = ptrtoint ptr %max_duration to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %max_duration, align 8
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %spec.select)
  %5 = ptrtoint ptr %max_duration to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %max_duration, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else36, label %if.then

if.then:                                          ; preds = %entry
  %average_duration = getelementptr inbounds %struct.time_stats, ptr %stats, i32 0, i32 2
  %6 = ptrtoint ptr %average_duration to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %average_duration, align 8
  %mul = mul i64 %7, 7
  %shl = shl i64 %spec.select, 8
  %add = add i64 %mul, %shl
  %div76 = lshr i64 %add, 3
  store i64 %div76, ptr %average_duration, align 8
  %average_frequency = getelementptr inbounds %struct.time_stats, ptr %stats, i32 0, i32 3
  %8 = ptrtoint ptr %average_frequency to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %average_frequency, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool22.not = icmp eq i64 %9, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %mul25 = mul i64 %9, 7
  %add28 = add i64 %mul25, %cond10
  %div3077 = lshr i64 %add28, 3
  %10 = ptrtoint ptr %average_frequency to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %div3077, ptr %average_frequency, align 8
  br label %if.end39

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %average_frequency to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %cond10, ptr %average_frequency, align 8
  br label %if.end39

if.else36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl37 = shl i64 %spec.select, 8
  %average_duration38 = getelementptr inbounds %struct.time_stats, ptr %stats, i32 0, i32 2
  %12 = ptrtoint ptr %average_duration38 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %shl37, ptr %average_duration38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.else, %if.then23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %tobool40.not = icmp eq i64 %call.i, 0
  %. = select i1 %tobool40.not, i64 1, i64 %call.i
  %13 = ptrtoint ptr %last2 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %., ptr %last2, align 8
  tail call void @_raw_spin_unlock(ptr noundef %stats) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bch_next_delay(ptr noundef %d, i64 noundef %done) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @sched_clock() #9
  %mul = mul i64 %done, 1000000000
  %rate = getelementptr inbounds %struct.bch_ratelimit, ptr %d, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rate, i32 noundef 4) #9
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !21

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %1
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul) #12, !srcloc !22
  %asmresult1.i.i.i = extractvalue { i64, i64 } %2, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %d, align 8
  %add = add i64 %4, %dividend.addr.0.i.i
  %add3 = add i64 %call.i, 2500000000
  %sub = sub i64 %add3, %add
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  %spec.select = select i1 %cmp, i64 %add3, i64 %add
  %sub8 = add i64 %call.i, -2000000000
  %sub9 = sub i64 %spec.select, %sub8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub9)
  %cmp10 = icmp slt i64 %sub9, 0
  %storemerge33 = select i1 %cmp10, i64 %sub8, i64 %spec.select
  %5 = ptrtoint ptr %d to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %storemerge33, ptr %d, align 8
  %sub16 = sub i64 %call.i, %storemerge33
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub16)
  %cmp17 = icmp slt i64 %sub16, 0
  br i1 %cmp17, label %cond.true, label %div_u64.exit.cond.end_crit_edge

div_u64.exit.cond.end_crit_edge:                  ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub19 = sub i64 %storemerge33, %call.i
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub19) #12, !srcloc !23
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub19, i64 %6, i32 0) #12, !srcloc !24
  %asmresult10.i.i.i54 = extractvalue { i64, i32 } %7, 0
  %div158.i.i5962 = lshr i64 %asmresult10.i.i.i54, 23
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %div_u64.exit.cond.end_crit_edge
  %cond = phi i64 [ %div158.i.i5962, %cond.true ], [ 0, %div_u64.exit.cond.end_crit_edge ]
  ret i64 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bch_bio_map(ptr nocapture noundef %bio, ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_size, align 8
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %2 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body6, label %do.body12, !prof !25

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 236, 0\0A.popsection", ""() #9, !srcloc !26
  unreachable

do.body12:                                        ; preds = %entry
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %4 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bi_vcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool13.not = icmp eq i16 %5, 0
  br i1 %tobool13.not, label %do.end29, label %do.body21, !prof !21

do.body21:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/bcache/util.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 237, 0\0A.popsection", ""() #9, !srcloc !27
  unreachable

do.end29:                                         ; preds = %do.body12
  %tobool30.not = icmp eq ptr %base, null
  %6 = ptrtoint ptr %base to i32
  %and = and i32 %6, 4095
  %cond = select i1 %tobool30.not, i32 0, i32 %and
  %bv_offset = getelementptr inbounds %struct.bio_vec, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %bv_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %bv_offset, align 4
  br label %start

for.body:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %bv.0, i32 1
  %bv_offset32 = getelementptr %struct.bio_vec, ptr %bv.0, i32 1, i32 2
  %8 = ptrtoint ptr %bv_offset32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bv_offset32, align 4
  br label %start

start:                                            ; preds = %for.body, %do.end29
  %size.0 = phi i32 [ %1, %do.end29 ], [ %sub51, %for.body ]
  %bv.0 = phi ptr [ %3, %do.end29 ], [ %incdec.ptr, %for.body ]
  %base.addr.0 = phi ptr [ %base, %do.end29 ], [ %base.addr.1, %for.body ]
  %bv_offset33 = getelementptr inbounds %struct.bio_vec, ptr %bv.0, i32 0, i32 2
  %9 = ptrtoint ptr %bv_offset33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bv_offset33, align 4
  %sub = sub i32 4096, %10
  %11 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %size.0)
  %bv_len = getelementptr inbounds %struct.bio_vec, ptr %bv.0, i32 0, i32 1
  %12 = ptrtoint ptr %bv_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bv_len, align 4
  %tobool38.not = icmp eq ptr %base.addr.0, null
  br i1 %tobool38.not, label %start.if.end49_crit_edge, label %if.then39

start.if.end49_crit_edge:                         ; preds = %start
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then39:                                        ; preds = %start
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %base.addr.0) #9
  br i1 %call, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = tail call ptr @vmalloc_to_page(ptr noundef nonnull %base.addr.0) #9
  br label %cond.end45

cond.false42:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %base.addr.0 to i32
  %sub43 = add i32 %14, 1073741824
  %shr = lshr i32 %sub43, 12
  %add.ptr = getelementptr %struct.page, ptr %13, i32 %shr
  br label %cond.end45

cond.end45:                                       ; preds = %cond.false42, %cond.true40
  %cond46 = phi ptr [ %call41, %cond.true40 ], [ %add.ptr, %cond.false42 ]
  %15 = ptrtoint ptr %bv.0 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cond46, ptr %bv.0, align 4
  %16 = ptrtoint ptr %bv_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bv_len, align 4
  %add.ptr48 = getelementptr i8, ptr %base.addr.0, i32 %17
  br label %if.end49

if.end49:                                         ; preds = %cond.end45, %start.if.end49_crit_edge
  %base.addr.1 = phi ptr [ %add.ptr48, %cond.end45 ], [ null, %start.if.end49_crit_edge ]
  %18 = ptrtoint ptr %bv_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len, align 4
  %sub51 = sub i32 %size.0, %19
  %20 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %bi_vcnt, align 8
  %inc = add i16 %21, 1
  store i16 %inc, ptr %bi_vcnt, align 8
  %tobool31.not = icmp eq i32 %sub51, 0
  br i1 %tobool31.not, label %for.end, label %for.body

for.end:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bch_bio_alloc_pages(ptr nocapture noundef readonly %bio, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_io_vec = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  %bi_vcnt = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp19.not = icmp eq i16 %1, 0
  br i1 %cmp19.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %bv.021 = phi ptr [ %incdec.ptr7, %for.inc.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %gfp_mask, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %4 = ptrtoint ptr %bv.021 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call38.i.i.i, ptr %bv.021, align 4
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  %incdec.ptr22 = getelementptr %struct.bio_vec, ptr %bv.021, i32 -1
  %5 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bi_io_vec, align 8
  %cmp4.not23 = icmp ult ptr %incdec.ptr22, %6
  br i1 %cmp4.not23, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %incdec.ptr24 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %incdec.ptr22, %while.cond.preheader.while.body_crit_edge ]
  %7 = ptrtoint ptr %incdec.ptr24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %incdec.ptr24, align 4
  tail call void @__free_pages(ptr noundef %8, i32 noundef 0) #9
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %incdec.ptr24, i32 -1
  %9 = ptrtoint ptr %bi_io_vec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bi_io_vec, align 8
  %cmp4.not = icmp ult ptr %incdec.ptr, %10
  br i1 %cmp4.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr7 = getelementptr %struct.bio_vec, ptr %bv.021, i32 1
  %inc = add nuw nsw i32 %i.020, 1
  %11 = ptrtoint ptr %bi_vcnt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %bi_vcnt, align 8
  %conv = zext i16 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.cond.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.named.register.sp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @bch_hprint.units, !1, !"units", i1 false, i1 false}
!1 = !{!"../drivers/md/bcache/util.c", i32 94, i32 20}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/bcache/util.c", i32 119, i32 23}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/md/bcache/util.c", i32 121, i32 23}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/md/bcache/util.c", i32 141, i32 21}
!8 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!10 = !{!"sp"}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148398787, i64 2148399067, i64 2148399401, i64 2148399735}
!23 = !{i64 912956, i64 912983}
!24 = !{i64 913651, i64 913678, i64 913711, i64 913732, i64 913759, i64 913785}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2154351150, i64 2154351639, i64 2154351187, i64 2154351243, i64 2154351277, i64 2154351301, i64 2154351342, i64 2154351363, i64 2154351391, i64 2154351425}
!27 = !{i64 2154352745, i64 2154353234, i64 2154352782, i64 2154352838, i64 2154352872, i64 2154352896, i64 2154352937, i64 2154352958, i64 2154352986, i64 2154353020}
