; ModuleID = '/llk/IR_all_yes/security/selinux/nlmsgtab.c_pt.bc'
source_filename = "../security/selinux/nlmsgtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nlmsg_perm = type { i16, i32 }

@nlmsg_route_perms = internal constant { [64 x %struct.nlmsg_perm], [128 x i8] } { [64 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 16, i32 4194304 }, %struct.nlmsg_perm { i16 17, i32 4194304 }, %struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 4194304 }, %struct.nlmsg_perm { i16 20, i32 4194304 }, %struct.nlmsg_perm { i16 21, i32 4194304 }, %struct.nlmsg_perm { i16 22, i32 2097152 }, %struct.nlmsg_perm { i16 24, i32 4194304 }, %struct.nlmsg_perm { i16 25, i32 4194304 }, %struct.nlmsg_perm { i16 26, i32 2097152 }, %struct.nlmsg_perm { i16 28, i32 4194304 }, %struct.nlmsg_perm { i16 29, i32 4194304 }, %struct.nlmsg_perm { i16 30, i32 2097152 }, %struct.nlmsg_perm { i16 32, i32 4194304 }, %struct.nlmsg_perm { i16 33, i32 4194304 }, %struct.nlmsg_perm { i16 34, i32 2097152 }, %struct.nlmsg_perm { i16 36, i32 4194304 }, %struct.nlmsg_perm { i16 37, i32 4194304 }, %struct.nlmsg_perm { i16 38, i32 2097152 }, %struct.nlmsg_perm { i16 40, i32 4194304 }, %struct.nlmsg_perm { i16 41, i32 4194304 }, %struct.nlmsg_perm { i16 42, i32 2097152 }, %struct.nlmsg_perm { i16 44, i32 4194304 }, %struct.nlmsg_perm { i16 45, i32 4194304 }, %struct.nlmsg_perm { i16 46, i32 2097152 }, %struct.nlmsg_perm { i16 48, i32 4194304 }, %struct.nlmsg_perm { i16 49, i32 4194304 }, %struct.nlmsg_perm { i16 50, i32 2097152 }, %struct.nlmsg_perm { i16 52, i32 4194304 }, %struct.nlmsg_perm { i16 58, i32 2097152 }, %struct.nlmsg_perm { i16 62, i32 2097152 }, %struct.nlmsg_perm { i16 66, i32 2097152 }, %struct.nlmsg_perm { i16 67, i32 4194304 }, %struct.nlmsg_perm { i16 72, i32 4194304 }, %struct.nlmsg_perm { i16 73, i32 4194304 }, %struct.nlmsg_perm { i16 74, i32 2097152 }, %struct.nlmsg_perm { i16 78, i32 2097152 }, %struct.nlmsg_perm { i16 79, i32 4194304 }, %struct.nlmsg_perm { i16 80, i32 4194304 }, %struct.nlmsg_perm { i16 81, i32 4194304 }, %struct.nlmsg_perm { i16 82, i32 2097152 }, %struct.nlmsg_perm { i16 84, i32 4194304 }, %struct.nlmsg_perm { i16 85, i32 4194304 }, %struct.nlmsg_perm { i16 86, i32 2097152 }, %struct.nlmsg_perm { i16 88, i32 4194304 }, %struct.nlmsg_perm { i16 89, i32 2097152 }, %struct.nlmsg_perm { i16 90, i32 2097152 }, %struct.nlmsg_perm { i16 92, i32 2097152 }, %struct.nlmsg_perm { i16 94, i32 2097152 }, %struct.nlmsg_perm { i16 96, i32 2097152 }, %struct.nlmsg_perm { i16 100, i32 4194304 }, %struct.nlmsg_perm { i16 101, i32 4194304 }, %struct.nlmsg_perm { i16 102, i32 2097152 }, %struct.nlmsg_perm { i16 104, i32 4194304 }, %struct.nlmsg_perm { i16 105, i32 4194304 }, %struct.nlmsg_perm { i16 106, i32 2097152 }, %struct.nlmsg_perm { i16 108, i32 4194304 }, %struct.nlmsg_perm { i16 109, i32 4194304 }, %struct.nlmsg_perm { i16 112, i32 4194304 }, %struct.nlmsg_perm { i16 113, i32 4194304 }, %struct.nlmsg_perm { i16 114, i32 2097152 }, %struct.nlmsg_perm { i16 116, i32 4194304 }, %struct.nlmsg_perm { i16 117, i32 4194304 }, %struct.nlmsg_perm { i16 118, i32 2097152 }], [128 x i8] zeroinitializer }, align 32
@nlmsg_tcpdiag_perms = internal constant { [4 x %struct.nlmsg_perm], [32 x i8] } { [4 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 2097152 }, %struct.nlmsg_perm { i16 20, i32 2097152 }, %struct.nlmsg_perm { i16 21, i32 4194304 }], [32 x i8] zeroinitializer }, align 32
@nlmsg_xfrm_perms = internal constant { [25 x %struct.nlmsg_perm], [56 x i8] } { [25 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 16, i32 4194304 }, %struct.nlmsg_perm { i16 17, i32 4194304 }, %struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 4194304 }, %struct.nlmsg_perm { i16 20, i32 4194304 }, %struct.nlmsg_perm { i16 21, i32 2097152 }, %struct.nlmsg_perm { i16 22, i32 4194304 }, %struct.nlmsg_perm { i16 23, i32 4194304 }, %struct.nlmsg_perm { i16 24, i32 4194304 }, %struct.nlmsg_perm { i16 25, i32 4194304 }, %struct.nlmsg_perm { i16 26, i32 4194304 }, %struct.nlmsg_perm { i16 27, i32 4194304 }, %struct.nlmsg_perm { i16 28, i32 4194304 }, %struct.nlmsg_perm { i16 29, i32 4194304 }, %struct.nlmsg_perm { i16 30, i32 4194304 }, %struct.nlmsg_perm { i16 31, i32 2097152 }, %struct.nlmsg_perm { i16 32, i32 2097152 }, %struct.nlmsg_perm { i16 33, i32 4194304 }, %struct.nlmsg_perm { i16 34, i32 2097152 }, %struct.nlmsg_perm { i16 35, i32 2097152 }, %struct.nlmsg_perm { i16 36, i32 4194304 }, %struct.nlmsg_perm { i16 37, i32 2097152 }, %struct.nlmsg_perm { i16 38, i32 2097152 }, %struct.nlmsg_perm { i16 39, i32 4194304 }, %struct.nlmsg_perm { i16 40, i32 2097152 }], [56 x i8] zeroinitializer }, align 32
@nlmsg_audit_perms = internal constant { [16 x %struct.nlmsg_perm], [32 x i8] } { [16 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 1000, i32 2097152 }, %struct.nlmsg_perm { i16 1001, i32 4194304 }, %struct.nlmsg_perm { i16 1002, i32 16777216 }, %struct.nlmsg_perm { i16 1003, i32 4194304 }, %struct.nlmsg_perm { i16 1004, i32 4194304 }, %struct.nlmsg_perm { i16 1013, i32 16777216 }, %struct.nlmsg_perm { i16 1011, i32 4194304 }, %struct.nlmsg_perm { i16 1012, i32 4194304 }, %struct.nlmsg_perm { i16 1005, i32 8388608 }, %struct.nlmsg_perm { i16 1010, i32 2097152 }, %struct.nlmsg_perm { i16 1014, i32 4194304 }, %struct.nlmsg_perm { i16 1015, i32 4194304 }, %struct.nlmsg_perm { i16 1016, i32 2097152 }, %struct.nlmsg_perm { i16 1017, i32 33554432 }, %struct.nlmsg_perm { i16 1019, i32 2097152 }, %struct.nlmsg_perm { i16 1018, i32 4194304 }], [32 x i8] zeroinitializer }, align 32
@switch.table.selinux_nlmsg_lookup = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 0, i32 0, i32 0, i32 0, i32 9, i32 6, i32 7, i32 5, i32 10, i32 11, i32 12, i32 13, i32 15, i32 14], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 31, i64 32, i64 34, i64 37]
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"nlmsg_route_perms\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 28, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"nlmsg_tcpdiag_perms\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 96, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nlmsg_xfrm_perms\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 104, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"nlmsg_audit_perms\00", align 1
@___asan_gen_.11 = private constant [31 x i8] c"../security/selinux/nlmsgtab.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 133, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [34 x i8] c"switch.table.selinux_nlmsg_lookup\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @nlmsg_route_perms, ptr @nlmsg_tcpdiag_perms, ptr @nlmsg_xfrm_perms, ptr @nlmsg_audit_perms, ptr @switch.table.selinux_nlmsg_lookup], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsg_route_perms to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsg_tcpdiag_perms to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsg_xfrm_perms to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlmsg_audit_perms to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.selinux_nlmsg_lookup to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local i32 @selinux_nlmsg_lookup(i16 noundef zeroext %sclass, i16 noundef zeroext %nlmsg_type, ptr nocapture noundef writeonly %perm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %sclass to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i16 %sclass, label %entry.sw.epilog_crit_edge [
    i16 31, label %entry.for.body.i_crit_edge
    i16 32, label %for.body.i37.preheader
    i16 34, label %for.body.i48.preheader
    i16 37, label %sw.bb8
  ]

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

for.body.i48.preheader:                           ; preds = %entry
  %switch.tableidx = add i16 %nlmsg_type, -16
  call void @__sanitizer_cov_trace_const_cmp2(i16 25, i16 %switch.tableidx)
  %1 = icmp ult i16 %switch.tableidx, 25
  br i1 %1, label %switch.lookup, label %for.body.i48.preheader.sw.epilog_crit_edge

for.body.i48.preheader.sw.epilog_crit_edge:       ; preds = %for.body.i48.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

for.body.i37.preheader:                           ; preds = %entry
  %switch.tableidx124 = add i16 %nlmsg_type, -18
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx124)
  %2 = icmp ult i16 %switch.tableidx124, 4
  br i1 %2, label %switch.lookup123, label %for.body.i37.preheader.sw.epilog_crit_edge

for.body.i37.preheader.sw.epilog_crit_edge:       ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nlmsg_perm, ptr @nlmsg_route_perms, i32 %i.014.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %nlmsg_type)
  %cmp3.i = icmp eq i16 %4, %nlmsg_type
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #3
  %perm6.i = getelementptr %struct.nlmsg_perm, ptr @nlmsg_route_perms, i32 %i.014.i, i32 1
  br label %sw.epilog.sink.split.sink.split

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

switch.lookup123:                                 ; preds = %for.body.i37.preheader
  call void @__sanitizer_cov_trace_pc() #3
  %switch.idx.cast125 = zext i16 %switch.tableidx124 to i32
  %perm6.i38 = getelementptr %struct.nlmsg_perm, ptr @nlmsg_tcpdiag_perms, i32 %switch.idx.cast125, i32 1
  br label %sw.epilog.sink.split.sink.split

switch.lookup:                                    ; preds = %for.body.i48.preheader
  call void @__sanitizer_cov_trace_pc() #3
  %switch.idx.cast = zext i16 %switch.tableidx to i32
  %perm6.i49 = getelementptr %struct.nlmsg_perm, ptr @nlmsg_xfrm_perms, i32 %switch.idx.cast, i32 1
  br label %sw.epilog.sink.split.sink.split

sw.bb8:                                           ; preds = %entry
  %5 = add i16 %nlmsg_type, -1100
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %5)
  %6 = icmp ult i16 %5, 100
  %7 = add i16 %nlmsg_type, -2100
  call void @__sanitizer_cov_trace_const_cmp2(i16 900, i16 %7)
  %8 = icmp ult i16 %7, 900
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %sw.bb8.sw.epilog.sink.split_crit_edge, label %for.body.i59.preheader

sw.bb8.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog.sink.split

for.body.i59.preheader:                           ; preds = %sw.bb8
  %switch.tableidx127 = add i16 %nlmsg_type, -1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %switch.tableidx127)
  %9 = icmp ult i16 %switch.tableidx127, 20
  br i1 %9, label %switch.hole_check, label %for.body.i59.preheader.sw.epilog_crit_edge

for.body.i59.preheader.sw.epilog_crit_edge:       ; preds = %for.body.i59.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

switch.hole_check:                                ; preds = %for.body.i59.preheader
  %switch.maskindex = zext i16 %switch.tableidx127 to i32
  %switch.shifted = lshr i32 1047615, %switch.maskindex
  %10 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %switch.lobit.not = icmp eq i32 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup128

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #3
  br label %sw.epilog

switch.lookup128:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #3
  %11 = sext i16 %switch.tableidx127 to i32
  %switch.gep = getelementptr inbounds [20 x i32], ptr @switch.table.selinux_nlmsg_lookup, i32 0, i32 %11
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %perm6.i60 = getelementptr %struct.nlmsg_perm, ptr @nlmsg_audit_perms, i32 %switch.load, i32 1
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %switch.lookup128, %switch.lookup, %switch.lookup123, %if.then.i
  %perm6.i.sink = phi ptr [ %perm6.i, %if.then.i ], [ %perm6.i38, %switch.lookup123 ], [ %perm6.i49, %switch.lookup ], [ %perm6.i60, %switch.lookup128 ]
  %13 = ptrtoint ptr %perm6.i.sink to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %perm6.i.sink, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %sw.bb8.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8388608, %sw.bb8.sw.epilog.sink.split_crit_edge ], [ %14, %sw.epilog.sink.split.sink.split ]
  %15 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %perm, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %switch.hole_check.sw.epilog_crit_edge, %for.body.i59.preheader.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %for.body.i37.preheader.sw.epilog_crit_edge, %for.body.i48.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -2, %entry.sw.epilog_crit_edge ], [ -22, %for.body.i37.preheader.sw.epilog_crit_edge ], [ -22, %for.body.i48.preheader.sw.epilog_crit_edge ], [ -22, %for.body.i59.preheader.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ], [ -22, %switch.hole_check.sw.epilog_crit_edge ], [ -22, %for.inc.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @nlmsg_route_perms, !1, !"nlmsg_route_perms", i1 false, i1 false}
!1 = !{!"../security/selinux/nlmsgtab.c", i32 28, i32 32}
!2 = !{ptr @nlmsg_tcpdiag_perms, !3, !"nlmsg_tcpdiag_perms", i1 false, i1 false}
!3 = !{!"../security/selinux/nlmsgtab.c", i32 96, i32 32}
!4 = !{ptr @nlmsg_xfrm_perms, !5, !"nlmsg_xfrm_perms", i1 false, i1 false}
!5 = !{!"../security/selinux/nlmsgtab.c", i32 104, i32 32}
!6 = !{ptr @nlmsg_audit_perms, !7, !"nlmsg_audit_perms", i1 false, i1 false}
!7 = !{!"../security/selinux/nlmsgtab.c", i32 133, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
