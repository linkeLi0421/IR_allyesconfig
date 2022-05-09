; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_drm_fb.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_fb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.88 = type { i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@rockchip_drm_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @rockchip_fb_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_mode_config_helpers = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@rockchip_drm_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @drm_atomic_helper_dirtyfb }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* Failed to initialize framebuffer: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.2 = private unnamed_addr constant [31 x i8] c"rockchip_drm_mode_config_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 101, i32 43 }
@___asan_gen_.5 = private unnamed_addr constant [29 x i8] c"rockchip_mode_config_helpers\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 56, i32 50 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"rockchip_drm_fb_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 21, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [46 x i8] c"../drivers/gpu/drm/rockchip/rockchip_drm_fb.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 46, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @rockchip_drm_mode_config_funcs, ptr @rockchip_mode_config_helpers, ptr @rockchip_drm_fb_funcs, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_mode_config_helpers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_drm_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_drm_framebuffer_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef %obj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef %mode_cmd) #5
  %obj2.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i.i, i32 0, i32 15
  %1 = ptrtoint ptr %obj2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %obj, ptr %obj2.i, align 4
  %call4.i = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rockchip_drm_fb_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.then6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev7.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call4.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %4 = inttoptr i32 %call4.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i7 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %4, %if.then6.i ], [ %call7.i.i.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0.i7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rockchip_drm_mode_config_init(ptr nocapture noundef writeonly %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %2 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %3 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4096, ptr %max_height, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 27
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rockchip_drm_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 103
  %5 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rockchip_mode_config_helpers, ptr %helper_private, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rockchip_fb_create(ptr noundef %dev, ptr noundef %file, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 168) #8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup27_crit_edge, label %if.end6

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @drm_gem_fb_init_with_funcs(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %file, ptr noundef %mode_cmd, ptr noundef nonnull @rockchip_drm_fb_funcs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.end6.cleanup27.sink.split_crit_edge

if.end6.cleanup27.sink.split_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27.sink.split

if.end11:                                         ; preds = %if.end6
  %modifier = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 8
  %1 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %modifier, align 8
  %and = and i64 %2, -4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423488, i64 %and)
  %cmp = icmp eq i64 %and, 576460752303423488
  br i1 %cmp, label %if.then12, label %if.end11.cleanup27_crit_edge

if.end11.cleanup27_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.then12:                                        ; preds = %if.end11
  %call14 = tail call i32 @drm_gem_fb_afbc_init(ptr noundef %dev, ptr noundef %mode_cmd, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.cleanup27_crit_edge, label %if.then16

if.then12.cleanup27_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27

if.then16:                                        ; preds = %if.then12
  %obj18 = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_planes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1948.not = icmp eq i8 %4, 0
  br i1 %cmp1948.not, label %if.then16.cleanup27.sink.split_crit_edge, label %if.then16.for.body_crit_edge

if.then16.for.body_crit_edge:                     ; preds = %if.then16
  br label %for.body

if.then16.cleanup27.sink.split_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27.sink.split

for.body:                                         ; preds = %drm_gem_object_put.exit.for.body_crit_edge, %if.then16.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %drm_gem_object_put.exit.for.body_crit_edge ], [ 0, %if.then16.for.body_crit_edge ]
  %arrayidx21 = getelementptr ptr, ptr %obj18, i32 %i.049
  %5 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx21, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %for.body.drm_gem_object_put.exit_crit_edge, label %if.then.i

for.body.drm_gem_object_put.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !18
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #5
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #5, !srcloc !19
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !20

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %6, i32 noundef 3) #5
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !21
  tail call void @drm_gem_object_free(ptr noundef nonnull %6) #5
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %for.body.drm_gem_object_put.exit_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %8 = ptrtoint ptr %num_planes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_planes, align 1
  %conv = zext i8 %9 to i32
  %cmp19 = icmp ult i32 %inc, %conv
  br i1 %cmp19, label %drm_gem_object_put.exit.for.body_crit_edge, label %drm_gem_object_put.exit.cleanup27.sink.split_crit_edge

drm_gem_object_put.exit.cleanup27.sink.split_crit_edge: ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup27.sink.split

drm_gem_object_put.exit.for.body_crit_edge:       ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup27.sink.split:                             ; preds = %drm_gem_object_put.exit.cleanup27.sink.split_crit_edge, %if.then16.cleanup27.sink.split_crit_edge, %if.end6.cleanup27.sink.split_crit_edge
  %call14.sink = phi i32 [ %call7, %if.end6.cleanup27.sink.split_crit_edge ], [ %call14, %if.then16.cleanup27.sink.split_crit_edge ], [ %call14, %drm_gem_object_put.exit.cleanup27.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %10 = inttoptr i32 %call14.sink to ptr
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup27.sink.split, %if.then12.cleanup27_crit_edge, %if.end11.cleanup27_crit_edge, %if.end.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.1 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup27_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup27_crit_edge ], [ %call7.i.i, %if.then12.cleanup27_crit_edge ], [ %call7.i.i, %if.end11.cleanup27_crit_edge ], [ %10, %cleanup27.sink.split ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_init_with_funcs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_afbc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_fb.c", i32 46, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @rockchip_drm_fb_funcs, !4, !"rockchip_drm_fb_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_fb.c", i32 21, i32 43}
!5 = !{ptr @rockchip_drm_mode_config_funcs, !6, !"rockchip_drm_mode_config_funcs", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_fb.c", i32 101, i32 43}
!7 = !{ptr @rockchip_mode_config_helpers, !8, !"rockchip_mode_config_helpers", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_fb.c", i32 56, i32 50}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148300744}
!19 = !{i64 2148215208, i64 2148215240, i64 2148215269, i64 2148215303, i64 2148215334, i64 2148215357}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2150285687}
