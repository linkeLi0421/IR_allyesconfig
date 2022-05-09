; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_scdc_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_scdc_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_scdc_read\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_scdc_read\09\09\09\09"
module asm "\09.long\09__crc_drm_scdc_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_read\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_scdc_write\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_scdc_write\09\09\09\09"
module asm "\09.long\09__crc_drm_scdc_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_write\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_scdc_get_scrambling_status\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_scdc_get_scrambling_status\09\09\09\09"
module asm "\09.long\09__crc_drm_scdc_get_scrambling_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_get_scrambling_status:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_get_scrambling_status\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_get_scrambling_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_scdc_set_scrambling\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_scdc_set_scrambling\09\09\09\09"
module asm "\09.long\09__crc_drm_scdc_set_scrambling\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_set_scrambling:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_set_scrambling\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_set_scrambling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_scdc_set_high_tmds_clock_ratio\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_scdc_set_high_tmds_clock_ratio\09\09\09\09"
module asm "\09.long\09__crc_drm_scdc_set_high_tmds_clock_ratio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_scdc_set_high_tmds_clock_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_scdc_set_high_tmds_clock_ratio\22\09\09\09\09\09"
module asm "__kstrtabns_drm_scdc_set_high_tmds_clock_ratio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab_drm_scdc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_read to i32), ptr @__kstrtab_drm_scdc_read, ptr @__kstrtabns_drm_scdc_read }, section "___ksymtab+drm_scdc_read", align 4
@__kstrtab_drm_scdc_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_write = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_write to i32), ptr @__kstrtab_drm_scdc_write, ptr @__kstrtabns_drm_scdc_write }, section "___ksymtab+drm_scdc_write", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to read scrambling status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_drm_scdc_get_scrambling_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_get_scrambling_status = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_get_scrambling_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_get_scrambling_status to i32), ptr @__kstrtab_drm_scdc_get_scrambling_status, ptr @__kstrtabns_drm_scdc_get_scrambling_status }, section "___ksymtab+drm_scdc_get_scrambling_status", align 4
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read TMDS config: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable scrambling: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_drm_scdc_set_scrambling = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_set_scrambling = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_set_scrambling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_set_scrambling to i32), ptr @__kstrtab_drm_scdc_set_scrambling, ptr @__kstrtabns_drm_scdc_set_scrambling }, section "___ksymtab+drm_scdc_set_scrambling", align 4
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set TMDS clock ratio: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_drm_scdc_set_high_tmds_clock_ratio = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_scdc_set_high_tmds_clock_ratio = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_scdc_set_high_tmds_clock_ratio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_scdc_set_high_tmds_clock_ratio to i32), ptr @__kstrtab_drm_scdc_set_high_tmds_clock_ratio, ptr @__kstrtabns_drm_scdc_set_high_tmds_clock_ratio }, section "___ksymtab+drm_scdc_set_high_tmds_clock_ratio", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 144, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 171, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 182, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [37 x i8] c"../drivers/gpu/drm/drm_scdc_helper.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 237, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_drm_scdc_get_scrambling_status, ptr @__ksymtab_drm_scdc_read, ptr @__ksymtab_drm_scdc_set_high_tmds_clock_ratio, ptr @__ksymtab_drm_scdc_set_scrambling, ptr @__ksymtab_drm_scdc_write, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_scdc_read(ptr noundef %adapter, i8 noundef zeroext %offset, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  %offset.addr = alloca i8, align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %offset, ptr %offset.addr, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 84, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %offset.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 84, ptr %arrayinit.element, align 4
  %flags2 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %8 = ptrtoint ptr %flags2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags2, align 2
  %len3 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %conv = trunc i32 %size to i16
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %len3, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 1, i32 3
  %10 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buffer, ptr %buf4, align 4
  %call = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp6.not = icmp eq i32 %call, 2
  %. = select i1 %cmp6.not, i32 0, i32 -71
  %retval.0 = select i1 %cmp, i32 %call, i32 %.
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_scdc_write(ptr noundef %adapter, i8 noundef zeroext %offset, ptr nocapture noundef readonly %buffer, i32 noundef %size) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 84, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %add = add i32 %size, 1
  %conv = trunc i32 %add to i16
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %len, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i, ptr %buf, align 4
  %6 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %offset, ptr %call9.i, align 128
  %add.ptr = getelementptr i8, ptr %call9.i, i32 1
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %buffer, i32 %size)
  %call3 = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @kfree(ptr noundef nonnull %call9.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp7.not = icmp eq i32 %call3, 1
  %. = select i1 %cmp7.not, i32 0, i32 -71
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_get_scrambling_status(ptr noundef %adapter) #0 align 64 {
entry:
  %offset.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  %1 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 33, ptr %offset.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %2 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 84, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %2, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %offset.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %8 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 84, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags2.i.i, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %status, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp6.not.i.i = icmp eq i32 %call.i.i, 2
  %..i.i = select i1 %cmp6.not.i.i, i32 0, i32 -71
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %retval.0.i.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %status, align 1
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool = icmp ne i8 %14, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ %tobool, %if.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_set_scrambling(ptr noundef %adapter, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %offset.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %config = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config) #5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %config, align 1, !annotation !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  %1 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %offset.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %2 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 84, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %2, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %offset.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %8 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 84, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags2.i.i, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %config, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp6.not.i.i = icmp eq i32 %call.i.i, 2
  %..i.i = select i1 %cmp6.not.i.i, i32 0, i32 -71
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config, align 1
  %14 = and i8 %13, -2
  %masksel = zext i1 %enable to i8
  %storemerge = or i8 %14, %masksel
  store i8 %storemerge, ptr %config, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 84, ptr %msg.i.i, align 4
  %flags.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i16, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 2) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.if.then9_crit_edge, label %if.end.i.i

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end.i.i:                                       ; preds = %if.end
  %buf.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %buf.i.i17, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %call7.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %add.ptr.i.i, align 1
  %call3.i.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i18 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i18, label %if.end.i.i.if.then9_crit_edge, label %if.end6.i.i

if.end.i.i.if.then9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp7.not.i.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp7.not.i.i, label %drm_scdc_writeb.exit, label %if.end6.i.i.if.then9_crit_edge

if.end6.i.i.if.then9_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

drm_scdc_writeb.exit:                             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  br label %cleanup

if.then9:                                         ; preds = %if.end6.i.i.if.then9_crit_edge, %if.end.i.i.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %retval.0.i.i20.ph = phi i32 [ -71, %if.end6.i.i.if.then9_crit_edge ], [ %call3.i.i, %if.end.i.i.if.then9_crit_edge ], [ -12, %if.end.if.then9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i.i20.ph) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %drm_scdc_writeb.exit, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then9 ], [ true, %drm_scdc_writeb.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config) #5
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_scdc_set_high_tmds_clock_ratio(ptr noundef %adapter, i1 noundef zeroext %set) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %offset.addr.i.i = alloca i8, align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %config = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config) #5
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %config, align 1, !annotation !27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  %1 = ptrtoint ptr %offset.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %offset.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #5
  %2 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 84, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i.i, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %2, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %offset.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %8 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 84, ptr %arrayinit.element.i.i, align 4
  %flags2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags2.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags2.i.i, align 2
  %len3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len3.i.i, align 4
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %config, ptr %buf4.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp6.not.i.i = icmp eq i32 %call.i.i, 2
  %..i.i = select i1 %cmp6.not.i.i, i32 0, i32 -71
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %offset.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config, align 1
  %14 = and i8 %13, -3
  %masksel = select i1 %set, i8 2, i8 0
  %storemerge = or i8 %14, %masksel
  store i8 %storemerge, ptr %config, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 196607, ptr %15, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 84, ptr %msg.i.i, align 4
  %flags.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i16 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i16, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 2) #9
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.if.then9_crit_edge, label %if.end.i.i

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end.i.i:                                       ; preds = %if.end
  %buf.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %buf.i.i17, align 4
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 32, ptr %call7.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %add.ptr.i.i, align 1
  %call3.i.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i18 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i18, label %if.end.i.i.if.then9_crit_edge, label %if.end6.i.i

if.end.i.i.if.then9_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp7.not.i.i = icmp eq i32 %call3.i.i, 1
  br i1 %cmp7.not.i.i, label %if.end10, label %if.end6.i.i.if.then9_crit_edge

if.end6.i.i.if.then9_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %if.end6.i.i.if.then9_crit_edge, %if.end.i.i.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %retval.0.i.i20.ph = phi i32 [ -71, %if.end6.i.i.if.then9_crit_edge ], [ %call3.i.i, %if.end.i.i.if.then9_crit_edge ], [ -12, %if.end.if.then9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.i20.ph) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then9 ], [ true, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config) #5
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_drm_scdc_read, !1, !"__ksymtab_drm_scdc_read", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 79, i32 1}
!2 = !{ptr @__ksymtab_drm_scdc_write, !3, !"__ksymtab_drm_scdc_write", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 125, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 144, i32 3}
!6 = !{ptr @__ksymtab_drm_scdc_get_scrambling_status, !7, !"__ksymtab_drm_scdc_get_scrambling_status", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 150, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 171, i32 3}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 182, i32 3}
!12 = !{ptr @__ksymtab_drm_scdc_set_scrambling, !13, !"__ksymtab_drm_scdc_set_scrambling", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 188, i32 1}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 237, i32 3}
!16 = !{ptr @__ksymtab_drm_scdc_set_high_tmds_clock_ratio, !17, !"__ksymtab_drm_scdc_set_high_tmds_clock_ratio", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_scdc_helper.c", i32 249, i32 1}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
