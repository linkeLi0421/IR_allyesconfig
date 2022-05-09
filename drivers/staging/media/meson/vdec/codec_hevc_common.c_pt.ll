; ModuleID = '/llk/IR_all_yes/drivers/staging/media/meson/vdec/codec_hevc_common.c_pt.bc'
source_filename = "../drivers/staging/media/meson/vdec/codec_hevc_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+codec_hevc_setup_decode_head\22, \22a\22\09"
module asm "\09.weak\09__crc_codec_hevc_setup_decode_head\09\09\09\09"
module asm "\09.long\09__crc_codec_hevc_setup_decode_head\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_codec_hevc_setup_decode_head:\09\09\09\09\09"
module asm "\09.asciz \09\22codec_hevc_setup_decode_head\22\09\09\09\09\09"
module asm "__kstrtabns_codec_hevc_setup_decode_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+codec_hevc_free_fbc_buffers\22, \22a\22\09"
module asm "\09.weak\09__crc_codec_hevc_free_fbc_buffers\09\09\09\09"
module asm "\09.long\09__crc_codec_hevc_free_fbc_buffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_codec_hevc_free_fbc_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22codec_hevc_free_fbc_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_codec_hevc_free_fbc_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+codec_hevc_free_mmu_headers\22, \22a\22\09"
module asm "\09.weak\09__crc_codec_hevc_free_mmu_headers\09\09\09\09"
module asm "\09.long\09__crc_codec_hevc_free_mmu_headers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_codec_hevc_free_mmu_headers:\09\09\09\09\09"
module asm "\09.asciz \09\22codec_hevc_free_mmu_headers\22\09\09\09\09\09"
module asm "__kstrtabns_codec_hevc_free_mmu_headers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+codec_hevc_setup_buffers\22, \22a\22\09"
module asm "\09.weak\09__crc_codec_hevc_setup_buffers\09\09\09\09"
module asm "\09.long\09__crc_codec_hevc_setup_buffers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_codec_hevc_setup_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22codec_hevc_setup_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_codec_hevc_setup_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+codec_hevc_fill_mmu_map\22, \22a\22\09"
module asm "\09.weak\09__crc_codec_hevc_fill_mmu_map\09\09\09\09"
module asm "\09.long\09__crc_codec_hevc_fill_mmu_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_codec_hevc_fill_mmu_map:\09\09\09\09\09"
module asm "\09.asciz \09\22codec_hevc_fill_mmu_map\22\09\09\09\09\09"
module asm "__kstrtabns_codec_hevc_fill_mmu_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.amvdec_session = type { ptr, %struct.v4l2_fh, ptr, ptr, %struct.v4l2_ctrl_handler, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i8, i8, i8, %struct.v4l2_fract, %struct.atomic_t, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, [96 x i8], i32, ptr, i32, i32, %struct.list_head, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, i64, i32, i32, [32 x i32], i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_fract = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.amvdec_core = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.v4l2_device, ptr, %struct.mutex }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.vdec_platform = type { ptr, i32, i32 }
%struct.codec_hevc_common = type { [24 x ptr], [24 x i32], [24 x ptr], [24 x i32], ptr, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }

@vdec_hevc_parser_cmd = dso_local constant { [37 x i16], [54 x i8] } { [37 x i16] [i16 1025, i16 -31743, i16 2048, i16 1026, i16 -28670, i16 5155, i16 -29501, i16 5155, i16 -30716, i16 -26587, i16 2048, i16 1278, i16 -31738, i16 -31727, i16 6144, i16 -31736, i16 -31735, i16 -29654, i16 -25557, i16 7168, i16 -31729, i16 -31737, i16 -32768, i16 -31736, i16 8192, i16 -22528, i16 -31728, i16 1246, i16 -31732, i16 -31731, i16 -21504, i16 -24576, i16 2240, i16 2272, i16 -23538, i16 -1024, i16 31744], [54 x i8] zeroinitializer }, align 32
@__kstrtab_codec_hevc_setup_decode_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_codec_hevc_setup_decode_head = external dso_local constant [0 x i8], align 1
@__ksymtab_codec_hevc_setup_decode_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @codec_hevc_setup_decode_head to i32), ptr @__kstrtab_codec_hevc_setup_decode_head, ptr @__kstrtabns_codec_hevc_setup_decode_head }, section "___ksymtab_gpl+codec_hevc_setup_decode_head", align 4
@__kstrtab_codec_hevc_free_fbc_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_codec_hevc_free_fbc_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_codec_hevc_free_fbc_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @codec_hevc_free_fbc_buffers to i32), ptr @__kstrtab_codec_hevc_free_fbc_buffers, ptr @__kstrtabns_codec_hevc_free_fbc_buffers }, section "___ksymtab_gpl+codec_hevc_free_fbc_buffers", align 4
@__kstrtab_codec_hevc_free_mmu_headers = external dso_local constant [0 x i8], align 1
@__kstrtabns_codec_hevc_free_mmu_headers = external dso_local constant [0 x i8], align 1
@__ksymtab_codec_hevc_free_mmu_headers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @codec_hevc_free_mmu_headers to i32), ptr @__kstrtab_codec_hevc_free_mmu_headers, ptr @__kstrtabns_codec_hevc_free_mmu_headers }, section "___ksymtab_gpl+codec_hevc_free_mmu_headers", align 4
@__kstrtab_codec_hevc_setup_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_codec_hevc_setup_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_codec_hevc_setup_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @codec_hevc_setup_buffers to i32), ptr @__kstrtab_codec_hevc_setup_buffers, ptr @__kstrtabns_codec_hevc_setup_buffers }, section "___ksymtab_gpl+codec_hevc_setup_buffers", align 4
@__kstrtab_codec_hevc_fill_mmu_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_codec_hevc_fill_mmu_map = external dso_local constant [0 x i8], align 1
@__ksymtab_codec_hevc_fill_mmu_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @codec_hevc_fill_mmu_map to i32), ptr @__kstrtab_codec_hevc_fill_mmu_map, ptr @__kstrtabns_codec_hevc_fill_mmu_map }, section "___ksymtab_gpl+codec_hevc_fill_mmu_map", align 4
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"vdec_hevc_parser_cmd\00", align 1
@___asan_gen_.2 = private constant [56 x i8] c"../drivers/staging/media/meson/vdec/codec_hevc_common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 16, i32 11 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_codec_hevc_fill_mmu_map, ptr @__ksymtab_codec_hevc_free_fbc_buffers, ptr @__ksymtab_codec_hevc_free_mmu_headers, ptr @__ksymtab_codec_hevc_setup_buffers, ptr @__ksymtab_codec_hevc_setup_decode_head, ptr @vdec_hevc_parser_cmd], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_hevc_parser_cmd to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @codec_hevc_setup_decode_head(ptr nocapture noundef readonly %sess, i32 noundef %is_10bit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %call = tail call i32 @amvdec_am21c_body_size(i32 noundef %3, i32 noundef %5) #4
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %call4 = tail call i32 @amvdec_am21c_head_size(i32 noundef %7, i32 noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_10bit)
  %tobool.not = icmp eq i32 %is_10bit, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54024, i32 noundef -2147483648) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp ult i32 %13, 3
  %. = select i1 %cmp.i, i32 0, i32 16
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54024, i32 noundef %.) #4
  %14 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform, align 4
  %revision12 = getelementptr inbounds %struct.vdec_platform, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %revision12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %revision12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp = icmp ult i32 %17, 4
  br i1 %cmp, label %if.then13, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %div34 = lshr i32 %call, 5
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 54028, i32 noundef %div34) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55452, i32 noundef %call) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55468, i32 noundef %call) #4
  tail call void @amvdec_write_dos(ptr noundef %1, i32 noundef 55460, i32 noundef %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_am21c_body_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_am21c_head_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amvdec_write_dos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @codec_hevc_free_fbc_buffers(ptr nocapture noundef readonly %sess, ptr nocapture noundef %comm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %dev1 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call = tail call i32 @amvdec_am21c_size(i32 noundef %5, i32 noundef %7) #4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [24 x ptr], ptr %comm, i32 0, i32 %i.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %i.017
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %call, ptr noundef nonnull %9, i32 noundef %11, i32 noundef 0) #4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amvdec_am21c_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @codec_hevc_free_mmu_headers(ptr nocapture noundef readonly %sess, ptr nocapture noundef %comm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  %dev1 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 2, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 3, i32 %i.026
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 294912, ptr noundef nonnull %5, i32 noundef %7, i32 noundef 0) #4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  %mmu_map_vaddr = getelementptr inbounds %struct.codec_hevc_common, ptr %comm, i32 0, i32 4
  %9 = ptrtoint ptr %mmu_map_vaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmu_map_vaddr, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %for.end.if.end11_crit_edge, label %if.then8

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmu_map_paddr = getelementptr inbounds %struct.codec_hevc_common, ptr %comm, i32 0, i32 5
  %11 = ptrtoint ptr %mmu_map_paddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmu_map_paddr, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 18432, ptr noundef nonnull %10, i32 noundef %12, i32 noundef 0) #4
  %13 = ptrtoint ptr %mmu_map_vaddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mmu_map_vaddr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @codec_hevc_setup_buffers(ptr nocapture noundef readonly %sess, ptr noundef %comm, i32 noundef %is_10bit) #0 align 64 {
entry:
  %paddr.i38 = alloca i32, align 4
  %paddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_10bit)
  %tobool.not = icmp eq i32 %is_10bit, 0
  br i1 %tobool.not, label %if.end5.thread, label %if.then

if.end5.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %platform101 = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  br label %if.end14

if.then:                                          ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %width.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %6 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height.i, align 4
  %call.i = tail call i32 @amvdec_am21c_size(i32 noundef %5, i32 noundef %7) #4
  %m2m_ctx.i = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %8 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx.i, align 8
  %rdy_queue.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %rdy_queue.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn29.i = load ptr, ptr %rdy_queue.i, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, %rdy_queue.i
  br i1 %cmp.not31.i, label %if.then.if.end5_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn32.i = phi ptr [ %.pn.i, %if.end.i.for.body.i_crit_edge ], [ %.pn29.i, %if.then.for.body.i_crit_edge ]
  %index.i = getelementptr i8, ptr %.pn32.i, i32 -732
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i) #4
  %13 = ptrtoint ptr %paddr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %paddr.i, align 4, !annotation !21
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %3, i32 noundef %call.i, ptr noundef nonnull %paddr.i, i32 noundef 3264, i32 noundef 0) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess, align 8
  %dev1.i.i = getelementptr inbounds %struct.amvdec_core, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1.i.i, align 4
  %18 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width.i, align 8
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %call.i28.i = call i32 @amvdec_am21c_size(i32 noundef %19, i32 noundef %21) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i
  %i.017.i.i = phi i32 [ 0, %if.then.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [24 x ptr], ptr %comm, i32 0, i32 %i.017.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4.i.i = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %i.017.i.i
  %24 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx4.i.i, align 4
  call void @dma_free_attrs(ptr noundef %17, i32 noundef %call.i28.i, ptr noundef nonnull %23, i32 noundef %25, i32 noundef 0) #4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 24
  br i1 %exitcond.not.i.i, label %codec_hevc_alloc_fbc_buffers.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr [24 x ptr], ptr %comm, i32 0, i32 %12
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %28 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %paddr.i, align 4
  %arrayidx6.i = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %12
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx6.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #4
  %31 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.i = load ptr, ptr %.pn32.i, align 4
  %32 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %m2m_ctx.i, align 8
  %rdy_queue4.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %33, i32 0, i32 7, i32 1
  %cmp.not.i = icmp eq ptr %.pn.i, %rdy_queue4.i
  br i1 %cmp.not.i, label %if.end.i.if.end5_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

codec_hevc_alloc_fbc_buffers.exit:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %if.then.if.end5_crit_edge
  %platform = getelementptr inbounds %struct.amvdec_core, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %platform, align 4
  %revision = getelementptr inbounds %struct.vdec_platform, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp.i = icmp ult i32 %37, 3
  %tobool8.not = or i1 %tobool.not, %cmp.i
  br i1 %tobool8.not, label %if.end5.if.end14_crit_edge, label %if.then9

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end5
  %38 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sess, align 8
  %dev1.i39 = getelementptr inbounds %struct.amvdec_core, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev1.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i39, align 4
  %mmu_map_paddr.i = getelementptr inbounds %struct.codec_hevc_common, ptr %comm, i32 0, i32 5
  %call.i.i40 = call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef 18432, ptr noundef %mmu_map_paddr.i, i32 noundef 3264, i32 noundef 0) #4
  %mmu_map_vaddr.i = getelementptr inbounds %struct.codec_hevc_common, ptr %comm, i32 0, i32 4
  %42 = ptrtoint ptr %mmu_map_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.i40, ptr %mmu_map_vaddr.i, align 4
  %tobool.not.i41 = icmp eq ptr %call.i.i40, null
  br i1 %tobool.not.i41, label %if.then9.if.then12_crit_edge, label %if.end.i44

if.then9.if.then12_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end.i44:                                       ; preds = %if.then9
  %m2m_ctx.i42 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %43 = ptrtoint ptr %m2m_ctx.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %m2m_ctx.i42, align 8
  %rdy_queue.i43 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %44, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %rdy_queue.i43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn34.i = load ptr, ptr %rdy_queue.i43, align 4
  %cmp.not36.i = icmp eq ptr %.pn34.i, %rdy_queue.i43
  br i1 %cmp.not36.i, label %if.end.i44.if.end14_crit_edge, label %if.end.i44.for.body.i46_crit_edge

if.end.i44.for.body.i46_crit_edge:                ; preds = %if.end.i44
  br label %for.body.i46

if.end.i44.if.end14_crit_edge:                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

for.body.i46:                                     ; preds = %if.end9.i.for.body.i46_crit_edge, %if.end.i44.for.body.i46_crit_edge
  %.pn37.i = phi ptr [ %.pn.i57, %if.end9.i.for.body.i46_crit_edge ], [ %.pn34.i, %if.end.i44.for.body.i46_crit_edge ]
  %index.i45 = getelementptr i8, ptr %.pn37.i, i32 -732
  %46 = ptrtoint ptr %index.i45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i45, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr.i38) #4
  %48 = ptrtoint ptr %paddr.i38 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %paddr.i38, align 4, !annotation !21
  %call.i33.i = call ptr @dma_alloc_attrs(ptr noundef %41, i32 noundef 294912, ptr noundef nonnull %paddr.i38, i32 noundef 3264, i32 noundef 0) #4
  %tobool7.not.i = icmp eq ptr %call.i33.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %for.body.i46
  %49 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sess, align 8
  %dev1.i.i47 = getelementptr inbounds %struct.amvdec_core, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %dev1.i.i47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev1.i.i47, align 4
  br label %for.body.i.i50

for.body.i.i50:                                   ; preds = %for.inc.i.i55.for.body.i.i50_crit_edge, %if.then8.i
  %i.026.i.i = phi i32 [ 0, %if.then8.i ], [ %inc.i.i53, %for.inc.i.i55.for.body.i.i50_crit_edge ]
  %arrayidx.i.i48 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 2, i32 %i.026.i.i
  %53 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i48, align 4
  %tobool.not.i.i49 = icmp eq ptr %54, null
  br i1 %tobool.not.i.i49, label %for.body.i.i50.for.inc.i.i55_crit_edge, label %if.then.i.i52

for.body.i.i50.for.inc.i.i55_crit_edge:           ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i55

if.then.i.i52:                                    ; preds = %for.body.i.i50
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4.i.i51 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 3, i32 %i.026.i.i
  %55 = ptrtoint ptr %arrayidx4.i.i51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i.i51, align 4
  call void @dma_free_attrs(ptr noundef %52, i32 noundef 294912, ptr noundef nonnull %54, i32 noundef %56, i32 noundef 0) #4
  %57 = ptrtoint ptr %arrayidx.i.i48 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx.i.i48, align 4
  br label %for.inc.i.i55

for.inc.i.i55:                                    ; preds = %if.then.i.i52, %for.body.i.i50.for.inc.i.i55_crit_edge
  %inc.i.i53 = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i54 = icmp eq i32 %inc.i.i53, 24
  br i1 %exitcond.not.i.i54, label %for.end.i.i, label %for.inc.i.i55.for.body.i.i50_crit_edge

for.inc.i.i55.for.body.i.i50_crit_edge:           ; preds = %for.inc.i.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i50

for.end.i.i:                                      ; preds = %for.inc.i.i55
  %58 = ptrtoint ptr %mmu_map_vaddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmu_map_vaddr.i, align 4
  %tobool7.not.i.i = icmp eq ptr %59, null
  br i1 %tobool7.not.i.i, label %for.end.i.i.codec_hevc_free_mmu_headers.exit.i_crit_edge, label %if.then8.i.i

for.end.i.i.codec_hevc_free_mmu_headers.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %codec_hevc_free_mmu_headers.exit.i

if.then8.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %mmu_map_paddr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mmu_map_paddr.i, align 4
  call void @dma_free_attrs(ptr noundef %52, i32 noundef 18432, ptr noundef nonnull %59, i32 noundef %61, i32 noundef 0) #4
  %62 = ptrtoint ptr %mmu_map_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %mmu_map_vaddr.i, align 4
  br label %codec_hevc_free_mmu_headers.exit.i

codec_hevc_free_mmu_headers.exit.i:               ; preds = %if.then8.i.i, %for.end.i.i.codec_hevc_free_mmu_headers.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i38) #4
  br label %if.then12

if.end9.i:                                        ; preds = %for.body.i46
  %arrayidx.i56 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 2, i32 %47
  %63 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i33.i, ptr %arrayidx.i56, align 4
  %64 = ptrtoint ptr %paddr.i38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %paddr.i38, align 4
  %arrayidx10.i = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 3, i32 %47
  %66 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx10.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr.i38) #4
  %67 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pn.i57 = load ptr, ptr %.pn37.i, align 4
  %68 = ptrtoint ptr %m2m_ctx.i42 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m2m_ctx.i42, align 8
  %rdy_queue5.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %69, i32 0, i32 7, i32 1
  %cmp.not.i58 = icmp eq ptr %.pn.i57, %rdy_queue5.i
  br i1 %cmp.not.i58, label %if.end9.i.if.end14_crit_edge, label %if.end9.i.for.body.i46_crit_edge

if.end9.i.for.body.i46_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i46

if.end9.i.if.end14_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then12:                                        ; preds = %codec_hevc_free_mmu_headers.exit.i, %if.then9.if.then12_crit_edge
  %70 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sess, align 8
  %dev1.i60 = getelementptr inbounds %struct.amvdec_core, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %dev1.i60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev1.i60, align 4
  %width.i61 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %74 = ptrtoint ptr %width.i61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %width.i61, align 8
  %height.i62 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %76 = ptrtoint ptr %height.i62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %height.i62, align 4
  %call.i63 = call i32 @amvdec_am21c_size(i32 noundef %75, i32 noundef %77) #4
  br label %for.body.i66

for.body.i66:                                     ; preds = %for.inc.i.for.body.i66_crit_edge, %if.then12
  %i.017.i = phi i32 [ 0, %if.then12 ], [ %inc.i, %for.inc.i.for.body.i66_crit_edge ]
  %arrayidx.i64 = getelementptr [24 x ptr], ptr %comm, i32 0, i32 %i.017.i
  %78 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i64, align 4
  %tobool.not.i65 = icmp eq ptr %79, null
  br i1 %tobool.not.i65, label %for.body.i66.for.inc.i_crit_edge, label %if.then.i67

for.body.i66.for.inc.i_crit_edge:                 ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i67:                                      ; preds = %for.body.i66
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx4.i = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %i.017.i
  %80 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx4.i, align 4
  call void @dma_free_attrs(ptr noundef %73, i32 noundef %call.i63, ptr noundef nonnull %79, i32 noundef %81, i32 noundef 0) #4
  %82 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %arrayidx.i64, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i67, %for.body.i66.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i66_crit_edge

for.inc.i.for.body.i66_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i66

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end9.i.if.end14_crit_edge, %if.end.i44.if.end14_crit_edge, %if.end5.if.end14_crit_edge, %if.end5.thread
  %platform105 = phi ptr [ %platform101, %if.end5.thread ], [ %platform, %if.end.i44.if.end14_crit_edge ], [ %platform, %if.end5.if.end14_crit_edge ], [ %platform, %if.end9.i.if.end14_crit_edge ]
  %83 = ptrtoint ptr %platform105 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %platform105, align 4
  %revision16 = getelementptr inbounds %struct.vdec_platform, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %revision16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %revision16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp = icmp eq i32 %86, 0
  %87 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sess, align 8
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  %m2m_ctx.i68 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %89 = ptrtoint ptr %m2m_ctx.i68 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %m2m_ctx.i68, align 8
  %num_rdy.i.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %90, i32 0, i32 7, i32 3
  %91 = ptrtoint ptr %num_rdy.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num_rdy.i.i, align 4
  %conv.i.i = zext i8 %92 to i32
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53632, i32 noundef 0) #4
  %93 = ptrtoint ptr %m2m_ctx.i68 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %m2m_ctx.i68, align 8
  %rdy_queue.i69 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %94, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %rdy_queue.i69 to i32
  call void @__asan_load4_noabort(i32 %95)
  %.pn90.i = load ptr, ptr %rdy_queue.i69, align 4
  %cmp.not93.i = icmp eq ptr %.pn90.i, %rdy_queue.i69
  br i1 %cmp.not93.i, label %if.then17.for.end.i_crit_edge, label %if.then17.for.body.i72_crit_edge

if.then17.for.body.i72_crit_edge:                 ; preds = %if.then17
  br label %for.body.i72

if.then17.for.end.i_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i72:                                     ; preds = %if.end23.i.for.body.i72_crit_edge, %if.then17.for.body.i72_crit_edge
  %.pn94.i = phi ptr [ %.pn.i75, %if.end23.i.for.body.i72_crit_edge ], [ %.pn90.i, %if.then17.for.body.i72_crit_edge ]
  %index.i71 = getelementptr i8, ptr %.pn94.i, i32 -732
  %96 = ptrtoint ptr %index.i71 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index.i71, align 4
  br i1 %tobool.not, label %if.else14.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i73 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %97
  %98 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i73, align 4
  %shl.i = shl i32 %97, 8
  %or.i = or i32 %shl.i, %99
  %or13.i = or i32 %or.i, 1
  br label %if.end23.i

if.else14.i:                                      ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #6
  %buf.095.i = getelementptr i8, ptr %.pn94.i, i32 -736
  %call.i.i74 = call ptr @vb2_plane_cookie(ptr noundef %buf.095.i, i32 noundef 0) #4
  %100 = ptrtoint ptr %call.i.i74 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %call.i.i74, align 4
  %call.i86.i = call ptr @vb2_plane_cookie(ptr noundef %buf.095.i, i32 noundef 1) #4
  %102 = ptrtoint ptr %call.i86.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call.i86.i, align 4
  %mul.i = shl i32 %97, 9
  %or17.i = or i32 %mul.i, %101
  %or18.i = or i32 %or17.i, 1
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53636, i32 noundef %or18.i) #4
  %or21.i = or i32 %mul.i, %103
  %or22.i = or i32 %or21.i, 257
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else14.i, %if.then12.i
  %or22.sink.i = phi i32 [ %or22.i, %if.else14.i ], [ %or13.i, %if.then12.i ]
  %buf_y_paddr.188.i = phi i32 [ %101, %if.else14.i ], [ %99, %if.then12.i ]
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53636, i32 noundef %or22.sink.i) #4
  %104 = ptrtoint ptr %.pn94.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pn.i75 = load ptr, ptr %.pn94.i, align 4
  %105 = ptrtoint ptr %m2m_ctx.i68 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %m2m_ctx.i68, align 8
  %rdy_queue5.i76 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %106, i32 0, i32 7, i32 1
  %cmp.not.i77 = icmp eq ptr %.pn.i75, %rdy_queue5.i76
  br i1 %cmp.not.i77, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.for.body.i72_crit_edge

if.end23.i.for.body.i72_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i72

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %if.then17.for.end.i_crit_edge
  %idx.0.lcssa.i = phi i32 [ 0, %if.then17.for.end.i_crit_edge ], [ %97, %if.end23.i.for.end.i_crit_edge ]
  %buf_y_paddr.0.lcssa.i = phi i32 [ 0, %if.then17.for.end.i_crit_edge ], [ %buf_y_paddr.188.i, %if.end23.i.for.end.i_crit_edge ]
  %shl33.pn.v.i = select i1 %tobool.not, i32 9, i32 8
  %shl33.pn.i = shl i32 %idx.0.lcssa.i, %shl33.pn.v.i
  %val.0.in.i = or i32 %buf_y_paddr.0.lcssa.i, %shl33.pn.i
  %val.0.i = or i32 %val.0.in.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %92)
  %cmp4397.i = icmp ult i8 %92, 24
  br i1 %cmp4397.i, label %for.end.i.for.body44.i_crit_edge, label %for.end.i.for.end46.i_crit_edge

for.end.i.for.end46.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46.i

for.end.i.for.body44.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.body44.i.for.body44.i_crit_edge, %for.end.i.for.body44.i_crit_edge
  %i.098.i = phi i32 [ %inc.i78, %for.body44.i.for.body44.i_crit_edge ], [ %conv.i.i, %for.end.i.for.body44.i_crit_edge ]
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53636, i32 noundef %val.0.i) #4
  %inc.i78 = add nuw nsw i32 %i.098.i, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, 24
  br i1 %exitcond.not.i79, label %for.body44.i.for.end46.i_crit_edge, label %for.body44.i.for.body44.i_crit_edge

for.body44.i.for.body44.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body44.i

for.body44.i.for.end46.i_crit_edge:               ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end46.i

for.end46.i:                                      ; preds = %for.body44.i.for.end46.i_crit_edge, %for.end.i.for.end46.i_crit_edge
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53632, i32 noundef 1) #4
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 54016, i32 noundef 1) #4
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.body49.i.for.body49.i_crit_edge, %for.end46.i
  %i.199.i = phi i32 [ 0, %for.end46.i ], [ %inc51.i, %for.body49.i.for.body49.i_crit_edge ]
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 54020, i32 noundef 0) #4
  %inc51.i = add nuw nsw i32 %i.199.i, 1
  %exitcond100.not.i = icmp eq i32 %inc51.i, 32
  br i1 %exitcond100.not.i, label %for.body49.i.cleanup_crit_edge, label %for.body49.i.for.body49.i_crit_edge

for.body49.i.for.body49.i_crit_edge:              ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body49.i

for.body49.i.cleanup_crit_edge:                   ; preds = %for.body49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end14
  %platform.i = getelementptr inbounds %struct.amvdec_core, ptr %88, i32 0, i32 5
  %107 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %platform.i, align 4
  %revision2.i = getelementptr inbounds %struct.vdec_platform, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %revision2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %revision2.i, align 4
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53632, i32 noundef 6) #4
  %m2m_ctx.i80 = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 3
  %111 = ptrtoint ptr %m2m_ctx.i80 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %m2m_ctx.i80, align 8
  %rdy_queue.i81 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %112, i32 0, i32 7, i32 1
  %113 = ptrtoint ptr %rdy_queue.i81 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn59.i = load ptr, ptr %rdy_queue.i81, align 4
  %cmp.not62.i = icmp eq ptr %.pn59.i, %rdy_queue.i81
  br i1 %cmp.not62.i, label %if.else.for.end.i90_crit_edge, label %for.body.lr.ph.i83

if.else.for.end.i90_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i90

for.body.lr.ph.i83:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %110)
  %cmp.i.i = icmp ult i32 %110, 3
  %tobool.not.i82 = or i1 %tobool.not, %cmp.i.i
  br label %for.body.i85

for.body.i85:                                     ; preds = %if.end20.i.for.body.i85_crit_edge, %for.body.lr.ph.i83
  %.pn63.i = phi ptr [ %.pn59.i, %for.body.lr.ph.i83 ], [ %.pn.i88, %if.end20.i.for.body.i85_crit_edge ]
  %buf.064.i = getelementptr i8, ptr %.pn63.i, i32 -736
  %index.i84 = getelementptr i8, ptr %.pn63.i, i32 -732
  %114 = ptrtoint ptr %index.i84 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index.i84, align 4
  br i1 %tobool.not.i82, label %if.else.i, label %if.end14.i

if.else.i:                                        ; preds = %for.body.i85
  br i1 %tobool.not, label %if.end14.thread.i, label %if.end14.thread55.i

if.end14.thread55.i:                              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx11.i = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %115
  br label %if.end20.i

if.end14.thread.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i86 = call ptr @vb2_plane_cookie(ptr noundef %buf.064.i, i32 noundef 0) #4
  %116 = ptrtoint ptr %call.i.i86 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %call.i.i86, align 4
  %shr53.i = lshr i32 %117, 5
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53648, i32 noundef %shr53.i) #4
  %call.i51.i = call ptr @vb2_plane_cookie(ptr noundef %buf.064.i, i32 noundef 1) #4
  br label %if.end20.i

if.end14.i:                                       ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i87 = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 3, i32 %115
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.end14.i, %if.end14.thread.i, %if.end14.thread55.i
  %arrayidx.sink.i = phi ptr [ %arrayidx.i87, %if.end14.i ], [ %arrayidx11.i, %if.end14.thread55.i ], [ %call.i51.i, %if.end14.thread.i ]
  %118 = ptrtoint ptr %arrayidx.sink.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.sink.i, align 4
  %shr.i = lshr i32 %119, 5
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53648, i32 noundef %shr.i) #4
  %120 = ptrtoint ptr %.pn63.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pn.i88 = load ptr, ptr %.pn63.i, align 4
  %121 = ptrtoint ptr %m2m_ctx.i80 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %m2m_ctx.i80, align 8
  %rdy_queue6.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %122, i32 0, i32 7, i32 1
  %cmp.not.i89 = icmp eq ptr %.pn.i88, %rdy_queue6.i
  br i1 %cmp.not.i89, label %if.end20.i.for.end.i90_crit_edge, label %if.end20.i.for.body.i85_crit_edge

if.end20.i.for.body.i85_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i85

if.end20.i.for.end.i90_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i90

for.end.i90:                                      ; preds = %if.end20.i.for.end.i90_crit_edge, %if.else.for.end.i90_crit_edge
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 53632, i32 noundef 1) #4
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 54016, i32 noundef 1) #4
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.body28.i.for.body28.i_crit_edge, %for.end.i90
  %i.065.i = phi i32 [ 0, %for.end.i90 ], [ %inc.i91, %for.body28.i.for.body28.i_crit_edge ]
  call void @amvdec_write_dos(ptr noundef %88, i32 noundef 54020, i32 noundef 0) #4
  %inc.i91 = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, 32
  br i1 %exitcond.not.i92, label %for.body28.i.cleanup_crit_edge, label %for.body28.i.for.body28.i_crit_edge

for.body28.i.for.body28.i_crit_edge:              ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body28.i

for.body28.i.cleanup_crit_edge:                   ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body28.i.cleanup_crit_edge, %for.body49.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %codec_hevc_alloc_fbc_buffers.exit
  %retval.0 = phi i32 [ -12, %codec_hevc_alloc_fbc_buffers.exit ], [ 0, %for.body49.i.cleanup_crit_edge ], [ 0, %for.body28.i.cleanup_crit_edge ], [ -12, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @codec_hevc_fill_mmu_map(ptr nocapture noundef readonly %sess, ptr nocapture noundef readonly %comm, ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 10
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 11
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call = tail call i32 @amvdec_am21c_size(i32 noundef %1, i32 noundef %3) #4
  %div12 = lshr i32 %call, 12
  %mmu_map_vaddr = getelementptr inbounds %struct.codec_hevc_common, ptr %comm, i32 0, i32 4
  %4 = ptrtoint ptr %mmu_map_vaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmu_map_vaddr, align 4
  %pixfmt_cap = getelementptr inbounds %struct.amvdec_session, ptr %sess, i32 0, i32 8
  %6 = ptrtoint ptr %pixfmt_cap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixfmt_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 842091854, i32 %7)
  %cmp = icmp eq i32 %7, 842091854
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.codec_hevc_common, ptr %comm, i32 0, i32 1, i32 %9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %first_page.0.in.in = phi ptr [ %arrayidx, %if.then ], [ %call.i, %if.else ]
  %10 = ptrtoint ptr %first_page.0.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %first_page.0.in = load i32, ptr %first_page.0.in.in, align 4
  %first_page.0 = lshr i32 %first_page.0.in, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call)
  %cmp313.not = icmp ult i32 %call, 4096
  br i1 %cmp313.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %umax = call i32 @llvm.umax.i32(i32 %div12, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add = add nuw nsw i32 %i.014, %first_page.0
  %arrayidx4 = getelementptr i32, ptr %5, i32 %i.014
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %arrayidx4, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @vdec_hevc_parser_cmd, !1, !"vdec_hevc_parser_cmd", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 16, i32 11}
!2 = !{ptr @__ksymtab_codec_hevc_setup_decode_head, !3, !"__ksymtab_codec_hevc_setup_decode_head", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 54, i32 1}
!4 = !{ptr @__ksymtab_codec_hevc_free_fbc_buffers, !5, !"__ksymtab_codec_hevc_free_fbc_buffers", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 169, i32 1}
!6 = !{ptr @__ksymtab_codec_hevc_free_mmu_headers, !7, !"__ksymtab_codec_hevc_free_mmu_headers", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 217, i32 1}
!8 = !{ptr @__ksymtab_codec_hevc_setup_buffers, !9, !"__ksymtab_codec_hevc_setup_buffers", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 277, i32 1}
!10 = !{ptr @__ksymtab_codec_hevc_fill_mmu_map, !11, !"__ksymtab_codec_hevc_fill_mmu_map", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/meson/vdec/codec_hevc_common.c", i32 297, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
