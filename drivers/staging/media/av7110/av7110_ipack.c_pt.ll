; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_ipack.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_ipack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_audio_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@av7110_ipack_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Couldn't allocate memory for ipack\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"av7110_ipack_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/staging/media/av7110/av7110_ipack.c\00", [52 x i8] zeroinitializer }, align 32
@av7110_ipack_init._entry_ptr = internal global ptr @av7110_ipack_init._entry, section ".printk_index", align 4
@__const.write_ipack.headr = private unnamed_addr constant [3 x i8] c"\00\00\01", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [59 x i64] [i64 57, i64 8, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [51 x i64] [i64 49, i64 8, i64 189, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239]
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [47 x i8] c"../drivers/staging/media/av7110/av7110_ipack.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 28, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @av7110_ipack_init._entry, ptr @av7110_ipack_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_ipack_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @av7110_ipack_reset(ptr nocapture noundef writeonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %found = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %found, align 4
  %cid = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %cid, align 4
  %plength = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %plength to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %plength, align 4
  %flag1 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 6
  %3 = ptrtoint ptr %flag1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %flag1, align 2
  %flag2 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 7
  %4 = ptrtoint ptr %flag2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %flag2, align 1
  %hlength = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 8
  %5 = ptrtoint ptr %hlength to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %hlength, align 4
  %mpeg = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 11
  %6 = ptrtoint ptr %mpeg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mpeg, align 4
  %check = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 12
  %7 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %check, align 4
  %which = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 13
  %8 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %which, align 4
  %done = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 14
  %9 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done, align 4
  %count = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %10 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_ipack_init(ptr nocapture noundef writeonly %p, i32 noundef %size, ptr noundef %func) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vmalloc(i32 noundef %size) #9
  %buf = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %size, ptr %p, align 4
  %func3 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 16
  %2 = ptrtoint ptr %func3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %func3, align 4
  %repack_subids = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 18
  %3 = ptrtoint ptr %repack_subids to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %repack_subids, align 4
  %found.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 1
  %4 = ptrtoint ptr %found.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %found.i, align 4
  %cid.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %5 = ptrtoint ptr %cid.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %cid.i, align 4
  %plength.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %plength.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %plength.i, align 4
  %flag1.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 6
  %7 = ptrtoint ptr %flag1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %flag1.i, align 2
  %flag2.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 7
  %8 = ptrtoint ptr %flag2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %flag2.i, align 1
  %hlength.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 8
  %9 = ptrtoint ptr %hlength.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %hlength.i, align 4
  %mpeg.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 11
  %10 = ptrtoint ptr %mpeg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mpeg.i, align 4
  %check.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 12
  %11 = ptrtoint ptr %check.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %check.i, align 4
  %which.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 13
  %12 = ptrtoint ptr %which.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %which.i, align 4
  %done.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 14
  %13 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %done.i, align 4
  %count.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %count.i, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ipack_free(ptr nocapture noundef readonly %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ipack_flush(ptr nocapture noundef %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plength = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %plength to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16776954, i32 %1)
  %cmp.not = icmp eq i32 %1, 16776954
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %found = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %found to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %found, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp1 = icmp slt i32 %3, 7
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add nsw i32 %3, -6
  %4 = ptrtoint ptr %plength to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %plength, align 4
  %5 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %found, align 4
  tail call fastcc void @send_ipack(ptr noundef %p)
  %6 = ptrtoint ptr %found to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %found, align 4
  %cid.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %cid.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cid.i, align 4
  %8 = ptrtoint ptr %plength to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %plength, align 4
  %flag1.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %flag1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %flag1.i, align 2
  %flag2.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 7
  %10 = ptrtoint ptr %flag2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %flag2.i, align 1
  %hlength.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 8
  %11 = ptrtoint ptr %hlength.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %hlength.i, align 4
  %mpeg.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 11
  %12 = ptrtoint ptr %mpeg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %mpeg.i, align 4
  %check.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 12
  %13 = ptrtoint ptr %check.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %check.i, align 4
  %which.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 13
  %14 = ptrtoint ptr %which.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %which.i, align 4
  %done.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 14
  %15 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %done.i, align 4
  %count.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %count.i, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_ipack(ptr nocapture noundef %p) unnamed_addr #1 align 64 {
entry:
  %ai = alloca %struct.dvb_audio_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ai) #6
  %0 = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 6
  %1 = getelementptr inbounds %struct.dvb_audio_info, ptr %ai, i32 0, i32 7
  %mpeg = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 11
  %2 = call ptr @memset(ptr %ai, i32 255, i32 32)
  %3 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mpeg, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb111
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %count = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %7)
  %cmp = icmp slt i32 %7, 10
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %cid = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %8 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cid, align 4
  %buf = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 4
  %sub = add i32 %14, 65530
  %and = lshr i32 %sub, 8
  %conv = trunc i32 %and to i8
  %15 = load ptr, ptr %buf, align 4
  %arrayidx3 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %arrayidx3, align 1
  %17 = load i32, ptr %count, align 4
  %18 = trunc i32 %17 to i8
  %conv7 = add i8 %18, -6
  %19 = load ptr, ptr %buf, align 4
  %arrayidx9 = getelementptr i8, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7, ptr %arrayidx9, align 1
  %repack_subids = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 18
  %21 = ptrtoint ptr %repack_subids to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %repack_subids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %if.end.if.end72_crit_edge, label %land.lhs.true

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -67, i8 %24)
  %cmp12 = icmp eq i8 %24, -67
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end72_crit_edge

land.lhs.true.if.end72_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then14:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf, align 4
  %arrayidx16 = getelementptr i8, ptr %26, i32 8
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %28 to i32
  %add = add nuw nsw i32 %conv17, 9
  %arrayidx19 = getelementptr i8, ptr %26, i32 %add
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %30 to i32
  %and21 = and i32 %conv20, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 128
  br i1 %cmp22, label %if.then24, label %if.then14.if.end72_crit_edge

if.then14.if.end72_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then24:                                        ; preds = %if.then14
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %1, align 4
  %add27 = add nuw nsw i32 %conv17, 11
  %arrayidx28 = getelementptr i8, ptr %26, i32 %add27
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %33 to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %add31 = add nuw nsw i32 %conv17, 12
  %arrayidx32 = getelementptr i8, ptr %26, i32 %add31
  %34 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %35 to i32
  %or = or i32 %shl, %conv33
  %36 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %or)
  %cmp35 = icmp sgt i32 %37, %or
  br i1 %cmp35, label %if.then37, label %if.then24.if.then45_crit_edge

if.then24.if.then45_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then37:                                        ; preds = %if.then24
  %add.ptr39 = getelementptr i8, ptr %arrayidx19, i32 3
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 %or
  %sub42 = sub i32 %37, %or
  %call = call i32 @dvb_filter_get_ac3info(ptr noundef %add.ptr40, i32 noundef %sub42, ptr noundef nonnull %ai, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %phi.cmp = icmp eq i32 %call, 0
  br i1 %phi.cmp, label %if.then37.if.then45_crit_edge, label %if.then37.if.end72_crit_edge

if.then37.if.end72_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then37.if.then45_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %if.then37.if.then45_crit_edge, %if.then24.if.then45_crit_edge
  %38 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count, align 4
  %40 = add nuw nsw i32 %or, %conv17
  %41 = sub nuw nsw i32 -12, %40
  %sub49 = add i32 %41, %39
  %42 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %0, align 4
  %div = udiv i32 %sub49, %43
  %add50 = add i32 %div, 1
  %44 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf, align 4
  %arrayidx56 = getelementptr i8, ptr %45, i32 %add27
  %46 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %33, ptr %arrayidx56, align 1
  %47 = load ptr, ptr %buf, align 4
  %arrayidx61 = getelementptr i8, ptr %47, i32 %add31
  %48 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %35, ptr %arrayidx61, align 1
  %conv62 = trunc i32 %add50 to i8
  %49 = load ptr, ptr %buf, align 4
  %add64 = add nuw nsw i32 %conv17, 10
  %arrayidx65 = getelementptr i8, ptr %49, i32 %add64
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv62, ptr %arrayidx65, align 1
  %51 = load i32, ptr %0, align 4
  %mul = mul i32 %51, %add50
  %52 = load i32, ptr %count, align 4
  %sub68 = sub i32 %or, %52
  %add69 = add i32 %sub68, %mul
  br label %if.end72

if.end72:                                         ; preds = %if.then45, %if.then37.if.end72_crit_edge, %if.then14.if.end72_crit_edge, %land.lhs.true.if.end72_crit_edge, %if.end.if.end72_crit_edge
  %ac3_off.0 = phi i32 [ %or, %if.then37.if.end72_crit_edge ], [ %add69, %if.then45 ], [ 0, %if.then14.if.end72_crit_edge ], [ 0, %land.lhs.true.if.end72_crit_edge ], [ 0, %if.end.if.end72_crit_edge ]
  %streamid.0 = phi i32 [ %conv20, %if.then37.if.end72_crit_edge ], [ %conv20, %if.then45 ], [ %conv20, %if.then14.if.end72_crit_edge ], [ 0, %land.lhs.true.if.end72_crit_edge ], [ 0, %if.end.if.end72_crit_edge ]
  %func = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 16
  %53 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func, align 4
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf, align 4
  %57 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %count, align 4
  %data = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 15
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  call void %54(ptr noundef %56, i32 noundef %58, ptr noundef %60) #6
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf, align 4
  %arrayidx76 = getelementptr i8, ptr %62, i32 6
  %63 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -128, ptr %arrayidx76, align 1
  %64 = load ptr, ptr %buf, align 4
  %arrayidx78 = getelementptr i8, ptr %64, i32 7
  %65 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %arrayidx78, align 1
  %66 = load ptr, ptr %buf, align 4
  %arrayidx80 = getelementptr i8, ptr %66, i32 8
  %67 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx80, align 1
  %68 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 9, ptr %count, align 4
  %69 = ptrtoint ptr %repack_subids to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %repack_subids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool83.not = icmp eq i32 %70, 0
  br i1 %tobool83.not, label %if.end72.cleanup_crit_edge, label %land.lhs.true84

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true84:                                  ; preds = %if.end72
  %71 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %cid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -67, i8 %72)
  %cmp87 = icmp eq i8 %72, -67
  %and90 = and i32 %streamid.0, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and90)
  %cmp91 = icmp eq i32 %and90, 128
  %or.cond = select i1 %cmp87, i1 %cmp91, i1 false
  br i1 %or.cond, label %if.then93, label %land.lhs.true84.cleanup_crit_edge

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then93:                                        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 13, ptr %count, align 4
  %conv96 = trunc i32 %streamid.0 to i8
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf, align 4
  %arrayidx98 = getelementptr i8, ptr %75, i32 9
  %76 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv96, ptr %arrayidx98, align 1
  %77 = lshr i32 %ac3_off.0, 8
  %conv101 = trunc i32 %77 to i8
  %78 = load ptr, ptr %buf, align 4
  %arrayidx103 = getelementptr i8, ptr %78, i32 10
  %79 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv101, ptr %arrayidx103, align 1
  %conv105 = trunc i32 %ac3_off.0 to i8
  %80 = load ptr, ptr %buf, align 4
  %arrayidx107 = getelementptr i8, ptr %80, i32 11
  %81 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv105, ptr %arrayidx107, align 1
  %82 = load ptr, ptr %buf, align 4
  %arrayidx109 = getelementptr i8, ptr %82, i32 12
  %83 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %arrayidx109, align 1
  br label %cleanup

sw.bb111:                                         ; preds = %entry
  %count112 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %84 = ptrtoint ptr %count112 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %85)
  %cmp113 = icmp slt i32 %85, 8
  br i1 %cmp113, label %sw.bb111.cleanup_crit_edge, label %if.end116

sw.bb111.cleanup_crit_edge:                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116:                                        ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #8
  %cid117 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %86 = ptrtoint ptr %cid117 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %cid117, align 4
  %buf118 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  %88 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf118, align 4
  %arrayidx119 = getelementptr i8, ptr %89, i32 3
  %90 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %87, ptr %arrayidx119, align 1
  %91 = ptrtoint ptr %count112 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %count112, align 4
  %sub121 = add i32 %92, 65530
  %and122 = lshr i32 %sub121, 8
  %conv124 = trunc i32 %and122 to i8
  %93 = load ptr, ptr %buf118, align 4
  %arrayidx126 = getelementptr i8, ptr %93, i32 4
  %94 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv124, ptr %arrayidx126, align 1
  %95 = load i32, ptr %count112, align 4
  %96 = trunc i32 %95 to i8
  %conv130 = add i8 %96, -6
  %97 = load ptr, ptr %buf118, align 4
  %arrayidx132 = getelementptr i8, ptr %97, i32 5
  %98 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv130, ptr %arrayidx132, align 1
  %func133 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 16
  %99 = ptrtoint ptr %func133 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %func133, align 4
  %101 = load ptr, ptr %buf118, align 4
  %102 = load i32, ptr %count112, align 4
  %data136 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 15
  %103 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data136, align 4
  tail call void %100(ptr noundef %101, i32 noundef %102, ptr noundef %104) #6
  %105 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %buf118, align 4
  %arrayidx138 = getelementptr i8, ptr %106, i32 6
  %107 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 15, ptr %arrayidx138, align 1
  %108 = ptrtoint ptr %count112 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 7, ptr %count112, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %sw.bb111.cleanup_crit_edge, %if.then93, %land.lhs.true84.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ai) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_ipack_instant_repack(ptr nocapture noundef readonly %buf, i32 noundef returned %count, ptr noundef %p) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mpeg = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 11
  %found10 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 1
  %done = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 14
  %hlength136 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 8
  %flag2122 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 7
  %flag1 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 6
  %which = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 13
  %plen81 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 5
  %arrayidx82 = getelementptr %struct.ipack, ptr %p, i32 0, i32 5, i32 1
  %plength94 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 4
  %cid = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 3
  %count1.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %buf.i = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  %check = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 12
  %pts344 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 9
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then499, %entry
  %buf.tr = phi ptr [ %buf, %entry ], [ %add.ptr500, %if.then499 ]
  %count.tr = phi i32 [ %count, %entry ], [ %sub501, %if.then499 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.tr)
  %cmp1027 = icmp sgt i32 %count.tr, 0
  br i1 %cmp1027, label %tailrecurse.land.lhs.true_crit_edge, label %tailrecurse.while.end_crit_edge

tailrecurse.while.end_crit_edge:                  ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

tailrecurse.land.lhs.true_crit_edge:              ; preds = %tailrecurse
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog141.land.lhs.true_crit_edge, %tailrecurse.land.lhs.true_crit_edge
  %c.01028 = phi i32 [ %c.1, %sw.epilog141.land.lhs.true_crit_edge ], [ 0, %tailrecurse.land.lhs.true_crit_edge ]
  %0 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mpeg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %land.lhs.true.while.end_crit_edge [
    i32 0, label %land.rhsthread-pre-split
    i32 1, label %land.lhs.true4
    i32 2, label %land.lhs.true9
  ]

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp5 = icmp slt i32 %4, 7
  br i1 %cmp5, label %land.lhs.true4.land.rhs_crit_edge, label %land.lhs.true4.while.end_crit_edge

land.lhs.true4.while.end_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true4.land.rhs_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.lhs.true9:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp11 = icmp slt i32 %6, 9
  br i1 %cmp11, label %land.lhs.true9.land.rhs_crit_edge, label %land.lhs.true9.while.end_crit_edge

land.lhs.true9.while.end_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

land.lhs.true9.land.rhs_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhsthread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr1100 = load i32, ptr %found10, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhsthread-pre-split, %land.lhs.true9.land.rhs_crit_edge, %land.lhs.true4.land.rhs_crit_edge
  %8 = phi i32 [ %.pr1100, %land.rhsthread-pre-split ], [ %6, %land.lhs.true9.land.rhs_crit_edge ], [ %4, %land.lhs.true4.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp13 = icmp slt i32 %8, 5
  br i1 %cmp13, label %land.rhs.while.body_crit_edge, label %lor.rhs

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

lor.rhs:                                          ; preds = %land.rhs
  %9 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %lor.rhs.while.body_crit_edge, label %lor.rhs.while.end_crit_edge

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

lor.rhs.while.body_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %lor.rhs.while.body_crit_edge, %land.rhs.while.body_crit_edge
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %8, label %while.body.sw.epilog141_crit_edge [
    i32 0, label %while.body.sw.bb_crit_edge
    i32 1, label %while.body.sw.bb_crit_edge1283
    i32 2, label %sw.bb20
    i32 3, label %sw.bb40
    i32 4, label %sw.bb54
    i32 5, label %sw.bb79
    i32 6, label %sw.bb95
    i32 7, label %sw.bb113
    i32 8, label %sw.bb127
  ]

while.body.sw.bb_crit_edge1283:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.bb_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

while.body.sw.epilog141_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog141

sw.bb:                                            ; preds = %while.body.sw.bb_crit_edge, %while.body.sw.bb_crit_edge1283
  %arrayidx = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp15 = icmp eq i8 %13, 0
  %inc = add nuw nsw i32 %8, 1
  %spec.select979 = select i1 %cmp15, i32 %inc, i32 0
  %14 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select979, ptr %found10, align 4
  %inc19 = add nsw i32 %c.01028, 1
  br label %sw.epilog141

sw.bb20:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.selectcmp = icmp eq i8 %16, 0
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %switch.selectcmp1156 = icmp eq i8 %16, 1
  %switch.select1157 = select i1 %switch.selectcmp1156, i32 3, i32 %switch.select
  %17 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.select1157, ptr %found10, align 4
  %inc39 = add nsw i32 %c.01028, 1
  br label %sw.epilog141

sw.bb40:                                          ; preds = %while.body
  %18 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %cid, align 4
  %arrayidx41 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %19 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx41, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %20, label %sw.default [
    i8 -68, label %sw.bb40.sw.bb43_crit_edge
    i8 -65, label %sw.bb40.sw.bb43_crit_edge1284
    i8 -1, label %sw.bb40.sw.bb43_crit_edge1285
    i8 -16, label %sw.bb40.sw.bb43_crit_edge1286
    i8 -15, label %sw.bb40.sw.bb43_crit_edge1287
    i8 -66, label %sw.bb40.sw.bb43_crit_edge1288
    i8 -14, label %sw.bb40.sw.bb43_crit_edge1289
    i8 -13, label %sw.bb40.sw.bb43_crit_edge1290
    i8 -67, label %sw.bb40.sw.bb47_crit_edge
    i8 -64, label %sw.bb40.sw.bb47_crit_edge1291
    i8 -63, label %sw.bb40.sw.bb47_crit_edge1292
    i8 -62, label %sw.bb40.sw.bb47_crit_edge1293
    i8 -61, label %sw.bb40.sw.bb47_crit_edge1294
    i8 -60, label %sw.bb40.sw.bb47_crit_edge1295
    i8 -59, label %sw.bb40.sw.bb47_crit_edge1296
    i8 -58, label %sw.bb40.sw.bb47_crit_edge1297
    i8 -57, label %sw.bb40.sw.bb47_crit_edge1298
    i8 -56, label %sw.bb40.sw.bb47_crit_edge1299
    i8 -55, label %sw.bb40.sw.bb47_crit_edge1300
    i8 -54, label %sw.bb40.sw.bb47_crit_edge1301
    i8 -53, label %sw.bb40.sw.bb47_crit_edge1302
    i8 -52, label %sw.bb40.sw.bb47_crit_edge1303
    i8 -51, label %sw.bb40.sw.bb47_crit_edge1304
    i8 -50, label %sw.bb40.sw.bb47_crit_edge1305
    i8 -49, label %sw.bb40.sw.bb47_crit_edge1306
    i8 -48, label %sw.bb40.sw.bb47_crit_edge1307
    i8 -47, label %sw.bb40.sw.bb47_crit_edge1308
    i8 -46, label %sw.bb40.sw.bb47_crit_edge1309
    i8 -45, label %sw.bb40.sw.bb47_crit_edge1310
    i8 -44, label %sw.bb40.sw.bb47_crit_edge1311
    i8 -43, label %sw.bb40.sw.bb47_crit_edge1312
    i8 -42, label %sw.bb40.sw.bb47_crit_edge1313
    i8 -41, label %sw.bb40.sw.bb47_crit_edge1314
    i8 -40, label %sw.bb40.sw.bb47_crit_edge1315
    i8 -39, label %sw.bb40.sw.bb47_crit_edge1316
    i8 -38, label %sw.bb40.sw.bb47_crit_edge1317
    i8 -37, label %sw.bb40.sw.bb47_crit_edge1318
    i8 -36, label %sw.bb40.sw.bb47_crit_edge1319
    i8 -35, label %sw.bb40.sw.bb47_crit_edge1320
    i8 -34, label %sw.bb40.sw.bb47_crit_edge1321
    i8 -33, label %sw.bb40.sw.bb47_crit_edge1322
    i8 -32, label %sw.bb40.sw.bb47_crit_edge1323
    i8 -31, label %sw.bb40.sw.bb47_crit_edge1324
    i8 -30, label %sw.bb40.sw.bb47_crit_edge1325
    i8 -29, label %sw.bb40.sw.bb47_crit_edge1326
    i8 -28, label %sw.bb40.sw.bb47_crit_edge1327
    i8 -27, label %sw.bb40.sw.bb47_crit_edge1328
    i8 -26, label %sw.bb40.sw.bb47_crit_edge1329
    i8 -25, label %sw.bb40.sw.bb47_crit_edge1330
    i8 -24, label %sw.bb40.sw.bb47_crit_edge1331
    i8 -23, label %sw.bb40.sw.bb47_crit_edge1332
    i8 -22, label %sw.bb40.sw.bb47_crit_edge1333
    i8 -21, label %sw.bb40.sw.bb47_crit_edge1334
    i8 -20, label %sw.bb40.sw.bb47_crit_edge1335
    i8 -19, label %sw.bb40.sw.bb47_crit_edge1336
    i8 -18, label %sw.bb40.sw.bb47_crit_edge1337
    i8 -17, label %sw.bb40.sw.bb47_crit_edge1338
  ]

sw.bb40.sw.bb47_crit_edge1338:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1337:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1336:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1335:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1334:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1333:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1332:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1331:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1330:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1329:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1328:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1327:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1326:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1325:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1324:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1323:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1322:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1321:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1320:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1319:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1318:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1317:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1316:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1315:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1314:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1313:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1312:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1311:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1310:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1309:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1308:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1307:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1306:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1305:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1304:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1303:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1302:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1301:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1300:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1299:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1298:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1297:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1296:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1295:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1294:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1293:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1292:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge1291:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb47_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb47

sw.bb40.sw.bb43_crit_edge1290:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1289:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1288:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1287:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1286:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1285:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge1284:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb40.sw.bb43_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb40.sw.bb43_crit_edge, %sw.bb40.sw.bb43_crit_edge1284, %sw.bb40.sw.bb43_crit_edge1285, %sw.bb40.sw.bb43_crit_edge1286, %sw.bb40.sw.bb43_crit_edge1287, %sw.bb40.sw.bb43_crit_edge1288, %sw.bb40.sw.bb43_crit_edge1289, %sw.bb40.sw.bb43_crit_edge1290
  %22 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %done, align 4
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %sw.bb40.sw.bb47_crit_edge, %sw.bb40.sw.bb47_crit_edge1291, %sw.bb40.sw.bb47_crit_edge1292, %sw.bb40.sw.bb47_crit_edge1293, %sw.bb40.sw.bb47_crit_edge1294, %sw.bb40.sw.bb47_crit_edge1295, %sw.bb40.sw.bb47_crit_edge1296, %sw.bb40.sw.bb47_crit_edge1297, %sw.bb40.sw.bb47_crit_edge1298, %sw.bb40.sw.bb47_crit_edge1299, %sw.bb40.sw.bb47_crit_edge1300, %sw.bb40.sw.bb47_crit_edge1301, %sw.bb40.sw.bb47_crit_edge1302, %sw.bb40.sw.bb47_crit_edge1303, %sw.bb40.sw.bb47_crit_edge1304, %sw.bb40.sw.bb47_crit_edge1305, %sw.bb40.sw.bb47_crit_edge1306, %sw.bb40.sw.bb47_crit_edge1307, %sw.bb40.sw.bb47_crit_edge1308, %sw.bb40.sw.bb47_crit_edge1309, %sw.bb40.sw.bb47_crit_edge1310, %sw.bb40.sw.bb47_crit_edge1311, %sw.bb40.sw.bb47_crit_edge1312, %sw.bb40.sw.bb47_crit_edge1313, %sw.bb40.sw.bb47_crit_edge1314, %sw.bb40.sw.bb47_crit_edge1315, %sw.bb40.sw.bb47_crit_edge1316, %sw.bb40.sw.bb47_crit_edge1317, %sw.bb40.sw.bb47_crit_edge1318, %sw.bb40.sw.bb47_crit_edge1319, %sw.bb40.sw.bb47_crit_edge1320, %sw.bb40.sw.bb47_crit_edge1321, %sw.bb40.sw.bb47_crit_edge1322, %sw.bb40.sw.bb47_crit_edge1323, %sw.bb40.sw.bb47_crit_edge1324, %sw.bb40.sw.bb47_crit_edge1325, %sw.bb40.sw.bb47_crit_edge1326, %sw.bb40.sw.bb47_crit_edge1327, %sw.bb40.sw.bb47_crit_edge1328, %sw.bb40.sw.bb47_crit_edge1329, %sw.bb40.sw.bb47_crit_edge1330, %sw.bb40.sw.bb47_crit_edge1331, %sw.bb40.sw.bb47_crit_edge1332, %sw.bb40.sw.bb47_crit_edge1333, %sw.bb40.sw.bb47_crit_edge1334, %sw.bb40.sw.bb47_crit_edge1335, %sw.bb40.sw.bb47_crit_edge1336, %sw.bb40.sw.bb47_crit_edge1337, %sw.bb40.sw.bb47_crit_edge1338
  %23 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %found10, align 4
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx41, align 1
  %26 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %cid, align 4
  %inc52 = add nsw i32 %c.01028, 1
  br label %sw.epilog141

sw.default:                                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %found10, align 4
  br label %sw.epilog141

sw.bb54:                                          ; preds = %while.body
  %sub = sub i32 %count.tr, %c.01028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp55 = icmp sgt i32 %sub, 1
  %arrayidx58 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %28 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx58, align 1
  %30 = ptrtoint ptr %plen81 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %plen81, align 4
  br i1 %cmp55, label %if.then57, label %if.else72

if.then57:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %inc60 = add nsw i32 %c.01028, 1
  %arrayidx61 = getelementptr i8, ptr %buf.tr, i32 %inc60
  %31 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx61, align 1
  %33 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx82, align 1
  %inc64 = add i32 %c.01028, 2
  %34 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %found10, align 4
  %conv68 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv68, 8
  %conv71 = zext i8 %32 to i32
  %or = or i32 %shl, %conv71
  %35 = ptrtoint ptr %plength94 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %plength94, align 4
  br label %sw.epilog141

if.else72:                                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %found10, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx80 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %37 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx80, align 1
  %39 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx82, align 1
  %inc83 = add nsw i32 %c.01028, 1
  %40 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %found10, align 4
  %41 = ptrtoint ptr %plen81 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %plen81, align 4
  %conv88 = zext i8 %42 to i32
  %shl89 = shl nuw nsw i32 %conv88, 8
  %conv92 = zext i8 %38 to i32
  %or93 = or i32 %shl89, %conv92
  %43 = ptrtoint ptr %plength94 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or93, ptr %plength94, align 4
  br label %sw.epilog141

sw.bb95:                                          ; preds = %while.body
  %44 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool97.not = icmp eq i32 %45, 0
  br i1 %tobool97.not, label %if.then98, label %sw.bb95.sw.epilog141_crit_edge

sw.bb95.sw.epilog141_crit_edge:                   ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog141

if.then98:                                        ; preds = %sw.bb95
  %arrayidx99 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %46 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx99, align 1
  %48 = ptrtoint ptr %flag1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %flag1, align 2
  %inc100 = add nsw i32 %c.01028, 1
  %49 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %found10, align 4
  %50 = and i8 %47, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %50)
  %cmp105 = icmp eq i8 %50, -128
  br i1 %cmp105, label %if.then107, label %if.else109

if.then107:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %mpeg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %mpeg, align 4
  br label %sw.epilog141

if.else109:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %hlength136 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %hlength136, align 4
  %53 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %which, align 4
  %54 = ptrtoint ptr %mpeg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %mpeg, align 4
  %55 = ptrtoint ptr %flag2122 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %flag2122, align 1
  br label %sw.epilog141

sw.bb113:                                         ; preds = %while.body
  %56 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool115.not = icmp eq i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp118 = icmp eq i32 %1, 2
  %or.cond980 = select i1 %tobool115.not, i1 %cmp118, i1 false
  br i1 %or.cond980, label %if.then120, label %sw.bb113.sw.epilog141_crit_edge

sw.bb113.sw.epilog141_crit_edge:                  ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog141

if.then120:                                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx121 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %58 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx121, align 1
  %60 = ptrtoint ptr %flag2122 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %flag2122, align 1
  %inc123 = add nsw i32 %c.01028, 1
  %61 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %found10, align 4
  br label %sw.epilog141

sw.bb127:                                         ; preds = %while.body
  %62 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool129.not = icmp eq i32 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp132 = icmp eq i32 %1, 2
  %or.cond981 = select i1 %tobool129.not, i1 %cmp132, i1 false
  br i1 %or.cond981, label %if.then134, label %sw.bb127.sw.epilog141_crit_edge

sw.bb127.sw.epilog141_crit_edge:                  ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog141

if.then134:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx135 = getelementptr i8, ptr %buf.tr, i32 %c.01028
  %64 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx135, align 1
  %66 = ptrtoint ptr %hlength136 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %hlength136, align 4
  %inc137 = add nsw i32 %c.01028, 1
  %67 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 9, ptr %found10, align 4
  br label %sw.epilog141

sw.epilog141:                                     ; preds = %if.then134, %sw.bb127.sw.epilog141_crit_edge, %if.then120, %sw.bb113.sw.epilog141_crit_edge, %if.else109, %if.then107, %sw.bb95.sw.epilog141_crit_edge, %sw.bb79, %if.then57, %sw.default, %sw.bb47, %sw.bb20, %sw.bb, %while.body.sw.epilog141_crit_edge
  %c.1 = phi i32 [ %c.01028, %while.body.sw.epilog141_crit_edge ], [ %c.01028, %sw.bb127.sw.epilog141_crit_edge ], [ %inc137, %if.then134 ], [ %c.01028, %sw.bb113.sw.epilog141_crit_edge ], [ %inc123, %if.then120 ], [ %c.01028, %sw.bb95.sw.epilog141_crit_edge ], [ %inc100, %if.then107 ], [ %inc100, %if.else109 ], [ %inc83, %sw.bb79 ], [ %inc64, %if.then57 ], [ %c.01028, %sw.default ], [ %inc52, %sw.bb47 ], [ %inc39, %sw.bb20 ], [ %inc19, %sw.bb ]
  %cmp = icmp slt i32 %c.1, %count.tr
  br i1 %cmp, label %sw.epilog141.land.lhs.true_crit_edge, label %sw.epilog141.while.end_crit_edge

sw.epilog141.while.end_crit_edge:                 ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

sw.epilog141.land.lhs.true_crit_edge:             ; preds = %sw.epilog141
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

while.end:                                        ; preds = %sw.epilog141.while.end_crit_edge, %lor.rhs.while.end_crit_edge, %land.lhs.true9.while.end_crit_edge, %land.lhs.true4.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %tailrecurse.while.end_crit_edge
  %c.0.lcssa = phi i32 [ 0, %tailrecurse.while.end_crit_edge ], [ %c.01028, %land.lhs.true.while.end_crit_edge ], [ %c.01028, %land.lhs.true4.while.end_crit_edge ], [ %c.1, %sw.epilog141.while.end_crit_edge ], [ %c.01028, %land.lhs.true9.while.end_crit_edge ], [ %c.01028, %lor.rhs.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.lcssa, i32 %count.tr)
  %cmp142 = icmp eq i32 %c.0.lcssa, %count.tr
  br i1 %cmp142, label %while.end.cleanup_crit_edge, label %if.end145

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end145:                                        ; preds = %while.end
  %68 = ptrtoint ptr %plength94 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %plength94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool147.not = icmp eq i32 %69, 0
  br i1 %tobool147.not, label %if.then148, label %if.end145.if.end150_crit_edge

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %plength94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16776954, ptr %plength94, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end145.if.end150_crit_edge
  %71 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool152.not = icmp eq i32 %72, 0
  br i1 %tobool152.not, label %lor.lhs.false153, label %if.end150.if.then169_crit_edge

if.end150.if.then169_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

lor.lhs.false153:                                 ; preds = %if.end150
  %73 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mpeg, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %74, label %lor.lhs.false153.cleanup_crit_edge [
    i32 2, label %land.lhs.true157
    i32 1, label %land.lhs.true165
  ]

lor.lhs.false153.cleanup_crit_edge:               ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true157:                                 ; preds = %lor.lhs.false153
  %76 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %77)
  %cmp159 = icmp sgt i32 %77, 8
  br i1 %cmp159, label %land.lhs.true157.if.then169_crit_edge, label %land.lhs.true157.cleanup_crit_edge

land.lhs.true157.cleanup_crit_edge:               ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true157.if.then169_crit_edge:            ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

land.lhs.true165:                                 ; preds = %lor.lhs.false153
  %78 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %79)
  %cmp167 = icmp sgt i32 %79, 6
  br i1 %cmp167, label %land.lhs.true165.if.then169_crit_edge, label %land.lhs.true165.cleanup_crit_edge

land.lhs.true165.cleanup_crit_edge:               ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true165.if.then169_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then169

if.then169:                                       ; preds = %land.lhs.true165.if.then169_crit_edge, %land.lhs.true157.if.then169_crit_edge, %if.end150.if.then169_crit_edge
  %80 = ptrtoint ptr %cid to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cid, align 4
  %82 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %81, label %if.then169.sw.epilog462_crit_edge [
    i8 -67, label %if.then169.sw.bb174_crit_edge
    i8 -32, label %if.then169.sw.bb174_crit_edge1339
    i8 -31, label %if.then169.sw.bb174_crit_edge1340
    i8 -30, label %if.then169.sw.bb174_crit_edge1341
    i8 -29, label %if.then169.sw.bb174_crit_edge1342
    i8 -28, label %if.then169.sw.bb174_crit_edge1343
    i8 -27, label %if.then169.sw.bb174_crit_edge1344
    i8 -26, label %if.then169.sw.bb174_crit_edge1345
    i8 -25, label %if.then169.sw.bb174_crit_edge1346
    i8 -24, label %if.then169.sw.bb174_crit_edge1347
    i8 -23, label %if.then169.sw.bb174_crit_edge1348
    i8 -22, label %if.then169.sw.bb174_crit_edge1349
    i8 -21, label %if.then169.sw.bb174_crit_edge1350
    i8 -20, label %if.then169.sw.bb174_crit_edge1351
    i8 -19, label %if.then169.sw.bb174_crit_edge1352
    i8 -18, label %if.then169.sw.bb174_crit_edge1353
    i8 -17, label %if.then169.sw.bb174_crit_edge1354
    i8 -64, label %if.then169.sw.bb174_crit_edge1355
    i8 -63, label %if.then169.sw.bb174_crit_edge1356
    i8 -62, label %if.then169.sw.bb174_crit_edge1357
    i8 -61, label %if.then169.sw.bb174_crit_edge1358
    i8 -60, label %if.then169.sw.bb174_crit_edge1359
    i8 -59, label %if.then169.sw.bb174_crit_edge1360
    i8 -58, label %if.then169.sw.bb174_crit_edge1361
    i8 -57, label %if.then169.sw.bb174_crit_edge1362
    i8 -56, label %if.then169.sw.bb174_crit_edge1363
    i8 -55, label %if.then169.sw.bb174_crit_edge1364
    i8 -54, label %if.then169.sw.bb174_crit_edge1365
    i8 -53, label %if.then169.sw.bb174_crit_edge1366
    i8 -52, label %if.then169.sw.bb174_crit_edge1367
    i8 -51, label %if.then169.sw.bb174_crit_edge1368
    i8 -50, label %if.then169.sw.bb174_crit_edge1369
    i8 -49, label %if.then169.sw.bb174_crit_edge1370
    i8 -48, label %if.then169.sw.bb174_crit_edge1371
    i8 -47, label %if.then169.sw.bb174_crit_edge1372
    i8 -46, label %if.then169.sw.bb174_crit_edge1373
    i8 -45, label %if.then169.sw.bb174_crit_edge1374
    i8 -44, label %if.then169.sw.bb174_crit_edge1375
    i8 -43, label %if.then169.sw.bb174_crit_edge1376
    i8 -42, label %if.then169.sw.bb174_crit_edge1377
    i8 -41, label %if.then169.sw.bb174_crit_edge1378
    i8 -40, label %if.then169.sw.bb174_crit_edge1379
    i8 -39, label %if.then169.sw.bb174_crit_edge1380
    i8 -38, label %if.then169.sw.bb174_crit_edge1381
    i8 -37, label %if.then169.sw.bb174_crit_edge1382
    i8 -36, label %if.then169.sw.bb174_crit_edge1383
    i8 -35, label %if.then169.sw.bb174_crit_edge1384
    i8 -34, label %if.then169.sw.bb174_crit_edge1385
    i8 -33, label %if.then169.sw.bb174_crit_edge1386
  ]

if.then169.sw.bb174_crit_edge1386:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1385:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1384:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1383:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1382:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1381:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1380:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1379:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1378:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1377:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1376:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1375:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1374:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1373:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1372:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1371:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1370:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1369:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1368:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1367:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1366:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1365:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1364:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1363:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1362:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1361:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1360:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1359:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1358:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1357:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1356:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1355:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1354:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1353:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1352:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1351:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1350:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1349:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1348:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1347:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1346:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1345:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1344:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1343:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1342:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1341:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1340:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge1339:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.bb174_crit_edge:                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb174

if.then169.sw.epilog462_crit_edge:                ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog462

sw.bb174:                                         ; preds = %if.then169.sw.bb174_crit_edge, %if.then169.sw.bb174_crit_edge1339, %if.then169.sw.bb174_crit_edge1340, %if.then169.sw.bb174_crit_edge1341, %if.then169.sw.bb174_crit_edge1342, %if.then169.sw.bb174_crit_edge1343, %if.then169.sw.bb174_crit_edge1344, %if.then169.sw.bb174_crit_edge1345, %if.then169.sw.bb174_crit_edge1346, %if.then169.sw.bb174_crit_edge1347, %if.then169.sw.bb174_crit_edge1348, %if.then169.sw.bb174_crit_edge1349, %if.then169.sw.bb174_crit_edge1350, %if.then169.sw.bb174_crit_edge1351, %if.then169.sw.bb174_crit_edge1352, %if.then169.sw.bb174_crit_edge1353, %if.then169.sw.bb174_crit_edge1354, %if.then169.sw.bb174_crit_edge1355, %if.then169.sw.bb174_crit_edge1356, %if.then169.sw.bb174_crit_edge1357, %if.then169.sw.bb174_crit_edge1358, %if.then169.sw.bb174_crit_edge1359, %if.then169.sw.bb174_crit_edge1360, %if.then169.sw.bb174_crit_edge1361, %if.then169.sw.bb174_crit_edge1362, %if.then169.sw.bb174_crit_edge1363, %if.then169.sw.bb174_crit_edge1364, %if.then169.sw.bb174_crit_edge1365, %if.then169.sw.bb174_crit_edge1366, %if.then169.sw.bb174_crit_edge1367, %if.then169.sw.bb174_crit_edge1368, %if.then169.sw.bb174_crit_edge1369, %if.then169.sw.bb174_crit_edge1370, %if.then169.sw.bb174_crit_edge1371, %if.then169.sw.bb174_crit_edge1372, %if.then169.sw.bb174_crit_edge1373, %if.then169.sw.bb174_crit_edge1374, %if.then169.sw.bb174_crit_edge1375, %if.then169.sw.bb174_crit_edge1376, %if.then169.sw.bb174_crit_edge1377, %if.then169.sw.bb174_crit_edge1378, %if.then169.sw.bb174_crit_edge1379, %if.then169.sw.bb174_crit_edge1380, %if.then169.sw.bb174_crit_edge1381, %if.then169.sw.bb174_crit_edge1382, %if.then169.sw.bb174_crit_edge1383, %if.then169.sw.bb174_crit_edge1384, %if.then169.sw.bb174_crit_edge1385, %if.then169.sw.bb174_crit_edge1386
  %83 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp176 = icmp eq i32 %84, 2
  br i1 %cmp176, label %land.lhs.true178, label %sw.bb174.if.end186_crit_edge

sw.bb174.if.end186_crit_edge:                     ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186

land.lhs.true178:                                 ; preds = %sw.bb174
  %85 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %86)
  %cmp180 = icmp eq i32 %86, 9
  br i1 %cmp180, label %land.lhs.true178.tailrecurse.i_crit_edge, label %land.lhs.true178.if.end186thread-pre-split_crit_edge

land.lhs.true178.if.end186thread-pre-split_crit_edge: ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186thread-pre-split

land.lhs.true178.tailrecurse.i_crit_edge:         ; preds = %land.lhs.true178
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.then19.i, %land.lhs.true178.tailrecurse.i_crit_edge
  %data.tr.i = phi ptr [ %add.ptr20.i, %if.then19.i ], [ %flag1, %land.lhs.true178.tailrecurse.i_crit_edge ]
  %count.tr.i = phi i32 [ %sub17.i, %if.then19.i ], [ 1, %land.lhs.true178.tailrecurse.i_crit_edge ]
  %87 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %88)
  %cmp.i = icmp slt i32 %88, 6
  br i1 %cmp.i, label %if.then.i, label %tailrecurse.i.if.end.i_crit_edge

tailrecurse.i.if.end.i_crit_edge:                 ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %buf.i, align 4
  %91 = call ptr @memcpy(ptr %90, ptr @__const.write_ipack.headr, i32 3)
  %92 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %tailrecurse.i.if.end.i_crit_edge
  %93 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %count1.i, align 4
  %add.i = add i32 %94, %count.tr.i
  %95 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %96)
  %cmp4.i = icmp slt i32 %add.i, %96
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %98, i32 %94
  %99 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.tr.i, i32 %count.tr.i)
  %100 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %count1.i, align 4
  %add9.i = add i32 %101, %count.tr.i
  store i32 %add9.i, ptr %count1.i, align 4
  br label %tailrecurse.i802.preheader

tailrecurse.i802.preheader:                       ; preds = %if.else.i.tailrecurse.i802.preheader_crit_edge, %if.then5.i
  br label %tailrecurse.i802

if.else.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %96, %94
  %102 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %103, i32 %94
  %104 = call ptr @memcpy(ptr %add.ptr14.i, ptr %data.tr.i, i32 %sub.i)
  %105 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %count1.i, align 4
  %add16.i = add i32 %106, %sub.i
  store i32 %add16.i, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i = sub i32 %count.tr.i, %sub.i
  %cmp18.i = icmp sgt i32 %sub17.i, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i.tailrecurse.i802.preheader_crit_edge

if.else.i.tailrecurse.i802.preheader_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tailrecurse.i802.preheader

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i = getelementptr i8, ptr %data.tr.i, i32 %sub.i
  br label %tailrecurse.i

tailrecurse.i802:                                 ; preds = %if.then19.i817, %tailrecurse.i802.preheader
  %data.tr.i799 = phi ptr [ %add.ptr20.i816, %if.then19.i817 ], [ %flag2122, %tailrecurse.i802.preheader ]
  %count.tr.i800 = phi i32 [ %sub17.i813, %if.then19.i817 ], [ 1, %tailrecurse.i802.preheader ]
  %107 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %cmp.i801 = icmp slt i32 %108, 6
  br i1 %cmp.i801, label %if.then.i803, label %tailrecurse.i802.if.end.i806_crit_edge

tailrecurse.i802.if.end.i806_crit_edge:           ; preds = %tailrecurse.i802
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i806

if.then.i803:                                     ; preds = %tailrecurse.i802
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %buf.i, align 4
  %111 = call ptr @memcpy(ptr %110, ptr @__const.write_ipack.headr, i32 3)
  %112 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i806

if.end.i806:                                      ; preds = %if.then.i803, %tailrecurse.i802.if.end.i806_crit_edge
  %113 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %count1.i, align 4
  %add.i804 = add i32 %114, %count.tr.i800
  %115 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i804, i32 %116)
  %cmp4.i805 = icmp slt i32 %add.i804, %116
  br i1 %cmp4.i805, label %if.then5.i809, label %if.else.i815

if.then5.i809:                                    ; preds = %if.end.i806
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %buf.i, align 4
  %add.ptr.i807 = getelementptr i8, ptr %118, i32 %114
  %119 = call ptr @memcpy(ptr %add.ptr.i807, ptr %data.tr.i799, i32 %count.tr.i800)
  %120 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %count1.i, align 4
  %add9.i808 = add i32 %121, %count.tr.i800
  store i32 %add9.i808, ptr %count1.i, align 4
  br label %tailrecurse.i824.preheader

tailrecurse.i824.preheader:                       ; preds = %if.else.i815.tailrecurse.i824.preheader_crit_edge, %if.then5.i809
  br label %tailrecurse.i824

if.else.i815:                                     ; preds = %if.end.i806
  %sub.i810 = sub i32 %116, %114
  %122 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i811 = getelementptr i8, ptr %123, i32 %114
  %124 = call ptr @memcpy(ptr %add.ptr14.i811, ptr %data.tr.i799, i32 %sub.i810)
  %125 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %count1.i, align 4
  %add16.i812 = add i32 %126, %sub.i810
  store i32 %add16.i812, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i813 = sub i32 %count.tr.i800, %sub.i810
  %cmp18.i814 = icmp sgt i32 %sub17.i813, 0
  br i1 %cmp18.i814, label %if.then19.i817, label %if.else.i815.tailrecurse.i824.preheader_crit_edge

if.else.i815.tailrecurse.i824.preheader_crit_edge: ; preds = %if.else.i815
  call void @__sanitizer_cov_trace_pc() #8
  br label %tailrecurse.i824.preheader

if.then19.i817:                                   ; preds = %if.else.i815
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i816 = getelementptr i8, ptr %data.tr.i799, i32 %sub.i810
  br label %tailrecurse.i802

tailrecurse.i824:                                 ; preds = %if.then19.i839, %tailrecurse.i824.preheader
  %data.tr.i821 = phi ptr [ %add.ptr20.i838, %if.then19.i839 ], [ %hlength136, %tailrecurse.i824.preheader ]
  %count.tr.i822 = phi i32 [ %sub17.i835, %if.then19.i839 ], [ 1, %tailrecurse.i824.preheader ]
  %127 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %128)
  %cmp.i823 = icmp slt i32 %128, 6
  br i1 %cmp.i823, label %if.then.i825, label %tailrecurse.i824.if.end.i828_crit_edge

tailrecurse.i824.if.end.i828_crit_edge:           ; preds = %tailrecurse.i824
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i828

if.then.i825:                                     ; preds = %tailrecurse.i824
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buf.i, align 4
  %131 = call ptr @memcpy(ptr %130, ptr @__const.write_ipack.headr, i32 3)
  %132 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i828

if.end.i828:                                      ; preds = %if.then.i825, %tailrecurse.i824.if.end.i828_crit_edge
  %133 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %count1.i, align 4
  %add.i826 = add i32 %134, %count.tr.i822
  %135 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i826, i32 %136)
  %cmp4.i827 = icmp slt i32 %add.i826, %136
  br i1 %cmp4.i827, label %if.then5.i831, label %if.else.i837

if.then5.i831:                                    ; preds = %if.end.i828
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %buf.i, align 4
  %add.ptr.i829 = getelementptr i8, ptr %138, i32 %134
  %139 = call ptr @memcpy(ptr %add.ptr.i829, ptr %data.tr.i821, i32 %count.tr.i822)
  %140 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %count1.i, align 4
  %add9.i830 = add i32 %141, %count.tr.i822
  store i32 %add9.i830, ptr %count1.i, align 4
  br label %if.end186thread-pre-split

if.else.i837:                                     ; preds = %if.end.i828
  %sub.i832 = sub i32 %136, %134
  %142 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i833 = getelementptr i8, ptr %143, i32 %134
  %144 = call ptr @memcpy(ptr %add.ptr14.i833, ptr %data.tr.i821, i32 %sub.i832)
  %145 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %count1.i, align 4
  %add16.i834 = add i32 %146, %sub.i832
  store i32 %add16.i834, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i835 = sub i32 %count.tr.i822, %sub.i832
  %cmp18.i836 = icmp sgt i32 %sub17.i835, 0
  br i1 %cmp18.i836, label %if.then19.i839, label %if.else.i837.if.end186thread-pre-split_crit_edge

if.else.i837.if.end186thread-pre-split_crit_edge: ; preds = %if.else.i837
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end186thread-pre-split

if.then19.i839:                                   ; preds = %if.else.i837
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i838 = getelementptr i8, ptr %data.tr.i821, i32 %sub.i832
  br label %tailrecurse.i824

if.end186thread-pre-split:                        ; preds = %if.else.i837.if.end186thread-pre-split_crit_edge, %if.then5.i831, %land.lhs.true178.if.end186thread-pre-split_crit_edge
  %147 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr = load i32, ptr %mpeg, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.end186thread-pre-split, %sw.bb174.if.end186_crit_edge
  %148 = phi i32 [ %.pr, %if.end186thread-pre-split ], [ %84, %sw.bb174.if.end186_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp188 = icmp eq i32 %148, 1
  br i1 %cmp188, label %land.lhs.true190, label %if.end186.if.end196_crit_edge

if.end186.if.end196_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

land.lhs.true190:                                 ; preds = %if.end186
  %149 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %150)
  %cmp192 = icmp eq i32 %150, 7
  br i1 %cmp192, label %land.lhs.true190.tailrecurse.i846_crit_edge, label %land.lhs.true190.if.end196_crit_edge

land.lhs.true190.if.end196_crit_edge:             ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

land.lhs.true190.tailrecurse.i846_crit_edge:      ; preds = %land.lhs.true190
  br label %tailrecurse.i846

tailrecurse.i846:                                 ; preds = %if.then19.i861, %land.lhs.true190.tailrecurse.i846_crit_edge
  %data.tr.i843 = phi ptr [ %add.ptr20.i860, %if.then19.i861 ], [ %flag1, %land.lhs.true190.tailrecurse.i846_crit_edge ]
  %count.tr.i844 = phi i32 [ %sub17.i857, %if.then19.i861 ], [ 1, %land.lhs.true190.tailrecurse.i846_crit_edge ]
  %151 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %152)
  %cmp.i845 = icmp slt i32 %152, 6
  br i1 %cmp.i845, label %if.then.i847, label %tailrecurse.i846.if.end.i850_crit_edge

tailrecurse.i846.if.end.i850_crit_edge:           ; preds = %tailrecurse.i846
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i850

if.then.i847:                                     ; preds = %tailrecurse.i846
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %buf.i, align 4
  %155 = call ptr @memcpy(ptr %154, ptr @__const.write_ipack.headr, i32 3)
  %156 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i850

if.end.i850:                                      ; preds = %if.then.i847, %tailrecurse.i846.if.end.i850_crit_edge
  %157 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %count1.i, align 4
  %add.i848 = add i32 %158, %count.tr.i844
  %159 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i848, i32 %160)
  %cmp4.i849 = icmp slt i32 %add.i848, %160
  br i1 %cmp4.i849, label %if.then5.i853, label %if.else.i859

if.then5.i853:                                    ; preds = %if.end.i850
  call void @__sanitizer_cov_trace_pc() #8
  %161 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %buf.i, align 4
  %add.ptr.i851 = getelementptr i8, ptr %162, i32 %158
  %163 = call ptr @memcpy(ptr %add.ptr.i851, ptr %data.tr.i843, i32 %count.tr.i844)
  %164 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %count1.i, align 4
  %add9.i852 = add i32 %165, %count.tr.i844
  store i32 %add9.i852, ptr %count1.i, align 4
  br label %if.end196

if.else.i859:                                     ; preds = %if.end.i850
  %sub.i854 = sub i32 %160, %158
  %166 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i855 = getelementptr i8, ptr %167, i32 %158
  %168 = call ptr @memcpy(ptr %add.ptr14.i855, ptr %data.tr.i843, i32 %sub.i854)
  %169 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %count1.i, align 4
  %add16.i856 = add i32 %170, %sub.i854
  store i32 %add16.i856, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i857 = sub i32 %count.tr.i844, %sub.i854
  %cmp18.i858 = icmp sgt i32 %sub17.i857, 0
  br i1 %cmp18.i858, label %if.then19.i861, label %if.else.i859.if.end196_crit_edge

if.else.i859.if.end196_crit_edge:                 ; preds = %if.else.i859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then19.i861:                                   ; preds = %if.else.i859
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i860 = getelementptr i8, ptr %data.tr.i843, i32 %sub.i854
  br label %tailrecurse.i846

if.end196:                                        ; preds = %if.else.i859.if.end196_crit_edge, %if.then5.i853, %land.lhs.true190.if.end196_crit_edge, %if.end186.if.end196_crit_edge
  %171 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mpeg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %172)
  %cmp198 = icmp eq i32 %172, 2
  br i1 %cmp198, label %land.lhs.true200, label %if.end196.if.end231_crit_edge

if.end196.if.end231_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231

land.lhs.true200:                                 ; preds = %if.end196
  %173 = ptrtoint ptr %flag2122 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %flag2122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %174)
  %tobool204.not = icmp sgt i8 %174, -1
  br i1 %tobool204.not, label %land.lhs.true200.if.end231thread-pre-split_crit_edge, label %land.lhs.true205

land.lhs.true200.if.end231thread-pre-split_crit_edge: ; preds = %land.lhs.true200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231thread-pre-split

land.lhs.true205:                                 ; preds = %land.lhs.true200
  %175 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %176)
  %cmp207 = icmp slt i32 %176, 14
  br i1 %cmp207, label %while.cond210.preheader, label %land.lhs.true205.if.end231thread-pre-split_crit_edge

land.lhs.true205.if.end231thread-pre-split_crit_edge: ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231thread-pre-split

while.cond210.preheader:                          ; preds = %land.lhs.true205
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.lcssa, i32 %count.tr)
  %cmp2111034 = icmp slt i32 %c.0.lcssa, %count.tr
  br i1 %cmp2111034, label %while.cond210.preheader.land.rhs213_crit_edge, label %while.cond210.preheader.while.end226_crit_edge

while.cond210.preheader.while.end226_crit_edge:   ; preds = %while.cond210.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end226

while.cond210.preheader.land.rhs213_crit_edge:    ; preds = %while.cond210.preheader
  br label %land.rhs213

land.rhs213:                                      ; preds = %write_ipack.exit884.land.rhs213_crit_edge, %while.cond210.preheader.land.rhs213_crit_edge
  %177 = phi i32 [ %inc225, %write_ipack.exit884.land.rhs213_crit_edge ], [ %176, %while.cond210.preheader.land.rhs213_crit_edge ]
  %c.21035 = phi i32 [ %inc223, %write_ipack.exit884.land.rhs213_crit_edge ], [ %c.0.lcssa, %while.cond210.preheader.land.rhs213_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %177)
  %cmp215 = icmp slt i32 %177, 14
  br i1 %cmp215, label %while.body218, label %land.rhs213.while.end226_crit_edge

land.rhs213.while.end226_crit_edge:               ; preds = %land.rhs213
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end226

while.body218:                                    ; preds = %land.rhs213
  %arrayidx219 = getelementptr i8, ptr %buf.tr, i32 %c.21035
  %178 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx219, align 1
  %sub221 = add i32 %177, -9
  %arrayidx222 = getelementptr %struct.ipack, ptr %p, i32 0, i32 9, i32 %sub221
  %180 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %179, ptr %arrayidx222, align 1
  br label %tailrecurse.i868

tailrecurse.i868:                                 ; preds = %if.then19.i883, %while.body218
  %data.tr.i865 = phi ptr [ %arrayidx219, %while.body218 ], [ %add.ptr20.i882, %if.then19.i883 ]
  %count.tr.i866 = phi i32 [ 1, %while.body218 ], [ %sub17.i879, %if.then19.i883 ]
  %181 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %182)
  %cmp.i867 = icmp slt i32 %182, 6
  br i1 %cmp.i867, label %if.then.i869, label %tailrecurse.i868.if.end.i872_crit_edge

tailrecurse.i868.if.end.i872_crit_edge:           ; preds = %tailrecurse.i868
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i872

if.then.i869:                                     ; preds = %tailrecurse.i868
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %buf.i, align 4
  %185 = call ptr @memcpy(ptr %184, ptr @__const.write_ipack.headr, i32 3)
  %186 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i872

if.end.i872:                                      ; preds = %if.then.i869, %tailrecurse.i868.if.end.i872_crit_edge
  %187 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %count1.i, align 4
  %add.i870 = add i32 %188, %count.tr.i866
  %189 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i870, i32 %190)
  %cmp4.i871 = icmp slt i32 %add.i870, %190
  br i1 %cmp4.i871, label %if.then5.i875, label %if.else.i881

if.then5.i875:                                    ; preds = %if.end.i872
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %buf.i, align 4
  %add.ptr.i873 = getelementptr i8, ptr %192, i32 %188
  %193 = call ptr @memcpy(ptr %add.ptr.i873, ptr %data.tr.i865, i32 %count.tr.i866)
  %194 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %count1.i, align 4
  %add9.i874 = add i32 %195, %count.tr.i866
  store i32 %add9.i874, ptr %count1.i, align 4
  br label %write_ipack.exit884

if.else.i881:                                     ; preds = %if.end.i872
  %sub.i876 = sub i32 %190, %188
  %196 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i877 = getelementptr i8, ptr %197, i32 %188
  %198 = call ptr @memcpy(ptr %add.ptr14.i877, ptr %data.tr.i865, i32 %sub.i876)
  %199 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %count1.i, align 4
  %add16.i878 = add i32 %200, %sub.i876
  store i32 %add16.i878, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i879 = sub i32 %count.tr.i866, %sub.i876
  %cmp18.i880 = icmp sgt i32 %sub17.i879, 0
  br i1 %cmp18.i880, label %if.then19.i883, label %if.else.i881.write_ipack.exit884_crit_edge

if.else.i881.write_ipack.exit884_crit_edge:       ; preds = %if.else.i881
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_ipack.exit884

if.then19.i883:                                   ; preds = %if.else.i881
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i882 = getelementptr i8, ptr %data.tr.i865, i32 %sub.i876
  br label %tailrecurse.i868

write_ipack.exit884:                              ; preds = %if.else.i881.write_ipack.exit884_crit_edge, %if.then5.i875
  %inc223 = add nsw i32 %c.21035, 1
  %201 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %found10, align 4
  %inc225 = add i32 %202, 1
  store i32 %inc225, ptr %found10, align 4
  %exitcond.not = icmp eq i32 %inc223, %count.tr
  br i1 %exitcond.not, label %write_ipack.exit884.cleanup_crit_edge, label %write_ipack.exit884.land.rhs213_crit_edge

write_ipack.exit884.land.rhs213_crit_edge:        ; preds = %write_ipack.exit884
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs213

write_ipack.exit884.cleanup_crit_edge:            ; preds = %write_ipack.exit884
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end226:                                     ; preds = %land.rhs213.while.end226_crit_edge, %while.cond210.preheader.while.end226_crit_edge
  %c.2.lcssa = phi i32 [ %c.0.lcssa, %while.cond210.preheader.while.end226_crit_edge ], [ %c.21035, %land.rhs213.while.end226_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.2.lcssa, i32 %count.tr)
  %cmp227 = icmp eq i32 %c.2.lcssa, %count.tr
  br i1 %cmp227, label %while.end226.cleanup_crit_edge, label %while.end226.if.end231thread-pre-split_crit_edge

while.end226.if.end231thread-pre-split_crit_edge: ; preds = %while.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end231thread-pre-split

while.end226.cleanup_crit_edge:                   ; preds = %while.end226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end231thread-pre-split:                        ; preds = %while.end226.if.end231thread-pre-split_crit_edge, %land.lhs.true205.if.end231thread-pre-split_crit_edge, %land.lhs.true200.if.end231thread-pre-split_crit_edge
  %c.3.ph = phi i32 [ %c.0.lcssa, %land.lhs.true200.if.end231thread-pre-split_crit_edge ], [ %c.0.lcssa, %land.lhs.true205.if.end231thread-pre-split_crit_edge ], [ %c.2.lcssa, %while.end226.if.end231thread-pre-split_crit_edge ]
  %203 = ptrtoint ptr %mpeg to i32
  call void @__asan_load4_noabort(i32 %203)
  %.pr975 = load i32, ptr %mpeg, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.end231thread-pre-split, %if.end196.if.end231_crit_edge
  %204 = phi i32 [ %.pr975, %if.end231thread-pre-split ], [ %172, %if.end196.if.end231_crit_edge ]
  %c.3 = phi i32 [ %c.3.ph, %if.end231thread-pre-split ], [ %c.0.lcssa, %if.end196.if.end231_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %cmp233 = icmp eq i32 %204, 1
  br i1 %cmp233, label %land.lhs.true235, label %if.end231.if.end432_crit_edge

if.end231.if.end432_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

land.lhs.true235:                                 ; preds = %if.end231
  %205 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %206)
  %cmp237 = icmp slt i32 %206, 2000
  br i1 %cmp237, label %if.then239, label %land.lhs.true235.if.end432_crit_edge

land.lhs.true235.if.end432_crit_edge:             ; preds = %land.lhs.true235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

if.then239:                                       ; preds = %land.lhs.true235
  %207 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %found10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %208)
  %cmp241 = icmp eq i32 %208, 7
  br i1 %cmp241, label %if.then243, label %if.then239.if.end246_crit_edge

if.then239.if.end246_crit_edge:                   ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end246

if.then243:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %flag1 to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %flag1, align 2
  %211 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %210, ptr %check, align 4
  %212 = ptrtoint ptr %hlength136 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %hlength136, align 4
  br label %if.end246

if.end246:                                        ; preds = %if.then243, %if.then239.if.end246_crit_edge
  %213 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool249.not1038 = icmp eq i32 %214, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %c.3, i32 %count.tr)
  %cmp2511039 = icmp slt i32 %c.3, %count.tr
  %or.cond1040 = select i1 %tobool249.not1038, i1 %cmp2511039, i1 false
  br i1 %or.cond1040, label %if.end246.land.rhs253_crit_edge, label %if.end246.while.end268_crit_edge

if.end246.while.end268_crit_edge:                 ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end268

if.end246.land.rhs253_crit_edge:                  ; preds = %if.end246
  br label %land.rhs253

land.rhs253:                                      ; preds = %write_ipack.exit906.land.rhs253_crit_edge, %if.end246.land.rhs253_crit_edge
  %c.41041 = phi i32 [ %inc263, %write_ipack.exit906.land.rhs253_crit_edge ], [ %c.3, %if.end246.land.rhs253_crit_edge ]
  %215 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %check, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %216)
  %cmp256 = icmp eq i8 %216, -1
  br i1 %cmp256, label %while.body259, label %land.rhs253.while.end268_crit_edge

land.rhs253.while.end268_crit_edge:               ; preds = %land.rhs253
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end268

while.body259:                                    ; preds = %land.rhs253
  %arrayidx260 = getelementptr i8, ptr %buf.tr, i32 %c.41041
  %217 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx260, align 1
  %219 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %check, align 4
  br label %tailrecurse.i890

tailrecurse.i890:                                 ; preds = %if.then19.i905, %while.body259
  %data.tr.i887 = phi ptr [ %arrayidx260, %while.body259 ], [ %add.ptr20.i904, %if.then19.i905 ]
  %count.tr.i888 = phi i32 [ 1, %while.body259 ], [ %sub17.i901, %if.then19.i905 ]
  %220 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %221)
  %cmp.i889 = icmp slt i32 %221, 6
  br i1 %cmp.i889, label %if.then.i891, label %tailrecurse.i890.if.end.i894_crit_edge

tailrecurse.i890.if.end.i894_crit_edge:           ; preds = %tailrecurse.i890
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i894

if.then.i891:                                     ; preds = %tailrecurse.i890
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %buf.i, align 4
  %224 = call ptr @memcpy(ptr %223, ptr @__const.write_ipack.headr, i32 3)
  %225 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i894

if.end.i894:                                      ; preds = %if.then.i891, %tailrecurse.i890.if.end.i894_crit_edge
  %226 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %count1.i, align 4
  %add.i892 = add i32 %227, %count.tr.i888
  %228 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i892, i32 %229)
  %cmp4.i893 = icmp slt i32 %add.i892, %229
  br i1 %cmp4.i893, label %if.then5.i897, label %if.else.i903

if.then5.i897:                                    ; preds = %if.end.i894
  call void @__sanitizer_cov_trace_pc() #8
  %230 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %buf.i, align 4
  %add.ptr.i895 = getelementptr i8, ptr %231, i32 %227
  %232 = call ptr @memcpy(ptr %add.ptr.i895, ptr %data.tr.i887, i32 %count.tr.i888)
  %233 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %count1.i, align 4
  %add9.i896 = add i32 %234, %count.tr.i888
  store i32 %add9.i896, ptr %count1.i, align 4
  br label %write_ipack.exit906

if.else.i903:                                     ; preds = %if.end.i894
  %sub.i898 = sub i32 %229, %227
  %235 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i899 = getelementptr i8, ptr %236, i32 %227
  %237 = call ptr @memcpy(ptr %add.ptr14.i899, ptr %data.tr.i887, i32 %sub.i898)
  %238 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %count1.i, align 4
  %add16.i900 = add i32 %239, %sub.i898
  store i32 %add16.i900, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i901 = sub i32 %count.tr.i888, %sub.i898
  %cmp18.i902 = icmp sgt i32 %sub17.i901, 0
  br i1 %cmp18.i902, label %if.then19.i905, label %if.else.i903.write_ipack.exit906_crit_edge

if.else.i903.write_ipack.exit906_crit_edge:       ; preds = %if.else.i903
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_ipack.exit906

if.then19.i905:                                   ; preds = %if.else.i903
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i904 = getelementptr i8, ptr %data.tr.i887, i32 %sub.i898
  br label %tailrecurse.i890

write_ipack.exit906:                              ; preds = %if.else.i903.write_ipack.exit906_crit_edge, %if.then5.i897
  %inc263 = add nsw i32 %c.41041, 1
  %240 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %found10, align 4
  %inc265 = add i32 %241, 1
  store i32 %inc265, ptr %found10, align 4
  %242 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %hlength136, align 4
  %inc267 = add i8 %243, 1
  store i8 %inc267, ptr %hlength136, align 4
  %244 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool249.not = icmp eq i32 %245, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc263, i32 %count.tr)
  %cmp251 = icmp slt i32 %inc263, %count.tr
  %or.cond = select i1 %tobool249.not, i1 %cmp251, i1 false
  br i1 %or.cond, label %write_ipack.exit906.land.rhs253_crit_edge, label %write_ipack.exit906.while.end268_crit_edge

write_ipack.exit906.while.end268_crit_edge:       ; preds = %write_ipack.exit906
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end268

write_ipack.exit906.land.rhs253_crit_edge:        ; preds = %write_ipack.exit906
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs253

while.end268:                                     ; preds = %write_ipack.exit906.while.end268_crit_edge, %land.rhs253.while.end268_crit_edge, %if.end246.while.end268_crit_edge
  %c.4.lcssa = phi i32 [ %c.3, %if.end246.while.end268_crit_edge ], [ %inc263, %write_ipack.exit906.while.end268_crit_edge ], [ %c.41041, %land.rhs253.while.end268_crit_edge ]
  %tobool249.not.lcssa = phi i1 [ %tobool249.not1038, %if.end246.while.end268_crit_edge ], [ %tobool249.not, %write_ipack.exit906.while.end268_crit_edge ], [ true, %land.rhs253.while.end268_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.4.lcssa, i32 %count.tr)
  %cmp269 = icmp eq i32 %c.4.lcssa, %count.tr
  br i1 %cmp269, label %while.end268.cleanup_crit_edge, label %if.end272

while.end268.cleanup_crit_edge:                   ; preds = %while.end268
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end272:                                        ; preds = %while.end268
  %246 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %check, align 4
  %248 = and i8 %247, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %248)
  %cmp276 = icmp ne i8 %248, 64
  %tobool249.not.not = xor i1 %tobool249.not.lcssa, true
  %brmerge = select i1 %cmp276, i1 true, i1 %tobool249.not.not
  br i1 %brmerge, label %if.end308, label %if.then281

if.then281:                                       ; preds = %if.end272
  %arrayidx282 = getelementptr i8, ptr %buf.tr, i32 %c.4.lcssa
  %249 = ptrtoint ptr %arrayidx282 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %arrayidx282, align 1
  %251 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %check, align 4
  tail call fastcc void @write_ipack(ptr noundef %p, ptr noundef %arrayidx282, i32 noundef 1)
  %inc285 = add i32 %c.4.lcssa, 1
  %252 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %found10, align 4
  %inc287 = add i32 %253, 1
  store i32 %inc287, ptr %found10, align 4
  %254 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %hlength136, align 4
  %inc289 = add i8 %255, 1
  store i8 %inc289, ptr %hlength136, align 4
  %256 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %which, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc285, i32 %count.tr)
  %cmp291 = icmp eq i32 %inc285, %count.tr
  br i1 %cmp291, label %if.then281.cleanup_crit_edge, label %if.end294

if.then281.cleanup_crit_edge:                     ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end294:                                        ; preds = %if.then281
  %arrayidx295 = getelementptr i8, ptr %buf.tr, i32 %inc285
  %257 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %arrayidx295, align 1
  %259 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %258, ptr %check, align 4
  tail call fastcc void @write_ipack(ptr noundef %p, ptr noundef %arrayidx295, i32 noundef 1)
  %inc298 = add i32 %c.4.lcssa, 2
  %260 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %found10, align 4
  %inc300 = add i32 %261, 1
  store i32 %inc300, ptr %found10, align 4
  %262 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %hlength136, align 4
  %inc302 = add i8 %263, 1
  store i8 %inc302, ptr %hlength136, align 4
  %264 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 2, ptr %which, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc298, i32 %count.tr)
  %cmp304 = icmp eq i32 %inc298, %count.tr
  br i1 %cmp304, label %if.end294.cleanup_crit_edge, label %if.end294.if.end326_crit_edge

if.end294.if.end326_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end326

if.end294.cleanup_crit_edge:                      ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end308:                                        ; preds = %if.end272
  %265 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %265)
  %.pr976 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr976)
  %cmp310 = icmp eq i32 %.pr976, 1
  br i1 %cmp310, label %if.then312, label %if.end308.if.end326_crit_edge

if.end308.if.end326_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end326

if.then312:                                       ; preds = %if.end308
  %arrayidx313 = getelementptr i8, ptr %buf.tr, i32 %c.4.lcssa
  %266 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %arrayidx313, align 1
  %268 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 %267, ptr %check, align 4
  tail call fastcc void @write_ipack(ptr noundef %p, ptr noundef %arrayidx313, i32 noundef 1)
  %inc316 = add i32 %c.4.lcssa, 1
  %269 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %found10, align 4
  %inc318 = add i32 %270, 1
  store i32 %inc318, ptr %found10, align 4
  %271 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %hlength136, align 4
  %inc320 = add i8 %272, 1
  store i8 %inc320, ptr %hlength136, align 4
  %273 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 2, ptr %which, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc316, i32 %count.tr)
  %cmp322 = icmp eq i32 %inc316, %count.tr
  br i1 %cmp322, label %if.then312.cleanup_crit_edge, label %if.then312.if.end326_crit_edge

if.then312.if.end326_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end326

if.then312.cleanup_crit_edge:                     ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end326:                                        ; preds = %if.then312.if.end326_crit_edge, %if.end308.if.end326_crit_edge, %if.end294.if.end326_crit_edge
  %c.6 = phi i32 [ %inc316, %if.then312.if.end326_crit_edge ], [ %c.4.lcssa, %if.end308.if.end326_crit_edge ], [ %inc298, %if.end294.if.end326_crit_edge ]
  %274 = ptrtoint ptr %check to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %check, align 4
  %276 = and i8 %275, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %276)
  %tobool330.not = icmp eq i8 %276, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %275)
  %cmp334.not = icmp eq i8 %275, -1
  %or.cond796 = or i1 %cmp334.not, %tobool330.not
  br i1 %or.cond796, label %if.end326.if.end347_crit_edge, label %if.then336

if.end326.if.end347_crit_edge:                    ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end347

if.then336:                                       ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #8
  %and339 = shl i8 %275, 2
  %shl340 = and i8 %and339, -64
  %277 = ptrtoint ptr %flag2122 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %shl340, ptr %flag2122, align 1
  %278 = ptrtoint ptr %pts344 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %275, ptr %pts344, align 1
  %279 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 3, ptr %which, align 4
  br label %if.end347

if.end347:                                        ; preds = %if.then336, %if.end326.if.end347_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %c.6, i32 %count.tr)
  %cmp348 = icmp eq i32 %c.6, %count.tr
  br i1 %cmp348, label %if.end347.cleanup_crit_edge, label %if.end351

if.end347.cleanup_crit_edge:                      ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end351:                                        ; preds = %if.end347
  %280 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %which, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %281)
  %cmp353 = icmp sgt i32 %281, 2
  br i1 %cmp353, label %if.then355, label %if.end351.if.end432_crit_edge

if.end351.if.end432_crit_edge:                    ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end432

if.then355:                                       ; preds = %if.end351
  %282 = ptrtoint ptr %flag2122 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %flag2122, align 1
  %284 = and i8 %283, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %284)
  %cmp359 = icmp eq i8 %284, -128
  br i1 %cmp359, label %while.cond362.preheader, label %if.else389

while.cond362.preheader:                          ; preds = %if.then355
  call void @__sanitizer_cov_trace_cmp4(i32 %c.6, i32 %count.tr)
  %cmp3631052 = icmp slt i32 %c.6, %count.tr
  br i1 %cmp3631052, label %land.rhs365.preheader, label %while.cond362.preheader.while.end384_crit_edge

while.cond362.preheader.while.end384_crit_edge:   ; preds = %while.cond362.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end384

land.rhs365.preheader:                            ; preds = %while.cond362.preheader
  %285 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %285)
  %.pr1103 = load i32, ptr %which, align 4
  br label %land.rhs365

land.rhs365:                                      ; preds = %write_ipack.exit928.land.rhs365_crit_edge, %land.rhs365.preheader
  %286 = phi i32 [ %.pr1103, %land.rhs365.preheader ], [ %inc381, %write_ipack.exit928.land.rhs365_crit_edge ]
  %c.71053 = phi i32 [ %c.6, %land.rhs365.preheader ], [ %inc377, %write_ipack.exit928.land.rhs365_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %286)
  %cmp367 = icmp slt i32 %286, 7
  br i1 %cmp367, label %while.body370, label %land.rhs365.while.end384_crit_edge

land.rhs365.while.end384_crit_edge:               ; preds = %land.rhs365
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end384

while.body370:                                    ; preds = %land.rhs365
  %arrayidx371 = getelementptr i8, ptr %buf.tr, i32 %c.71053
  %287 = ptrtoint ptr %arrayidx371 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %arrayidx371, align 1
  %sub374 = add i32 %286, -2
  %arrayidx375 = getelementptr %struct.ipack, ptr %p, i32 0, i32 9, i32 %sub374
  %289 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %288, ptr %arrayidx375, align 1
  br label %tailrecurse.i912

tailrecurse.i912:                                 ; preds = %if.then19.i927, %while.body370
  %data.tr.i909 = phi ptr [ %arrayidx371, %while.body370 ], [ %add.ptr20.i926, %if.then19.i927 ]
  %count.tr.i910 = phi i32 [ 1, %while.body370 ], [ %sub17.i923, %if.then19.i927 ]
  %290 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %291)
  %cmp.i911 = icmp slt i32 %291, 6
  br i1 %cmp.i911, label %if.then.i913, label %tailrecurse.i912.if.end.i916_crit_edge

tailrecurse.i912.if.end.i916_crit_edge:           ; preds = %tailrecurse.i912
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i916

if.then.i913:                                     ; preds = %tailrecurse.i912
  call void @__sanitizer_cov_trace_pc() #8
  %292 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %buf.i, align 4
  %294 = call ptr @memcpy(ptr %293, ptr @__const.write_ipack.headr, i32 3)
  %295 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i916

if.end.i916:                                      ; preds = %if.then.i913, %tailrecurse.i912.if.end.i916_crit_edge
  %296 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %count1.i, align 4
  %add.i914 = add i32 %297, %count.tr.i910
  %298 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i914, i32 %299)
  %cmp4.i915 = icmp slt i32 %add.i914, %299
  br i1 %cmp4.i915, label %if.then5.i919, label %if.else.i925

if.then5.i919:                                    ; preds = %if.end.i916
  call void @__sanitizer_cov_trace_pc() #8
  %300 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %buf.i, align 4
  %add.ptr.i917 = getelementptr i8, ptr %301, i32 %297
  %302 = call ptr @memcpy(ptr %add.ptr.i917, ptr %data.tr.i909, i32 %count.tr.i910)
  %303 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %count1.i, align 4
  %add9.i918 = add i32 %304, %count.tr.i910
  store i32 %add9.i918, ptr %count1.i, align 4
  br label %write_ipack.exit928

if.else.i925:                                     ; preds = %if.end.i916
  %sub.i920 = sub i32 %299, %297
  %305 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i921 = getelementptr i8, ptr %306, i32 %297
  %307 = call ptr @memcpy(ptr %add.ptr14.i921, ptr %data.tr.i909, i32 %sub.i920)
  %308 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %count1.i, align 4
  %add16.i922 = add i32 %309, %sub.i920
  store i32 %add16.i922, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i923 = sub i32 %count.tr.i910, %sub.i920
  %cmp18.i924 = icmp sgt i32 %sub17.i923, 0
  br i1 %cmp18.i924, label %if.then19.i927, label %if.else.i925.write_ipack.exit928_crit_edge

if.else.i925.write_ipack.exit928_crit_edge:       ; preds = %if.else.i925
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_ipack.exit928

if.then19.i927:                                   ; preds = %if.else.i925
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i926 = getelementptr i8, ptr %data.tr.i909, i32 %sub.i920
  br label %tailrecurse.i912

write_ipack.exit928:                              ; preds = %if.else.i925.write_ipack.exit928_crit_edge, %if.then5.i919
  %inc377 = add nsw i32 %c.71053, 1
  %310 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %found10, align 4
  %inc379 = add i32 %311, 1
  store i32 %inc379, ptr %found10, align 4
  %312 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %which, align 4
  %inc381 = add i32 %313, 1
  store i32 %inc381, ptr %which, align 4
  %314 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %hlength136, align 4
  %inc383 = add i8 %315, 1
  store i8 %inc383, ptr %hlength136, align 4
  %exitcond1099.not = icmp eq i32 %inc377, %count.tr
  br i1 %exitcond1099.not, label %write_ipack.exit928.cleanup_crit_edge, label %write_ipack.exit928.land.rhs365_crit_edge

write_ipack.exit928.land.rhs365_crit_edge:        ; preds = %write_ipack.exit928
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs365

write_ipack.exit928.cleanup_crit_edge:            ; preds = %write_ipack.exit928
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end384:                                     ; preds = %land.rhs365.while.end384_crit_edge, %while.cond362.preheader.while.end384_crit_edge
  %c.7.lcssa = phi i32 [ %c.6, %while.cond362.preheader.while.end384_crit_edge ], [ %c.71053, %land.rhs365.while.end384_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.7.lcssa, i32 %count.tr)
  %cmp385 = icmp eq i32 %c.7.lcssa, %count.tr
  br i1 %cmp385, label %while.end384.cleanup_crit_edge, label %while.end384.if.end429_crit_edge

while.end384.if.end429_crit_edge:                 ; preds = %while.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end429

while.end384.cleanup_crit_edge:                   ; preds = %while.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else389:                                       ; preds = %if.then355
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %283)
  %cmp393 = icmp ugt i8 %283, -65
  br i1 %cmp393, label %while.cond396.preheader, label %if.else389.if.end429_crit_edge

if.else389.if.end429_crit_edge:                   ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end429

while.cond396.preheader:                          ; preds = %if.else389
  call void @__sanitizer_cov_trace_cmp4(i32 %c.6, i32 %count.tr)
  %cmp3971047 = icmp slt i32 %c.6, %count.tr
  br i1 %cmp3971047, label %land.rhs399.preheader, label %while.cond396.preheader.while.end423_crit_edge

while.cond396.preheader.while.end423_crit_edge:   ; preds = %while.cond396.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end423

land.rhs399.preheader:                            ; preds = %while.cond396.preheader
  %316 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %316)
  %.pr1106 = load i32, ptr %which, align 4
  br label %land.rhs399

land.rhs399:                                      ; preds = %write_ipack.exit950.land.rhs399_crit_edge, %land.rhs399.preheader
  %317 = phi i32 [ %.pr1106, %land.rhs399.preheader ], [ %inc420, %write_ipack.exit950.land.rhs399_crit_edge ]
  %c.81048 = phi i32 [ %c.6, %land.rhs399.preheader ], [ %inc416, %write_ipack.exit950.land.rhs399_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %317)
  %cmp401 = icmp slt i32 %317, 12
  br i1 %cmp401, label %while.body404, label %land.rhs399.while.end423_crit_edge

land.rhs399.while.end423_crit_edge:               ; preds = %land.rhs399
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end423

while.body404:                                    ; preds = %land.rhs399
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %317)
  %cmp406 = icmp slt i32 %317, 7
  br i1 %cmp406, label %if.then408, label %while.body404.if.end414_crit_edge

while.body404.if.end414_crit_edge:                ; preds = %while.body404
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end414

if.then408:                                       ; preds = %while.body404
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx409 = getelementptr i8, ptr %buf.tr, i32 %c.81048
  %318 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx409, align 1
  %sub412 = add i32 %317, -2
  %arrayidx413 = getelementptr %struct.ipack, ptr %p, i32 0, i32 9, i32 %sub412
  %320 = ptrtoint ptr %arrayidx413 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %arrayidx413, align 1
  br label %if.end414

if.end414:                                        ; preds = %if.then408, %while.body404.if.end414_crit_edge
  %add.ptr415 = getelementptr i8, ptr %buf.tr, i32 %c.81048
  br label %tailrecurse.i934

tailrecurse.i934:                                 ; preds = %if.then19.i949, %if.end414
  %data.tr.i931 = phi ptr [ %add.ptr415, %if.end414 ], [ %add.ptr20.i948, %if.then19.i949 ]
  %count.tr.i932 = phi i32 [ 1, %if.end414 ], [ %sub17.i945, %if.then19.i949 ]
  %321 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %322)
  %cmp.i933 = icmp slt i32 %322, 6
  br i1 %cmp.i933, label %if.then.i935, label %tailrecurse.i934.if.end.i938_crit_edge

tailrecurse.i934.if.end.i938_crit_edge:           ; preds = %tailrecurse.i934
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i938

if.then.i935:                                     ; preds = %tailrecurse.i934
  call void @__sanitizer_cov_trace_pc() #8
  %323 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %buf.i, align 4
  %325 = call ptr @memcpy(ptr %324, ptr @__const.write_ipack.headr, i32 3)
  %326 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i938

if.end.i938:                                      ; preds = %if.then.i935, %tailrecurse.i934.if.end.i938_crit_edge
  %327 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %count1.i, align 4
  %add.i936 = add i32 %328, %count.tr.i932
  %329 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i936, i32 %330)
  %cmp4.i937 = icmp slt i32 %add.i936, %330
  br i1 %cmp4.i937, label %if.then5.i941, label %if.else.i947

if.then5.i941:                                    ; preds = %if.end.i938
  call void @__sanitizer_cov_trace_pc() #8
  %331 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %buf.i, align 4
  %add.ptr.i939 = getelementptr i8, ptr %332, i32 %328
  %333 = call ptr @memcpy(ptr %add.ptr.i939, ptr %data.tr.i931, i32 %count.tr.i932)
  %334 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %count1.i, align 4
  %add9.i940 = add i32 %335, %count.tr.i932
  store i32 %add9.i940, ptr %count1.i, align 4
  br label %write_ipack.exit950

if.else.i947:                                     ; preds = %if.end.i938
  %sub.i942 = sub i32 %330, %328
  %336 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i943 = getelementptr i8, ptr %337, i32 %328
  %338 = call ptr @memcpy(ptr %add.ptr14.i943, ptr %data.tr.i931, i32 %sub.i942)
  %339 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %count1.i, align 4
  %add16.i944 = add i32 %340, %sub.i942
  store i32 %add16.i944, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i945 = sub i32 %count.tr.i932, %sub.i942
  %cmp18.i946 = icmp sgt i32 %sub17.i945, 0
  br i1 %cmp18.i946, label %if.then19.i949, label %if.else.i947.write_ipack.exit950_crit_edge

if.else.i947.write_ipack.exit950_crit_edge:       ; preds = %if.else.i947
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_ipack.exit950

if.then19.i949:                                   ; preds = %if.else.i947
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i948 = getelementptr i8, ptr %data.tr.i931, i32 %sub.i942
  br label %tailrecurse.i934

write_ipack.exit950:                              ; preds = %if.else.i947.write_ipack.exit950_crit_edge, %if.then5.i941
  %inc416 = add nsw i32 %c.81048, 1
  %341 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %found10, align 4
  %inc418 = add i32 %342, 1
  store i32 %inc418, ptr %found10, align 4
  %343 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %which, align 4
  %inc420 = add i32 %344, 1
  store i32 %inc420, ptr %which, align 4
  %345 = ptrtoint ptr %hlength136 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %hlength136, align 4
  %inc422 = add i8 %346, 1
  store i8 %inc422, ptr %hlength136, align 4
  %exitcond1098.not = icmp eq i32 %inc416, %count.tr
  br i1 %exitcond1098.not, label %write_ipack.exit950.cleanup_crit_edge, label %write_ipack.exit950.land.rhs399_crit_edge

write_ipack.exit950.land.rhs399_crit_edge:        ; preds = %write_ipack.exit950
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs399

write_ipack.exit950.cleanup_crit_edge:            ; preds = %write_ipack.exit950
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.end423:                                     ; preds = %land.rhs399.while.end423_crit_edge, %while.cond396.preheader.while.end423_crit_edge
  %c.8.lcssa = phi i32 [ %c.6, %while.cond396.preheader.while.end423_crit_edge ], [ %c.81048, %land.rhs399.while.end423_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.8.lcssa, i32 %count.tr)
  %cmp424 = icmp eq i32 %c.8.lcssa, %count.tr
  br i1 %cmp424, label %while.end423.cleanup_crit_edge, label %while.end423.if.end429_crit_edge

while.end423.if.end429_crit_edge:                 ; preds = %while.end423
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end429

while.end423.cleanup_crit_edge:                   ; preds = %while.end423
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end429:                                        ; preds = %while.end423.if.end429_crit_edge, %if.else389.if.end429_crit_edge, %while.end384.if.end429_crit_edge
  %c.9 = phi i32 [ %c.7.lcssa, %while.end384.if.end429_crit_edge ], [ %c.8.lcssa, %while.end423.if.end429_crit_edge ], [ %c.6, %if.else389.if.end429_crit_edge ]
  %347 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 2000, ptr %which, align 4
  br label %if.end432

if.end432:                                        ; preds = %if.end429, %if.end351.if.end432_crit_edge, %land.lhs.true235.if.end432_crit_edge, %if.end231.if.end432_crit_edge
  %c.10 = phi i32 [ %c.9, %if.end429 ], [ %c.6, %if.end351.if.end432_crit_edge ], [ %c.3, %land.lhs.true235.if.end432_crit_edge ], [ %c.3, %if.end231.if.end432_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.10, i32 %count.tr)
  %cmp4341056 = icmp slt i32 %c.10, %count.tr
  br i1 %cmp4341056, label %if.end432.land.rhs436_crit_edge, label %if.end432.sw.epilog462_crit_edge

if.end432.sw.epilog462_crit_edge:                 ; preds = %if.end432
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog462

if.end432.land.rhs436_crit_edge:                  ; preds = %if.end432
  br label %land.rhs436

land.rhs436:                                      ; preds = %write_ipack.exit972.land.rhs436_crit_edge, %if.end432.land.rhs436_crit_edge
  %c.111057 = phi i32 [ %add460, %write_ipack.exit972.land.rhs436_crit_edge ], [ %c.10, %if.end432.land.rhs436_crit_edge ]
  %348 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %found10, align 4
  %350 = ptrtoint ptr %plength94 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %plength94, align 4
  %add439 = add i32 %351, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %add439, i32 %349)
  %cmp440 = icmp ugt i32 %add439, %349
  br i1 %cmp440, label %while.body443, label %land.rhs436.sw.epilog462_crit_edge

land.rhs436.sw.epilog462_crit_edge:               ; preds = %land.rhs436
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog462

while.body443:                                    ; preds = %land.rhs436
  %sub444 = sub i32 %count.tr, %c.111057
  %add446 = add i32 %349, %sub444
  call void @__sanitizer_cov_trace_cmp4(i32 %add446, i32 %add439)
  %cmp449 = icmp ugt i32 %add446, %add439
  %sub455 = sub i32 %add439, %349
  %spec.select = select i1 %cmp449, i32 %sub455, i32 %sub444
  %add.ptr457 = getelementptr i8, ptr %buf.tr, i32 %c.111057
  br label %tailrecurse.i956

tailrecurse.i956:                                 ; preds = %if.then19.i971, %while.body443
  %data.tr.i953 = phi ptr [ %add.ptr457, %while.body443 ], [ %add.ptr20.i970, %if.then19.i971 ]
  %count.tr.i954 = phi i32 [ %spec.select, %while.body443 ], [ %sub17.i967, %if.then19.i971 ]
  %352 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %353)
  %cmp.i955 = icmp slt i32 %353, 6
  br i1 %cmp.i955, label %if.then.i957, label %tailrecurse.i956.if.end.i960_crit_edge

tailrecurse.i956.if.end.i960_crit_edge:           ; preds = %tailrecurse.i956
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i960

if.then.i957:                                     ; preds = %tailrecurse.i956
  call void @__sanitizer_cov_trace_pc() #8
  %354 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %buf.i, align 4
  %356 = call ptr @memcpy(ptr %355, ptr @__const.write_ipack.headr, i32 3)
  %357 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 6, ptr %count1.i, align 4
  br label %if.end.i960

if.end.i960:                                      ; preds = %if.then.i957, %tailrecurse.i956.if.end.i960_crit_edge
  %358 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %count1.i, align 4
  %add.i958 = add i32 %359, %count.tr.i954
  %360 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i958, i32 %361)
  %cmp4.i959 = icmp slt i32 %add.i958, %361
  br i1 %cmp4.i959, label %if.then5.i963, label %if.else.i969

if.then5.i963:                                    ; preds = %if.end.i960
  call void @__sanitizer_cov_trace_pc() #8
  %362 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %buf.i, align 4
  %add.ptr.i961 = getelementptr i8, ptr %363, i32 %359
  %364 = call ptr @memcpy(ptr %add.ptr.i961, ptr %data.tr.i953, i32 %count.tr.i954)
  %365 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %count1.i, align 4
  %add9.i962 = add i32 %366, %count.tr.i954
  store i32 %add9.i962, ptr %count1.i, align 4
  br label %write_ipack.exit972

if.else.i969:                                     ; preds = %if.end.i960
  %sub.i964 = sub i32 %361, %359
  %367 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %buf.i, align 4
  %add.ptr14.i965 = getelementptr i8, ptr %368, i32 %359
  %369 = call ptr @memcpy(ptr %add.ptr14.i965, ptr %data.tr.i953, i32 %sub.i964)
  %370 = ptrtoint ptr %count1.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %count1.i, align 4
  %add16.i966 = add i32 %371, %sub.i964
  store i32 %add16.i966, ptr %count1.i, align 4
  tail call fastcc void @send_ipack(ptr noundef %p) #6
  %sub17.i967 = sub i32 %count.tr.i954, %sub.i964
  %cmp18.i968 = icmp sgt i32 %sub17.i967, 0
  br i1 %cmp18.i968, label %if.then19.i971, label %if.else.i969.write_ipack.exit972_crit_edge

if.else.i969.write_ipack.exit972_crit_edge:       ; preds = %if.else.i969
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_ipack.exit972

if.then19.i971:                                   ; preds = %if.else.i969
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20.i970 = getelementptr i8, ptr %data.tr.i953, i32 %sub.i964
  br label %tailrecurse.i956

write_ipack.exit972:                              ; preds = %if.else.i969.write_ipack.exit972_crit_edge, %if.then5.i963
  %372 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %found10, align 4
  %add459 = add i32 %373, %spec.select
  store i32 %add459, ptr %found10, align 4
  %add460 = add i32 %spec.select, %c.111057
  %cmp434 = icmp slt i32 %add460, %count.tr
  br i1 %cmp434, label %write_ipack.exit972.land.rhs436_crit_edge, label %write_ipack.exit972.sw.epilog462_crit_edge

write_ipack.exit972.sw.epilog462_crit_edge:       ; preds = %write_ipack.exit972
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog462

write_ipack.exit972.land.rhs436_crit_edge:        ; preds = %write_ipack.exit972
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs436

sw.epilog462:                                     ; preds = %write_ipack.exit972.sw.epilog462_crit_edge, %land.rhs436.sw.epilog462_crit_edge, %if.end432.sw.epilog462_crit_edge, %if.then169.sw.epilog462_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %if.then169.sw.epilog462_crit_edge ], [ %c.10, %if.end432.sw.epilog462_crit_edge ], [ %add460, %write_ipack.exit972.sw.epilog462_crit_edge ], [ %c.111057, %land.rhs436.sw.epilog462_crit_edge ]
  %374 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %375)
  %tobool464.not = icmp eq i32 %375, 0
  br i1 %tobool464.not, label %sw.epilog462.if.end487thread-pre-split_crit_edge, label %if.then465

sw.epilog462.if.end487thread-pre-split_crit_edge: ; preds = %sw.epilog462
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end487thread-pre-split

if.then465:                                       ; preds = %sw.epilog462
  %376 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %found10, align 4
  %add467 = sub i32 %count.tr, %c.12
  %sub468 = add i32 %add467, %377
  %378 = ptrtoint ptr %plength94 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %plength94, align 4
  %add470 = add i32 %379, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub468, i32 %add470)
  %cmp471 = icmp ult i32 %sub468, %add470
  br i1 %cmp471, label %if.then473, label %if.else477

if.then473:                                       ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #8
  %380 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %sub468, ptr %found10, align 4
  br label %if.end487

if.else477:                                       ; preds = %if.then465
  call void @__sanitizer_cov_trace_pc() #8
  %sub481 = sub i32 %c.12, %377
  %add482 = add i32 %sub481, %add470
  %381 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %add470, ptr %found10, align 4
  br label %if.end487thread-pre-split

if.end487thread-pre-split:                        ; preds = %if.else477, %sw.epilog462.if.end487thread-pre-split_crit_edge
  %c.13.ph = phi i32 [ %c.12, %sw.epilog462.if.end487thread-pre-split_crit_edge ], [ %add482, %if.else477 ]
  %382 = ptrtoint ptr %plength94 to i32
  call void @__asan_load4_noabort(i32 %382)
  %.pr1109 = load i32, ptr %plength94, align 4
  br label %if.end487

if.end487:                                        ; preds = %if.end487thread-pre-split, %if.then473
  %383 = phi i32 [ %.pr1109, %if.end487thread-pre-split ], [ %379, %if.then473 ]
  %c.13 = phi i32 [ %c.13.ph, %if.end487thread-pre-split ], [ %count.tr, %if.then473 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %383)
  %tobool489.not = icmp eq i32 %383, 0
  br i1 %tobool489.not, label %if.end487.cleanup_crit_edge, label %land.lhs.true490

if.end487.cleanup_crit_edge:                      ; preds = %if.end487
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true490:                                 ; preds = %if.end487
  %384 = ptrtoint ptr %found10 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %found10, align 4
  %add493 = add i32 %383, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %385, i32 %add493)
  %cmp494 = icmp eq i32 %385, %add493
  br i1 %cmp494, label %if.then496, label %land.lhs.true490.cleanup_crit_edge

land.lhs.true490.cleanup_crit_edge:               ; preds = %land.lhs.true490
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then496:                                       ; preds = %land.lhs.true490
  tail call fastcc void @send_ipack(ptr noundef %p)
  %386 = ptrtoint ptr %found10 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 0, ptr %found10, align 4
  %387 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %cid, align 4
  %388 = ptrtoint ptr %plength94 to i32
  call void @__asan_store4_noabort(i32 %388)
  store i32 0, ptr %plength94, align 4
  %389 = ptrtoint ptr %flag1 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %flag1, align 2
  %390 = ptrtoint ptr %flag2122 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 0, ptr %flag2122, align 1
  %391 = ptrtoint ptr %hlength136 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 0, ptr %hlength136, align 4
  %392 = ptrtoint ptr %mpeg to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 0, ptr %mpeg, align 4
  %393 = ptrtoint ptr %check to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 0, ptr %check, align 4
  %394 = ptrtoint ptr %which to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 0, ptr %which, align 4
  %395 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 0, ptr %done, align 4
  %396 = ptrtoint ptr %count1.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 0, ptr %count1.i, align 4
  %cmp497 = icmp sgt i32 %count.tr, %c.13
  br i1 %cmp497, label %if.then499, label %if.then496.cleanup_crit_edge

if.then496.cleanup_crit_edge:                     ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then499:                                       ; preds = %if.then496
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr500 = getelementptr i8, ptr %buf.tr, i32 %c.13
  %sub501 = sub i32 %count.tr, %c.13
  br label %tailrecurse

cleanup:                                          ; preds = %if.then496.cleanup_crit_edge, %land.lhs.true490.cleanup_crit_edge, %if.end487.cleanup_crit_edge, %while.end423.cleanup_crit_edge, %write_ipack.exit950.cleanup_crit_edge, %while.end384.cleanup_crit_edge, %write_ipack.exit928.cleanup_crit_edge, %if.end347.cleanup_crit_edge, %if.then312.cleanup_crit_edge, %if.end294.cleanup_crit_edge, %if.then281.cleanup_crit_edge, %while.end268.cleanup_crit_edge, %while.end226.cleanup_crit_edge, %write_ipack.exit884.cleanup_crit_edge, %land.lhs.true165.cleanup_crit_edge, %land.lhs.true157.cleanup_crit_edge, %lor.lhs.false153.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.else72
  ret i32 %count
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_ipack(ptr nocapture noundef %p, ptr nocapture noundef readonly %data, i32 noundef %count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count1 = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 17
  %buf = getelementptr inbounds %struct.ipack, ptr %p, i32 0, i32 2
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.then19, %entry
  %data.tr = phi ptr [ %data, %entry ], [ %add.ptr20, %if.then19 ]
  %count.tr = phi i32 [ %count, %entry ], [ %sub17, %if.then19 ]
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp slt i32 %1, 6
  br i1 %cmp, label %if.then, label %tailrecurse.if.end_crit_edge

tailrecurse.if.end_crit_edge:                     ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %tailrecurse
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = call ptr @memcpy(ptr %3, ptr @__const.write_ipack.headr, i32 3)
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %count1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tailrecurse.if.end_crit_edge
  %6 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count1, align 4
  %add = add i32 %7, %count.tr
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp4 = icmp slt i32 %add, %9
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %7
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %data.tr, i32 %count.tr)
  %13 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count1, align 4
  %add9 = add i32 %14, %count.tr
  store i32 %add9, ptr %count1, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end
  %sub = sub i32 %9, %7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buf, align 4
  %add.ptr14 = getelementptr i8, ptr %16, i32 %7
  %17 = call ptr @memcpy(ptr %add.ptr14, ptr %data.tr, i32 %sub)
  %18 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count1, align 4
  %add16 = add i32 %19, %sub
  store i32 %add16, ptr %count1, align 4
  tail call fastcc void @send_ipack(ptr noundef %p)
  %sub17 = sub i32 %count.tr, %sub
  %cmp18 = icmp sgt i32 %sub17, 0
  br i1 %cmp18, label %if.then19, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr20 = getelementptr i8, ptr %data.tr, i32 %sub
  br label %tailrecurse

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_filter_get_ac3info(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_ipack.c", i32 28, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @av7110_ipack_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @av7110_ipack_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
