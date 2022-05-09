; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_ts.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vidtv_mpeg_ts = type <{ i8, i16, %struct.anon }>
%struct.anon = type { i8 }
%struct.vidtv_mpeg_ts_adaption = type { i8, %struct.anon.1, [0 x i8] }
%struct.anon.1 = type { i8 }

@vidtv_ts_null_write_into._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_ts_null_write_into = private unnamed_addr constant [25 x i8] c"vidtv_ts_null_write_into\00", align 1
@vidtv_ts_null_write_into._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_ts_null_write_into, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014dvb_vidtv_bridge:%s, %d: Expected exactly %d bytes, got %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/test-drivers/vidtv/vidtv_ts.c\00", [52 x i8] zeroinitializer }, align 32
@vidtv_ts_null_write_into._entry_ptr = internal global ptr @vidtv_ts_null_write_into._entry, section ".printk_index", align 4
@vidtv_ts_pcr_write_into._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_ts_pcr_write_into = private unnamed_addr constant [24 x i8] c"vidtv_ts_pcr_write_into\00", align 1
@vidtv_ts_pcr_write_into._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_ts_pcr_write_into, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidtv_ts_pcr_write_into._entry_ptr = internal global ptr @vidtv_ts_pcr_write_into._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 79, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [47 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_ts.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 131, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @vidtv_ts_null_write_into._entry, ptr @vidtv_ts_null_write_into._entry_ptr, ptr @vidtv_ts_pcr_write_into._entry, ptr @vidtv_ts_pcr_write_into._entry_ptr, ptr @vidtv_ts_null_write_into._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vidtv_ts_pcr_write_into._rs], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_ts_null_write_into._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_ts_null_write_into._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_ts_pcr_write_into._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_ts_pcr_write_into._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vidtv_ts_inc_cc(ptr nocapture noundef %continuity_counter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %continuity_counter to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %continuity_counter, align 1
  %inc = add i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc)
  %cmp = icmp ugt i8 %inc, 15
  %spec.select = select i1 %cmp, i8 0, i8 %inc
  %2 = ptrtoint ptr %continuity_counter to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %spec.select, ptr %continuity_counter, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_ts_null_write_into([4 x i32] %args.coerce) local_unnamed_addr #1 align 64 {
entry:
  %ts_header = alloca %struct.vidtv_mpeg_ts, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [4 x i32] %args.coerce, 0
  %0 = inttoptr i32 %args.coerce.fca.0.extract to ptr
  %args.coerce.fca.1.extract = extractvalue [4 x i32] %args.coerce, 1
  %args.coerce.fca.2.extract = extractvalue [4 x i32] %args.coerce, 2
  %args.coerce.fca.3.extract = extractvalue [4 x i32] %args.coerce, 3
  %1 = inttoptr i32 %args.coerce.fca.3.extract to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ts_header) #5
  %2 = ptrtoint ptr %ts_header to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1193279240, ptr %ts_header, align 4
  %3 = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header, i32 0, i32 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %bf.shl = shl i8 %5, 4
  %bf.set3 = or i8 %bf.shl, 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set3, ptr %3, align 1
  %call = call i32 @vidtv_memcpy(ptr noundef %0, i32 noundef %args.coerce.fca.1.extract, i32 noundef %args.coerce.fca.2.extract, ptr noundef nonnull %ts_header, i32 noundef 4) #5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %1, align 1
  %inc.i = add i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %inc.i)
  %cmp.i = icmp ugt i8 %inc.i, 15
  %spec.select.i = select i1 %cmp.i, i8 0, i8 %inc.i
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %spec.select.i, ptr %1, align 1
  %add8 = add i32 %call, %args.coerce.fca.1.extract
  %sub = sub i32 188, %call
  %call10 = call i32 @vidtv_memset(ptr noundef %0, i32 noundef %add8, i32 noundef %args.coerce.fca.2.extract, i32 noundef 255, i32 noundef %sub) #5
  %add11 = add i32 %call10, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %add11)
  %cmp.not = icmp eq i32 %add11, 188
  br i1 %cmp.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then:                                          ; preds = %entry
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @vidtv_ts_null_write_into._rs, ptr noundef nonnull @__func__.vidtv_ts_null_write_into) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then.if.end15_crit_edge, label %do.end

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vidtv_ts_null_write_into, i32 noundef 81, i32 noundef 188, i32 noundef %add11) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ts_header) #5
  ret i32 %add11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memcpy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_ts_pcr_write_into([4 x i64] %args.coerce) local_unnamed_addr #1 align 64 {
entry:
  %rem.i = alloca i64, align 8
  %ts_header = alloca %struct.vidtv_mpeg_ts, align 4
  %ts_adap = alloca %struct.vidtv_mpeg_ts_adaption, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [4 x i64] %args.coerce, 0
  %args.sroa.0.0.extract.shift = lshr i64 %args.coerce.fca.0.extract, 32
  %args.sroa.0.0.extract.trunc = trunc i64 %args.sroa.0.0.extract.shift to i32
  %0 = inttoptr i32 %args.sroa.0.0.extract.trunc to ptr
  %args.sroa.5.0.extract.trunc = trunc i64 %args.coerce.fca.0.extract to i32
  %args.coerce.fca.1.extract = extractvalue [4 x i64] %args.coerce, 1
  %args.sroa.9.8.extract.shift = lshr i64 %args.coerce.fca.1.extract, 48
  %args.sroa.9.8.extract.trunc = trunc i64 %args.sroa.9.8.extract.shift to i16
  %args.sroa.1152.8.extract.trunc = trunc i64 %args.coerce.fca.1.extract to i32
  %args.coerce.fca.2.extract = extractvalue [4 x i64] %args.coerce, 2
  %args.sroa.14.16.extract.shift = lshr i64 %args.coerce.fca.2.extract, 32
  %args.sroa.14.16.extract.trunc = trunc i64 %args.sroa.14.16.extract.shift to i32
  %1 = inttoptr i32 %args.sroa.14.16.extract.trunc to ptr
  %args.coerce.fca.3.extract = extractvalue [4 x i64] %args.coerce, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ts_header) #5
  %2 = ptrtoint ptr %ts_header to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1191182336, ptr %ts_header, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ts_adap) #5
  %3 = ptrtoint ptr %ts_adap to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -18680, ptr %ts_adap, align 2
  %bitfield = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header, i32 0, i32 1
  %4 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %args.sroa.9.8.extract.trunc, ptr %bitfield, align 1
  %5 = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header, i32 0, i32 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %bf.shl = shl i8 %7, 4
  %bf.set9 = or i8 %bf.shl, 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.set9, ptr %5, align 1
  %call = call i32 @vidtv_memcpy(ptr noundef %0, i32 noundef %args.sroa.5.0.extract.trunc, i32 noundef %args.sroa.1152.8.extract.trunc, ptr noundef nonnull %ts_header, i32 noundef 4) #5
  %add16 = add i32 %call, %args.sroa.5.0.extract.trunc
  %call18 = call i32 @vidtv_memcpy(ptr noundef %0, i32 noundef %add16, i32 noundef %args.sroa.1152.8.extract.trunc, ptr noundef nonnull %ts_adap, i32 noundef 2) #5
  %add19 = add i32 %call18, %call
  %add22 = add i32 %add19, %args.sroa.5.0.extract.trunc
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i) #5
  %9 = ptrtoint ptr %rem.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %rem.i, align 8, !annotation !22
  %add.ptr.i = getelementptr i8, ptr %0, i32 %add22
  %call.i = call i64 @div64_u64_rem(i64 noundef %args.coerce.fca.3.extract, i64 noundef 300, ptr noundef nonnull %rem.i) #5
  %10 = ptrtoint ptr %rem.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rem.i, align 8
  %shr.i = lshr i64 %call.i, 25
  %conv.i = trunc i64 %shr.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %add.ptr.i, align 1
  %shr1.i = lshr i64 %call.i, 17
  %conv2.i = trunc i64 %shr1.i to i8
  %incdec.ptr3.i = getelementptr i8, ptr %incdec.ptr.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2.i, ptr %incdec.ptr.i, align 1
  %shr4.i = lshr i64 %call.i, 9
  %conv5.i = trunc i64 %shr4.i to i8
  %incdec.ptr6.i = getelementptr i8, ptr %incdec.ptr3.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5.i, ptr %incdec.ptr3.i, align 1
  %shr7.i = lshr i64 %call.i, 1
  %conv8.i = trunc i64 %shr7.i to i8
  %incdec.ptr9.i = getelementptr i8, ptr %incdec.ptr6.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv8.i, ptr %incdec.ptr6.i, align 1
  %shl.i = shl i64 %call.i, 7
  %shr10.i = lshr i64 %11, 8
  %or.i = or i64 %shr10.i, %shl.i
  %16 = trunc i64 %or.i to i8
  %conv12.i = or i8 %16, 126
  %incdec.ptr13.i = getelementptr i8, ptr %incdec.ptr9.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr9.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12.i, ptr %incdec.ptr9.i, align 1
  %conv14.i = trunc i64 %11 to i8
  %18 = ptrtoint ptr %incdec.ptr13.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14.i, ptr %incdec.ptr13.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i) #5
  %add24 = add i32 %add19, 6
  %add27 = add i32 %add24, %args.sroa.5.0.extract.trunc
  %sub = sub i32 182, %add19
  %call29 = call i32 @vidtv_memset(ptr noundef %0, i32 noundef %add27, i32 noundef %args.sroa.1152.8.extract.trunc, i32 noundef 255, i32 noundef %sub) #5
  %add30 = add i32 %call29, %add24
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %add30)
  %cmp.not = icmp eq i32 %add30, 188
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then:                                          ; preds = %entry
  %call31 = call i32 @___ratelimit(ptr noundef nonnull @vidtv_ts_pcr_write_into._rs, ptr noundef nonnull @__func__.vidtv_ts_pcr_write_into) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool.not = icmp eq i32 %call31, 0
  br i1 %tobool.not, label %if.then.if.end34_crit_edge, label %do.end

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vidtv_ts_pcr_write_into, i32 noundef 133, i32 noundef 188, i32 noundef %add30) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then.if.end34_crit_edge, %entry.if.end34_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ts_adap) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ts_header) #5
  ret i32 %add30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_ts.c", i32 79, i32 3}
!2 = !{ptr @vidtv_ts_null_write_into._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vidtv_ts_null_write_into, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vidtv_ts_null_write_into._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vidtv_ts_null_write_into._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vidtv_ts_pcr_write_into._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vidtv/vidtv_ts.c", i32 131, i32 3}
!10 = !{ptr @__func__.vidtv_ts_pcr_write_into, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @vidtv_ts_pcr_write_into._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @vidtv_ts_pcr_write_into._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
