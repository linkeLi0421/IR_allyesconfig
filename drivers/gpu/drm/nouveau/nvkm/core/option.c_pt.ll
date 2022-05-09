; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/option.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/option.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",=\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fatal\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"warn\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"paranoia\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spam\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 61]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 61]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 61]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 5, i64 8]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 31, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 60, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 61, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 62, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 63, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 66, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 67, i32 29 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 68, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 69, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 109, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 111, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 113, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 115, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 117, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 119, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 121, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/option.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 123, i32 36 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_stropt(ptr noundef readonly %optstr, ptr nocapture noundef readonly %opt, ptr nocapture noundef writeonly %arglen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not29 = icmp eq ptr %optstr, null
  br i1 %tobool.not29, label %entry.return_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %optstr.addr.030 = phi ptr [ %add.ptr9, %cleanup.land.rhs_crit_edge ], [ %optstr, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %optstr.addr.030 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %optstr.addr.030, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %land.rhs.return_crit_edge, label %while.body

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

while.body:                                       ; preds = %land.rhs
  %call = tail call i32 @strcspn(ptr noundef nonnull %optstr.addr.030, ptr noundef nonnull @.str)
  %arrayidx = getelementptr i8, ptr %optstr.addr.030, i32 %call
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %while.body.cleanup_crit_edge [
    i8 61, label %sw.bb
    i8 44, label %sw.bb7
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %while.body
  %call.i = tail call i32 @strlen(ptr noundef %opt) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call)
  %cmp1.not.i = icmp eq i32 %call.i, %call
  br i1 %cmp1.not.i, label %if.end.i, label %sw.bb.strncasecmpz.exit_crit_edge

sw.bb.strncasecmpz.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.030, ptr noundef %opt, i32 noundef %call) #6
  br label %strncasecmpz.exit

strncasecmpz.exit:                                ; preds = %if.end.i, %sw.bb.strncasecmpz.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call, %sw.bb.strncasecmpz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %strncasecmpz.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %call, 1
  %add.ptr = getelementptr i8, ptr %optstr.addr.030, i32 %add
  %call5 = tail call i32 @strcspn(ptr noundef %add.ptr, ptr noundef nonnull @.str)
  %5 = ptrtoint ptr %arglen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %arglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, ptr null, ptr %add.ptr
  br label %return

if.end:                                           ; preds = %strncasecmpz.exit
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr = getelementptr i8, ptr %optstr.addr.030, i32 1
  br label %cleanup

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr8 = getelementptr i8, ptr %optstr.addr.030, i32 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %if.end, %while.body.cleanup_crit_edge
  %optstr.addr.1 = phi ptr [ %optstr.addr.030, %while.body.cleanup_crit_edge ], [ %incdec.ptr8, %sw.bb7 ], [ %incdec.ptr, %if.end ]
  %add.ptr9 = getelementptr i8, ptr %optstr.addr.1, i32 %call
  %tobool.not = icmp eq ptr %add.ptr9, null
  br i1 %tobool.not, label %cleanup.return_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %cleanup.return_crit_edge, %cleanup.thread, %land.rhs.return_crit_edge, %entry.return_crit_edge
  %retval.2 = phi ptr [ %spec.select, %cleanup.thread ], [ null, %entry.return_crit_edge ], [ null, %land.rhs.return_crit_edge ], [ null, %cleanup.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nvkm_boolopt(ptr noundef readonly %optstr, ptr nocapture noundef readonly %opt, i1 noundef zeroext %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not29.i = icmp eq ptr %optstr, null
  br i1 %tobool.not29.i, label %entry.if.end25_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %optstr.addr.030.i = phi ptr [ %add.ptr9.i, %cleanup.i.land.rhs.i_crit_edge ], [ %optstr, %entry.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %optstr.addr.030.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %optstr.addr.030.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not.i = icmp eq i8 %1, 0
  br i1 %cmp.not.i, label %land.rhs.i.if.end25_crit_edge, label %while.body.i

land.rhs.i.if.end25_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

while.body.i:                                     ; preds = %land.rhs.i
  %call.i = tail call i32 @strcspn(ptr noundef nonnull %optstr.addr.030.i, ptr noundef nonnull @.str) #6
  %arrayidx.i = getelementptr i8, ptr %optstr.addr.030.i, i32 %call.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %3, label %while.body.i.cleanup.i_crit_edge [
    i8 61, label %sw.bb.i
    i8 44, label %sw.bb7.i
  ]

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

sw.bb.i:                                          ; preds = %while.body.i
  %call.i.i = tail call i32 @strlen(ptr noundef %opt) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, %call.i
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %sw.bb.i.strncasecmpz.exit.i_crit_edge

sw.bb.i.strncasecmpz.exit.i_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.030.i, ptr noundef %opt, i32 noundef %call.i) #6
  br label %strncasecmpz.exit.i

strncasecmpz.exit.i:                              ; preds = %if.end.i.i, %sw.bb.i.strncasecmpz.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %call.i, %sw.bb.i.strncasecmpz.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool4.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool4.not.i, label %cleanup.thread.i, label %if.end.i

cleanup.thread.i:                                 ; preds = %strncasecmpz.exit.i
  %add.i = add i32 %call.i, 1
  %add.ptr.i = getelementptr i8, ptr %optstr.addr.030.i, i32 %add.i
  %call5.i = tail call i32 @strcspn(ptr noundef %add.ptr.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool6.not.i
  br i1 %or.cond, label %cleanup.thread.i.if.end25_crit_edge, label %if.then

cleanup.thread.i.if.end25_crit_edge:              ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.end.i:                                         ; preds = %strncasecmpz.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i8, ptr %optstr.addr.030.i, i32 1
  br label %cleanup.i

sw.bb7.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr8.i = getelementptr i8, ptr %optstr.addr.030.i, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb7.i, %if.end.i, %while.body.i.cleanup.i_crit_edge
  %optstr.addr.1.i = phi ptr [ %optstr.addr.030.i, %while.body.i.cleanup.i_crit_edge ], [ %incdec.ptr8.i, %sw.bb7.i ], [ %incdec.ptr.i, %if.end.i ]
  %add.ptr9.i = getelementptr i8, ptr %optstr.addr.1.i, i32 %call.i
  %tobool.not.i = icmp eq ptr %add.ptr9.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end25_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

cleanup.i.if.end25_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then:                                          ; preds = %cleanup.thread.i
  %5 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call5.i, label %if.then.if.end25_crit_edge [
    i32 1, label %strncasecmpz.exit
    i32 2, label %strncasecmpz.exit43
    i32 3, label %strncasecmpz.exit49
    i32 5, label %strncasecmpz.exit55
    i32 4, label %strncasecmpz.exit79
  ]

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit:                                ; preds = %if.then
  %call2.i = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool2.not = icmp eq i32 %call2.i, 0
  br i1 %tobool2.not, label %strncasecmpz.exit.if.end25_crit_edge, label %strncasecmpz.exit61

strncasecmpz.exit.if.end25_crit_edge:             ; preds = %strncasecmpz.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit43:                              ; preds = %if.then
  %call2.i40 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.2, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i40)
  %tobool4.not = icmp eq i32 %call2.i40, 0
  br i1 %tobool4.not, label %strncasecmpz.exit43.if.end25_crit_edge, label %strncasecmpz.exit73

strncasecmpz.exit43.if.end25_crit_edge:           ; preds = %strncasecmpz.exit43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit49:                              ; preds = %if.then
  %call2.i46 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.3, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i46)
  %tobool7.not = icmp eq i32 %call2.i46, 0
  br i1 %tobool7.not, label %strncasecmpz.exit49.if.end25_crit_edge, label %strncasecmpz.exit67

strncasecmpz.exit49.if.end25_crit_edge:           ; preds = %strncasecmpz.exit49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit55:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i52 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.4, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i52)
  %tobool10.not = icmp ne i32 %call2.i52, 0
  %spec.select = and i1 %tobool10.not, %value
  br label %if.end25

strncasecmpz.exit61:                              ; preds = %strncasecmpz.exit
  %call2.i58 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.5, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i58)
  %tobool13.not = icmp eq i32 %call2.i58, 0
  br i1 %tobool13.not, label %strncasecmpz.exit61.if.then23_crit_edge, label %strncasecmpz.exit61.if.end25_crit_edge

strncasecmpz.exit61.if.end25_crit_edge:           ; preds = %strncasecmpz.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit61.if.then23_crit_edge:          ; preds = %strncasecmpz.exit61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

strncasecmpz.exit67:                              ; preds = %strncasecmpz.exit49
  %call2.i64 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.6, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i64)
  %tobool16.not = icmp eq i32 %call2.i64, 0
  br i1 %tobool16.not, label %strncasecmpz.exit67.if.then23_crit_edge, label %strncasecmpz.exit67.if.end25_crit_edge

strncasecmpz.exit67.if.end25_crit_edge:           ; preds = %strncasecmpz.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit67.if.then23_crit_edge:          ; preds = %strncasecmpz.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

strncasecmpz.exit73:                              ; preds = %strncasecmpz.exit43
  %call2.i70 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.7, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i70)
  %tobool19.not = icmp eq i32 %call2.i70, 0
  br i1 %tobool19.not, label %strncasecmpz.exit73.if.then23_crit_edge, label %strncasecmpz.exit73.if.end25_crit_edge

strncasecmpz.exit73.if.end25_crit_edge:           ; preds = %strncasecmpz.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit73.if.then23_crit_edge:          ; preds = %strncasecmpz.exit73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

strncasecmpz.exit79:                              ; preds = %if.then
  %call2.i76 = tail call i32 @strncasecmp(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.8, i32 noundef %call5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i76)
  %tobool22.not = icmp eq i32 %call2.i76, 0
  br i1 %tobool22.not, label %strncasecmpz.exit79.if.then23_crit_edge, label %strncasecmpz.exit79.if.end25_crit_edge

strncasecmpz.exit79.if.end25_crit_edge:           ; preds = %strncasecmpz.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

strncasecmpz.exit79.if.then23_crit_edge:          ; preds = %strncasecmpz.exit79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %strncasecmpz.exit79.if.then23_crit_edge, %strncasecmpz.exit73.if.then23_crit_edge, %strncasecmpz.exit67.if.then23_crit_edge, %strncasecmpz.exit61.if.then23_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %strncasecmpz.exit79.if.end25_crit_edge, %strncasecmpz.exit73.if.end25_crit_edge, %strncasecmpz.exit67.if.end25_crit_edge, %strncasecmpz.exit61.if.end25_crit_edge, %strncasecmpz.exit55, %strncasecmpz.exit49.if.end25_crit_edge, %strncasecmpz.exit43.if.end25_crit_edge, %strncasecmpz.exit.if.end25_crit_edge, %if.then.if.end25_crit_edge, %cleanup.i.if.end25_crit_edge, %cleanup.thread.i.if.end25_crit_edge, %land.rhs.i.if.end25_crit_edge, %entry.if.end25_crit_edge
  %value.addr.0.shrunk = phi i1 [ %value, %strncasecmpz.exit79.if.end25_crit_edge ], [ true, %if.then23 ], [ false, %strncasecmpz.exit49.if.end25_crit_edge ], [ false, %strncasecmpz.exit43.if.end25_crit_edge ], [ false, %strncasecmpz.exit.if.end25_crit_edge ], [ %value, %entry.if.end25_crit_edge ], [ %value, %cleanup.thread.i.if.end25_crit_edge ], [ %value, %if.then.if.end25_crit_edge ], [ %value, %strncasecmpz.exit61.if.end25_crit_edge ], [ %value, %strncasecmpz.exit67.if.end25_crit_edge ], [ %value, %strncasecmpz.exit73.if.end25_crit_edge ], [ %spec.select, %strncasecmpz.exit55 ], [ %value, %land.rhs.i.if.end25_crit_edge ], [ %value, %cleanup.i.if.end25_crit_edge ]
  ret i1 %value.addr.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_longopt(ptr noundef %optstr, ptr nocapture noundef readonly %opt, i32 noundef %value) local_unnamed_addr #3 align 64 {
entry:
  %value.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %value.addr, align 4
  %tobool.not29.i = icmp eq ptr %optstr, null
  br i1 %tobool.not29.i, label %entry.if.end5_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %optstr.addr.030.i = phi ptr [ %add.ptr9.i, %cleanup.i.land.rhs.i_crit_edge ], [ %optstr, %entry.land.rhs.i_crit_edge ]
  %1 = ptrtoint ptr %optstr.addr.030.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %optstr.addr.030.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 0
  br i1 %cmp.not.i, label %land.rhs.i.if.end5_crit_edge, label %while.body.i

land.rhs.i.if.end5_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

while.body.i:                                     ; preds = %land.rhs.i
  %call.i = tail call i32 @strcspn(ptr noundef nonnull %optstr.addr.030.i, ptr noundef nonnull @.str) #6
  %arrayidx.i = getelementptr i8, ptr %optstr.addr.030.i, i32 %call.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %4, label %while.body.i.cleanup.i_crit_edge [
    i8 61, label %sw.bb.i
    i8 44, label %sw.bb7.i
  ]

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

sw.bb.i:                                          ; preds = %while.body.i
  %call.i.i = tail call i32 @strlen(ptr noundef %opt) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i, %call.i
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %sw.bb.i.strncasecmpz.exit.i_crit_edge

sw.bb.i.strncasecmpz.exit.i_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i.i = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.030.i, ptr noundef %opt, i32 noundef %call.i) #6
  br label %strncasecmpz.exit.i

strncasecmpz.exit.i:                              ; preds = %if.end.i.i, %sw.bb.i.strncasecmpz.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %call.i, %sw.bb.i.strncasecmpz.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool4.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool4.not.i, label %cleanup.thread.i, label %if.end.i

cleanup.thread.i:                                 ; preds = %strncasecmpz.exit.i
  %add.i = add i32 %call.i, 1
  %add.ptr.i = getelementptr i8, ptr %optstr.addr.030.i, i32 %add.i
  %call5.i = tail call i32 @strcspn(ptr noundef %add.ptr.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %or.cond = or i1 %tobool.not, %tobool6.not.i
  br i1 %or.cond, label %cleanup.thread.i.if.end5_crit_edge, label %land.lhs.true

cleanup.thread.i.if.end5_crit_edge:               ; preds = %cleanup.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %strncasecmpz.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i8, ptr %optstr.addr.030.i, i32 1
  br label %cleanup.i

sw.bb7.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr8.i = getelementptr i8, ptr %optstr.addr.030.i, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.bb7.i, %if.end.i, %while.body.i.cleanup.i_crit_edge
  %optstr.addr.1.i = phi ptr [ %optstr.addr.030.i, %while.body.i.cleanup.i_crit_edge ], [ %incdec.ptr8.i, %sw.bb7.i ], [ %incdec.ptr.i, %if.end.i ]
  %add.ptr9.i = getelementptr i8, ptr %optstr.addr.1.i, i32 %call.i
  %tobool.not.i = icmp eq ptr %add.ptr9.i, null
  br i1 %tobool.not.i, label %cleanup.i.if.end5_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

cleanup.i.if.end5_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %cleanup.thread.i
  %call1 = tail call ptr @kstrndup(ptr noundef nonnull %add.ptr.i, i32 noundef %call5.i, i32 noundef 3264) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call.i9 = call i32 @_kstrtol(ptr noundef nonnull %call1, i32 noundef 0, ptr noundef nonnull %value.addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp = icmp eq i32 %call.i9, 0
  br i1 %cmp, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %value.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %result.0 = phi i32 [ %7, %if.then4 ], [ %value, %if.then.if.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %land.lhs.true.if.end5_crit_edge, %cleanup.i.if.end5_crit_edge, %cleanup.thread.i.if.end5_crit_edge, %land.rhs.i.if.end5_crit_edge, %entry.if.end5_crit_edge
  %result.1 = phi i32 [ %result.0, %if.end ], [ %value, %land.lhs.true.if.end5_crit_edge ], [ %value, %entry.if.end5_crit_edge ], [ %value, %cleanup.thread.i.if.end5_crit_edge ], [ %value, %land.rhs.i.if.end5_crit_edge ], [ %value, %cleanup.i.if.end5_crit_edge ]
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_dbgopt(ptr noundef readonly %optstr, ptr nocapture noundef readonly %sub) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not134 = icmp eq ptr %optstr, null
  br i1 %tobool.not134, label %entry.cleanup50_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %level.0141 = phi i32 [ %level.2, %cleanup.while.body_crit_edge ], [ 3, %entry.while.body_crit_edge ]
  %mode.0140 = phi i32 [ %mode.2, %cleanup.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %optstr.addr.0135 = phi ptr [ %add.ptr, %cleanup.while.body_crit_edge ], [ %optstr, %entry.while.body_crit_edge ]
  %call = tail call i32 @strcspn(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str)
  %arrayidx = getelementptr i8, ptr %optstr.addr.0135, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %1)
  %cond = icmp eq i8 %1, 61
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %while.body
  %call.i = tail call i32 @strlen(ptr noundef %sub) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %call)
  %cmp1.not.i = icmp eq i32 %call.i, %call
  br i1 %cmp1.not.i, label %if.end.i, label %sw.bb.strncasecmpz.exit_crit_edge

sw.bb.strncasecmpz.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef %sub, i32 noundef %call) #6
  br label %strncasecmpz.exit

strncasecmpz.exit:                                ; preds = %if.end.i, %sw.bb.strncasecmpz.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call, %sw.bb.strncasecmpz.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool2.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %tobool2.not, i32 %mode.0140, i32 0
  br label %cleanup

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.0140)
  %tobool3.not = icmp eq i32 %mode.0140, 0
  br i1 %tobool3.not, label %sw.default.if.end43_crit_edge, label %if.then4

sw.default.if.end43_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then4:                                         ; preds = %sw.default
  %2 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call, label %if.then4.strncasecmpz.exit128_crit_edge [
    i32 5, label %strncasecmpz.exit86
    i32 0, label %if.then4.if.end43_crit_edge
    i32 4, label %strncasecmpz.exit98
    i32 8, label %strncasecmpz.exit122
  ]

if.then4.if.end43_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then4.strncasecmpz.exit128_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit128

strncasecmpz.exit86:                              ; preds = %if.then4
  %call2.i83 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.9, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i83)
  %tobool6.not = icmp eq i32 %call2.i83, 0
  br i1 %tobool6.not, label %strncasecmpz.exit86.if.end43_crit_edge, label %strncasecmpz.exit92.thread

strncasecmpz.exit86.if.end43_crit_edge:           ; preds = %strncasecmpz.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit92.thread:                       ; preds = %strncasecmpz.exit86
  %call2.i89 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.10, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i89)
  %tobool9.not146 = icmp eq i32 %call2.i89, 0
  br i1 %tobool9.not146, label %strncasecmpz.exit92.thread.if.end43_crit_edge, label %strncasecmpz.exit110

strncasecmpz.exit92.thread.if.end43_crit_edge:    ; preds = %strncasecmpz.exit92.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit98:                              ; preds = %if.then4
  %call2.i95 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.11, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i95)
  %tobool13.not = icmp eq i32 %call2.i95, 0
  br i1 %tobool13.not, label %strncasecmpz.exit98.if.end43_crit_edge, label %strncasecmpz.exit104

strncasecmpz.exit98.if.end43_crit_edge:           ; preds = %strncasecmpz.exit98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit104:                             ; preds = %strncasecmpz.exit98
  %call2.i101 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.12, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i101)
  %tobool17.not = icmp eq i32 %call2.i101, 0
  br i1 %tobool17.not, label %strncasecmpz.exit104.if.end43_crit_edge, label %if.end.i126

strncasecmpz.exit104.if.end43_crit_edge:          ; preds = %strncasecmpz.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit110:                             ; preds = %strncasecmpz.exit92.thread
  %call2.i107 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.13, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i107)
  %tobool21.not = icmp eq i32 %call2.i107, 0
  br i1 %tobool21.not, label %strncasecmpz.exit110.if.end43_crit_edge, label %strncasecmpz.exit116

strncasecmpz.exit110.if.end43_crit_edge:          ; preds = %strncasecmpz.exit110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit116:                             ; preds = %strncasecmpz.exit110
  %call2.i113 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.14, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i113)
  %tobool25.not = icmp eq i32 %call2.i113, 0
  br i1 %tobool25.not, label %strncasecmpz.exit116.if.end43_crit_edge, label %strncasecmpz.exit116.strncasecmpz.exit128_crit_edge

strncasecmpz.exit116.strncasecmpz.exit128_crit_edge: ; preds = %strncasecmpz.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit128

strncasecmpz.exit116.if.end43_crit_edge:          ; preds = %strncasecmpz.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

strncasecmpz.exit122:                             ; preds = %if.then4
  %call2.i119 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.15, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i119)
  %tobool29.not = icmp eq i32 %call2.i119, 0
  br i1 %tobool29.not, label %strncasecmpz.exit122.if.end43_crit_edge, label %strncasecmpz.exit122.strncasecmpz.exit128_crit_edge

strncasecmpz.exit122.strncasecmpz.exit128_crit_edge: ; preds = %strncasecmpz.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %strncasecmpz.exit128

strncasecmpz.exit122.if.end43_crit_edge:          ; preds = %strncasecmpz.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end.i126:                                      ; preds = %strncasecmpz.exit104
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i125 = tail call i32 @strncasecmp(ptr noundef nonnull %optstr.addr.0135, ptr noundef nonnull @.str.16, i32 noundef 4) #6
  br label %strncasecmpz.exit128

strncasecmpz.exit128:                             ; preds = %if.end.i126, %strncasecmpz.exit122.strncasecmpz.exit128_crit_edge, %strncasecmpz.exit116.strncasecmpz.exit128_crit_edge, %if.then4.strncasecmpz.exit128_crit_edge
  %retval.0.i127 = phi i32 [ %call2.i125, %if.end.i126 ], [ 8, %strncasecmpz.exit122.strncasecmpz.exit128_crit_edge ], [ 8, %strncasecmpz.exit116.strncasecmpz.exit128_crit_edge ], [ %call, %if.then4.strncasecmpz.exit128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i127)
  %tobool33.not = icmp eq i32 %retval.0.i127, 0
  %spec.select80 = select i1 %tobool33.not, i32 7, i32 %level.0141
  br label %if.end43

if.end43:                                         ; preds = %strncasecmpz.exit128, %strncasecmpz.exit122.if.end43_crit_edge, %strncasecmpz.exit116.if.end43_crit_edge, %strncasecmpz.exit110.if.end43_crit_edge, %strncasecmpz.exit104.if.end43_crit_edge, %strncasecmpz.exit98.if.end43_crit_edge, %strncasecmpz.exit92.thread.if.end43_crit_edge, %strncasecmpz.exit86.if.end43_crit_edge, %if.then4.if.end43_crit_edge, %sw.default.if.end43_crit_edge
  %level.1 = phi i32 [ %level.0141, %sw.default.if.end43_crit_edge ], [ 0, %strncasecmpz.exit86.if.end43_crit_edge ], [ 2, %strncasecmpz.exit98.if.end43_crit_edge ], [ 3, %strncasecmpz.exit104.if.end43_crit_edge ], [ 4, %strncasecmpz.exit110.if.end43_crit_edge ], [ 5, %strncasecmpz.exit116.if.end43_crit_edge ], [ 6, %strncasecmpz.exit122.if.end43_crit_edge ], [ %spec.select80, %strncasecmpz.exit128 ], [ 1, %strncasecmpz.exit92.thread.if.end43_crit_edge ], [ %call, %if.then4.if.end43_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end43.cleanup50_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43.cleanup50_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %strncasecmpz.exit
  %mode.2 = phi i32 [ %spec.select, %strncasecmpz.exit ], [ 1, %if.end43.cleanup_crit_edge ]
  %level.2 = phi i32 [ %level.0141, %strncasecmpz.exit ], [ %level.1, %if.end43.cleanup_crit_edge ]
  %optstr.addr.1 = getelementptr i8, ptr %optstr.addr.0135, i32 1
  %add.ptr = getelementptr i8, ptr %optstr.addr.1, i32 %call
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %cleanup.cleanup50_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup50_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup.cleanup50_crit_edge, %if.end43.cleanup50_crit_edge, %entry.cleanup50_crit_edge
  %retval.2 = phi i32 [ 3, %entry.cleanup50_crit_edge ], [ %level.1, %if.end43.cleanup50_crit_edge ], [ %level.2, %cleanup.cleanup50_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 31, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 60, i32 29}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 61, i32 29}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 62, i32 29}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 63, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 66, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 67, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 68, i32 29}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 69, i32 29}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 109, i32 31}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 111, i32 36}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 113, i32 36}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 115, i32 36}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 117, i32 36}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 119, i32 36}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 121, i32 36}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/option.c", i32 123, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
