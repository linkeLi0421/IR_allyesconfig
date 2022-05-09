; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtk_jpeg_enc_qlt = type { i8, i8 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.89, i32 }
%union.anon.89 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mtk_jpeg_ctx = type { ptr, %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data, %struct.v4l2_fh, i32, i8, i8, i8, %struct.v4l2_ctrl_handler }
%struct.mtk_jpeg_q_data = type { ptr, %struct.v4l2_pix_format_mplane, %struct.v4l2_rect }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mtk_jpeg_fmt = type { i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i32 }

@mtk_jpeg_enc_quality = internal constant { [15 x %struct.mtk_jpeg_enc_qlt], [34 x i8] } { [15 x %struct.mtk_jpeg_enc_qlt] [%struct.mtk_jpeg_enc_qlt { i8 34, i8 12 }, %struct.mtk_jpeg_enc_qlt { i8 39, i8 4 }, %struct.mtk_jpeg_enc_qlt { i8 48, i8 8 }, %struct.mtk_jpeg_enc_qlt { i8 60, i8 0 }, %struct.mtk_jpeg_enc_qlt { i8 64, i8 14 }, %struct.mtk_jpeg_enc_qlt { i8 68, i8 5 }, %struct.mtk_jpeg_enc_qlt { i8 74, i8 10 }, %struct.mtk_jpeg_enc_qlt { i8 80, i8 1 }, %struct.mtk_jpeg_enc_qlt { i8 82, i8 15 }, %struct.mtk_jpeg_enc_qlt { i8 84, i8 6 }, %struct.mtk_jpeg_enc_qlt { i8 87, i8 11 }, %struct.mtk_jpeg_enc_qlt { i8 90, i8 2 }, %struct.mtk_jpeg_enc_qlt { i8 92, i8 7 }, %struct.mtk_jpeg_enc_qlt { i8 95, i8 3 }, %struct.mtk_jpeg_enc_qlt { i8 97, i8 16 }], [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 825380174, i64 842091854]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 825380174, i64 842091854]
@___asan_gen_.2 = private unnamed_addr constant [21 x i8] c"mtk_jpeg_enc_quality\00", align 1
@___asan_gen_.3 = private constant [53 x i8] c"../drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 15, i32 38 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mtk_jpeg_enc_quality], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_jpeg_enc_quality to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_enc_reset(ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %base, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %add.ptr6 = getelementptr i8, ptr %base, i32 788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_jpeg_enc_get_file_size(ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 292
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %add.ptr4 = getelementptr i8, ptr %base, i32 288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #3, !srcloc !15
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_enc_start(ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 260
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !18
  %1 = or i32 %0, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_set_enc_src(ptr nocapture noundef readnone %ctx, ptr noundef %base, ptr noundef %src_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %src_buf, i32 0, i32 4
  %0 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not = icmp eq i32 %1, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.inc.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.peel:                                     ; preds = %entry
  %add.ptr4 = getelementptr i8, ptr %base, i32 372
  %call.i.peel = tail call ptr @vb2_plane_cookie(ptr noundef %src_buf, i32 noundef 0) #3
  %data_offset.peel = getelementptr %struct.vb2_buffer, ptr %src_buf, i32 0, i32 10, i32 0, i32 7
  %2 = ptrtoint ptr %data_offset.peel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_offset.peel, align 4
  %4 = ptrtoint ptr %call.i.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i.peel, align 4
  %add.peel = add i32 %3, %5
  %add.ptr = getelementptr i8, ptr %base, i32 368
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %6 = tail call i32 @llvm.bswap.i32(i32 %add.peel)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #3, !srcloc !12
  %7 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.peel = icmp ugt i32 %8, 1
  br i1 %cmp.peel, label %for.inc.peel.for.inc_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.peel.for.inc_crit_edge:                   ; preds = %for.inc.peel
  br label %for.inc

for.inc:                                          ; preds = %for.inc.for.inc_crit_edge, %for.inc.peel.for.inc_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.inc_crit_edge ], [ 1, %for.inc.peel.for.inc_crit_edge ]
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %src_buf, i32 noundef %i.014) #3
  %data_offset = getelementptr %struct.vb2_buffer, ptr %src_buf, i32 0, i32 10, i32 %i.014, i32 7
  %9 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_offset, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 4
  %add = add i32 %10, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %add)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %13) #3, !srcloc !12
  %inc = add nuw i32 %i.014, 1
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.inc_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !22

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.inc_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_set_enc_dst(ptr nocapture noundef readonly %ctx, ptr noundef %base, ptr noundef %dst_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %dst_buf, i32 noundef 0) #3
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call.i, align 4
  %enable_exif = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 5
  %2 = ptrtoint ptr %enable_exif to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_exif, align 4, !range !24
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %dst_buf, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %dst_buf, i32 0, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 0, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %add.ptr = getelementptr i8, ptr %base, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %cond) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %and = shl i32 %1, 24
  %8 = and i32 %and, 251658240
  %add.ptr7 = getelementptr i8, ptr %base, i32 364
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %8) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %and11 = and i32 %1, -16
  %9 = tail call i32 @llvm.bswap.i32(i32 %and11)
  %add.ptr12 = getelementptr i8, ptr %base, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %add = add i32 %retval.0.i, %1
  %and16 = and i32 %add, -16
  %10 = tail call i32 @llvm.bswap.i32(i32 %and16)
  %add.ptr17 = getelementptr i8, ptr %base, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %10) #3, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_jpeg_set_enc_params(ptr nocapture noundef readonly %ctx, ptr noundef %base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %out_q = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1
  %width1 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 2
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 4
  %height4 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 2, i32 3
  %2 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height4, align 4
  %4 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_q, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %bytesperline7 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 1, i32 1, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %bytesperline7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytesperline7, align 4
  %shl = shl i32 %1, 16
  %or = or i32 %shl, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add.ptr = getelementptr i8, ptr %base, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #3, !srcloc !12
  %11 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.else [
    i32 842091854, label %entry.if.then_crit_edge
    i32 825380174, label %entry.if.then_crit_edge136
  ]

entry.if.then_crit_edge136:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge136
  %sub = add i32 %1, 15
  %div129 = lshr i32 %sub, 4
  %sub10 = add i32 %3, 15
  %div11130 = lshr i32 %sub10, 4
  %mul = mul nuw nsw i32 %div129, 6
  %mul12 = mul i32 %mul, %div11130
  br label %do.body23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %sub15 = add i32 %1, 15
  %sub18 = add i32 %3, 7
  %div19128 = lshr i32 %sub18, 3
  %12 = lshr i32 %sub15, 2
  %mul20 = and i32 %12, 1073741820
  %mul21 = mul i32 %mul20, %div19128
  br label %do.body23

do.body23:                                        ; preds = %if.else, %if.then
  %blk_num.0.in = phi i32 [ %mul12, %if.then ], [ %mul21, %if.else ]
  %blk_num.0 = add i32 %blk_num.0.in, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !30
  tail call void @arm_heavy_mb() #3
  %13 = tail call i32 @llvm.bswap.i32(i32 %blk_num.0)
  %add.ptr26 = getelementptr i8, ptr %base, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %13) #3, !srcloc !12
  %14 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %7, label %if.else34 [
    i32 842091854, label %do.body23.if.then30_crit_edge
    i32 825380174, label %do.body23.if.then30_crit_edge137
  ]

do.body23.if.then30_crit_edge137:                 ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30

do.body23.if.then30_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then30

if.then30:                                        ; preds = %do.body23.if.then30_crit_edge, %do.body23.if.then30_crit_edge137
  %sub31 = add i32 %1, -1
  %or32 = or i32 %sub31, 15
  %add33 = add i32 %or32, 1
  br label %do.body40

if.else34:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  %mul35 = shl i32 %1, 1
  %sub36 = add i32 %mul35, -1
  %or37 = or i32 %sub36, 31
  %add38 = add i32 %or37, 1
  br label %do.body40

do.body40:                                        ; preds = %if.else34, %if.then30
  %img_stride.0 = phi i32 [ %add33, %if.then30 ], [ %add38, %if.else34 ]
  %mem_stride.0 = phi i32 [ %9, %if.then30 ], [ %add38, %if.else34 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %15 = tail call i32 @llvm.bswap.i32(i32 %img_stride.0)
  %add.ptr43 = getelementptr i8, ptr %base, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %15) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  tail call void @arm_heavy_mb() #3
  %16 = tail call i32 @llvm.bswap.i32(i32 %mem_stride.0)
  %add.ptr47 = getelementptr i8, ptr %base, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %16) #3, !srcloc !12
  %enc_quality50 = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 6
  %17 = ptrtoint ptr %enc_quality50 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enc_quality50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %18)
  %cmp54.not = icmp ugt i8 %18, 34
  br i1 %cmp54.not, label %for.inc, label %do.body40.if.then56_crit_edge

do.body40.if.then56_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

if.then56:                                        ; preds = %for.inc.13.if.then56_crit_edge, %for.inc.12.if.then56_crit_edge, %for.inc.11.if.then56_crit_edge, %for.inc.10.if.then56_crit_edge, %for.inc.9.if.then56_crit_edge, %for.inc.8.if.then56_crit_edge, %for.inc.7.if.then56_crit_edge, %for.inc.6.if.then56_crit_edge, %for.inc.5.if.then56_crit_edge, %for.inc.4.if.then56_crit_edge, %for.inc.3.if.then56_crit_edge, %for.inc.2.if.then56_crit_edge, %for.inc.1.if.then56_crit_edge, %for.inc.if.then56_crit_edge, %do.body40.if.then56_crit_edge
  %i.0134.lcssa = phi i32 [ 0, %do.body40.if.then56_crit_edge ], [ 1, %for.inc.if.then56_crit_edge ], [ 2, %for.inc.1.if.then56_crit_edge ], [ 3, %for.inc.2.if.then56_crit_edge ], [ 4, %for.inc.3.if.then56_crit_edge ], [ 5, %for.inc.4.if.then56_crit_edge ], [ 6, %for.inc.5.if.then56_crit_edge ], [ 7, %for.inc.6.if.then56_crit_edge ], [ 8, %for.inc.7.if.then56_crit_edge ], [ 9, %for.inc.8.if.then56_crit_edge ], [ 10, %for.inc.9.if.then56_crit_edge ], [ 11, %for.inc.10.if.then56_crit_edge ], [ 12, %for.inc.11.if.then56_crit_edge ], [ 13, %for.inc.12.if.then56_crit_edge ], [ 14, %for.inc.13.if.then56_crit_edge ]
  %hardware_value = getelementptr [15 x %struct.mtk_jpeg_enc_qlt], ptr @mtk_jpeg_enc_quality, i32 0, i32 %i.0134.lcssa, i32 1
  %19 = ptrtoint ptr %hardware_value to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hardware_value, align 1
  %conv58 = zext i8 %20 to i32
  %phi.bo = shl nuw i32 %conv58, 24
  br label %do.body60

for.inc:                                          ; preds = %do.body40
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %18)
  %cmp54.not.1 = icmp ugt i8 %18, 39
  br i1 %cmp54.not.1, label %for.inc.1, label %for.inc.if.then56_crit_edge

for.inc.if.then56_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %18)
  %cmp54.not.2 = icmp ugt i8 %18, 48
  br i1 %cmp54.not.2, label %for.inc.2, label %for.inc.1.if.then56_crit_edge

for.inc.1.if.then56_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %18)
  %cmp54.not.3 = icmp ugt i8 %18, 60
  br i1 %cmp54.not.3, label %for.inc.3, label %for.inc.2.if.then56_crit_edge

for.inc.2.if.then56_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp54.not.4 = icmp ugt i8 %18, 64
  br i1 %cmp54.not.4, label %for.inc.4, label %for.inc.3.if.then56_crit_edge

for.inc.3.if.then56_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %18)
  %cmp54.not.5 = icmp ugt i8 %18, 68
  br i1 %cmp54.not.5, label %for.inc.5, label %for.inc.4.if.then56_crit_edge

for.inc.4.if.then56_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %18)
  %cmp54.not.6 = icmp ugt i8 %18, 74
  br i1 %cmp54.not.6, label %for.inc.6, label %for.inc.5.if.then56_crit_edge

for.inc.5.if.then56_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %18)
  %cmp54.not.7 = icmp ugt i8 %18, 80
  br i1 %cmp54.not.7, label %for.inc.7, label %for.inc.6.if.then56_crit_edge

for.inc.6.if.then56_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 82, i8 %18)
  %cmp54.not.8 = icmp ugt i8 %18, 82
  br i1 %cmp54.not.8, label %for.inc.8, label %for.inc.7.if.then56_crit_edge

for.inc.7.if.then56_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %18)
  %cmp54.not.9 = icmp ugt i8 %18, 84
  br i1 %cmp54.not.9, label %for.inc.9, label %for.inc.8.if.then56_crit_edge

for.inc.8.if.then56_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %18)
  %cmp54.not.10 = icmp ugt i8 %18, 87
  br i1 %cmp54.not.10, label %for.inc.10, label %for.inc.9.if.then56_crit_edge

for.inc.9.if.then56_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %18)
  %cmp54.not.11 = icmp ugt i8 %18, 90
  br i1 %cmp54.not.11, label %for.inc.11, label %for.inc.10.if.then56_crit_edge

for.inc.10.if.then56_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp1(i8 92, i8 %18)
  %cmp54.not.12 = icmp ugt i8 %18, 92
  br i1 %cmp54.not.12, label %for.inc.12, label %for.inc.11.if.then56_crit_edge

for.inc.11.if.then56_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %18)
  %cmp54.not.13 = icmp ugt i8 %18, 95
  br i1 %cmp54.not.13, label %for.inc.13, label %for.inc.12.if.then56_crit_edge

for.inc.12.if.then56_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %18)
  %cmp54.not.14 = icmp ugt i8 %18, 97
  br i1 %cmp54.not.14, label %for.inc.13.do.body60_crit_edge, label %for.inc.13.if.then56_crit_edge

for.inc.13.if.then56_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then56

for.inc.13.do.body60_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body60

do.body60:                                        ; preds = %for.inc.13.do.body60_crit_edge, %if.then56
  %enc_quality.0 = phi i32 [ %phi.bo, %if.then56 ], [ 201326592, %for.inc.13.do.body60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  tail call void @arm_heavy_mb() #3
  %add.ptr63 = getelementptr i8, ptr %base, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %enc_quality.0) #3, !srcloc !12
  %add.ptr64 = getelementptr i8, ptr %base, i32 260
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  %22 = ptrtoint ptr %out_q to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_q, align 4
  %hw_format = getelementptr inbounds %struct.mtk_jpeg_fmt, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %hw_format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hw_format, align 4
  %and68 = shl i32 %25, 3
  %shl69 = and i32 %and68, 24
  %enable_exif = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 5
  %26 = ptrtoint ptr %enable_exif to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_exif, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %masksel = select i1 %tobool.not, i32 0, i32 32
  %restart_interval = getelementptr inbounds %struct.mtk_jpeg_ctx, ptr %ctx, i32 0, i32 7
  %28 = ptrtoint ptr %restart_interval to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %restart_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool76.not = icmp eq i8 %29, 0
  %30 = and i32 %21, -939786241
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %and74.masked = or i32 %shl69, %31
  %and80 = or i32 %and74.masked, %masksel
  %masksel132 = select i1 %tobool76.not, i32 0, i32 1024
  %value.1 = or i32 %and80, %masksel132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  tail call void @arm_heavy_mb() #3
  %32 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %32) #3, !srcloc !12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %33 = ptrtoint ptr %restart_interval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %restart_interval, align 2
  %conv90 = zext i8 %34 to i32
  %35 = shl nuw i32 %conv90, 24
  %add.ptr91 = getelementptr i8, ptr %base, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %35) #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mtk_jpeg_enc_quality, !1, !"mtk_jpeg_enc_quality", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-jpeg/mtk_jpeg_enc_hw.c", i32 15, i32 38}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2156354544}
!12 = !{i64 688029}
!13 = !{i64 2156355029}
!14 = !{i64 2156355484}
!15 = !{i64 688447}
!16 = !{i64 2156356120}
!17 = !{i64 2156356592}
!18 = !{i64 2156357064}
!19 = !{i64 2156357445}
!20 = !{i64 2156357841}
!21 = !{i64 2156358246}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = !{i8 0, i8 2}
!25 = !{i64 2156359351}
!26 = !{i64 2156359815}
!27 = !{i64 2156360278}
!28 = !{i64 2156360720}
!29 = !{i64 2156361170}
!30 = !{i64 2156362043}
!31 = !{i64 2156362873}
!32 = !{i64 2156363286}
!33 = !{i64 2156364158}
!34 = !{i64 2156364824}
!35 = !{i64 2156365378}
!36 = !{i64 2156365787}
