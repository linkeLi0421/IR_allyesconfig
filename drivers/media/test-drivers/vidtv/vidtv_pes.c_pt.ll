; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_pes.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_pes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vidtv_pes_optional_pts = type <{ i8, i16, i16 }>
%struct.vidtv_pes_optional_pts_dts = type <{ i8, i16, i16, i8, i16, i16 }>
%struct.vidtv_mpeg_pes = type <{ i32, i16, [0 x %struct.vidtv_pes_optional] }>
%struct.vidtv_pes_optional = type <{ i16, i8 }>
%struct.vidtv_mpeg_ts_adaption = type { i8, %struct.anon.1, [0 x i8] }
%struct.anon.1 = type { i8 }
%struct.vidtv_mpeg_ts = type <{ i8, i16, %struct.anon }>
%struct.anon = type { i8 }
%struct.pes_write_args = type { ptr, ptr, i32, i32, i32, i16, i32, ptr, i16, i8, i64, i8, i64, i32, i64 }

@vidtv_pes_write_into._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_pes_write_into = private unnamed_addr constant [21 x i8] c"vidtv_pes_write_into\00", align 1
@vidtv_pes_write_into._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_pes_write_into, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014dvb_vidtv_bridge:%s, %d: buffer is misaligned, while starting PES\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/test-drivers/vidtv/vidtv_pes.c\00", [51 x i8] zeroinitializer }, align 32
@vidtv_pes_write_into._entry_ptr = internal global ptr @vidtv_pes_write_into._entry, section ".printk_index", align 4
@vidtv_pes_write_stuffing._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_pes_write_stuffing = private unnamed_addr constant [25 x i8] c"vidtv_pes_write_stuffing\00", align 1
@vidtv_pes_write_stuffing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @__func__.vidtv_pes_write_stuffing, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014dvb_vidtv_bridge:%s, %d: write size was %d, expected %d\0A\00", [37 x i8] zeroinitializer }, align 32
@vidtv_pes_write_stuffing._entry_ptr = internal global ptr @vidtv_pes_write_stuffing._entry, section ".printk_index", align 4
@vidtv_pes_write_header_stuffing._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_pes_write_header_stuffing = private unnamed_addr constant [32 x i8] c"vidtv_pes_write_header_stuffing\00", align 1
@vidtv_pes_write_header_stuffing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.vidtv_pes_write_header_stuffing, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014dvb_vidtv_bridge:%s, %d: More than %d stuffing bytes in PES packet header\0A\00", [51 x i8] zeroinitializer }, align 32
@vidtv_pes_write_header_stuffing._entry_ptr = internal global ptr @vidtv_pes_write_header_stuffing._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 335, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 265, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [48 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_pes.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 68, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @vidtv_pes_write_header_stuffing._entry, ptr @vidtv_pes_write_header_stuffing._entry_ptr, ptr @vidtv_pes_write_into._entry, ptr @vidtv_pes_write_into._entry_ptr, ptr @vidtv_pes_write_stuffing._entry, ptr @vidtv_pes_write_stuffing._entry_ptr, ptr @vidtv_pes_write_into._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vidtv_pes_write_stuffing._rs, ptr @.str.3, ptr @vidtv_pes_write_header_stuffing._rs, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_into._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_into._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_stuffing._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_stuffing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_header_stuffing._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_pes_write_header_stuffing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_pes_write_into(ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %pts.i.i = alloca %struct.vidtv_pes_optional_pts, align 1
  %pts_dts.i.i = alloca %struct.vidtv_pes_optional_pts_dts, align 1
  %pes_header.i = alloca %struct.vidtv_mpeg_pes, align 4
  %pes_optional.i = alloca %struct.vidtv_pes_optional, align 2
  %rem.i.i.i = alloca i64, align 8
  %ts_adap.i.i = alloca %struct.vidtv_mpeg_ts_adaption, align 2
  %ts_header.i = alloca %struct.vidtv_mpeg_ts, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dest_offset = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 3
  %0 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dest_offset, align 4
  %rem = urem i32 %1, 188
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 8
  %dest_buf_sz3 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 4
  %4 = ptrtoint ptr %dest_buf_sz3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dest_buf_sz3, align 8
  %pid4 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 5
  %6 = ptrtoint ptr %pid4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pid4, align 4
  %continuity_counter5 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 7
  %8 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %continuity_counter5, align 4
  %pcr6 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 14
  %10 = ptrtoint ptr %pcr6 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pcr6, align 8
  %encoder_id12 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 6
  %12 = ptrtoint ptr %encoder_id12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_id12, align 8
  %send_pts13 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 9
  %14 = ptrtoint ptr %send_pts13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %send_pts13, align 2, !range !29
  %pts14 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 10
  %16 = ptrtoint ptr %pts14 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pts14, align 8
  %send_dts15 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 11
  %18 = ptrtoint ptr %send_dts15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %send_dts15, align 8, !range !29
  %dts18 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 12
  %20 = ptrtoint ptr %dts18 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dts18, align 8
  %stream_id19 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 8
  %22 = ptrtoint ptr %stream_id19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %stream_id19, align 8
  %n_pes_h_s_bytes20 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 13
  %24 = ptrtoint ptr %n_pes_h_s_bytes20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_pes_h_s_bytes20, align 8
  %access_unit_len21 = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 2
  %26 = ptrtoint ptr %access_unit_len21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %access_unit_len21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool25.not = icmp eq i32 %rem, 0
  br i1 %tobool25.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_pes_write_into._rs, ptr noundef nonnull @__func__.vidtv_pes_write_into) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.vidtv_pes_write_into, i32 noundef 335) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %28 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %args, align 8
  %30 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dest_offset, align 4
  %32 = ptrtoint ptr %dest_buf_sz3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dest_buf_sz3, align 8
  %sub = sub nuw nsw i32 188, %rem
  %call32 = tail call i32 @vidtv_memset(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef 255, i32 noundef %sub) #4
  br label %if.end34

if.end34:                                         ; preds = %if.end, %entry.if.end34_crit_edge
  %nbytes.0 = phi i32 [ %call32, %if.end ], [ 0, %entry.if.end34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool35.not177 = icmp eq i32 %27, 0
  br i1 %tobool35.not177, label %if.end34.while.end_crit_edge, label %while.body.lr.ph

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end34
  %bitfield.i = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header.i, i32 0, i32 1
  %34 = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header.i, i32 0, i32 2
  %35 = getelementptr inbounds %struct.vidtv_mpeg_ts_adaption, ptr %ts_adap.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  %36 = or i16 %23, 256
  %phi.bo.i = zext i16 %36 to i32
  %cond.i = select i1 %cmp.i, i32 445, i32 %phi.bo.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i = icmp ne i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.i = icmp ne i8 %19, 0
  %brmerge.demorgan.i.i146 = and i1 %tobool.i, %tobool2.i
  %spec.select.i.i147 = select i1 %tobool.i, i32 8, i32 3
  %len.0.i.i = select i1 %brmerge.demorgan.i.i146, i32 13, i32 %spec.select.i.i147
  %add.i = add i32 %27, %len.0.i.i
  %conv3.i = trunc i32 %add.i to i16
  %length.i = getelementptr inbounds %struct.vidtv_mpeg_pes, ptr %pes_header.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool8.not.i = icmp eq i8 %19, 0
  %or.cond.i = select i1 %tobool5.not.i, i1 true, i1 %tobool8.not.i
  %spec.select.i = select i1 %tobool5.not.i, i16 -32768, i16 -32640
  %pes_opt_bitfield.0.i = select i1 %or.cond.i, i16 %spec.select.i, i16 -32576
  %length28.i = getelementptr inbounds %struct.vidtv_pes_optional, ptr %pes_optional.i, i32 0, i32 1
  %and38.i.i = lshr i64 %17, 29
  %37 = trunc i64 %and38.i.i to i8
  %38 = and i8 %37, 14
  %conv.i.i149 = or i8 %38, 49
  %and11.i.i = lshr i64 %17, 14
  %39 = trunc i64 %and11.i.i to i16
  %conv14.i.i = or i16 %39, 1
  %pts2.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts_dts, ptr %pts_dts.i.i, i32 0, i32 1
  %.tr90.i.i = trunc i64 %17 to i16
  %40 = shl i16 %.tr90.i.i, 1
  %conv18.i.i = or i16 %40, 1
  %pts3.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts_dts, ptr %pts_dts.i.i, i32 0, i32 2
  %and19.i.i = lshr i64 %21, 29
  %41 = trunc i64 %and19.i.i to i8
  %42 = and i8 %41, 14
  %conv23.i.i = or i8 %42, 17
  %dts1.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts_dts, ptr %pts_dts.i.i, i32 0, i32 3
  %and25.i.i = lshr i64 %21, 14
  %43 = trunc i64 %and25.i.i to i16
  %conv28.i.i = or i16 %43, 1
  %dts2.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts_dts, ptr %pts_dts.i.i, i32 0, i32 4
  %.tr91.i.i = trunc i64 %21 to i16
  %44 = shl i16 %.tr91.i.i, 1
  %conv33.i.i = or i16 %44, 1
  %dts3.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts_dts, ptr %pts_dts.i.i, i32 0, i32 5
  %conv42.i.i = or i8 %38, 33
  %pts249.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts, ptr %pts.i.i, i32 0, i32 1
  %pts355.i.i = getelementptr inbounds %struct.vidtv_pes_optional_pts, ptr %pts.i.i, i32 0, i32 2
  %from = getelementptr inbounds %struct.pes_write_args, ptr %args, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end79.while.body_crit_edge, %while.body.lr.ph
  %nbytes.1183 = phi i32 [ %nbytes.0, %while.body.lr.ph ], [ %add85, %if.end79.while.body_crit_edge ]
  %need_pcr.0.off0182 = phi i1 [ true, %while.body.lr.ph ], [ false, %if.end79.while.body_crit_edge ]
  %wrote_pes_header23.0.off0181 = phi i1 [ false, %while.body.lr.ph ], [ true, %if.end79.while.body_crit_edge ]
  %remaining_len.0179 = phi i32 [ %27, %while.body.lr.ph ], [ %sub87, %if.end79.while.body_crit_edge ]
  %pes_header_args.sroa.33164.0178 = phi i32 [ %25, %while.body.lr.ph ], [ %pes_header_args.sroa.33164.2, %if.end79.while.body_crit_edge ]
  br i1 %wrote_pes_header23.0.off0181, label %while.body.if.end44_crit_edge, label %if.then37

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then37:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %45 = ptrtoint ptr %send_pts13 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %send_pts13, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool39 = icmp ne i8 %46, 0
  %47 = ptrtoint ptr %send_dts15 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %send_dts15, align 8, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool41 = icmp ne i8 %48, 0
  %brmerge.demorgan.i.i = and i1 %tobool39, %tobool41
  %spec.select.i.op.i.neg.op = select i1 %tobool39, i32 170, i32 175
  %sub43 = select i1 %brmerge.demorgan.i.i, i32 165, i32 %spec.select.i.op.i.neg.op
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %while.body.if.end44_crit_edge
  %available_space.0 = phi i32 [ 184, %while.body.if.end44_crit_edge ], [ %sub43, %if.then37 ]
  %49 = ptrtoint ptr %n_pes_h_s_bytes20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_pes_h_s_bytes20, align 8
  %sub46 = sub i32 %available_space.0, %50
  %sub49 = add i32 %sub46, -8
  %available_space.1 = select i1 %need_pcr.0.off0182, i32 %sub49, i32 %sub46
  %stuff_bytes.0 = select i1 %need_pcr.0.off0182, i32 8, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %available_space.1, i32 %remaining_len.0179)
  %cmp.not = icmp ugt i32 %available_space.1, %remaining_len.0179
  br i1 %cmp.not, label %if.else52, label %if.end44.if.end61_crit_edge

if.end44.if.end61_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.else52:                                        ; preds = %if.end44
  %sub53 = sub i32 %available_space.1, %remaining_len.0179
  %add54 = add i32 %sub53, %stuff_bytes.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %add54)
  %cmp55 = icmp ugt i32 %add54, 182
  br i1 %cmp55, label %if.then56, label %if.else52.if.end61_crit_edge

if.else52.if.end61_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then56:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #6
  %sub58.neg = add i32 %remaining_len.0179, 182
  %sub59 = sub i32 %sub58.neg, %add54
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.else52.if.end61_crit_edge, %if.end44.if.end61_crit_edge
  %payload_size.0 = phi i32 [ %sub59, %if.then56 ], [ %remaining_len.0179, %if.else52.if.end61_crit_edge ], [ %available_space.1, %if.end44.if.end61_crit_edge ]
  %stuff_bytes.1 = phi i32 [ 182, %if.then56 ], [ %add54, %if.else52.if.end61_crit_edge ], [ %stuff_bytes.0, %if.end44.if.end61_crit_edge ]
  %51 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dest_offset, align 4
  %add63 = add i32 %52, %nbytes.1183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ts_header.i) #4
  %53 = ptrtoint ptr %ts_header.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1191182336, ptr %ts_header.i, align 4
  %shl.i = select i1 %wrote_pes_header23.0.off0181, i16 0, i16 16384
  %or.i = or i16 %shl.i, %7
  %54 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %or.i, ptr %bitfield.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stuff_bytes.1)
  %cmp.not.i = icmp eq i32 %stuff_bytes.1, 0
  %bf.shl.i = select i1 %cmp.not.i, i8 0, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 182, i32 %stuff_bytes.1)
  %cmp10.i = icmp ult i32 %stuff_bytes.1, 182
  %spec.select = select i1 %cmp10.i, i8 8, i8 0
  %bf.set8.i = or i8 %spec.select, %bf.shl.i
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %9, align 1
  %bf.shl20.i = shl i8 %56, 4
  %bf.set22.i = or i8 %bf.shl20.i, %bf.set8.i
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %bf.set22.i, ptr %34, align 1
  call void @vidtv_ts_inc_cc(ptr noundef %9) #4
  %call.i = call i32 @vidtv_memcpy(ptr noundef %3, i32 noundef %add63, i32 noundef %5, ptr noundef nonnull %ts_header.i, i32 noundef 4) #4
  %add26.i = add i32 %call.i, %add63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ts_adap.i.i) #4
  %58 = ptrtoint ptr %ts_adap.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %ts_adap.i.i, align 2
  br i1 %cmp.not.i, label %if.end61.vidtv_pes_write_ts_h.exit_crit_edge, label %if.end.i.i

if.end61.vidtv_pes_write_ts_h.exit_crit_edge:     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_ts_h.exit

if.end.i.i:                                       ; preds = %if.end61
  %59 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i.i = load i8, ptr %35, align 1
  %spec.select.v.i.i = select i1 %need_pcr.0.off0182, i8 10, i8 2
  %spec.select.i.i = or i8 %bf.load.i.i, %spec.select.v.i.i
  %spec.select78.i.i = select i1 %need_pcr.0.off0182, i8 8, i8 2
  store i8 %spec.select.i.i, ptr %35, align 1
  %conv.i.i = zext i8 %spec.select78.i.i to i32
  %sub.i.i = sub nsw i32 %stuff_bytes.1, %conv.i.i
  %sub12.i.i = add nsw i8 %spec.select78.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then17.i.i, label %if.end.i.i.if.end18.i.i_crit_edge, !prof !30

if.end.i.i.if.end18.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then17.i.i, %if.end.i.i.if.end18.i.i_crit_edge
  %stuff_nbytes.0.i.i = phi i32 [ 0, %if.then17.i.i ], [ %sub.i.i, %if.end.i.i.if.end18.i.i_crit_edge ]
  %60 = trunc i32 %stuff_nbytes.0.i.i to i8
  %conv21.i.i = add nuw i8 %sub12.i.i, %60
  %61 = ptrtoint ptr %ts_adap.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv21.i.i, ptr %ts_adap.i.i, align 2
  %call.i.i = call i32 @vidtv_memcpy(ptr noundef %3, i32 noundef %add26.i, i32 noundef %5, ptr noundef nonnull %ts_adap.i.i, i32 noundef 2) #4
  br i1 %need_pcr.0.off0182, label %if.then25.i.i, label %if.end18.i.i.if.end31.i.i_crit_edge

if.end18.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i.i

if.then25.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add27.i.i = add i32 %call.i.i, %add26.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i.i.i) #4
  %62 = ptrtoint ptr %rem.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %rem.i.i.i, align 8, !annotation !31
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 %add27.i.i
  %call.i.i.i = call i64 @div64_u64_rem(i64 noundef %11, i64 noundef 300, ptr noundef nonnull %rem.i.i.i) #4
  %63 = ptrtoint ptr %rem.i.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %rem.i.i.i, align 8
  %shr.i.i.i = lshr i64 %call.i.i.i, 25
  %conv.i.i.i = trunc i64 %shr.i.i.i to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %65 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv.i.i.i, ptr %add.ptr.i.i.i, align 1
  %shr1.i.i.i = lshr i64 %call.i.i.i, 17
  %conv2.i.i.i = trunc i64 %shr1.i.i.i to i8
  %incdec.ptr3.i.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 1
  %66 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv2.i.i.i, ptr %incdec.ptr.i.i.i, align 1
  %shr4.i.i.i = lshr i64 %call.i.i.i, 9
  %conv5.i.i.i = trunc i64 %shr4.i.i.i to i8
  %incdec.ptr6.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.i.i, i32 1
  %67 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv5.i.i.i, ptr %incdec.ptr3.i.i.i, align 1
  %shr7.i.i.i = lshr i64 %call.i.i.i, 1
  %conv8.i.i.i = trunc i64 %shr7.i.i.i to i8
  %incdec.ptr9.i.i.i = getelementptr i8, ptr %incdec.ptr6.i.i.i, i32 1
  %68 = ptrtoint ptr %incdec.ptr6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv8.i.i.i, ptr %incdec.ptr6.i.i.i, align 1
  %shl.i.i.i = shl i64 %call.i.i.i, 7
  %shr10.i.i.i = lshr i64 %64, 8
  %or.i.i.i = or i64 %shr10.i.i.i, %shl.i.i.i
  %69 = trunc i64 %or.i.i.i to i8
  %conv12.i.i.i = or i8 %69, 126
  %incdec.ptr13.i.i.i = getelementptr i8, ptr %incdec.ptr9.i.i.i, i32 1
  %70 = ptrtoint ptr %incdec.ptr9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv12.i.i.i, ptr %incdec.ptr9.i.i.i, align 1
  %conv14.i.i.i = trunc i64 %64 to i8
  %71 = ptrtoint ptr %incdec.ptr13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv14.i.i.i, ptr %incdec.ptr13.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i.i.i) #4
  %add29.i.i = add i32 %call.i.i, 6
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then25.i.i, %if.end18.i.i.if.end31.i.i_crit_edge
  %nbytes.0.i.i = phi i32 [ %add29.i.i, %if.then25.i.i ], [ %call.i.i, %if.end18.i.i.if.end31.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stuff_nbytes.0.i.i)
  %tobool32.not.i.i = icmp eq i32 %stuff_nbytes.0.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end31.i.i.if.end39.i.i_crit_edge, label %if.then33.i.i

if.end31.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i.i

if.then33.i.i:                                    ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %add35.i.i = add i32 %nbytes.0.i.i, %add26.i
  %call37.i.i = call i32 @vidtv_memset(ptr noundef %3, i32 noundef %add35.i.i, i32 noundef %5, i32 noundef 255, i32 noundef %stuff_nbytes.0.i.i) #4
  %add38.i.i = add i32 %call37.i.i, %nbytes.0.i.i
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then33.i.i, %if.end31.i.i.if.end39.i.i_crit_edge
  %nbytes.1.i.i = phi i32 [ %add38.i.i, %if.then33.i.i ], [ %nbytes.0.i.i, %if.end31.i.i.if.end39.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %nbytes.1.i.i, i32 %stuff_bytes.1)
  %cmp41.not.i.i = icmp eq i32 %nbytes.1.i.i, %stuff_bytes.1
  br i1 %cmp41.not.i.i, label %if.end39.i.i.vidtv_pes_write_ts_h.exit_crit_edge, label %if.then43.i.i

if.end39.i.i.vidtv_pes_write_ts_h.exit_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_ts_h.exit

if.then43.i.i:                                    ; preds = %if.end39.i.i
  %call44.i.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_pes_write_stuffing._rs, ptr noundef nonnull @__func__.vidtv_pes_write_stuffing) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i)
  %tobool45.not.i.i = icmp eq i32 %call44.i.i, 0
  br i1 %tobool45.not.i.i, label %if.then43.i.i.vidtv_pes_write_ts_h.exit_crit_edge, label %do.end.i.i

if.then43.i.i.vidtv_pes_write_ts_h.exit_crit_edge: ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_ts_h.exit

do.end.i.i:                                       ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.vidtv_pes_write_stuffing, i32 noundef 266, i32 noundef %nbytes.1.i.i, i32 noundef %stuff_bytes.1) #7
  br label %vidtv_pes_write_ts_h.exit

vidtv_pes_write_ts_h.exit:                        ; preds = %do.end.i.i, %if.then43.i.i.vidtv_pes_write_ts_h.exit_crit_edge, %if.end39.i.i.vidtv_pes_write_ts_h.exit_crit_edge, %if.end61.vidtv_pes_write_ts_h.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end61.vidtv_pes_write_ts_h.exit_crit_edge ], [ %nbytes.1.i.i, %if.then43.i.i.vidtv_pes_write_ts_h.exit_crit_edge ], [ %nbytes.1.i.i, %do.end.i.i ], [ %stuff_bytes.1, %if.end39.i.i.vidtv_pes_write_ts_h.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ts_adap.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ts_header.i) #4
  %add29.i = add i32 %call.i, %nbytes.1183
  %add71 = add i32 %add29.i, %retval.0.i.i
  br i1 %wrote_pes_header23.0.off0181, label %vidtv_pes_write_ts_h.exit.if.end79_crit_edge, label %if.then73

vidtv_pes_write_ts_h.exit.if.end79_crit_edge:     ; preds = %vidtv_pes_write_ts_h.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then73:                                        ; preds = %vidtv_pes_write_ts_h.exit
  %72 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dest_offset, align 4
  %add75 = add i32 %73, %add71
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %pes_header.i) #4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %pes_optional.i) #4
  %74 = ptrtoint ptr %pes_header.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %cond.i, ptr %pes_header.i, align 4
  %75 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv3.i, ptr %length.i, align 4
  %76 = ptrtoint ptr %pes_optional.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %pes_opt_bitfield.0.i, ptr %pes_optional.i, align 2
  %add26.i148 = add i32 %pes_header_args.sroa.33164.0178, %len.0.i.i
  %77 = trunc i32 %add26.i148 to i8
  %conv27.i = add i8 %77, -3
  %78 = ptrtoint ptr %length28.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv27.i, ptr %length28.i, align 2
  %call30.i = call i32 @vidtv_memcpy(ptr noundef %3, i32 noundef %add75, i32 noundef %5, ptr noundef nonnull %pes_header.i, i32 noundef 6) #4
  %add34.i = add i32 %call30.i, %add75
  %call36.i = call i32 @vidtv_memcpy(ptr noundef %3, i32 noundef %add34.i, i32 noundef %5, ptr noundef nonnull %pes_optional.i, i32 noundef 3) #4
  %add37.i = add i32 %call36.i, %call30.i
  %add39.i = add i32 %add37.i, %add75
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pts.i.i) #4
  %79 = call ptr @memset(ptr %pts.i.i, i32 0, i32 5)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %pts_dts.i.i) #4
  %80 = call ptr @memset(ptr %pts_dts.i.i, i32 0, i32 10)
  br i1 %tobool5.not.i, label %land.lhs.true.i.i, label %land.lhs.true4.i.i

land.lhs.true.i.i:                                ; preds = %if.then73
  br i1 %tobool8.not.i, label %land.lhs.true.i.i.if.end57.i.i_crit_edge, label %land.lhs.true.i.i.vidtv_pes_write_pts_dts.exit.i_crit_edge

land.lhs.true.i.i.vidtv_pes_write_pts_dts.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_pts_dts.exit.i

land.lhs.true.i.i.if.end57.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57.i.i

land.lhs.true4.i.i:                               ; preds = %if.then73
  br i1 %tobool8.not.i, label %if.then36.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %81 = ptrtoint ptr %pts_dts.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i.i149, ptr %pts_dts.i.i, align 1
  %82 = ptrtoint ptr %pts2.i.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %conv14.i.i, ptr %pts2.i.i, align 1
  %83 = ptrtoint ptr %pts3.i.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %conv18.i.i, ptr %pts3.i.i, align 1
  %84 = ptrtoint ptr %dts1.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv23.i.i, ptr %dts1.i.i, align 1
  %85 = ptrtoint ptr %dts2.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 2)
  store i16 %conv28.i.i, ptr %dts2.i.i, align 1
  %86 = ptrtoint ptr %dts3.i.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %conv33.i.i, ptr %dts3.i.i, align 1
  br label %if.end57.i.i

if.then36.i.i:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv42.i.i, ptr %pts.i.i, align 1
  %88 = ptrtoint ptr %pts249.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %conv14.i.i, ptr %pts249.i.i, align 1
  %89 = ptrtoint ptr %pts355.i.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 %conv18.i.i, ptr %pts355.i.i, align 1
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then36.i.i, %if.then7.i.i, %land.lhs.true.i.i.if.end57.i.i_crit_edge
  %op.0.i.i = phi ptr [ %pts_dts.i.i, %if.then7.i.i ], [ %pts.i.i, %if.then36.i.i ], [ null, %land.lhs.true.i.i.if.end57.i.i_crit_edge ]
  %op_sz.0.i.i = phi i32 [ 10, %if.then7.i.i ], [ 5, %if.then36.i.i ], [ 0, %land.lhs.true.i.i.if.end57.i.i_crit_edge ]
  %call.i.i150 = call i32 @vidtv_memcpy(ptr noundef %3, i32 noundef %add39.i, i32 noundef %5, ptr noundef %op.0.i.i, i32 noundef %op_sz.0.i.i) #4
  br label %vidtv_pes_write_pts_dts.exit.i

vidtv_pes_write_pts_dts.exit.i:                   ; preds = %if.end57.i.i, %land.lhs.true.i.i.vidtv_pes_write_pts_dts.exit.i_crit_edge
  %retval.0.i.i151 = phi i32 [ %call.i.i150, %if.end57.i.i ], [ 0, %land.lhs.true.i.i.vidtv_pes_write_pts_dts.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %pts_dts.i.i) #4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pts.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %pes_header_args.sroa.33164.0178)
  %cmp.i.i152 = icmp ugt i32 %pes_header_args.sroa.33164.0178, 32
  br i1 %cmp.i.i152, label %if.then.i.i, label %vidtv_pes_write_pts_dts.exit.i.vidtv_pes_write_h.exit_crit_edge

vidtv_pes_write_pts_dts.exit.i.vidtv_pes_write_h.exit_crit_edge: ; preds = %vidtv_pes_write_pts_dts.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_h.exit

if.then.i.i:                                      ; preds = %vidtv_pes_write_pts_dts.exit.i
  %call.i76.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_pes_write_header_stuffing._rs, ptr noundef nonnull @__func__.vidtv_pes_write_header_stuffing) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool.not.i77.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool.not.i77.i, label %if.then.i.i.vidtv_pes_write_h.exit_crit_edge, label %do.end.i.i153

if.then.i.i.vidtv_pes_write_h.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vidtv_pes_write_h.exit

do.end.i.i153:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_pes_write_header_stuffing, i32 noundef 69, i32 noundef 32) #7
  br label %vidtv_pes_write_h.exit

vidtv_pes_write_h.exit:                           ; preds = %do.end.i.i153, %if.then.i.i.vidtv_pes_write_h.exit_crit_edge, %vidtv_pes_write_pts_dts.exit.i.vidtv_pes_write_h.exit_crit_edge
  %pes_header_args.sroa.33164.1 = phi i32 [ %pes_header_args.sroa.33164.0178, %vidtv_pes_write_pts_dts.exit.i.vidtv_pes_write_h.exit_crit_edge ], [ 32, %do.end.i.i153 ], [ 32, %if.then.i.i.vidtv_pes_write_h.exit_crit_edge ]
  %call6.i.i = call i32 @vidtv_memset(ptr noundef %3, i32 noundef %add75, i32 noundef %5, i32 noundef 255, i32 noundef %pes_header_args.sroa.33164.1) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %pes_optional.i) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %pes_header.i) #4
  %add42.i = add i32 %add37.i, %add71
  %add44.i = add i32 %add42.i, %retval.0.i.i151
  %add78 = add i32 %add44.i, %call6.i.i
  br label %if.end79

if.end79:                                         ; preds = %vidtv_pes_write_h.exit, %vidtv_pes_write_ts_h.exit.if.end79_crit_edge
  %pes_header_args.sroa.33164.2 = phi i32 [ %pes_header_args.sroa.33164.0178, %vidtv_pes_write_ts_h.exit.if.end79_crit_edge ], [ %pes_header_args.sroa.33164.1, %vidtv_pes_write_h.exit ]
  %nbytes.2 = phi i32 [ %add71, %vidtv_pes_write_ts_h.exit.if.end79_crit_edge ], [ %add78, %vidtv_pes_write_h.exit ]
  %90 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %args, align 8
  %92 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dest_offset, align 4
  %add82 = add i32 %93, %nbytes.2
  %94 = ptrtoint ptr %dest_buf_sz3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dest_buf_sz3, align 8
  %96 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %from, align 4
  %call84 = call i32 @vidtv_memcpy(ptr noundef %91, i32 noundef %add82, i32 noundef %95, ptr noundef %97, i32 noundef %payload_size.0) #4
  %add85 = add i32 %call84, %nbytes.2
  %98 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %from, align 4
  %add.ptr = getelementptr i8, ptr %99, i32 %payload_size.0
  store ptr %add.ptr, ptr %from, align 4
  %sub87 = sub i32 %remaining_len.0179, %payload_size.0
  %tobool35.not = icmp eq i32 %sub87, 0
  br i1 %tobool35.not, label %if.end79.while.end_crit_edge, label %if.end79.while.body_crit_edge

if.end79.while.body_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end79.while.end_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end79.while.end_crit_edge, %if.end34.while.end_crit_edge
  %nbytes.1.lcssa = phi i32 [ %nbytes.0, %if.end34.while.end_crit_edge ], [ %add85, %if.end79.while.end_crit_edge ]
  ret i32 %nbytes.1.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memcpy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_ts_inc_cc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_pes.c", i32 335, i32 3}
!2 = !{ptr @vidtv_pes_write_into._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vidtv_pes_write_into, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @vidtv_pes_write_into._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @vidtv_pes_write_into._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @vidtv_pes_write_stuffing._rs, !9, !"_rs", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vidtv/vidtv_pes.c", i32 265, i32 3}
!10 = !{ptr @__func__.vidtv_pes_write_stuffing, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @vidtv_pes_write_stuffing._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @vidtv_pes_write_stuffing._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @vidtv_pes_write_header_stuffing._rs, !15, !"_rs", i1 false, i1 false}
!15 = !{!"../drivers/media/test-drivers/vidtv/vidtv_pes.c", i32 68, i32 3}
!16 = !{ptr @__func__.vidtv_pes_write_header_stuffing, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vidtv_pes_write_header_stuffing._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @vidtv_pes_write_header_stuffing._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"auto-init"}
