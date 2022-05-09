; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdp4_dtv_encoder = type { %struct.drm_encoder, ptr, ptr, i32, i8, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.mdp4_kms = type { %struct.mdp_kms, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mdp_irq, i8, ptr, i64 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }

@mdp4_dtv_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @mdp4_dtv_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mdp4_dtv_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dtv_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @mdp4_dtv_encoder_disable, ptr @mdp4_dtv_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_clk\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to get hdmi_clk\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tv_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"*ERROR* failed to get tv_clk\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pixclock=%lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"setting mdp_clk=%lu\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to set mdp_clk to %lu: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to enabled mdp_clk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to enable hdmi_clk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"mdp4_dtv_encoder_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 35, i32 39 }
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"mdp4_dtv_encoder_helper_funcs\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 161, i32 46 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 192, i32 54 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 194, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 199, i32 53 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 201, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 51, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 55, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 102, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 141, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 145, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 150, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [52 x i8] c"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 154, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @mdp4_dtv_encoder_funcs, ptr @mdp4_dtv_encoder_helper_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_dtv_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp4_dtv_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp4_dtv_round_pixclk(ptr nocapture noundef readonly %encoder, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mdp_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %mdp_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdp_clk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %rate) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp4_dtv_encoder_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 92) #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mdp4_dtv_encoder_funcs, i32 noundef 2, ptr noundef null) #3
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %1 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mdp4_dtv_encoder_helper_funcs, ptr %helper_private.i, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str) #3
  %hdmi_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %hdmi_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %hdmi_clk, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #3
  br label %if.then21

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef nonnull @.str.3) #3
  %mdp_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %mdp_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call12, ptr %mdp_clk, align 4
  %cmp.i41 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #3
  br label %if.then21

if.then21:                                        ; preds = %if.then15, %if.then6
  %ret.0.ph.in.in = phi ptr [ %mdp_clk, %if.then15 ], [ %hdmi_clk, %if.then6 ]
  %10 = ptrtoint ptr %ret.0.ph.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %ret.0.ph.in48 = load ptr, ptr %ret.0.ph.in.in, align 4
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %call7.i.i) #3
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end10.cleanup_crit_edge ], [ %ret.0.ph.in48, %if.then21 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #3
  tail call void @kfree(ptr noundef %encoder) #3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 31
  %call1 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #3
  %6 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %10 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %11 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %12 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_end, align 4
  %conv3 = zext i16 %13 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  %conv4 = zext i16 %15 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  %conv5 = zext i16 %17 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %18 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsync_start, align 4
  %conv6 = zext i16 %19 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %20 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_end, align 2
  %conv7 = zext i16 %21 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %22 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vtotal, align 4
  %conv8 = zext i16 %23 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 28
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 2
  %conv9 = zext i8 %25 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %call1, i32 noundef %7, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %conv9, i32 noundef %27) #3
  %28 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %29, 1000
  %pixclock = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 3
  %30 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %pixclock, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %mul) #3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %and = lshr i32 %32, 1
  %and.lobit = and i32 %and, 1
  %and14 = lshr i32 %32, 2
  %33 = and i32 %and14, 2
  %34 = or i32 %33, %and.lobit
  %35 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %htotal, align 2
  %conv20 = zext i16 %36 to i32
  %37 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hsync_start, align 2
  %conv22 = zext i16 %38 to i32
  %sub = sub nsw i32 %conv20, %conv22
  %39 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay, align 4
  %conv28 = zext i16 %40 to i32
  %sub30 = add nsw i32 %sub, %conv28
  %41 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vtotal, align 4
  %conv33 = zext i16 %42 to i32
  %mul36 = mul nuw i32 %conv33, %conv20
  %43 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vsync_end, align 2
  %conv38 = zext i16 %44 to i32
  %45 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vsync_start, align 4
  %conv40 = zext i16 %46 to i32
  %sub41 = sub nsw i32 %conv38, %conv40
  %mul44 = mul i32 %sub41, %conv20
  %sub49 = sub nsw i32 %conv33, %conv40
  %mul52 = mul i32 %sub49, %conv20
  %47 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vdisplay, align 2
  %conv56 = zext i16 %48 to i32
  %sub57.neg = sub nsw i32 %conv56, %conv40
  %mul60.neg = mul i32 %sub57.neg, %conv20
  %sub61 = add i32 %mul36, -1
  %sub63 = add i32 %sub61, %mul60.neg
  %49 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_end, align 4
  %conv65 = zext i16 %50 to i32
  %sub68 = sub nsw i32 %conv65, %conv22
  %and.i = and i32 %sub68, 65535
  %shl.i = shl nuw i32 %conv20, 16
  %or73 = or i32 %and.i, %shl.i
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %51 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %52, i32 851972
  tail call void @msm_writel(i32 noundef %or73, ptr noundef %add.ptr.i) #3
  %53 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i136 = getelementptr i8, ptr %54, i32 851976
  tail call void @msm_writel(i32 noundef %mul36, ptr noundef %add.ptr.i136) #3
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i138 = getelementptr i8, ptr %56, i32 851980
  tail call void @msm_writel(i32 noundef %mul44, ptr noundef %add.ptr.i138) #3
  %and.i139 = and i32 %sub, 65535
  %sub31 = shl i32 %sub30, 16
  %shl.i140 = add i32 %sub31, -65536
  %or76 = or i32 %shl.i140, %and.i139
  %57 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %58, i32 851992
  tail call void @msm_writel(i32 noundef %or76, ptr noundef %add.ptr.i142) #3
  %59 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i144 = getelementptr i8, ptr %60, i32 851996
  tail call void @msm_writel(i32 noundef %mul52, ptr noundef %add.ptr.i144) #3
  %61 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i146 = getelementptr i8, ptr %62, i32 852000
  tail call void @msm_writel(i32 noundef %sub63, ptr noundef %add.ptr.i146) #3
  %63 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i148 = getelementptr i8, ptr %64, i32 852032
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i148) #3
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i150 = getelementptr i8, ptr %66, i32 852036
  tail call void @msm_writel(i32 noundef -2147483393, ptr noundef %add.ptr.i150) #3
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i152 = getelementptr i8, ptr %68, i32 852040
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i152) #3
  %69 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i154 = getelementptr i8, ptr %70, i32 852048
  tail call void @msm_writel(i32 noundef %34, ptr noundef %add.ptr.i154) #3
  %71 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i156 = getelementptr i8, ptr %72, i32 852012
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i156) #3
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i158 = getelementptr i8, ptr %74, i32 852016
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i158) #3
  %75 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i160 = getelementptr i8, ptr %76, i32 852024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i160) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_disable(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !37

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 102, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms.i, align 4
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 851968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #3
  tail call void @mdp_irq_wait(ptr noundef %7, i32 noundef 512) #3
  %hdmi_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 1
  %10 = ptrtoint ptr %hdmi_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmi_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #3
  tail call void @clk_unprepare(ptr noundef %11) #3
  %mdp_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 2
  %12 = ptrtoint ptr %mdp_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdp_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #3
  tail call void @clk_unprepare(ptr noundef %13) #3
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp4_dtv_encoder_enable(ptr nocapture noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms.i, align 4
  %pixclock = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 3
  %6 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixclock, align 4
  %enabled = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 4
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !38

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 131, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %entry
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  tail call void @mdp4_crtc_set_config(ptr noundef %11, i32 noundef 8511) #3
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  tail call void @mdp4_crtc_set_intf(ptr noundef %13, i32 noundef 0, i32 noundef 1) #3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %7) #3
  %mdp_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 2
  %14 = ptrtoint ptr %mdp_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdp_clk, align 4
  %call32 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %7) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end24.if.end36_crit_edge, label %if.then34

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %dev35 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef %7, i32 noundef %call32) #3
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end24.if.end36_crit_edge
  %18 = ptrtoint ptr %mdp_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdp_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.if.then40_crit_edge

if.end36.if.then40_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then40

if.end.i:                                         ; preds = %if.end36
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end42_crit_edge, label %if.then3.i

if.end.i.if.end42_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end42

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %19) #3
  br label %if.then40

if.then40:                                        ; preds = %if.then3.i, %if.end36.if.then40_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end36.if.then40_crit_edge ]
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i.ph) #3
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end.i.if.end42_crit_edge
  %hdmi_clk = getelementptr inbounds %struct.mdp4_dtv_encoder, ptr %encoder, i32 0, i32 1
  %22 = ptrtoint ptr %hdmi_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hdmi_clk, align 4
  %call.i72 = tail call i32 @clk_prepare(ptr noundef %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool.not.i73 = icmp eq i32 %call.i72, 0
  br i1 %tobool.not.i73, label %if.end.i76, label %if.end42.if.then45_crit_edge

if.end42.if.then45_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.end.i76:                                       ; preds = %if.end42
  %call1.i74 = tail call i32 @clk_enable(ptr noundef %23) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i74)
  %tobool2.not.i75 = icmp eq i32 %call1.i74, 0
  br i1 %tobool2.not.i75, label %if.end.i76.if.end47_crit_edge, label %if.then3.i77

if.end.i76.if.end47_crit_edge:                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then3.i77:                                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %23) #3
  br label %if.then45

if.then45:                                        ; preds = %if.then3.i77, %if.end42.if.then45_crit_edge
  %retval.0.i78.ph = phi i32 [ %call1.i74, %if.then3.i77 ], [ %call.i72, %if.end42.if.then45_crit_edge ]
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i78.ph) #3
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end.i76.if.end47_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp4_kms, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %27, i32 851968
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #3
  %28 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp4_crtc_set_intf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 192, i32 54}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 194, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 199, i32 53}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 201, i32 3}
!9 = !{ptr @mdp4_dtv_encoder_funcs, !10, !"mdp4_dtv_encoder_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 35, i32 39}
!11 = !{ptr @mdp4_dtv_encoder_helper_funcs, !12, !"mdp4_dtv_encoder_helper_funcs", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 161, i32 46}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 51, i32 2}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 55, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 102, i32 6}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 141, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 145, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 150, i32 3}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp4/mdp4_dtv_encoder.c", i32 154, i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{!"branch_weights", i32 2000, i32 1}
