; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_fb_cma_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_fb_cma_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+drm_fb_cma_get_gem_obj\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_fb_cma_get_gem_obj\09\09\09\09"
module asm "\09.long\09__crc_drm_fb_cma_get_gem_obj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_get_gem_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_get_gem_obj\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_get_gem_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_fb_cma_get_gem_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_fb_cma_get_gem_addr\09\09\09\09"
module asm "\09.long\09__crc_drm_fb_cma_get_gem_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_get_gem_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_get_gem_addr\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_get_gem_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+drm_fb_cma_sync_non_coherent\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_fb_cma_sync_non_coherent\09\09\09\09"
module asm "\09.long\09__crc_drm_fb_cma_sync_non_coherent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_fb_cma_sync_non_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_fb_cma_sync_non_coherent\22\09\09\09\09\09"
module asm "__kstrtabns_drm_fb_cma_sync_non_coherent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }

@__kstrtab_drm_fb_cma_get_gem_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_get_gem_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_get_gem_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_get_gem_obj to i32), ptr @__kstrtab_drm_fb_cma_get_gem_obj, ptr @__kstrtabns_drm_fb_cma_get_gem_obj }, section "___ksymtab_gpl+drm_fb_cma_get_gem_obj", align 4
@__kstrtab_drm_fb_cma_get_gem_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_get_gem_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_get_gem_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_get_gem_addr to i32), ptr @__kstrtab_drm_fb_cma_get_gem_addr, ptr @__kstrtabns_drm_fb_cma_get_gem_addr }, section "___ksymtab_gpl+drm_fb_cma_get_gem_addr", align 4
@__kstrtab_drm_fb_cma_sync_non_coherent = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_fb_cma_sync_non_coherent = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_fb_cma_sync_non_coherent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_fb_cma_sync_non_coherent to i32), ptr @__kstrtab_drm_fb_cma_sync_non_coherent, ptr @__kstrtabns_drm_fb_cma_sync_non_coherent }, section "___ksymtab_gpl+drm_fb_cma_sync_non_coherent", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_drm_fb_cma_get_gem_addr, ptr @__ksymtab_drm_fb_cma_get_gem_obj, ptr @__ksymtab_drm_fb_cma_sync_non_coherent], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_fb_get_obj(ptr noundef %fb, i32 noundef %plane) #3
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_get_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef %fb, ptr nocapture noundef readonly %state, i32 noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %0 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %format, align 8
  %call = tail call i32 @drm_format_info_block_width(ptr noundef %1, i32 noundef %plane) #3
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  %call2 = tail call i32 @drm_format_info_block_height(ptr noundef %3, i32 noundef %plane) #3
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format, align 8
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 3
  %arrayidx = getelementptr [4 x i8], ptr %6, i32 0, i32 %plane
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %call.i = tail call ptr @drm_gem_fb_get_obj(ptr noundef %fb, i32 noundef %plane) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %paddr5 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %paddr5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %paddr5, align 8
  %arrayidx6 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 %plane
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %plane)
  %cmp.not = icmp eq i32 %plane, 0
  br i1 %cmp.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format, align 8
  %hsub = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %hsub to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hsub, align 2
  %vsub = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %vsub to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vsub, align 1
  %phi.cast54 = zext i8 %16 to i16
  %phi.cast = zext i8 %18 to i16
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %h_div.0 = phi i16 [ %phi.cast54, %if.then8 ], [ 1, %if.end.if.end11_crit_edge ]
  %v_div.0 = phi i16 [ %phi.cast, %if.then8 ], [ 1, %if.end.if.end11_crit_edge ]
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 8
  %19 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_x, align 4
  %shr = lshr i32 %20, 16
  %div.lhs.trunc = trunc i32 %shr to i16
  %div52 = udiv i16 %div.lhs.trunc, %h_div.0
  %div.zext = zext i16 %div52 to i32
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 9
  %21 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %src_y, align 4
  %shr13 = lshr i32 %22, 16
  %div15.lhs.trunc = trunc i32 %shr13 to i16
  %div1553 = udiv i16 %div15.lhs.trunc, %v_div.0
  %div15.zext = zext i16 %div1553 to i32
  %23 = urem i32 %div15.zext, %call2
  %mul = sub nsw i32 %div15.zext, %23
  %div17 = udiv i32 %div.zext, %call
  %arrayidx18 = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 %plane
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx18, align 4
  %mul19 = mul i32 %25, %mul
  %mul21 = mul nuw nsw i32 %div17, %conv
  %add20 = add i32 %add, %mul21
  %add22 = add i32 %add20, %mul19
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add22, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_width(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_format_info_block_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_fb_cma_sync_non_coherent(ptr nocapture noundef readonly %drm, ptr noundef %old_state, ptr noundef %state) #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %format, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #3
  %4 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #3
  %5 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2
  %7 = call ptr @memset(ptr %clip, i32 255, i32 16)
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp25.not = icmp eq i8 %9, 0
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %call.i = call ptr @drm_gem_fb_get_obj(ptr noundef %11, i32 noundef %i.026) #3
  %map_noncoherent = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %map_noncoherent, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb, align 4
  %call4 = call i32 @drm_fb_cma_get_gem_addr(ptr noundef %15, ptr noundef %state, i32 noundef %i.026)
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef %old_state, ptr noundef %state) #3
  %call523 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #3
  br i1 %call523, label %if.end.while.body_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %arrayidx = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 6, i32 %i.026
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %21, %17
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %6, align 4
  %sub = sub i32 %23, %17
  %mul11 = mul i32 %sub, %21
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %add = add i32 %mul, %call4
  call void @dma_sync_single_for_device(ptr noundef %25, i32 noundef %add, i32 noundef %mul11, i32 noundef 1) #3
  %call5 = call zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef nonnull %iter, ptr noundef nonnull %clip) #3
  br i1 %call5, label %while.body.while.body_crit_edge, label %while.body.for.inc_crit_edge

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %26 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %27 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_damage_iter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_drm_fb_cma_get_gem_obj, !1, !"__ksymtab_drm_fb_cma_get_gem_obj", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_fb_cma_helper.c", i32 52, i32 1}
!2 = !{ptr @__ksymtab_drm_fb_cma_get_gem_addr, !3, !"__ksymtab_drm_fb_cma_get_gem_addr", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_fb_cma_helper.c", i32 101, i32 1}
!4 = !{ptr @__ksymtab_drm_fb_cma_sync_non_coherent, !5, !"__ksymtab_drm_fb_cma_sync_non_coherent", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_fb_cma_helper.c", i32 145, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
