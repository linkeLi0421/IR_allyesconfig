; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_encoder = type { %struct.drm_encoder, %struct.spinlock, i8, i32, ptr, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* vsync_clk is not initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: vtotal(%d) or vrefresh(%d) is 0\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.pingpong_tearcheck_setup = private unnamed_addr constant [25 x i8] c"pingpong_tearcheck_setup\00", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* vsync_clk round rate failed %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* vsync_clk clk_set_rate failed, %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"*ERROR* vsync_clk clk_prepare_enable failed, %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 117, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 129, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 29, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 35, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 42, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 85, i32 3 }
@___asan_gen_.40 = private constant [52 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 91, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 169, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 31
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #2
  %0 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %4 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_start, align 2
  %conv1 = zext i16 %5 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 3
  %6 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_end, align 4
  %conv2 = zext i16 %7 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %8 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %htotal, align 2
  %conv3 = zext i16 %9 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv4 = zext i16 %11 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %12 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vsync_start, align 4
  %conv5 = zext i16 %13 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end, align 2
  %conv6 = zext i16 %15 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %16 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vtotal, align 4
  %conv7 = zext i16 %17 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 28
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 2
  %conv8 = zext i8 %19 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call, i32 noundef %1, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %21) #2
  %22 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %kms.i.i, align 4
  %dev2.i = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %30 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtc.i, align 4
  %call3.i = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %31) #2
  %pp.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call3.i, i32 0, i32 4
  %32 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pp.i, align 4
  %vsync_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %27, i32 0, i32 22
  %34 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vsync_clk.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  %cmp.i.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #2
  br label %pingpong_tearcheck_setup.exit

if.end.i:                                         ; preds = %entry
  %36 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vtotal, align 4
  %conv.i = zext i16 %37 to i32
  %call5.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #2
  %mul.i = mul i32 %call5.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end10.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %38 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vtotal, align 4
  %conv8.i = zext i16 %39 to i32
  %call9.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #2
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.pingpong_tearcheck_setup, i32 noundef %conv8.i, i32 noundef %call9.i) #2
  br label %pingpong_tearcheck_setup.exit

if.end10.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vsync_clk.i, align 8
  %call12.i = tail call i32 @clk_round_rate(ptr noundef %41, i32 noundef 19200000) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp.i = icmp slt i32 %call12.i, 1
  br i1 %cmp.i, label %if.then14.i, label %if.end15.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.5, i32 noundef %call12.i) #2
  br label %pingpong_tearcheck_setup.exit

if.end15.i:                                       ; preds = %if.end10.i
  %div.i = udiv i32 %call12.i, %mul.i
  %and.i.i = and i32 %div.i, 524287
  %or.i = or i32 %and.i.i, 1572864
  %42 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %43 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %43, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %44 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %44, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i

sw.bb5.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %45 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i

sw.bb9.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %46 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %46, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i

do.body.i.i.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i:             ; preds = %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  %47 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %add.i.i = add i32 %retval.0.i.i.i, 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %27, i32 0, i32 26
  %48 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp.i1.i = icmp slt i32 %49, 1
  br i1 %cmp.i1.i, label %do.end.i.i, label %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i.mdp5_write.exit.i_crit_edge, !prof !28

REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i.mdp5_write.exit.i_crit_edge: ; preds = %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %REG_MDP5_PP_SYNC_CONFIG_VSYNC.exit.i.mdp5_write.exit.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %27, i32 0, i32 15
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %add.i.i
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr.i.i) #2
  %52 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %33, label %do.body.i.i10.i [
    i32 0, label %sw.bb.i.i3.i
    i32 1, label %sw.bb1.i.i5.i
    i32 2, label %sw.bb5.i.i7.i
    i32 3, label %sw.bb9.i.i9.i
  ]

sw.bb.i.i3.i:                                     ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %53 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i2.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %53, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i

sw.bb1.i.i5.i:                                    ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %54 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i4.i = getelementptr %struct.mdp5_cfg_hw, ptr %54, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i

sw.bb5.i.i7.i:                                    ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %55 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i6.i = getelementptr %struct.mdp5_cfg_hw, ptr %55, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i

sw.bb9.i.i9.i:                                    ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %56 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i8.i = getelementptr %struct.mdp5_cfg_hw, ptr %56, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i

do.body.i.i10.i:                                  ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i:            ; preds = %sw.bb9.i.i9.i, %sw.bb5.i.i7.i, %sw.bb1.i.i5.i, %sw.bb.i.i3.i
  %retval.0.in.i.i11.i = phi ptr [ %arrayidx12.i.i8.i, %sw.bb9.i.i9.i ], [ %arrayidx8.i.i6.i, %sw.bb5.i.i7.i ], [ %arrayidx4.i.i4.i, %sw.bb1.i.i5.i ], [ %base.i.i2.i, %sw.bb.i.i3.i ]
  %57 = ptrtoint ptr %retval.0.in.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %retval.0.i.i12.i = load i32, ptr %retval.0.in.i.i11.i, align 4
  %add.i13.i = add i32 %retval.0.i.i12.i, 8
  %58 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vtotal, align 4
  %conv20.i = zext i16 %59 to i32
  %mul21.i = shl nuw nsw i32 %conv20.i, 1
  %60 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp.i15.i = icmp slt i32 %61, 1
  br i1 %cmp.i15.i, label %do.end.i16.i, label %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i.mdp5_write.exit19.i_crit_edge, !prof !28

REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i.mdp5_write.exit19.i_crit_edge: ; preds = %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit19.i

do.end.i16.i:                                     ; preds = %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit19.i

mdp5_write.exit19.i:                              ; preds = %do.end.i16.i, %REG_MDP5_PP_SYNC_CONFIG_HEIGHT.exit.i.mdp5_write.exit19.i_crit_edge
  %62 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %63, i32 %add.i13.i
  tail call void @msm_writel(i32 noundef %mul21.i, ptr noundef %add.ptr.i18.i) #2
  %64 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %33, label %do.body.i.i28.i [
    i32 0, label %sw.bb.i.i21.i
    i32 1, label %sw.bb1.i.i23.i
    i32 2, label %sw.bb5.i.i25.i
    i32 3, label %sw.bb9.i.i27.i
  ]

sw.bb.i.i21.i:                                    ; preds = %mdp5_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %65 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i20.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %65, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i

sw.bb1.i.i23.i:                                   ; preds = %mdp5_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %66 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i22.i = getelementptr %struct.mdp5_cfg_hw, ptr %66, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i

sw.bb5.i.i25.i:                                   ; preds = %mdp5_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %67 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i24.i = getelementptr %struct.mdp5_cfg_hw, ptr %67, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i

sw.bb9.i.i27.i:                                   ; preds = %mdp5_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %68 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i26.i = getelementptr %struct.mdp5_cfg_hw, ptr %68, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i

do.body.i.i28.i:                                  ; preds = %mdp5_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_VSYNC_INIT_VAL.exit.i:                ; preds = %sw.bb9.i.i27.i, %sw.bb5.i.i25.i, %sw.bb1.i.i23.i, %sw.bb.i.i21.i
  %retval.0.in.i.i29.i = phi ptr [ %arrayidx12.i.i26.i, %sw.bb9.i.i27.i ], [ %arrayidx8.i.i24.i, %sw.bb5.i.i25.i ], [ %arrayidx4.i.i22.i, %sw.bb1.i.i23.i ], [ %base.i.i20.i, %sw.bb.i.i21.i ]
  %69 = ptrtoint ptr %retval.0.in.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %retval.0.i.i30.i = load i32, ptr %retval.0.in.i.i29.i, align 4
  %add.i31.i = add i32 %retval.0.i.i30.i, 16
  %70 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vdisplay, align 2
  %conv23.i = zext i16 %71 to i32
  %72 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i33.i = icmp slt i32 %73, 1
  br i1 %cmp.i33.i, label %do.end.i34.i, label %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i.mdp5_write.exit37.i_crit_edge, !prof !28

REG_MDP5_PP_VSYNC_INIT_VAL.exit.i.mdp5_write.exit37.i_crit_edge: ; preds = %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit37.i

do.end.i34.i:                                     ; preds = %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit37.i

mdp5_write.exit37.i:                              ; preds = %do.end.i34.i, %REG_MDP5_PP_VSYNC_INIT_VAL.exit.i.mdp5_write.exit37.i_crit_edge
  %74 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %75, i32 %add.i31.i
  tail call void @msm_writel(i32 noundef %conv23.i, ptr noundef %add.ptr.i36.i) #2
  %76 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %33, label %do.body.i.i46.i [
    i32 0, label %sw.bb.i.i39.i
    i32 1, label %sw.bb1.i.i41.i
    i32 2, label %sw.bb5.i.i43.i
    i32 3, label %sw.bb9.i.i45.i
  ]

sw.bb.i.i39.i:                                    ; preds = %mdp5_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %77 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i38.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %77, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_RD_PTR_IRQ.exit.i

sw.bb1.i.i41.i:                                   ; preds = %mdp5_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %78 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i40.i = getelementptr %struct.mdp5_cfg_hw, ptr %78, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_RD_PTR_IRQ.exit.i

sw.bb5.i.i43.i:                                   ; preds = %mdp5_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %79 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i42.i = getelementptr %struct.mdp5_cfg_hw, ptr %79, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_RD_PTR_IRQ.exit.i

sw.bb9.i.i45.i:                                   ; preds = %mdp5_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %80 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i44.i = getelementptr %struct.mdp5_cfg_hw, ptr %80, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_RD_PTR_IRQ.exit.i

do.body.i.i46.i:                                  ; preds = %mdp5_write.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_RD_PTR_IRQ.exit.i:                    ; preds = %sw.bb9.i.i45.i, %sw.bb5.i.i43.i, %sw.bb1.i.i41.i, %sw.bb.i.i39.i
  %retval.0.in.i.i47.i = phi ptr [ %arrayidx12.i.i44.i, %sw.bb9.i.i45.i ], [ %arrayidx8.i.i42.i, %sw.bb5.i.i43.i ], [ %arrayidx4.i.i40.i, %sw.bb1.i.i41.i ], [ %base.i.i38.i, %sw.bb.i.i39.i ]
  %81 = ptrtoint ptr %retval.0.in.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %retval.0.i.i48.i = load i32, ptr %retval.0.in.i.i47.i, align 4
  %add.i49.i = add i32 %retval.0.i.i48.i, 32
  %82 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %vdisplay, align 2
  %conv26.i = zext i16 %83 to i32
  %add.i = add nuw nsw i32 %conv26.i, 1
  %84 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp.i51.i = icmp slt i32 %85, 1
  br i1 %cmp.i51.i, label %do.end.i52.i, label %REG_MDP5_PP_RD_PTR_IRQ.exit.i.mdp5_write.exit55.i_crit_edge, !prof !28

REG_MDP5_PP_RD_PTR_IRQ.exit.i.mdp5_write.exit55.i_crit_edge: ; preds = %REG_MDP5_PP_RD_PTR_IRQ.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit55.i

do.end.i52.i:                                     ; preds = %REG_MDP5_PP_RD_PTR_IRQ.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit55.i

mdp5_write.exit55.i:                              ; preds = %do.end.i52.i, %REG_MDP5_PP_RD_PTR_IRQ.exit.i.mdp5_write.exit55.i_crit_edge
  %86 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %87, i32 %add.i49.i
  tail call void @msm_writel(i32 noundef %add.i, ptr noundef %add.ptr.i54.i) #2
  %88 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %33, label %do.body.i.i64.i [
    i32 0, label %sw.bb.i.i57.i
    i32 1, label %sw.bb1.i.i59.i
    i32 2, label %sw.bb5.i.i61.i
    i32 3, label %sw.bb9.i.i63.i
  ]

sw.bb.i.i57.i:                                    ; preds = %mdp5_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %89 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i56.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %89, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_START_POS.exit.i

sw.bb1.i.i59.i:                                   ; preds = %mdp5_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %90 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i58.i = getelementptr %struct.mdp5_cfg_hw, ptr %90, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_START_POS.exit.i

sw.bb5.i.i61.i:                                   ; preds = %mdp5_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %91 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i60.i = getelementptr %struct.mdp5_cfg_hw, ptr %91, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_START_POS.exit.i

sw.bb9.i.i63.i:                                   ; preds = %mdp5_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %92 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i62.i = getelementptr %struct.mdp5_cfg_hw, ptr %92, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_START_POS.exit.i

do.body.i.i64.i:                                  ; preds = %mdp5_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_START_POS.exit.i:                     ; preds = %sw.bb9.i.i63.i, %sw.bb5.i.i61.i, %sw.bb1.i.i59.i, %sw.bb.i.i57.i
  %retval.0.in.i.i65.i = phi ptr [ %arrayidx12.i.i62.i, %sw.bb9.i.i63.i ], [ %arrayidx8.i.i60.i, %sw.bb5.i.i61.i ], [ %arrayidx4.i.i58.i, %sw.bb1.i.i59.i ], [ %base.i.i56.i, %sw.bb.i.i57.i ]
  %93 = ptrtoint ptr %retval.0.in.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %retval.0.i.i66.i = load i32, ptr %retval.0.in.i.i65.i, align 4
  %add.i67.i = add i32 %retval.0.i.i66.i, 28
  %94 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %vdisplay, align 2
  %conv29.i = zext i16 %95 to i32
  %96 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp.i69.i = icmp slt i32 %97, 1
  br i1 %cmp.i69.i, label %do.end.i70.i, label %REG_MDP5_PP_START_POS.exit.i.mdp5_write.exit73.i_crit_edge, !prof !28

REG_MDP5_PP_START_POS.exit.i.mdp5_write.exit73.i_crit_edge: ; preds = %REG_MDP5_PP_START_POS.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit73.i

do.end.i70.i:                                     ; preds = %REG_MDP5_PP_START_POS.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit73.i

mdp5_write.exit73.i:                              ; preds = %do.end.i70.i, %REG_MDP5_PP_START_POS.exit.i.mdp5_write.exit73.i_crit_edge
  %98 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %99, i32 %add.i67.i
  tail call void @msm_writel(i32 noundef %conv29.i, ptr noundef %add.ptr.i72.i) #2
  %100 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %33, label %do.body.i.i82.i [
    i32 0, label %sw.bb.i.i75.i
    i32 1, label %sw.bb1.i.i77.i
    i32 2, label %sw.bb5.i.i79.i
    i32 3, label %sw.bb9.i.i81.i
  ]

sw.bb.i.i75.i:                                    ; preds = %mdp5_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %101 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i74.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %101, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_SYNC_THRESH.exit.i

sw.bb1.i.i77.i:                                   ; preds = %mdp5_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %102 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i76.i = getelementptr %struct.mdp5_cfg_hw, ptr %102, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_SYNC_THRESH.exit.i

sw.bb5.i.i79.i:                                   ; preds = %mdp5_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %103 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i78.i = getelementptr %struct.mdp5_cfg_hw, ptr %103, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_SYNC_THRESH.exit.i

sw.bb9.i.i81.i:                                   ; preds = %mdp5_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %104 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i80.i = getelementptr %struct.mdp5_cfg_hw, ptr %104, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_SYNC_THRESH.exit.i

do.body.i.i82.i:                                  ; preds = %mdp5_write.exit73.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_SYNC_THRESH.exit.i:                   ; preds = %sw.bb9.i.i81.i, %sw.bb5.i.i79.i, %sw.bb1.i.i77.i, %sw.bb.i.i75.i
  %retval.0.in.i.i83.i = phi ptr [ %arrayidx12.i.i80.i, %sw.bb9.i.i81.i ], [ %arrayidx8.i.i78.i, %sw.bb5.i.i79.i ], [ %arrayidx4.i.i76.i, %sw.bb1.i.i77.i ], [ %base.i.i74.i, %sw.bb.i.i75.i ]
  %105 = ptrtoint ptr %retval.0.in.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %retval.0.i.i84.i = load i32, ptr %retval.0.in.i.i83.i, align 4
  %add.i85.i = add i32 %retval.0.i.i84.i, 24
  %106 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i87.i = icmp slt i32 %107, 1
  br i1 %cmp.i87.i, label %do.end.i88.i, label %REG_MDP5_PP_SYNC_THRESH.exit.i.mdp5_write.exit91.i_crit_edge, !prof !28

REG_MDP5_PP_SYNC_THRESH.exit.i.mdp5_write.exit91.i_crit_edge: ; preds = %REG_MDP5_PP_SYNC_THRESH.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit91.i

do.end.i88.i:                                     ; preds = %REG_MDP5_PP_SYNC_THRESH.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit91.i

mdp5_write.exit91.i:                              ; preds = %do.end.i88.i, %REG_MDP5_PP_SYNC_THRESH.exit.i.mdp5_write.exit91.i_crit_edge
  %108 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %109, i32 %add.i85.i
  tail call void @msm_writel(i32 noundef 262148, ptr noundef %add.ptr.i90.i) #2
  %110 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %33, label %do.body.i.i100.i [
    i32 0, label %sw.bb.i.i93.i
    i32 1, label %sw.bb1.i.i95.i
    i32 2, label %sw.bb5.i.i97.i
    i32 3, label %sw.bb9.i.i99.i
  ]

sw.bb.i.i93.i:                                    ; preds = %mdp5_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i92.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i

sw.bb1.i.i95.i:                                   ; preds = %mdp5_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i94.i = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i

sw.bb5.i.i97.i:                                   ; preds = %mdp5_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %113 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i96.i = getelementptr %struct.mdp5_cfg_hw, ptr %113, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i

sw.bb9.i.i99.i:                                   ; preds = %mdp5_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %114 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i98.i = getelementptr %struct.mdp5_cfg_hw, ptr %114, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i

do.body.i.i100.i:                                 ; preds = %mdp5_write.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i:            ; preds = %sw.bb9.i.i99.i, %sw.bb5.i.i97.i, %sw.bb1.i.i95.i, %sw.bb.i.i93.i
  %retval.0.in.i.i101.i = phi ptr [ %arrayidx12.i.i98.i, %sw.bb9.i.i99.i ], [ %arrayidx8.i.i96.i, %sw.bb5.i.i97.i ], [ %arrayidx4.i.i94.i, %sw.bb1.i.i95.i ], [ %base.i.i92.i, %sw.bb.i.i93.i ]
  %115 = ptrtoint ptr %retval.0.in.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %retval.0.i.i102.i = load i32, ptr %retval.0.in.i.i101.i, align 4
  %add.i103.i = add i32 %retval.0.i.i102.i, 48
  %116 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp.i105.i = icmp slt i32 %117, 1
  br i1 %cmp.i105.i, label %do.end.i106.i, label %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i.mdp5_write.exit109.i_crit_edge, !prof !28

REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i.mdp5_write.exit109.i_crit_edge: ; preds = %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit109.i

do.end.i106.i:                                    ; preds = %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit109.i

mdp5_write.exit109.i:                             ; preds = %do.end.i106.i, %REG_MDP5_PP_AUTOREFRESH_CONFIG.exit.i.mdp5_write.exit109.i_crit_edge
  %118 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i108.i = getelementptr i8, ptr %119, i32 %add.i103.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i108.i) #2
  br label %pingpong_tearcheck_setup.exit

pingpong_tearcheck_setup.exit:                    ; preds = %mdp5_write.exit109.i, %if.then14.i, %if.then6.i, %if.then.i
  %120 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %crtc.i, align 4
  tail call void @mdp5_crtc_set_pipeline(ptr noundef %121) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_set_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_disable(ptr nocapture noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %0 = ptrtoint ptr %ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl1, align 4
  %intf2 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf2, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %call = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %5) #2
  %enabled = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 2
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !28

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 129, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end26:                                         ; preds = %entry
  %8 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kms.i.i, align 4
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %call1.i = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %15) #2
  %pp.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call1.i, i32 0, i32 4
  %16 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pp.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %17, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %19 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %19, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %20 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %20, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb5.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %21 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %21, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb9.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %22 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %22, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

do.body.i.i.i:                                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_TEAR_CHECK_EN.exit.i:                 ; preds = %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  %23 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 26
  %24 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp slt i32 %25, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i.pingpong_tearcheck_disable.exit_crit_edge, !prof !28

REG_MDP5_PP_TEAR_CHECK_EN.exit.i.pingpong_tearcheck_disable.exit_crit_edge: ; preds = %REG_MDP5_PP_TEAR_CHECK_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %pingpong_tearcheck_disable.exit

do.end.i.i:                                       ; preds = %REG_MDP5_PP_TEAR_CHECK_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %pingpong_tearcheck_disable.exit

pingpong_tearcheck_disable.exit:                  ; preds = %do.end.i.i, %REG_MDP5_PP_TEAR_CHECK_EN.exit.i.pingpong_tearcheck_disable.exit_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 15
  %26 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %retval.0.i.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #2
  %vsync_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 22
  %28 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vsync_clk.i, align 8
  tail call void @clk_disable(ptr noundef %29) #2
  tail call void @clk_unprepare(ptr noundef %29) #2
  %call27 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %1, ptr noundef %call, i1 noundef zeroext false) #2
  %call28 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %3) #2
  %call29 = tail call i32 @mdp5_ctl_commit(ptr noundef %1, ptr noundef %call, i32 noundef %call28, i1 noundef zeroext true) #2
  %30 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %pingpong_tearcheck_disable.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_cmd_encoder_enable(ptr nocapture noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %0 = ptrtoint ptr %ctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctl1, align 4
  %intf2 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %2 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %intf2, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %call = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %5) #2
  %enabled = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 2
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end25, label %do.end, !prof !30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end25:                                         ; preds = %entry
  %8 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kms.i.i, align 4
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %call1.i = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %15) #2
  %pp.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call1.i, i32 0, i32 4
  %16 = ptrtoint ptr %pp.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pp.i, align 4
  %vsync_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 22
  %18 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vsync_clk.i, align 8
  %call3.i = tail call i32 @clk_round_rate(ptr noundef %19, i32 noundef 19200000) #2
  %call4.i = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %call3.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder, align 4
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6, i32 noundef %call4.i) #2
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  %24 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vsync_clk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %25) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then9.i_crit_edge

if.end.i.if.then9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then9.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %25) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end12.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @clk_unprepare(ptr noundef %25) #2
  br label %if.then9.i

if.then9.i:                                       ; preds = %if.then3.i.i, %if.end.i.if.then9.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.if.then9.i_crit_edge ]
  %26 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %encoder, align 4
  %dev11.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph.i) #2
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i.i
  %30 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %17, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %31 = load ptr, ptr @mdp5_cfg, align 4
  %base.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %31, i32 0, i32 11, i32 1
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %32 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %32, i32 0, i32 11, i32 1, i32 1
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb5.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 11, i32 1, i32 2
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

sw.bb9.i.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 11, i32 1, i32 3
  br label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i

do.body.i.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1322, 0\0A.popsection", ""() #2, !srcloc !27
  unreachable

REG_MDP5_PP_TEAR_CHECK_EN.exit.i:                 ; preds = %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %base.i.i.i, %sw.bb.i.i.i ]
  %35 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 26
  %36 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i = icmp slt i32 %37, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_PP_TEAR_CHECK_EN.exit.i.if.end29_crit_edge, !prof !28

REG_MDP5_PP_TEAR_CHECK_EN.exit.i.if.end29_crit_edge: ; preds = %REG_MDP5_PP_TEAR_CHECK_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end29

do.end.i.i:                                       ; preds = %REG_MDP5_PP_TEAR_CHECK_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %if.end29

if.end29:                                         ; preds = %do.end.i.i, %REG_MDP5_PP_TEAR_CHECK_EN.exit.i.if.end29_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 15
  %38 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %retval.0.i.i.i
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #2
  %call30 = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %3) #2
  %call31 = tail call i32 @mdp5_ctl_commit(ptr noundef %1, ptr noundef %call, i32 noundef %call30, i1 noundef zeroext true) #2
  %call32 = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %1, ptr noundef %call, i1 noundef zeroext true) #2
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then9.i, %if.then.i, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_cmd_encoder_set_split_display(ptr noundef readonly %encoder, ptr noundef readnone %slave_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encoder, null
  %tobool1.not = icmp eq ptr %slave_encoder, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %intf = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 4
  %num = getelementptr inbounds %struct.mdp5_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end8_crit_edge
    i32 2, label %if.then4
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %data.0 = phi i32 [ 18, %if.then4 ], [ 258, %if.end.if.end8_crit_edge ]
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev10, i32 noundef 4) #2
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 26
  %13 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp slt i32 %14, 1
  br i1 %cmp.i, label %do.end.i, label %if.end8.mdp5_write.exit_crit_edge, !prof !28

if.end8.mdp5_write.exit_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %if.end8.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 15
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 760
  tail call void @msm_writel(i32 noundef %data.0, ptr noundef %add.ptr.i) #2
  %17 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i28 = icmp slt i32 %18, 1
  br i1 %cmp.i28, label %do.end.i29, label %mdp5_write.exit.mdp5_write.exit32_crit_edge, !prof !28

mdp5_write.exit.mdp5_write.exit32_crit_edge:      ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit32

do.end.i29:                                       ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit32

mdp5_write.exit32:                                ; preds = %do.end.i29, %mdp5_write.exit.mdp5_write.exit32_crit_edge
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %20, i32 1008
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i31) #2
  %21 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i34 = icmp slt i32 %22, 1
  br i1 %cmp.i34, label %do.end.i35, label %mdp5_write.exit32.mdp5_write.exit38_crit_edge, !prof !28

mdp5_write.exit32.mdp5_write.exit38_crit_edge:    ; preds = %mdp5_write.exit32
  call void @__sanitizer_cov_trace_pc() #4
  br label %mdp5_write.exit38

do.end.i35:                                       ; preds = %mdp5_write.exit32
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 169, i32 noundef 9, ptr noundef null) #2
  br label %mdp5_write.exit38

mdp5_write.exit38:                                ; preds = %do.end.i35, %mdp5_write.exit32.mdp5_write.exit38_crit_edge
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %24, i32 756
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i37) #2
  %call.i39 = tail call i32 @__pm_runtime_idle(ptr noundef %dev10, i32 noundef 4) #2
  br label %cleanup

cleanup:                                          ; preds = %mdp5_write.exit38, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mdp5_write.exit38 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_mixer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 117, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 129, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 29, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 35, i32 3}
!9 = !{ptr @__func__.pingpong_tearcheck_setup, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 42, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 85, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_cmd_encoder.c", i32 91, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 169, i32 2}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2157223653, i64 2157224159, i64 2157223690, i64 2157223746, i64 2157223780, i64 2157223804, i64 2157223845, i64 2157223866, i64 2157223894, i64 2157223928}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i8 0, i8 2}
!30 = !{!"branch_weights", i32 2000, i32 1}
