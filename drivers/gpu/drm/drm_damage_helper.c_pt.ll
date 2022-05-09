; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_damage_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_damage_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_atomic_helper_check_plane_damage\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_atomic_helper_check_plane_damage\09\09\09\09"
module asm "\09.long\09__crc_drm_atomic_helper_check_plane_damage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_check_plane_damage:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_check_plane_damage\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_check_plane_damage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_atomic_helper_dirtyfb\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_atomic_helper_dirtyfb\09\09\09\09"
module asm "\09.long\09__crc_drm_atomic_helper_dirtyfb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_dirtyfb:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_dirtyfb\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_dirtyfb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_atomic_helper_damage_iter_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_atomic_helper_damage_iter_init\09\09\09\09"
module asm "\09.long\09__crc_drm_atomic_helper_damage_iter_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_iter_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_iter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_atomic_helper_damage_iter_next\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_atomic_helper_damage_iter_next\09\09\09\09"
module asm "\09.long\09__crc_drm_atomic_helper_damage_iter_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_atomic_helper_damage_merged\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_atomic_helper_damage_merged\09\09\09\09"
module asm "\09.long\09__crc_drm_atomic_helper_damage_merged\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_atomic_helper_damage_merged:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_atomic_helper_damage_merged\22\09\09\09\09\09"
module asm "__kstrtabns_drm_atomic_helper_damage_merged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_atomic_helper_damage_iter = type { %struct.drm_rect, ptr, i32, i32, i8 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/drm_damage_helper.c\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_drm_atomic_helper_check_plane_damage = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_check_plane_damage = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_check_plane_damage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_check_plane_damage to i32), ptr @__kstrtab_drm_atomic_helper_check_plane_damage, ptr @__kstrtabns_drm_atomic_helper_check_plane_damage }, section "___ksymtab+drm_atomic_helper_check_plane_damage", align 4
@__kstrtab_drm_atomic_helper_dirtyfb = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_dirtyfb = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_dirtyfb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_dirtyfb to i32), ptr @__kstrtab_drm_atomic_helper_dirtyfb, ptr @__kstrtabns_drm_atomic_helper_dirtyfb }, section "___ksymtab+drm_atomic_helper_dirtyfb", align 4
@__kstrtab_drm_atomic_helper_damage_iter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_iter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_iter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_iter_init to i32), ptr @__kstrtab_drm_atomic_helper_damage_iter_init, ptr @__kstrtabns_drm_atomic_helper_damage_iter_init }, section "___ksymtab+drm_atomic_helper_damage_iter_init", align 4
@__kstrtab_drm_atomic_helper_damage_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_iter_next to i32), ptr @__kstrtab_drm_atomic_helper_damage_iter_next, ptr @__kstrtabns_drm_atomic_helper_damage_iter_next }, section "___ksymtab+drm_atomic_helper_damage_iter_next", align 4
@__kstrtab_drm_atomic_helper_damage_merged = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_atomic_helper_damage_merged = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_atomic_helper_damage_merged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_atomic_helper_damage_merged to i32), ptr @__kstrtab_drm_atomic_helper_damage_merged, ptr @__kstrtabns_drm_atomic_helper_damage_merged }, section "___ksymtab+drm_atomic_helper_damage_merged", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [39 x i8] c"../drivers/gpu/drm/drm_damage_helper.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 75, i32 7 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_drm_atomic_helper_check_plane_damage, ptr @__ksymtab_drm_atomic_helper_damage_iter_init, ptr @__ksymtab_drm_atomic_helper_damage_iter_next, ptr @__ksymtab_drm_atomic_helper_damage_merged, ptr @__ksymtab_drm_atomic_helper_dirtyfb, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_atomic_helper_check_plane_damage(ptr nocapture noundef readonly %state, ptr nocapture noundef %plane_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %2 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %3, i32 %5, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %do.end, label %if.end26, !prof !21

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end26:                                         ; preds = %if.then
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %9 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %.not = icmp eq i8 %9, 0
  br i1 %.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, ptr %plane_state, i32 0, i32 19
  %10 = ptrtoint ptr %fb_damage_clips to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb_damage_clips, align 4
  tail call void @drm_property_blob_put(ptr noundef %11) #6
  %12 = ptrtoint ptr %fb_damage_clips to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fb_damage_clips, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef readonly %fb, ptr noundef readnone %file_priv, i32 noundef %flags, i32 %color, ptr noundef readonly %clips, i32 noundef %num_clips) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #6
  %0 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %tobool.not = icmp ne ptr %file_priv, null
  %cond = zext i1 %tobool.not to i32
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef %cond) #6
  %1 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fb, align 8
  %call = call ptr @drm_atomic_state_alloc(ptr noundef %2) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end:                                           ; preds = %entry
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %acquire_ctx, align 4
  %tobool2.not = icmp eq ptr %clips, null
  br i1 %tobool2.not, label %if.end.retry_crit_edge, label %if.then3

if.end.retry_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.then3:                                         ; preds = %if.end
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 1, i32 2
  %not.tobool4.not = xor i1 %tobool4.not, true
  %div92 = zext i1 %not.tobool4.not to i32
  %spec.select93 = lshr i32 %num_clips, %div92
  %4 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select93, i32 16) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.then3.if.end54_crit_edge, label %if.end7.i.i, !prof !21

if.then3.if.end54_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end7.i.i:                                      ; preds = %if.then3
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #9
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.if.end54_crit_edge, label %if.end10

if.end7.i.i.if.end54_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end10:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select93)
  %cmp.not17.i = icmp eq i32 %spec.select93, 0
  br i1 %cmp.not17.i, label %if.end10.convert_clip_rect_to_rect.exit_crit_edge, label %if.end10.while.body.i_crit_edge

if.end10.while.body.i_crit_edge:                  ; preds = %if.end10
  br label %while.body.i

if.end10.convert_clip_rect_to_rect.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %convert_clip_rect_to_rect.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end10.while.body.i_crit_edge
  %src.addr.020.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %clips, %if.end10.while.body.i_crit_edge ]
  %num_clips.addr.019.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %spec.select93, %if.end10.while.body.i_crit_edge ]
  %dest.addr.018.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %call8.i.i, %if.end10.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %src.addr.020.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %src.addr.020.i, align 2
  %conv.i = zext i16 %8 to i32
  %9 = ptrtoint ptr %dest.addr.018.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %dest.addr.018.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_clip_rect, ptr %src.addr.020.i, i32 0, i32 1
  %10 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %y1.i, align 2
  %conv2.i = zext i16 %11 to i32
  %y13.i = getelementptr inbounds %struct.drm_mode_rect, ptr %dest.addr.018.i, i32 0, i32 1
  %12 = ptrtoint ptr %y13.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv2.i, ptr %y13.i, align 4
  %x2.i = getelementptr inbounds %struct.drm_clip_rect, ptr %src.addr.020.i, i32 0, i32 2
  %13 = ptrtoint ptr %x2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %x2.i, align 2
  %conv4.i = zext i16 %14 to i32
  %x25.i = getelementptr inbounds %struct.drm_mode_rect, ptr %dest.addr.018.i, i32 0, i32 2
  %15 = ptrtoint ptr %x25.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.i, ptr %x25.i, align 4
  %y2.i = getelementptr inbounds %struct.drm_clip_rect, ptr %src.addr.020.i, i32 0, i32 3
  %16 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %y2.i, align 2
  %conv6.i = zext i16 %17 to i32
  %y27.i = getelementptr inbounds %struct.drm_mode_rect, ptr %dest.addr.018.i, i32 0, i32 3
  %18 = ptrtoint ptr %y27.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv6.i, ptr %y27.i, align 4
  %add.ptr.i = getelementptr %struct.drm_clip_rect, ptr %src.addr.020.i, i32 %spec.select
  %incdec.ptr.i = getelementptr %struct.drm_mode_rect, ptr %dest.addr.018.i, i32 1
  %dec.i = add i32 %num_clips.addr.019.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %while.body.i.convert_clip_rect_to_rect.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.convert_clip_rect_to_rect.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %convert_clip_rect_to_rect.exit

convert_clip_rect_to_rect.exit:                   ; preds = %while.body.i.convert_clip_rect_to_rect.exit_crit_edge, %if.end10.convert_clip_rect_to_rect.exit_crit_edge
  %19 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fb, align 8
  %mul = shl i32 %spec.select93, 4
  %call12 = call ptr @drm_property_create_blob(ptr noundef %20, i32 noundef %mul, ptr noundef nonnull %call8.i.i) #6
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %convert_clip_rect_to_rect.exit.retry_crit_edge

convert_clip_rect_to_rect.exit.retry_crit_edge:   ; preds = %convert_clip_rect_to_rect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.then14:                                        ; preds = %convert_clip_rect_to_rect.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call12 to i32
  br label %out

retry:                                            ; preds = %if.then49.retry_crit_edge, %convert_clip_rect_to_rect.exit.retry_crit_edge, %if.end.retry_crit_edge
  %rects.1 = phi ptr [ %rects.2, %if.then49.retry_crit_edge ], [ null, %if.end.retry_crit_edge ], [ %call8.i.i, %convert_clip_rect_to_rect.exit.retry_crit_edge ]
  %damage.2 = phi ptr [ %damage.3, %if.then49.retry_crit_edge ], [ null, %if.end.retry_crit_edge ], [ %call12, %convert_clip_rect_to_rect.exit.retry_crit_edge ]
  %22 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fb, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 18
  %24 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn115 = load ptr, ptr %plane_list, align 4
  %cmp.not118 = icmp eq ptr %.pn115, %plane_list
  br i1 %cmp.not118, label %retry.for.end_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %.pn119 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn115, %retry.for.body_crit_edge ]
  %plane.0120 = getelementptr i8, ptr %.pn119, i32 -4
  %mutex = getelementptr i8, ptr %.pn119, i32 12
  %25 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %acquire_ctx, align 4
  %call23 = call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end26:                                         ; preds = %for.body
  %state27 = getelementptr i8, ptr %.pn119, i32 488
  %27 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state27, align 4
  %fb28 = getelementptr inbounds %struct.drm_plane_state, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %fb28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb28, align 4
  %cmp29.not = icmp eq ptr %30, %fb
  br i1 %cmp29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_modeset_unlock(ptr noundef %mutex) #6
  br label %for.inc

if.end32:                                         ; preds = %if.end26
  %call33 = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %call, ptr noundef %plane.0120) #6
  %cmp.i94 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %call33 to i32
  br label %out

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %fb_damage_clips = getelementptr inbounds %struct.drm_plane_state, ptr %call33, i32 0, i32 19
  %call38 = call zeroext i1 @drm_property_replace_blob(ptr noundef %fb_damage_clips, ptr noundef %damage.2) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then30
  %32 = ptrtoint ptr %.pn119 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load ptr, ptr %.pn119, align 4
  %33 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fb, align 8
  %plane_list21 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 30, i32 18
  %cmp.not = icmp eq ptr %.pn, %plane_list21
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %retry.for.end_crit_edge
  %call47 = call i32 @drm_atomic_commit(ptr noundef nonnull %call) #6
  br label %out

out:                                              ; preds = %for.end, %if.then35, %for.body.out_crit_edge, %if.then14
  %ret.2 = phi i32 [ %call47, %for.end ], [ %31, %if.then35 ], [ %21, %if.then14 ], [ %call23, %for.body.out_crit_edge ]
  %rects.2 = phi ptr [ %rects.1, %for.end ], [ %rects.1, %if.then35 ], [ %call8.i.i, %if.then14 ], [ %rects.1, %for.body.out_crit_edge ]
  %damage.3 = phi ptr [ %damage.2, %for.end ], [ %damage.2, %if.then35 ], [ null, %if.then14 ], [ %damage.2, %for.body.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.2)
  %cmp48 = icmp eq i32 %ret.2, -35
  br i1 %cmp48, label %if.then49, label %out.if.end54_crit_edge

out.if.end54_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then49:                                        ; preds = %out
  call void @drm_atomic_state_clear(ptr noundef nonnull %call) #6
  %call50 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.retry_crit_edge, label %if.then49.if.end54_crit_edge

if.then49.if.end54_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then49.retry_crit_edge:                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  br label %retry

if.end54:                                         ; preds = %if.then49.if.end54_crit_edge, %out.if.end54_crit_edge, %if.end7.i.i.if.end54_crit_edge, %if.then3.if.end54_crit_edge
  %damage.3113 = phi ptr [ %damage.3, %if.then49.if.end54_crit_edge ], [ %damage.3, %out.if.end54_crit_edge ], [ null, %if.end7.i.i.if.end54_crit_edge ], [ null, %if.then3.if.end54_crit_edge ]
  %rects.2112 = phi ptr [ %rects.2, %if.then49.if.end54_crit_edge ], [ %rects.2, %out.if.end54_crit_edge ], [ null, %if.end7.i.i.if.end54_crit_edge ], [ null, %if.then3.if.end54_crit_edge ]
  %ret.3 = phi i32 [ %call50, %if.then49.if.end54_crit_edge ], [ %ret.2, %out.if.end54_crit_edge ], [ -12, %if.end7.i.i.if.end54_crit_edge ], [ -12, %if.then3.if.end54_crit_edge ]
  call void @drm_property_blob_put(ptr noundef %damage.3113) #6
  call void @kfree(ptr noundef %rects.2112) #6
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #6
  %35 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup55_crit_edge, label %if.then10.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.cleanup55_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #6
  br label %cleanup55

if.then.i.i:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @__drm_atomic_state_free(ptr noundef nonnull %call) #6
  br label %cleanup55

cleanup55:                                        ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %ret.4 = phi i32 [ -12, %entry.cleanup55_crit_edge ], [ %ret.3, %if.end5.i.i.i.i.i.cleanup55_crit_edge ], [ %ret.3, %if.then10.i.i.i.i.i ], [ %ret.3, %if.then.i.i ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #6
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #6
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #6
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_blob(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_property_replace_blob(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_atomic_helper_damage_iter_init(ptr nocapture noundef %iter, ptr nocapture noundef readonly %old_state, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %iter, i32 0, i32 32)
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end42_crit_edge, label %lor.lhs.false

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fb, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %lor.lhs.false2.if.end42_crit_edge, label %lor.lhs.false4

lor.lhs.false2.if.end42_crit_edge:                ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 22
  %5 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %visible, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %lor.lhs.false4.if.end42_crit_edge, label %if.end

lor.lhs.false4.if.end42_crit_edge:                ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end:                                           ; preds = %lor.lhs.false4
  %call = tail call ptr @drm_plane_get_damage_clips(ptr noundef nonnull %state) #6
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 1
  %7 = ptrtoint ptr %clips to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %clips, align 4
  %call6 = tail call i32 @drm_plane_get_damage_clips_count(ptr noundef nonnull %state) #6
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 2
  %8 = ptrtoint ptr %num_clips to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call6, ptr %num_clips, align 4
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20
  %9 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src, align 4
  %shr = ashr i32 %10, 16
  %11 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr, ptr %iter, align 4
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y1, align 4
  %shr9 = ashr i32 %13, 16
  %y111 = getelementptr inbounds %struct.drm_rect, ptr %iter, i32 0, i32 1
  %14 = ptrtoint ptr %y111 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr9, ptr %y111, align 4
  %x2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 2
  %15 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %x2, align 4
  %shr13 = ashr i32 %16, 16
  %and = and i32 %16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool16 to i32
  %add = add nsw i32 %shr13, %lnot.ext
  %x219 = getelementptr inbounds %struct.drm_rect, ptr %iter, i32 0, i32 2
  %17 = ptrtoint ptr %x219 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %x219, align 4
  %y2 = getelementptr inbounds %struct.drm_plane_state, ptr %state, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y2, align 4
  %shr21 = ashr i32 %19, 16
  %and24 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25 = icmp ne i32 %and24, 0
  %lnot.ext29 = zext i1 %tobool25 to i32
  %add30 = add nsw i32 %shr21, %lnot.ext29
  %y232 = getelementptr inbounds %struct.drm_rect, ptr %iter, i32 0, i32 3
  %20 = ptrtoint ptr %y232 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add30, ptr %y232, align 4
  %21 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clips, align 4
  %tobool34.not = icmp eq ptr %22, null
  br i1 %tobool34.not, label %if.end.if.then39_crit_edge, label %lor.lhs.false35

if.end.if.then39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

lor.lhs.false35:                                  ; preds = %if.end
  %src37 = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %src, align 4
  %25 = ptrtoint ptr %src37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i = icmp eq i32 %24, %26
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false35.if.then39_crit_edge

lor.lhs.false35.if.then39_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

land.lhs.true.i:                                  ; preds = %lor.lhs.false35
  %27 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %x2, align 4
  %x22.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 2
  %29 = ptrtoint ptr %x22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp3.i = icmp eq i32 %28, %30
  br i1 %cmp3.i, label %land.lhs.true4.i, label %land.lhs.true.i.if.then39_crit_edge

land.lhs.true.i.if.then39_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y1, align 4
  %y15.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 1
  %33 = ptrtoint ptr %y15.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp6.i = icmp eq i32 %32, %34
  br i1 %cmp6.i, label %drm_rect_equals.exit, label %land.lhs.true4.i.if.then39_crit_edge

land.lhs.true4.i.if.then39_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

drm_rect_equals.exit:                             ; preds = %land.lhs.true4.i
  %35 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y2, align 4
  %y27.i = getelementptr inbounds %struct.drm_plane_state, ptr %old_state, i32 0, i32 20, i32 3
  %37 = ptrtoint ptr %y27.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y27.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp8.i = icmp eq i32 %36, %38
  br i1 %cmp8.i, label %drm_rect_equals.exit.if.end42_crit_edge, label %drm_rect_equals.exit.if.then39_crit_edge

drm_rect_equals.exit.if.then39_crit_edge:         ; preds = %drm_rect_equals.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

drm_rect_equals.exit.if.end42_crit_edge:          ; preds = %drm_rect_equals.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %drm_rect_equals.exit.if.then39_crit_edge, %land.lhs.true4.i.if.then39_crit_edge, %land.lhs.true.i.if.then39_crit_edge, %lor.lhs.false35.if.then39_crit_edge, %if.end.if.then39_crit_edge
  %39 = ptrtoint ptr %clips to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %clips, align 4
  %40 = ptrtoint ptr %num_clips to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %num_clips, align 4
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 4
  %41 = ptrtoint ptr %full_update to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %full_update, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %drm_rect_equals.exit.if.end42_crit_edge, %lor.lhs.false4.if.end42_crit_edge, %lor.lhs.false2.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge, %entry.if.end42_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_plane_get_damage_clips(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_get_damage_clips_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_atomic_helper_damage_iter_next(ptr noundef %iter, ptr noundef %rect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %full_update = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 4
  %0 = ptrtoint ptr %full_update to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %full_update, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %curr_clip = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 3
  %num_clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 2
  %clips = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 1
  br label %while.cond

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = call ptr @memcpy(ptr %rect, ptr %iter, i32 16)
  %3 = ptrtoint ptr %full_update to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %full_update, align 4
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %4 = ptrtoint ptr %curr_clip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %curr_clip, align 4
  %6 = ptrtoint ptr %num_clips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %8 = ptrtoint ptr %clips to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clips, align 4
  %arrayidx = getelementptr %struct.drm_rect, ptr %9, i32 %5
  %10 = call ptr @memcpy(ptr %rect, ptr %arrayidx, i32 16)
  %11 = ptrtoint ptr %curr_clip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_clip, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %curr_clip, align 4
  %call = tail call zeroext i1 @drm_rect_intersect(ptr noundef %rect, ptr noundef %iter) #6
  br i1 %call, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ %cmp, %while.body.cleanup_crit_edge ], [ %cmp, %while.cond.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_rect_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_atomic_helper_damage_merged(ptr nocapture noundef readonly %old_state, ptr noundef %state, ptr nocapture noundef %rect) #0 align 64 {
entry:
  %iter = alloca %struct.drm_atomic_helper_damage_iter, align 4
  %clip = alloca %struct.drm_rect, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %iter) #6
  %0 = call ptr @memset(ptr %iter, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clip) #6
  %1 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 1
  %2 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 2
  %3 = getelementptr inbounds %struct.drm_rect, ptr %clip, i32 0, i32 3
  %4 = call ptr @memset(ptr %clip, i32 255, i32 16)
  %5 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2147483647, ptr %rect, align 4
  %y1 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 1
  %6 = ptrtoint ptr %y1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2147483647, ptr %y1, align 4
  %x2 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 2
  %7 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %x2, align 4
  %y2 = getelementptr inbounds %struct.drm_rect, ptr %rect, i32 0, i32 3
  %8 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %y2, align 4
  call void @drm_atomic_helper_damage_iter_init(ptr noundef nonnull %iter, ptr noundef %old_state, ptr noundef %state)
  %full_update.i = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 4
  %curr_clip.i = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 3
  %num_clips.i = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 2
  %clips.i = getelementptr inbounds %struct.drm_atomic_helper_damage_iter, ptr %iter, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %valid.0.off0 = phi i1 [ false, %entry ], [ true, %while.body ]
  %9 = ptrtoint ptr %full_update.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %full_update.i, align 4, !range !26
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %while.cond.while.cond.i_crit_edge, label %if.then.i

while.cond.while.cond.i_crit_edge:                ; preds = %while.cond
  br label %while.cond.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call ptr @memcpy(ptr %clip, ptr %iter, i32 16)
  %12 = ptrtoint ptr %full_update.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %full_update.i, align 4
  br label %while.body

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.while.cond.i_crit_edge
  %13 = ptrtoint ptr %curr_clip.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_clip.i, align 4
  %15 = ptrtoint ptr %num_clips.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_clips.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp.i = icmp ult i32 %14, %16
  br i1 %cmp.i, label %while.body.i, label %while.end

while.body.i:                                     ; preds = %while.cond.i
  %17 = ptrtoint ptr %clips.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clips.i, align 4
  %arrayidx.i = getelementptr %struct.drm_rect, ptr %18, i32 %14
  %19 = call ptr @memcpy(ptr %clip, ptr %arrayidx.i, i32 16)
  %inc.i = add nuw i32 %14, 1
  %20 = ptrtoint ptr %curr_clip.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i, ptr %curr_clip.i, align 4
  %call.i = call zeroext i1 @drm_rect_intersect(ptr noundef nonnull %clip, ptr noundef nonnull %iter) #6
  br i1 %call.i, label %while.body.i.while.body_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.while.body_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %while.body.i.while.body_crit_edge, %if.then.i
  %21 = ptrtoint ptr %rect to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rect, align 4
  %23 = ptrtoint ptr %clip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clip, align 4
  %25 = call i32 @llvm.smin.i32(i32 %22, i32 %24)
  %26 = ptrtoint ptr %rect to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %rect, align 4
  %27 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %y1, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %31 = call i32 @llvm.smin.i32(i32 %28, i32 %30)
  %32 = ptrtoint ptr %y1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %y1, align 4
  %33 = ptrtoint ptr %x2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %x2, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %37 = call i32 @llvm.smax.i32(i32 %34, i32 %36)
  %38 = ptrtoint ptr %x2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %x2, align 4
  %39 = ptrtoint ptr %y2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %y2, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %3, align 4
  %43 = call i32 @llvm.smax.i32(i32 %40, i32 %42)
  %44 = ptrtoint ptr %y2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %y2, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clip) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %iter) #6
  ret i1 %valid.0.off0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 75, i32 7}
!2 = !{ptr @__ksymtab_drm_atomic_helper_check_plane_damage, !3, !"__ksymtab_drm_atomic_helper_check_plane_damage", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 84, i32 1}
!4 = !{ptr @__ksymtab_drm_atomic_helper_dirtyfb, !5, !"__ksymtab_drm_atomic_helper_dirtyfb", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 201, i32 1}
!6 = !{ptr @__ksymtab_drm_atomic_helper_damage_iter_init, !7, !"__ksymtab_drm_atomic_helper_damage_iter_init", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 246, i32 1}
!8 = !{ptr @__ksymtab_drm_atomic_helper_damage_iter_next, !9, !"__ksymtab_drm_atomic_helper_damage_iter_next", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 288, i32 1}
!10 = !{ptr @__ksymtab_drm_atomic_helper_damage_merged, !11, !"__ksymtab_drm_atomic_helper_damage_merged", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_damage_helper.c", i32 329, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2148527850}
!23 = !{i64 2148442302, i64 2148442334, i64 2148442363, i64 2148442397, i64 2148442428, i64 2148442451}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2150176001}
!26 = !{i8 0, i8 2}
