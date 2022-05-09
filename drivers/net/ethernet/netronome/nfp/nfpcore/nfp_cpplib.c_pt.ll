; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cpplib.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfpcore/nfp_cpplib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_readl(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4
  %call = call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr noundef nonnull %tmp, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tmp, align 4
  %3 = call i32 @llvm.bswap.i32(i32 %2) #4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_read(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_writel(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #4
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %tmp, align 4
  %call = call i32 @nfp_cpp_write(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr noundef nonnull %tmp, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call)
  %cmp = icmp eq i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp2, i32 %call, i32 -5
  %cond6 = select i1 %cmp, i32 0, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  ret i32 %cond6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_write(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_readq(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmp, align 8
  %call = call i32 @nfp_cpp_read(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr noundef nonnull %tmp, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %tmp, align 8
  %3 = call i64 @llvm.bswap.i64(i64 %2) #4
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_writeq(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, i64 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #4
  %0 = tail call i64 @llvm.bswap.i64(i64 %value) #4
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %tmp, align 8
  %call = call i32 @nfp_cpp_write(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %address, ptr noundef nonnull %tmp, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp = icmp eq i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp2, i32 %call, i32 -5
  %cond6 = select i1 %cmp, i32 0, i32 %spec.select
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #4
  ret i32 %cond6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_model_autodetect(ptr noundef %cpp, ptr nocapture noundef writeonly %model) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !9
  %call = call i32 @nfp_xpb_readl(ptr noundef %cpp, i32 noundef 22020100, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, -65281
  %and1 = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %sub = add i32 %and, -16
  %spec.select = select i1 %tobool.not, i32 %and, i32 %sub
  %3 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %model, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_xpb_readl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_read(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %addr, ptr noundef %buff, i32 noundef %len, i32 noundef %width_read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %width_read, -1
  %and = and i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nfp_cpp_explicit_acquire(ptr noundef %cpp) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mul = shl i32 %width_read, 4
  %0 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %len)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 128)
  %2 = and i32 %cpp_id, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %2)
  %cmp12 = icmp eq i32 %2, 8192
  %or = and i32 %cpp_id, 536805376
  %spec.select = select i1 %cmp12, i32 %or, i32 %cpp_id
  %3 = zext i32 %width_read to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %width_read, label %if.else19.i [
    i32 8, label %if.end3.nfp_bytemask.exit_crit_edge
    i32 4, label %if.then2.i
    i32 2, label %if.then6.i
    i32 1, label %if.then14.i
  ]

if.end3.nfp_bytemask.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_bytemask.exit

if.then2.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = trunc i64 %addr to i8
  %sh_prom.i = and i8 %4, 4
  %shl.i = shl nuw i8 15, %sh_prom.i
  br label %nfp_bytemask.exit

if.then6.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %5 = trunc i64 %addr to i8
  %sh_prom8.i = and i8 %5, 6
  %shl9.i = shl nuw i8 3, %sh_prom8.i
  br label %nfp_bytemask.exit

if.then14.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = trunc i64 %addr to i8
  %sh_prom16.i = and i8 %6, 7
  %shl17.i = shl nuw i8 1, %sh_prom16.i
  br label %nfp_bytemask.exit

if.else19.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_bytemask.exit

nfp_bytemask.exit:                                ; preds = %if.else19.i, %if.then14.i, %if.then6.i, %if.then2.i, %if.end3.nfp_bytemask.exit_crit_edge
  %retval.0.i = phi i8 [ %shl.i, %if.then2.i ], [ %shl9.i, %if.then6.i ], [ %shl17.i, %if.then14.i ], [ 0, %if.else19.i ], [ -1, %if.end3.nfp_bytemask.exit_crit_edge ]
  %div = sdiv i32 %1, %width_read
  %7 = trunc i32 %div to i8
  %conv26 = add i8 %7, -1
  %call27 = tail call i32 @nfp_cpp_explicit_set_target(ptr noundef nonnull %call, i32 noundef %spec.select, i8 noundef zeroext %conv26, i8 noundef zeroext %retval.0.i) #4
  %call28 = tail call i32 @nfp_cpp_explicit_set_posted(ptr noundef nonnull %call, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp29100.not = icmp eq i32 %len, 0
  br i1 %cmp29100.not, label %nfp_bytemask.exit.exit_release_crit_edge, label %nfp_bytemask.exit.for.body_crit_edge

nfp_bytemask.exit.for.body_crit_edge:             ; preds = %nfp_bytemask.exit
  br label %for.body

nfp_bytemask.exit.exit_release_crit_edge:         ; preds = %nfp_bytemask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %nfp_bytemask.exit.for.body_crit_edge
  %incr.0105 = phi i32 [ %incr.1, %for.inc.for.body_crit_edge ], [ %1, %nfp_bytemask.exit.for.body_crit_edge ]
  %i.0103 = phi i32 [ %add50, %for.inc.for.body_crit_edge ], [ 0, %nfp_bytemask.exit.for.body_crit_edge ]
  %tmp.0102 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %buff, %nfp_bytemask.exit.for.body_crit_edge ]
  %addr.addr.0101 = phi i64 [ %add52, %for.inc.for.body_crit_edge ], [ %addr, %nfp_bytemask.exit.for.body_crit_edge ]
  %add = add i32 %incr.0105, %i.0103
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp31 = icmp ugt i32 %add, %len
  br i1 %cmp31, label %if.then33, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub34 = sub i32 %len, %i.0103
  %div35 = sdiv i32 %sub34, %width_read
  %8 = trunc i32 %div35 to i8
  %conv37 = add i8 %8, -1
  %call38 = tail call i32 @nfp_cpp_explicit_set_target(ptr noundef nonnull %call, i32 noundef %spec.select, i8 noundef zeroext %conv37, i8 noundef zeroext -1) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %for.body.if.end39_crit_edge
  %incr.1 = phi i32 [ %sub34, %if.then33 ], [ %incr.0105, %for.body.if.end39_crit_edge ]
  %call40 = tail call i32 @nfp_cpp_explicit_do(ptr noundef nonnull %call, i64 noundef %addr.addr.0101) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.exit_release_crit_edge, label %if.end44

if.end39.exit_release_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @nfp_cpp_explicit_get(ptr noundef nonnull %call, ptr noundef %tmp.0102, i32 noundef %incr.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.exit_release_crit_edge, label %for.inc

if.end44.exit_release_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.inc:                                          ; preds = %if.end44
  %add50 = add i32 %incr.1, %i.0103
  %conv51 = sext i32 %incr.1 to i64
  %add52 = add i64 %addr.addr.0101, %conv51
  %add.ptr = getelementptr i8, ptr %tmp.0102, i32 %incr.1
  %cmp29 = icmp ult i32 %add50, %len
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.exit_release_crit_edge

for.inc.exit_release_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

exit_release:                                     ; preds = %for.inc.exit_release_crit_edge, %if.end44.exit_release_crit_edge, %if.end39.exit_release_crit_edge, %nfp_bytemask.exit.exit_release_crit_edge
  %err.0 = phi i32 [ 0, %nfp_bytemask.exit.exit_release_crit_edge ], [ %len, %for.inc.exit_release_crit_edge ], [ %call45, %if.end44.exit_release_crit_edge ], [ %call40, %if.end39.exit_release_crit_edge ]
  tail call void @nfp_cpp_explicit_release(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %exit_release, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_release ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_explicit_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_set_target(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_set_posted(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_do(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_explicit_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_cpp_explicit_write(ptr noundef %cpp, i32 noundef %cpp_id, i64 noundef %addr, ptr noundef %buff, i32 noundef %len, i32 noundef %width_write) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %width_write, -1
  %and = and i32 %sub, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @nfp_cpp_explicit_acquire(ptr noundef %cpp) #4
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mul = shl i32 %width_write, 4
  %0 = tail call i32 @llvm.smin.i32(i32 %mul, i32 %len)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 128)
  %2 = and i32 %cpp_id, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %2)
  %cmp12 = icmp eq i32 %2, 8192
  %or = and i32 %cpp_id, 536805376
  %or22 = or i32 %or, 256
  %cpp_id.addr.0 = select i1 %cmp12, i32 %or22, i32 %cpp_id
  %3 = zext i32 %width_write to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %width_write, label %if.else19.i [
    i32 8, label %if.end3.nfp_bytemask.exit_crit_edge
    i32 4, label %if.then2.i
    i32 2, label %if.then6.i
    i32 1, label %if.then14.i
  ]

if.end3.nfp_bytemask.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_bytemask.exit

if.then2.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %4 = trunc i64 %addr to i8
  %sh_prom.i = and i8 %4, 4
  %shl.i = shl nuw i8 15, %sh_prom.i
  br label %nfp_bytemask.exit

if.then6.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %5 = trunc i64 %addr to i8
  %sh_prom8.i = and i8 %5, 6
  %shl9.i = shl nuw i8 3, %sh_prom8.i
  br label %nfp_bytemask.exit

if.then14.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %6 = trunc i64 %addr to i8
  %sh_prom16.i = and i8 %6, 7
  %shl17.i = shl nuw i8 1, %sh_prom16.i
  br label %nfp_bytemask.exit

if.else19.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_bytemask.exit

nfp_bytemask.exit:                                ; preds = %if.else19.i, %if.then14.i, %if.then6.i, %if.then2.i, %if.end3.nfp_bytemask.exit_crit_edge
  %retval.0.i = phi i8 [ %shl.i, %if.then2.i ], [ %shl9.i, %if.then6.i ], [ %shl17.i, %if.then14.i ], [ 0, %if.else19.i ], [ -1, %if.end3.nfp_bytemask.exit_crit_edge ]
  %div = sdiv i32 %1, %width_write
  %7 = trunc i32 %div to i8
  %conv26 = add i8 %7, -1
  %call27 = tail call i32 @nfp_cpp_explicit_set_target(ptr noundef nonnull %call, i32 noundef %cpp_id.addr.0, i8 noundef zeroext %conv26, i8 noundef zeroext %retval.0.i) #4
  %call28 = tail call i32 @nfp_cpp_explicit_set_posted(ptr noundef nonnull %call, i32 noundef 1, i8 noundef zeroext 0, i32 noundef 2, i8 noundef zeroext 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp29100.not = icmp eq i32 %len, 0
  br i1 %cmp29100.not, label %nfp_bytemask.exit.exit_release_crit_edge, label %nfp_bytemask.exit.for.body_crit_edge

nfp_bytemask.exit.for.body_crit_edge:             ; preds = %nfp_bytemask.exit
  br label %for.body

nfp_bytemask.exit.exit_release_crit_edge:         ; preds = %nfp_bytemask.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %nfp_bytemask.exit.for.body_crit_edge
  %incr.0105 = phi i32 [ %incr.1, %for.inc.for.body_crit_edge ], [ %1, %nfp_bytemask.exit.for.body_crit_edge ]
  %i.0103 = phi i32 [ %add50, %for.inc.for.body_crit_edge ], [ 0, %nfp_bytemask.exit.for.body_crit_edge ]
  %tmp.0102 = phi ptr [ %add.ptr, %for.inc.for.body_crit_edge ], [ %buff, %nfp_bytemask.exit.for.body_crit_edge ]
  %addr.addr.0101 = phi i64 [ %add52, %for.inc.for.body_crit_edge ], [ %addr, %nfp_bytemask.exit.for.body_crit_edge ]
  %add = add i32 %incr.0105, %i.0103
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp31 = icmp ugt i32 %add, %len
  br i1 %cmp31, label %if.then33, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub34 = sub i32 %len, %i.0103
  %div35 = sdiv i32 %sub34, %width_write
  %8 = trunc i32 %div35 to i8
  %conv37 = add i8 %8, -1
  %call38 = tail call i32 @nfp_cpp_explicit_set_target(ptr noundef nonnull %call, i32 noundef %cpp_id.addr.0, i8 noundef zeroext %conv37, i8 noundef zeroext -1) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %for.body.if.end39_crit_edge
  %incr.1 = phi i32 [ %sub34, %if.then33 ], [ %incr.0105, %for.body.if.end39_crit_edge ]
  %call40 = tail call i32 @nfp_cpp_explicit_put(ptr noundef nonnull %call, ptr noundef %tmp.0102, i32 noundef %incr.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.exit_release_crit_edge, label %if.end44

if.end39.exit_release_crit_edge:                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @nfp_cpp_explicit_do(ptr noundef nonnull %call, i64 noundef %addr.addr.0101) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.exit_release_crit_edge, label %for.inc

if.end44.exit_release_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.inc:                                          ; preds = %if.end44
  %add50 = add i32 %incr.1, %i.0103
  %conv51 = sext i32 %incr.1 to i64
  %add52 = add i64 %addr.addr.0101, %conv51
  %add.ptr = getelementptr i8, ptr %tmp.0102, i32 %incr.1
  %cmp29 = icmp ult i32 %add50, %len
  br i1 %cmp29, label %for.inc.for.body_crit_edge, label %for.inc.exit_release_crit_edge

for.inc.exit_release_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit_release

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

exit_release:                                     ; preds = %for.inc.exit_release_crit_edge, %if.end44.exit_release_crit_edge, %if.end39.exit_release_crit_edge, %nfp_bytemask.exit.exit_release_crit_edge
  %err.0 = phi i32 [ 0, %nfp_bytemask.exit.exit_release_crit_edge ], [ %len, %for.inc.exit_release_crit_edge ], [ %call45, %if.end44.exit_release_crit_edge ], [ %call40, %if.end39.exit_release_crit_edge ]
  tail call void @nfp_cpp_explicit_release(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %exit_release, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_release ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_cpp_explicit_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_cpp_map_area(ptr noundef %cpp, ptr noundef %name, i32 noundef %cpp_id, i64 noundef %addr, i32 noundef %size, ptr nocapture noundef %area) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfp_cpp_area_alloc_acquire(ptr noundef %cpp, ptr noundef %name, i32 noundef %cpp_id, i64 noundef %addr, i32 noundef %size) #4
  %0 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %area, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @nfp_cpp_area_iomem(ptr noundef nonnull %call) #4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %err_release_free, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_release_free:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %area, align 4
  tail call void @nfp_cpp_area_release_free(ptr noundef %2) #4
  br label %cleanup

cleanup:                                          ; preds = %err_release_free, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %err_release_free ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_alloc_acquire(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_area_iomem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_cpp_area_release_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
