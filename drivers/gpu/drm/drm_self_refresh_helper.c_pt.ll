; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_self_refresh_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_self_refresh_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_self_refresh_helper_update_avg_times\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_self_refresh_helper_update_avg_times\09\09\09\09"
module asm "\09.long\09__crc_drm_self_refresh_helper_update_avg_times\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_update_avg_times:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_update_avg_times\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_update_avg_times:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_self_refresh_helper_alter_state\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_self_refresh_helper_alter_state\09\09\09\09"
module asm "\09.long\09__crc_drm_self_refresh_helper_alter_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_alter_state:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_alter_state\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_alter_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_self_refresh_helper_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_self_refresh_helper_init\09\09\09\09"
module asm "\09.long\09__crc_drm_self_refresh_helper_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_self_refresh_helper_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_self_refresh_helper_cleanup\09\09\09\09"
module asm "\09.long\09__crc_drm_self_refresh_helper_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_self_refresh_helper_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_self_refresh_helper_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_self_refresh_helper_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_self_refresh_data = type { ptr, %struct.delayed_work, %struct.mutex, %struct.ewma_psr_time, %struct.ewma_psr_time }
%struct.ewma_psr_time = type { i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }

@__kstrtab_drm_self_refresh_helper_update_avg_times = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_update_avg_times = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_update_avg_times = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_update_avg_times to i32), ptr @__kstrtab_drm_self_refresh_helper_update_avg_times, ptr @__kstrtabns_drm_self_refresh_helper_update_avg_times }, section "___ksymtab+drm_self_refresh_helper_update_avg_times", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_drm_self_refresh_helper_alter_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_alter_state = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_alter_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_alter_state to i32), ptr @__kstrtab_drm_self_refresh_helper_alter_state, ptr @__kstrtabns_drm_self_refresh_helper_alter_state }, section "___ksymtab+drm_self_refresh_helper_alter_state", align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/drm_self_refresh_helper.c\00", [54 x i8] zeroinitializer }, align 32
@drm_self_refresh_helper_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&sr_data->entry_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@drm_self_refresh_helper_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&sr_data->entry_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@drm_self_refresh_helper_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sr_data->avg_mutex\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_drm_self_refresh_helper_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_init to i32), ptr @__kstrtab_drm_self_refresh_helper_init, ptr @__kstrtabns_drm_self_refresh_helper_init }, section "___ksymtab+drm_self_refresh_helper_init", align 4
@__kstrtab_drm_self_refresh_helper_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_self_refresh_helper_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_self_refresh_helper_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_self_refresh_helper_cleanup to i32), ptr @__kstrtab_drm_self_refresh_helper_cleanup, ptr @__kstrtabns_drm_self_refresh_helper_cleanup }, section "___ksymtab+drm_self_refresh_helper_cleanup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 237, i32 6 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 244, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [45 x i8] c"../drivers/gpu/drm/drm_self_refresh_helper.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 247, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_drm_self_refresh_helper_alter_state, ptr @__ksymtab_drm_self_refresh_helper_cleanup, ptr @__ksymtab_drm_self_refresh_helper_init, ptr @__ksymtab_drm_self_refresh_helper_update_avg_times, ptr @.str, ptr @drm_self_refresh_helper_init.__key, ptr @.str.1, ptr @drm_self_refresh_helper_init.__key.2, ptr @.str.3, ptr @drm_self_refresh_helper_init.__key.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_self_refresh_helper_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_self_refresh_helper_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_self_refresh_helper_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_update_avg_times(ptr nocapture noundef readonly %state, i32 noundef %commit_time_ms, i32 noundef %new_self_refresh_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_crtc34 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp35 = icmp sgt i32 %3, 0
  br i1 %cmp35, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %shl19.i = shl i32 %commit_time_ms, 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.036, i32 2
  %8 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state, align 8
  %shl = shl nuw i32 1, %i.036
  %and = and i32 %shl, %new_self_refresh_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %self_refresh_active, align 2, !range !27
  %12 = zext i1 %tobool6 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp10 = icmp eq i8 %11, %12
  br i1 %cmp10, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 31
  %13 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %self_refresh_data, align 4
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %14, i32 0, i32 3
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %14, i32 0, i32 4
  %time.0 = select i1 %tobool6, ptr %entry_avg_ms, ptr %exit_avg_ms
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %14, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %avg_mutex, i32 noundef 0) #5
  %15 = ptrtoint ptr %time.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %time.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %sub.i = mul i32 %16, 3
  %add.i = add i32 %sub.i, %shl19.i
  %shr.i = lshr i32 %add.i, 2
  %cond.i = select i1 %tobool.not.i, i32 %shl19.i, i32 %shr.i
  %17 = ptrtoint ptr %time.0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %cond.i, ptr %time.0, align 4
  tail call void @mutex_unlock(ptr noundef %avg_mutex) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 19
  %20 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_alter_state(ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_update = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %async_update to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %async_update, align 4
  %1 = and i8 %bf.load, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %1)
  %.not = icmp eq i8 %1, -128
  br i1 %.not, label %entry.if.end20_crit_edge, label %for.cond.preheader

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86 = icmp sgt i32 %5, 0
  br i1 %cmp86, label %for.body.lr.ph, label %for.cond.preheader.if.end20_crit_edge

for.cond.preheader.if.end20_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %6 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.087
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.087, i32 2
  %10 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state, align 8
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %self_refresh_active, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear17 = and i8 %bf.load, 95
  %bf.set18 = or i8 %bf.clear17, -128
  %14 = ptrtoint ptr %async_update to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set18, ptr %async_update, align 4
  br label %if.end20

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.if.end20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %if.then11, %for.cond.preheader.if.end20_crit_edge, %entry.if.end20_crit_edge
  %dev22 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev22, align 4
  %num_crtc2489 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 30, i32 19
  %17 = ptrtoint ptr %num_crtc2489 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_crtc2489, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2590 = icmp sgt i32 %18, 0
  br i1 %cmp2590, label %for.body26.lr.ph, label %if.end20.for.end54_crit_edge

if.end20.for.end54_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.body26.lr.ph:                                 ; preds = %if.end20
  %crtcs27 = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body26

for.body26:                                       ; preds = %for.inc52.for.body26_crit_edge, %for.body26.lr.ph
  %i.191 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc53, %for.inc52.for.body26_crit_edge ]
  %19 = ptrtoint ptr %crtcs27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtcs27, align 4
  %arrayidx28 = getelementptr %struct.__drm_crtcs_state, ptr %20, i32 %i.191
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx28, align 8
  %tobool30.not = icmp eq ptr %22, null
  br i1 %tobool30.not, label %for.body26.for.inc52_crit_edge, label %land.lhs.true31

for.body26.for.inc52_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

land.lhs.true31:                                  ; preds = %for.body26
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %20, i32 %i.191, i32 3
  %23 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %new_state, align 4
  %self_refresh_active39 = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 16
  %25 = ptrtoint ptr %self_refresh_active39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %self_refresh_active39, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  br i1 %tobool40.not, label %if.end42, label %land.lhs.true31.for.inc52_crit_edge

land.lhs.true31.for.inc52_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

if.end42:                                         ; preds = %land.lhs.true31
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %22, i32 0, i32 31
  %27 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %self_refresh_data, align 4
  %tobool43.not = icmp eq ptr %28, null
  br i1 %tobool43.not, label %if.end42.for.inc52_crit_edge, label %if.end45

if.end42.for.inc52_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

if.end45:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %28, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %avg_mutex, i32 noundef 0) #5
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %entry_avg_ms to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entry_avg_ms, align 4
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %exit_avg_ms to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %exit_avg_ms, align 4
  tail call void @mutex_unlock(ptr noundef %avg_mutex) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %28, i32 0, i32 1
  %shr.i85 = lshr i32 %32, 4
  %shr.i = lshr i32 %30, 4
  %add = add nuw nsw i32 %shr.i85, %shr.i
  %mul = shl nuw nsw i32 %add, 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %entry_work, i32 noundef %call2.i) #5
  br label %for.inc52

for.inc52:                                        ; preds = %if.end45, %if.end42.for.inc52_crit_edge, %land.lhs.true31.for.inc52_crit_edge, %for.body26.for.inc52_crit_edge
  %inc53 = add nuw nsw i32 %i.191, 1
  %34 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev22, align 4
  %num_crtc24 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 30, i32 19
  %36 = ptrtoint ptr %num_crtc24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_crtc24, align 4
  %cmp25 = icmp slt i32 %inc53, %37
  br i1 %cmp25, label %for.inc52.for.body26_crit_edge, label %for.inc52.for.end54_crit_edge

for.inc52.for.end54_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.inc52.for.body26_crit_edge:                   ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.end54:                                        ; preds = %for.inc52.for.end54_crit_edge, %if.end20.for.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_self_refresh_helper_init(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 31
  %0 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self_refresh_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 204) #8
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end22.cleanup_crit_edge, label %do.body27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %entry_work, i32 noundef 0) #5
  %3 = ptrtoint ptr %entry_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %entry_work, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @drm_self_refresh_helper_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry34 = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry34, ptr %entry34, align 8
  %prev.i = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @drm_self_refresh_helper_entry_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.3, ptr noundef nonnull @drm_self_refresh_helper_init.__key.2) #5
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %crtc, ptr %call7.i.i, align 8
  %avg_mutex = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %avg_mutex, ptr noundef nonnull @.str.5, ptr noundef nonnull @drm_self_refresh_helper_init.__key.4) #5
  %entry_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %entry_avg_ms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %entry_avg_ms, align 4
  %exit_avg_ms = getelementptr inbounds %struct.drm_self_refresh_data, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %exit_avg_ms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %exit_avg_ms, align 8
  %10 = load volatile i32, ptr %entry_avg_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %sub.i = mul i32 %10, 3
  %add.i = add i32 %sub.i, 3200
  %shr.i = lshr i32 %add.i, 2
  %cond.i = select i1 %tobool.not.i, i32 3200, i32 %shr.i
  %11 = ptrtoint ptr %entry_avg_ms to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %cond.i, ptr %entry_avg_ms, align 4
  %12 = ptrtoint ptr %exit_avg_ms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %exit_avg_ms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i69 = icmp eq i32 %13, 0
  %sub.i70 = mul i32 %13, 3
  %add.i71 = add i32 %sub.i70, 3200
  %shr.i72 = lshr i32 %add.i71, 2
  %cond.i73 = select i1 %tobool.not.i69, i32 3200, i32 %shr.i72
  %14 = ptrtoint ptr %exit_avg_ms to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %cond.i73, ptr %exit_avg_ms, align 8
  %15 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %self_refresh_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body27, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body27 ], [ -12, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_self_refresh_helper_entry_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #5
  %4 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #5
  %call3 = call ptr @drm_atomic_state_alloc(ptr noundef %3) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.out_drop_locks_crit_edge, label %retry.preheader

entry.out_drop_locks_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drop_locks

retry.preheader:                                  ; preds = %entry
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call3, i32 0, i32 9
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %call3, i32 0, i32 5
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %call3, i32 0, i32 6
  br label %retry

retry:                                            ; preds = %if.then32.retry_crit_edge, %retry.preheader
  %5 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %acquire_ctx, align 4
  %call4 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %call3, ptr noundef %1) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call4 to i32
  br label %out

if.end8:                                          ; preds = %retry
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.end8.if.end37_crit_edge, label %if.end11

if.end8.if.end37_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end11:                                         ; preds = %if.end8
  %call12 = call i32 @drm_atomic_add_affected_connectors(ptr noundef nonnull %call3, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %if.end11
  %9 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp64 = icmp sgt i32 %10, 0
  br i1 %cmp64, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %12, i32 %i.065
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %12, i32 %i.065, i32 3
  %15 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %new_state, align 4
  %self_refresh_aware = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %self_refresh_aware to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %self_refresh_aware, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %call4, i32 0, i32 2
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %active, align 1
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %call4, i32 0, i32 16
  %20 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %self_refresh_active, align 2
  %call27 = call i32 @drm_atomic_commit(ptr noundef nonnull %call3) #5
  br label %out

out:                                              ; preds = %for.end, %if.end11.out_crit_edge, %if.then6
  %ret.1 = phi i32 [ %6, %if.then6 ], [ %call12, %if.end11.out_crit_edge ], [ %call27, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %ret.1)
  %cmp31 = icmp eq i32 %ret.1, -35
  br i1 %cmp31, label %if.then32, label %out.if.end37_crit_edge

out.if.end37_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then32:                                        ; preds = %out
  call void @drm_atomic_state_clear(ptr noundef nonnull %call3) #5
  %call33 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #5
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.retry_crit_edge, label %if.then32.if.end37_crit_edge

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then32.retry_crit_edge:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %retry

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %out.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %if.end8.if.end37_crit_edge
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !29
  call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #5
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #5, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_drop_locks_crit_edge, label %if.then10.i.i.i.i.i, !prof !28

if.end5.i.i.i.i.i.out_drop_locks_crit_edge:       ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_drop_locks

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #5
  br label %out_drop_locks

if.then.i.i:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !31
  call void @__drm_atomic_state_free(ptr noundef nonnull %call3) #5
  br label %out_drop_locks

out_drop_locks:                                   ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_drop_locks_crit_edge, %entry.out_drop_locks_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #5
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #5
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_self_refresh_helper_cleanup(ptr nocapture noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %self_refresh_data = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 31
  %0 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %self_refresh_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %self_refresh_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %self_refresh_data, align 4
  %entry_work = getelementptr inbounds %struct.drm_self_refresh_data, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %entry_work) #5
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_connectors(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_drm_self_refresh_helper_update_avg_times, !1, !"__ksymtab_drm_self_refresh_helper_update_avg_times", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 172, i32 1}
!2 = !{ptr @__ksymtab_drm_self_refresh_helper_alter_state, !3, !"__ksymtab_drm_self_refresh_helper_alter_state", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 224, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 237, i32 6}
!6 = !{ptr @drm_self_refresh_helper_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 244, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @drm_self_refresh_helper_init.__key.2, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @drm_self_refresh_helper_init.__key.4, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 247, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__ksymtab_drm_self_refresh_helper_init, !15, !"__ksymtab_drm_self_refresh_helper_init", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 262, i32 1}
!16 = !{ptr @__ksymtab_drm_self_refresh_helper_cleanup, !17, !"__ksymtab_drm_self_refresh_helper_cleanup", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_self_refresh_helper.c", i32 281, i32 1}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i8 0, i8 2}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{i64 2148401094}
!30 = !{i64 2148315558, i64 2148315590, i64 2148315619, i64 2148315653, i64 2148315684, i64 2148315707}
!31 = !{i64 2149876866}
