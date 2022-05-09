; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
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
%struct.mdp5_encoder = type { %struct.drm_encoder, %struct.spinlock, i8, i32, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
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
%struct.mdp5_hw_mixer = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mdp5_crtc_state = type { %struct.drm_crtc_state, ptr, %struct.mdp5_pipeline, i32, i32, i32, i8, i8 }
%struct.mdp5_pipeline = type { ptr, ptr, ptr }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c\00", [51 x i8] zeroinitializer }, align 32
@mdp5_encoder_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mdp5_encoder->intf_lock\00", [39 x i8] zeroinitializer }, align 32
@mdp5_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @mdp5_encoder_destroy, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@mdp5_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_encoder_disable, ptr @mdp5_encoder_enable, ptr @mdp5_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"set mode: \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@switch.table.mdp5_encoder_disable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33554432, i32 134217728, i32 536870912, i32 -2147483648], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 101]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 326, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 357, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c"mdp5_encoder_funcs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 26, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [26 x i8] c"mdp5_encoder_helper_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 253, i32 46 }
@___asan_gen_.40 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 175, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [48 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 47, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [34 x i8] c"switch.table.mdp5_encoder_disable\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @mdp5_encoder_init.__key, ptr @.str.1, ptr @mdp5_encoder_funcs, ptr @mdp5_encoder_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @switch.table.mdp5_encoder_disable], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_encoder_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mdp5_encoder_disable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_encoder_get_linecount(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %intf1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %6 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf1, align 4
  %num = getelementptr inbounds %struct.mdp5_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %11 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %11, i32 0, i32 14
  br label %REG_MDP5_INTF_LINE_COUNT.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_LINE_COUNT.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_LINE_COUNT.exit

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_LINE_COUNT.exit

sw.bb13.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_LINE_COUNT.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_LINE_COUNT.exit:                    ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %intf.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 26
  %17 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp slt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_INTF_LINE_COUNT.exit.mdp5_read.exit_crit_edge, !prof !23

REG_MDP5_INTF_LINE_COUNT.exit.mdp5_read.exit_crit_edge: ; preds = %REG_MDP5_INTF_LINE_COUNT.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_read.exit

do.end.i:                                         ; preds = %REG_MDP5_INTF_LINE_COUNT.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_read.exit

mdp5_read.exit:                                   ; preds = %do.end.i, %REG_MDP5_INTF_LINE_COUNT.exit.mdp5_read.exit_crit_edge
  %add.i = add i32 %retval.0.i.i, 176
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 15
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add.i
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_encoder_get_framecount(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %intf1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %6 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf1, align 4
  %num = getelementptr inbounds %struct.mdp5_interface, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %9, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %11 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %11, i32 0, i32 14
  br label %REG_MDP5_INTF_FRAME_COUNT.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %12 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %12, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_FRAME_COUNT.exit

sw.bb5.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %13 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %13, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_FRAME_COUNT.exit

sw.bb9.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %14 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %14, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_FRAME_COUNT.exit

sw.bb13.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %15 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %15, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_FRAME_COUNT.exit

do.body.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_FRAME_COUNT.exit:                   ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %intf.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load i32, ptr %retval.0.in.i.i, align 4
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 26
  %17 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp slt i32 %18, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_INTF_FRAME_COUNT.exit.mdp5_read.exit_crit_edge, !prof !23

REG_MDP5_INTF_FRAME_COUNT.exit.mdp5_read.exit_crit_edge: ; preds = %REG_MDP5_INTF_FRAME_COUNT.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_read.exit

do.end.i:                                         ; preds = %REG_MDP5_INTF_FRAME_COUNT.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_read.exit

mdp5_read.exit:                                   ; preds = %do.end.i, %REG_MDP5_INTF_FRAME_COUNT.exit.mdp5_read.exit_crit_edge
  %add.i = add i32 %retval.0.i.i, 172
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 15
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %add.i
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdp5_vid_encoder_set_split_display(ptr noundef readonly %encoder, ptr noundef readonly %slave_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encoder, null
  %tobool4.not = icmp eq ptr %slave_encoder, null
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end11_crit_edge
    i32 2, label %if.then7
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %data.0 = phi i32 [ 16, %if.then7 ], [ 256, %if.end.if.end11_crit_edge ]
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev12, i32 noundef 4) #4
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 26
  %13 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i = icmp slt i32 %14, 1
  br i1 %cmp.i, label %do.end.i, label %if.end11.mdp5_write.exit_crit_edge, !prof !23

if.end11.mdp5_write.exit_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %if.end11.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 15
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 760
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #4
  %17 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i34 = icmp slt i32 %18, 1
  br i1 %cmp.i34, label %do.end.i35, label %mdp5_write.exit.mdp5_write.exit38_crit_edge, !prof !23

mdp5_write.exit.mdp5_write.exit38_crit_edge:      ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit38

do.end.i35:                                       ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit38

mdp5_write.exit38:                                ; preds = %do.end.i35, %mdp5_write.exit.mdp5_write.exit38_crit_edge
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %20, i32 1008
  tail call void @msm_writel(i32 noundef %data.0, ptr noundef %add.ptr.i37) #4
  %21 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i40 = icmp slt i32 %22, 1
  br i1 %cmp.i40, label %do.end.i41, label %mdp5_write.exit38.mdp5_write.exit44_crit_edge, !prof !23

mdp5_write.exit38.mdp5_write.exit44_crit_edge:    ; preds = %mdp5_write.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit44

do.end.i41:                                       ; preds = %mdp5_write.exit38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit44

mdp5_write.exit44:                                ; preds = %do.end.i41, %mdp5_write.exit38.mdp5_write.exit44_crit_edge
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %24, i32 756
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i43) #4
  %ctl = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %25 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl, align 4
  %ctl14 = getelementptr inbounds %struct.mdp5_encoder, ptr %slave_encoder, i32 0, i32 5
  %27 = ptrtoint ptr %ctl14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl14, align 4
  %call15 = tail call i32 @mdp5_ctl_pair(ptr noundef %26, ptr noundef %28, i1 noundef zeroext true) #4
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %dev12, i32 noundef 4) #4
  br label %cleanup

cleanup:                                          ; preds = %mdp5_write.exit44, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mdp5_write.exit44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_pair(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdp5_encoder_set_intf_mode(ptr nocapture noundef readonly %encoder, i1 noundef zeroext %cmd_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  %type = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmd_mode, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end, !prof !24

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %mode = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %mode, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  %mode26 = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 3
  br i1 %cmp.not, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %mode26 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %mode26, align 4
  br label %if.end30

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %mode26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mode26, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_encoder_init(ptr noundef %dev, ptr noundef %intf, ptr noundef %ctl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdp5_interface, ptr %intf, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 132) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i32 6, i32 2
  %ctl1 = getelementptr inbounds %struct.mdp5_encoder, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %ctl1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctl, ptr %ctl1, align 8
  %intf2 = getelementptr inbounds %struct.mdp5_encoder, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %intf2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %intf, ptr %intf2, align 4
  %intf_lock = getelementptr inbounds %struct.mdp5_encoder, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %intf_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mdp5_encoder_init.__key, i16 noundef signext 3) #4
  %call4 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mdp5_encoder_funcs, i32 noundef %cond, ptr noundef null) #4
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mdp5_encoder_helper_funcs, ptr %helper_private.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_encoder_destroy(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_encoder_cleanup(ptr noundef %encoder) #4
  tail call void @kfree(ptr noundef %encoder) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_encoder_disable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  %mode = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mdp5_cmd_encoder_disable(ptr noundef %encoder) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kms.i.i, align 4
  %ctl1.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %10 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl1.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %12 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc.i, align 4
  %call2.i = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %13) #4
  %14 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc.i, align 4
  %call4.i = tail call ptr @mdp5_crtc_get_mixer(ptr noundef %15) #4
  %16 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf1, align 4
  %num.i = getelementptr inbounds %struct.mdp5_interface, ptr %17, i32 0, i32 1
  %enabled.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 2
  %18 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end30.i, !prof !23

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end30.i:                                       ; preds = %if.else
  %20 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num.i, align 4
  %call31.i = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %11, ptr noundef %call2.i, i1 noundef zeroext false) #4
  %intf_lock.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 1
  %call36.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intf_lock.i) #4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %21, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
    i32 4, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 14
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb5.i.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %25 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %25, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb9.i.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %26 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %26, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb13.i.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %27 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %27, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

do.body.i.i.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i:            ; preds = %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx16.i.i.i, %sw.bb13.i.i.i ], [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %intf.i.i.i, %sw.bb.i.i.i ]
  %28 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 26
  %29 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i = icmp slt i32 %30, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge, !prof !23

REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge: ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 15
  %31 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %retval.0.i.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intf_lock.i, i32 noundef %call36.i) #4
  %call43.i = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %17) #4
  %call44.i = tail call i32 @mdp5_ctl_commit(ptr noundef %11, ptr noundef %call2.i, i32 noundef %call43.i, i1 noundef zeroext true) #4
  %type.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %17, i32 0, i32 2
  %33 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i.i, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %34, label %mdp5_write.exit.i.if.end5.i.i_crit_edge [
    i32 1, label %land.lhs.true.i.i
    i32 101, label %mdp5_write.exit.i.intf2vblank.exit.i_crit_edge
  ]

mdp5_write.exit.i.intf2vblank.exit.i_crit_edge:   ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %intf2vblank.exit.i

mdp5_write.exit.i.if.end5.i.i_crit_edge:          ; preds = %mdp5_write.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

land.lhs.true.i.i:                                ; preds = %mdp5_write.exit.i
  %mode.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %17, i32 0, i32 3
  %36 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp1.i.i = icmp eq i32 %37, 2
  br i1 %cmp1.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end5.i.i_crit_edge

land.lhs.true.i.i.if.end5.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %pp.i.i = getelementptr inbounds %struct.mdp5_hw_mixer, ptr %call4.i, i32 0, i32 4
  %38 = ptrtoint ptr %pp.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pp.i.i, align 4
  %shl.i.i = shl i32 4096, %39
  br label %intf2vblank.exit.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i.if.end5.i.i_crit_edge, %mdp5_write.exit.i.if.end5.i.i_crit_edge
  %40 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %switch.lookup, label %if.end5.i.i.intf2vblank.exit.i_crit_edge

if.end5.i.i.intf2vblank.exit.i_crit_edge:         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %intf2vblank.exit.i

switch.lookup:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mdp5_encoder_disable, i32 0, i32 %41
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %intf2vblank.exit.i

intf2vblank.exit.i:                               ; preds = %switch.lookup, %if.end5.i.i.intf2vblank.exit.i_crit_edge, %if.then.i.i, %mdp5_write.exit.i.intf2vblank.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %shl.i.i, %if.then.i.i ], [ 16, %mdp5_write.exit.i.intf2vblank.exit.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end5.i.i.intf2vblank.exit.i_crit_edge ]
  tail call void @mdp_irq_wait(ptr noundef %9, i32 noundef %retval.0.i.i) #4
  %44 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %intf2vblank.exit.i, %do.end.i, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_encoder_enable(ptr noundef %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf1 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf1, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7
  %mode2.i = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8
  tail call void @mdp5_cmd_encoder_mode_set(ptr noundef %encoder, ptr noundef %mode, ptr noundef %adjusted_mode) #4
  br label %mdp5_encoder_mode_set.exit

if.else.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder, align 4
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i.i, align 4
  %kms.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %kms.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kms.i.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 31
  %call3.i.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #4
  %16 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %adjusted_mode, align 4
  %hdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %hsync_start.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hsync_start.i.i, align 2
  %conv4.i.i = zext i16 %21 to i32
  %hsync_end.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hsync_end.i.i, align 4
  %conv5.i.i = zext i16 %23 to i32
  %htotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal.i.i, align 2
  %conv6.i.i = zext i16 %25 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %26 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay.i.i, align 2
  %conv7.i.i = zext i16 %27 to i32
  %vsync_start.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 7
  %28 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vsync_start.i.i, align 4
  %conv8.i.i = zext i16 %29 to i32
  %vsync_end.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 8
  %30 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsync_end.i.i, align 2
  %conv9.i.i = zext i16 %31 to i32
  %vtotal.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 9
  %32 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vtotal.i.i, align 4
  %conv10.i.i = zext i16 %33 to i32
  %type.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 28
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type.i.i, align 2
  %conv11.i.i = zext i8 %35 to i32
  %flags12.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 11
  %36 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags12.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef %call3.i.i, i32 noundef %17, i32 noundef %conv.i.i, i32 noundef %conv4.i.i, i32 noundef %conv5.i.i, i32 noundef %conv6.i.i, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i, i32 noundef %conv9.i.i, i32 noundef %conv10.i.i, i32 noundef %conv11.i.i, i32 noundef %37) #4
  %38 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf1, align 4
  %type14.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %type14.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type14.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.not.i.i = icmp eq i32 %41, 1
  br i1 %cmp.not.i.i, label %if.else.i.if.end24.i.i_crit_edge, label %if.then.i.i

if.else.i.if.end24.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %flags12.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags12.i.i, align 4
  %and.i.i = lshr i32 %43, 1
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and19.i.i = lshr i32 %43, 2
  %44 = and i32 %and19.i.i, 2
  %45 = or i32 %44, %and.lobit.i.i
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then.i.i, %if.else.i.if.end24.i.i_crit_edge
  %ctrl_pol.1.i.i = phi i32 [ 0, %if.else.i.if.end24.i.i_crit_edge ], [ %45, %if.then.i.i ]
  %connector_list.i.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end24.i.i
  %.pn.in.i.i = phi ptr [ %connector_list.i.i, %if.end24.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %46 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp30.not.i.i = icmp eq ptr %.pn.i.i, %connector_list.i.i
  br i1 %cmp30.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %encoder32.i.i = getelementptr i8, ptr %.pn.i.i, i32 804
  %47 = ptrtoint ptr %encoder32.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %encoder32.i.i, align 4
  %cmp33.i.i = icmp eq ptr %48, %encoder
  br i1 %cmp33.i.i, label %if.then35.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

if.then35.i.i:                                    ; preds = %for.body.i.i
  %bpc.i.i = getelementptr i8, ptr %.pn.i.i, i32 184
  %49 = ptrtoint ptr %bpc.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %bpc.i.i, align 8
  %switch.tableidx = add i32 %50, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %51 = icmp ult i32 %switch.tableidx, 3
  br i1 %51, label %switch.lookup, label %if.then35.i.i.for.end.i.i_crit_edge

if.then35.i.i.for.end.i.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

switch.lookup:                                    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %switch.idx.mult = mul i32 %switch.tableidx, 21
  %switch.offset = add i32 %switch.idx.mult, 8448
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %switch.lookup, %if.then35.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge
  %format.0.i.i = phi i32 [ %switch.offset, %switch.lookup ], [ 8511, %if.then35.i.i.for.end.i.i_crit_edge ], [ 8448, %for.cond.i.i.for.end.i.i_crit_edge ]
  %52 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %htotal.i.i, align 2
  %conv50.i.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hsync_start.i.i, align 2
  %conv52.i.i = zext i16 %55 to i32
  %sub.i.i = sub nsw i32 %conv50.i.i, %conv52.i.i
  %56 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hdisplay.i.i, align 4
  %conv58.i.i = zext i16 %57 to i32
  %58 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vtotal.i.i, align 4
  %conv63.i.i = zext i16 %59 to i32
  %mul.i.i = mul nuw i32 %conv63.i.i, %conv50.i.i
  %60 = ptrtoint ptr %vsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vsync_end.i.i, align 2
  %62 = ptrtoint ptr %vsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vsync_start.i.i, align 4
  %conv69.i.i = zext i16 %63 to i32
  %sub78.i.i = sub nsw i32 %conv63.i.i, %conv69.i.i
  %mul81.i.i = mul i32 %sub78.i.i, %conv50.i.i
  %64 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vdisplay.i.i, align 2
  %conv85.i.i = zext i16 %65 to i32
  %sub86.neg.i.i = sub nsw i32 %conv85.i.i, %conv69.i.i
  %mul89.neg.i.i = mul i32 %sub86.neg.i.i, %conv50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %41)
  %cmp95.i.i = icmp eq i32 %41, 9
  %add103.i.i = select i1 %cmp95.i.i, i32 %sub.i.i, i32 0
  %display_v_start.0.i.i = add i32 %mul81.i.i, %add103.i.i
  %66 = xor i32 %conv52.i.i, -1
  %sub59.op.i.i = add nsw i32 %conv58.i.i, %66
  %67 = select i1 %cmp95.i.i, i32 %sub59.op.i.i, i32 -1
  %sub90.i.i = add i32 %67, %mul.i.i
  %display_v_end.0.i.i = add i32 %sub90.i.i, %mul89.neg.i.i
  %conv67.i.i = zext i16 %61 to i32
  %sub70.i.i = sub nsw i32 %conv67.i.i, %conv69.i.i
  %mul73.i.i = mul i32 %sub70.i.i, %conv50.i.i
  %sub61.i.i = add nsw i32 %sub59.op.i.i, %conv50.i.i
  %intf_lock.i.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 1
  %call116.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intf_lock.i.i) #4
  %68 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %do.body.i.i.i.i [
    i32 0, label %sw.bb.i.i.i.i
    i32 1, label %sw.bb1.i.i.i.i
    i32 2, label %sw.bb5.i.i.i.i
    i32 3, label %sw.bb9.i.i.i.i
    i32 4, label %sw.bb13.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %69 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %69, i32 0, i32 14
  br label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %70 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %70, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i

sw.bb5.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %71 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %71, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i

sw.bb9.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %72 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %72, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i

sw.bb13.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %73 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %73, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i

do.body.i.i.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_HSYNC_CTL.exit.i.i:                 ; preds = %sw.bb13.i.i.i.i, %sw.bb9.i.i.i.i, %sw.bb5.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %retval.0.in.i.i.i.i = phi ptr [ %arrayidx16.i.i.i.i, %sw.bb13.i.i.i.i ], [ %arrayidx12.i.i.i.i, %sw.bb9.i.i.i.i ], [ %arrayidx8.i.i.i.i, %sw.bb5.i.i.i.i ], [ %arrayidx4.i.i.i.i, %sw.bb1.i.i.i.i ], [ %intf.i.i.i.i, %sw.bb.i.i.i.i ]
  %74 = ptrtoint ptr %retval.0.in.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %retval.0.i.i.i.i = load i32, ptr %retval.0.in.i.i.i.i, align 4
  %add.i.i.i = add i32 %retval.0.i.i.i.i, 8
  %75 = ptrtoint ptr %hsync_end.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hsync_end.i.i, align 4
  %conv121.i.i = zext i16 %76 to i32
  %77 = ptrtoint ptr %hsync_start.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %hsync_start.i.i, align 2
  %conv123.i.i = zext i16 %78 to i32
  %sub124.i.i = sub nsw i32 %conv121.i.i, %conv123.i.i
  %and.i.i.i = and i32 %sub124.i.i, 65535
  %79 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %htotal.i.i, align 2
  %conv127.i.i = zext i16 %80 to i32
  %shl.i.i.i = shl nuw i32 %conv127.i.i, 16
  %or129.i.i = or i32 %and.i.i.i, %shl.i.i.i
  %enable_count.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 26
  %81 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.i.i.i = icmp slt i32 %82, 1
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %REG_MDP5_INTF_HSYNC_CTL.exit.i.i.mdp5_write.exit.i.i_crit_edge, !prof !23

REG_MDP5_INTF_HSYNC_CTL.exit.i.i.mdp5_write.exit.i.i_crit_edge: ; preds = %REG_MDP5_INTF_HSYNC_CTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit.i.i

do.end.i.i.i:                                     ; preds = %REG_MDP5_INTF_HSYNC_CTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit.i.i

mdp5_write.exit.i.i:                              ; preds = %do.end.i.i.i, %REG_MDP5_INTF_HSYNC_CTL.exit.i.i.mdp5_write.exit.i.i_crit_edge
  %mmio.i.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %13, i32 0, i32 15
  %83 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %84, i32 %add.i.i.i
  tail call void @msm_writel(i32 noundef %or129.i.i, ptr noundef %add.ptr.i.i.i) #4
  %85 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %15, label %do.body.i.i12.i.i [
    i32 0, label %sw.bb.i.i3.i.i
    i32 1, label %sw.bb1.i.i5.i.i
    i32 2, label %sw.bb5.i.i7.i.i
    i32 3, label %sw.bb9.i.i9.i.i
    i32 4, label %sw.bb13.i.i11.i.i
  ]

sw.bb.i.i3.i.i:                                   ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %86 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i2.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %86, i32 0, i32 14
  br label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i

sw.bb1.i.i5.i.i:                                  ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %87 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %87, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i

sw.bb5.i.i7.i.i:                                  ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %88 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i6.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %88, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i

sw.bb9.i.i9.i.i:                                  ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %89 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %89, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i

sw.bb13.i.i11.i.i:                                ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %90 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i10.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %90, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i

do.body.i.i12.i.i:                                ; preds = %mdp5_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i:           ; preds = %sw.bb13.i.i11.i.i, %sw.bb9.i.i9.i.i, %sw.bb5.i.i7.i.i, %sw.bb1.i.i5.i.i, %sw.bb.i.i3.i.i
  %retval.0.in.i.i13.i.i = phi ptr [ %arrayidx16.i.i10.i.i, %sw.bb13.i.i11.i.i ], [ %arrayidx12.i.i8.i.i, %sw.bb9.i.i9.i.i ], [ %arrayidx8.i.i6.i.i, %sw.bb5.i.i7.i.i ], [ %arrayidx4.i.i4.i.i, %sw.bb1.i.i5.i.i ], [ %intf.i.i2.i.i, %sw.bb.i.i3.i.i ]
  %91 = ptrtoint ptr %retval.0.in.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %retval.0.i.i14.i.i = load i32, ptr %retval.0.in.i.i13.i.i, align 4
  %add.i15.i.i = add i32 %retval.0.i.i14.i.i, 12
  %92 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i17.i.i = icmp slt i32 %93, 1
  br i1 %cmp.i17.i.i, label %do.end.i18.i.i, label %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i.mdp5_write.exit21.i.i_crit_edge, !prof !23

REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i.mdp5_write.exit21.i.i_crit_edge: ; preds = %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit21.i.i

do.end.i18.i.i:                                   ; preds = %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit21.i.i

mdp5_write.exit21.i.i:                            ; preds = %do.end.i18.i.i, %REG_MDP5_INTF_VSYNC_PERIOD_F0.exit.i.i.mdp5_write.exit21.i.i_crit_edge
  %94 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i20.i.i = getelementptr i8, ptr %95, i32 %add.i15.i.i
  tail call void @msm_writel(i32 noundef %mul.i.i, ptr noundef %add.ptr.i20.i.i) #4
  %96 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %15, label %do.body.i.i32.i.i [
    i32 0, label %sw.bb.i.i23.i.i
    i32 1, label %sw.bb1.i.i25.i.i
    i32 2, label %sw.bb5.i.i27.i.i
    i32 3, label %sw.bb9.i.i29.i.i
    i32 4, label %sw.bb13.i.i31.i.i
  ]

sw.bb.i.i23.i.i:                                  ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %97 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i22.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %97, i32 0, i32 14
  br label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i

sw.bb1.i.i25.i.i:                                 ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %98 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i24.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %98, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i

sw.bb5.i.i27.i.i:                                 ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %99 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i26.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %99, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i

sw.bb9.i.i29.i.i:                                 ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %100 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i28.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %100, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i

sw.bb13.i.i31.i.i:                                ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %101 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i30.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %101, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i

do.body.i.i32.i.i:                                ; preds = %mdp5_write.exit21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i:              ; preds = %sw.bb13.i.i31.i.i, %sw.bb9.i.i29.i.i, %sw.bb5.i.i27.i.i, %sw.bb1.i.i25.i.i, %sw.bb.i.i23.i.i
  %retval.0.in.i.i33.i.i = phi ptr [ %arrayidx16.i.i30.i.i, %sw.bb13.i.i31.i.i ], [ %arrayidx12.i.i28.i.i, %sw.bb9.i.i29.i.i ], [ %arrayidx8.i.i26.i.i, %sw.bb5.i.i27.i.i ], [ %arrayidx4.i.i24.i.i, %sw.bb1.i.i25.i.i ], [ %intf.i.i22.i.i, %sw.bb.i.i23.i.i ]
  %102 = ptrtoint ptr %retval.0.in.i.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %retval.0.i.i34.i.i = load i32, ptr %retval.0.in.i.i33.i.i, align 4
  %add.i35.i.i = add i32 %retval.0.i.i34.i.i, 20
  %103 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.i37.i.i = icmp slt i32 %104, 1
  br i1 %cmp.i37.i.i, label %do.end.i38.i.i, label %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i.mdp5_write.exit41.i.i_crit_edge, !prof !23

REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i.mdp5_write.exit41.i.i_crit_edge: ; preds = %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit41.i.i

do.end.i38.i.i:                                   ; preds = %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit41.i.i

mdp5_write.exit41.i.i:                            ; preds = %do.end.i38.i.i, %REG_MDP5_INTF_VSYNC_LEN_F0.exit.i.i.mdp5_write.exit41.i.i_crit_edge
  %105 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i40.i.i = getelementptr i8, ptr %106, i32 %add.i35.i.i
  tail call void @msm_writel(i32 noundef %mul73.i.i, ptr noundef %add.ptr.i40.i.i) #4
  %107 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %15, label %do.body.i.i52.i.i [
    i32 0, label %sw.bb.i.i43.i.i
    i32 1, label %sw.bb1.i.i45.i.i
    i32 2, label %sw.bb5.i.i47.i.i
    i32 3, label %sw.bb9.i.i49.i.i
    i32 4, label %sw.bb13.i.i51.i.i
  ]

sw.bb.i.i43.i.i:                                  ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %108 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i42.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %108, i32 0, i32 14
  br label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i

sw.bb1.i.i45.i.i:                                 ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %109 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i44.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %109, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i

sw.bb5.i.i47.i.i:                                 ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %110 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i46.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %110, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i

sw.bb9.i.i49.i.i:                                 ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %111 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i48.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %111, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i

sw.bb13.i.i51.i.i:                                ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %112 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i50.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %112, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i

do.body.i.i52.i.i:                                ; preds = %mdp5_write.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i:              ; preds = %sw.bb13.i.i51.i.i, %sw.bb9.i.i49.i.i, %sw.bb5.i.i47.i.i, %sw.bb1.i.i45.i.i, %sw.bb.i.i43.i.i
  %retval.0.in.i.i53.i.i = phi ptr [ %arrayidx16.i.i50.i.i, %sw.bb13.i.i51.i.i ], [ %arrayidx12.i.i48.i.i, %sw.bb9.i.i49.i.i ], [ %arrayidx8.i.i46.i.i, %sw.bb5.i.i47.i.i ], [ %arrayidx4.i.i44.i.i, %sw.bb1.i.i45.i.i ], [ %intf.i.i42.i.i, %sw.bb.i.i43.i.i ]
  %113 = ptrtoint ptr %retval.0.in.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %retval.0.i.i54.i.i = load i32, ptr %retval.0.in.i.i53.i.i, align 4
  %add.i55.i.i = add i32 %retval.0.i.i54.i.i, 60
  %and.i56.i.i = and i32 %sub.i.i, 65535
  %shl.i57.i.i = shl i32 %sub61.i.i, 16
  %or135.i.i = or i32 %shl.i57.i.i, %and.i56.i.i
  %114 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp.i59.i.i = icmp slt i32 %115, 1
  br i1 %cmp.i59.i.i, label %do.end.i60.i.i, label %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i.mdp5_write.exit63.i.i_crit_edge, !prof !23

REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i.mdp5_write.exit63.i.i_crit_edge: ; preds = %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit63.i.i

do.end.i60.i.i:                                   ; preds = %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit63.i.i

mdp5_write.exit63.i.i:                            ; preds = %do.end.i60.i.i, %REG_MDP5_INTF_DISPLAY_HCTL.exit.i.i.mdp5_write.exit63.i.i_crit_edge
  %116 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i62.i.i = getelementptr i8, ptr %117, i32 %add.i55.i.i
  tail call void @msm_writel(i32 noundef %or135.i.i, ptr noundef %add.ptr.i62.i.i) #4
  %118 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %15, label %do.body.i.i74.i.i [
    i32 0, label %sw.bb.i.i65.i.i
    i32 1, label %sw.bb1.i.i67.i.i
    i32 2, label %sw.bb5.i.i69.i.i
    i32 3, label %sw.bb9.i.i71.i.i
    i32 4, label %sw.bb13.i.i73.i.i
  ]

sw.bb.i.i65.i.i:                                  ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %119 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i64.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %119, i32 0, i32 14
  br label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i

sw.bb1.i.i67.i.i:                                 ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %120 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i66.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %120, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i

sw.bb5.i.i69.i.i:                                 ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %121 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i68.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %121, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i

sw.bb9.i.i71.i.i:                                 ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %122 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i70.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %122, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i

sw.bb13.i.i73.i.i:                                ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %123 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i72.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %123, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i

do.body.i.i74.i.i:                                ; preds = %mdp5_write.exit63.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i:         ; preds = %sw.bb13.i.i73.i.i, %sw.bb9.i.i71.i.i, %sw.bb5.i.i69.i.i, %sw.bb1.i.i67.i.i, %sw.bb.i.i65.i.i
  %retval.0.in.i.i75.i.i = phi ptr [ %arrayidx16.i.i72.i.i, %sw.bb13.i.i73.i.i ], [ %arrayidx12.i.i70.i.i, %sw.bb9.i.i71.i.i ], [ %arrayidx8.i.i68.i.i, %sw.bb5.i.i69.i.i ], [ %arrayidx4.i.i66.i.i, %sw.bb1.i.i67.i.i ], [ %intf.i.i64.i.i, %sw.bb.i.i65.i.i ]
  %124 = ptrtoint ptr %retval.0.in.i.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %retval.0.i.i76.i.i = load i32, ptr %retval.0.in.i.i75.i.i, align 4
  %add.i77.i.i = add i32 %retval.0.i.i76.i.i, 28
  %125 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp.i79.i.i = icmp slt i32 %126, 1
  br i1 %cmp.i79.i.i, label %do.end.i80.i.i, label %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i.mdp5_write.exit83.i.i_crit_edge, !prof !23

REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i.mdp5_write.exit83.i.i_crit_edge: ; preds = %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit83.i.i

do.end.i80.i.i:                                   ; preds = %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit83.i.i

mdp5_write.exit83.i.i:                            ; preds = %do.end.i80.i.i, %REG_MDP5_INTF_DISPLAY_VSTART_F0.exit.i.i.mdp5_write.exit83.i.i_crit_edge
  %127 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i82.i.i = getelementptr i8, ptr %128, i32 %add.i77.i.i
  tail call void @msm_writel(i32 noundef %display_v_start.0.i.i, ptr noundef %add.ptr.i82.i.i) #4
  %129 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %15, label %do.body.i.i94.i.i [
    i32 0, label %sw.bb.i.i85.i.i
    i32 1, label %sw.bb1.i.i87.i.i
    i32 2, label %sw.bb5.i.i89.i.i
    i32 3, label %sw.bb9.i.i91.i.i
    i32 4, label %sw.bb13.i.i93.i.i
  ]

sw.bb.i.i85.i.i:                                  ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %130 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i84.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %130, i32 0, i32 14
  br label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i

sw.bb1.i.i87.i.i:                                 ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %131 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i86.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %131, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i

sw.bb5.i.i89.i.i:                                 ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %132 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i88.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %132, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i

sw.bb9.i.i91.i.i:                                 ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %133 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i90.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %133, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i

sw.bb13.i.i93.i.i:                                ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %134 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i92.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %134, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i

do.body.i.i94.i.i:                                ; preds = %mdp5_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i:           ; preds = %sw.bb13.i.i93.i.i, %sw.bb9.i.i91.i.i, %sw.bb5.i.i89.i.i, %sw.bb1.i.i87.i.i, %sw.bb.i.i85.i.i
  %retval.0.in.i.i95.i.i = phi ptr [ %arrayidx16.i.i92.i.i, %sw.bb13.i.i93.i.i ], [ %arrayidx12.i.i90.i.i, %sw.bb9.i.i91.i.i ], [ %arrayidx8.i.i88.i.i, %sw.bb5.i.i89.i.i ], [ %arrayidx4.i.i86.i.i, %sw.bb1.i.i87.i.i ], [ %intf.i.i84.i.i, %sw.bb.i.i85.i.i ]
  %135 = ptrtoint ptr %retval.0.in.i.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %retval.0.i.i96.i.i = load i32, ptr %retval.0.in.i.i95.i.i, align 4
  %add.i97.i.i = add i32 %retval.0.i.i96.i.i, 36
  %136 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp.i99.i.i = icmp slt i32 %137, 1
  br i1 %cmp.i99.i.i, label %do.end.i100.i.i, label %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i.mdp5_write.exit103.i.i_crit_edge, !prof !23

REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i.mdp5_write.exit103.i.i_crit_edge: ; preds = %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit103.i.i

do.end.i100.i.i:                                  ; preds = %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit103.i.i

mdp5_write.exit103.i.i:                           ; preds = %do.end.i100.i.i, %REG_MDP5_INTF_DISPLAY_VEND_F0.exit.i.i.mdp5_write.exit103.i.i_crit_edge
  %138 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i102.i.i = getelementptr i8, ptr %139, i32 %add.i97.i.i
  tail call void @msm_writel(i32 noundef %display_v_end.0.i.i, ptr noundef %add.ptr.i102.i.i) #4
  %140 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %15, label %do.body.i.i114.i.i [
    i32 0, label %sw.bb.i.i105.i.i
    i32 1, label %sw.bb1.i.i107.i.i
    i32 2, label %sw.bb5.i.i109.i.i
    i32 3, label %sw.bb9.i.i111.i.i
    i32 4, label %sw.bb13.i.i113.i.i
  ]

sw.bb.i.i105.i.i:                                 ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %141 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i104.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %141, i32 0, i32 14
  br label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i

sw.bb1.i.i107.i.i:                                ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %142 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i106.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %142, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i

sw.bb5.i.i109.i.i:                                ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %143 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i108.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %143, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i

sw.bb9.i.i111.i.i:                                ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %144 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i110.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %144, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i

sw.bb13.i.i113.i.i:                               ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %145 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i112.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %145, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i

do.body.i.i114.i.i:                               ; preds = %mdp5_write.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_BORDER_COLOR.exit.i.i:              ; preds = %sw.bb13.i.i113.i.i, %sw.bb9.i.i111.i.i, %sw.bb5.i.i109.i.i, %sw.bb1.i.i107.i.i, %sw.bb.i.i105.i.i
  %retval.0.in.i.i115.i.i = phi ptr [ %arrayidx16.i.i112.i.i, %sw.bb13.i.i113.i.i ], [ %arrayidx12.i.i110.i.i, %sw.bb9.i.i111.i.i ], [ %arrayidx8.i.i108.i.i, %sw.bb5.i.i109.i.i ], [ %arrayidx4.i.i106.i.i, %sw.bb1.i.i107.i.i ], [ %intf.i.i104.i.i, %sw.bb.i.i105.i.i ]
  %146 = ptrtoint ptr %retval.0.in.i.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %retval.0.i.i116.i.i = load i32, ptr %retval.0.in.i.i115.i.i, align 4
  %add.i117.i.i = add i32 %retval.0.i.i116.i.i, 68
  %147 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp.i119.i.i = icmp slt i32 %148, 1
  br i1 %cmp.i119.i.i, label %do.end.i120.i.i, label %REG_MDP5_INTF_BORDER_COLOR.exit.i.i.mdp5_write.exit123.i.i_crit_edge, !prof !23

REG_MDP5_INTF_BORDER_COLOR.exit.i.i.mdp5_write.exit123.i.i_crit_edge: ; preds = %REG_MDP5_INTF_BORDER_COLOR.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit123.i.i

do.end.i120.i.i:                                  ; preds = %REG_MDP5_INTF_BORDER_COLOR.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit123.i.i

mdp5_write.exit123.i.i:                           ; preds = %do.end.i120.i.i, %REG_MDP5_INTF_BORDER_COLOR.exit.i.i.mdp5_write.exit123.i.i_crit_edge
  %149 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i122.i.i = getelementptr i8, ptr %150, i32 %add.i117.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i122.i.i) #4
  %151 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %15, label %do.body.i.i134.i.i [
    i32 0, label %sw.bb.i.i125.i.i
    i32 1, label %sw.bb1.i.i127.i.i
    i32 2, label %sw.bb5.i.i129.i.i
    i32 3, label %sw.bb9.i.i131.i.i
    i32 4, label %sw.bb13.i.i133.i.i
  ]

sw.bb.i.i125.i.i:                                 ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %152 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i124.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %152, i32 0, i32 14
  br label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i

sw.bb1.i.i127.i.i:                                ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %153 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i126.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %153, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i

sw.bb5.i.i129.i.i:                                ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %154 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i128.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %154, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i

sw.bb9.i.i131.i.i:                                ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %155 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i130.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %155, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i

sw.bb13.i.i133.i.i:                               ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %156 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i132.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %156, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i

do.body.i.i134.i.i:                               ; preds = %mdp5_write.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i:           ; preds = %sw.bb13.i.i133.i.i, %sw.bb9.i.i131.i.i, %sw.bb5.i.i129.i.i, %sw.bb1.i.i127.i.i, %sw.bb.i.i125.i.i
  %retval.0.in.i.i135.i.i = phi ptr [ %arrayidx16.i.i132.i.i, %sw.bb13.i.i133.i.i ], [ %arrayidx12.i.i130.i.i, %sw.bb9.i.i131.i.i ], [ %arrayidx8.i.i128.i.i, %sw.bb5.i.i129.i.i ], [ %arrayidx4.i.i126.i.i, %sw.bb1.i.i127.i.i ], [ %intf.i.i124.i.i, %sw.bb.i.i125.i.i ]
  %157 = ptrtoint ptr %retval.0.in.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %retval.0.i.i136.i.i = load i32, ptr %retval.0.in.i.i135.i.i, align 4
  %add.i137.i.i = add i32 %retval.0.i.i136.i.i, 72
  %158 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp.i139.i.i = icmp slt i32 %159, 1
  br i1 %cmp.i139.i.i, label %do.end.i140.i.i, label %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i.mdp5_write.exit143.i.i_crit_edge, !prof !23

REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i.mdp5_write.exit143.i.i_crit_edge: ; preds = %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit143.i.i

do.end.i140.i.i:                                  ; preds = %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit143.i.i

mdp5_write.exit143.i.i:                           ; preds = %do.end.i140.i.i, %REG_MDP5_INTF_UNDERFLOW_COLOR.exit.i.i.mdp5_write.exit143.i.i_crit_edge
  %160 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i142.i.i = getelementptr i8, ptr %161, i32 %add.i137.i.i
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr.i142.i.i) #4
  %162 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %15, label %do.body.i.i154.i.i [
    i32 0, label %sw.bb.i.i145.i.i
    i32 1, label %sw.bb1.i.i147.i.i
    i32 2, label %sw.bb5.i.i149.i.i
    i32 3, label %sw.bb9.i.i151.i.i
    i32 4, label %sw.bb13.i.i153.i.i
  ]

sw.bb.i.i145.i.i:                                 ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %163 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i144.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %163, i32 0, i32 14
  br label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i

sw.bb1.i.i147.i.i:                                ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %164 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i146.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %164, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i

sw.bb5.i.i149.i.i:                                ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %165 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i148.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %165, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i

sw.bb9.i.i151.i.i:                                ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %166 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i150.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %166, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i

sw.bb13.i.i153.i.i:                               ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %167 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i152.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %167, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i

do.body.i.i154.i.i:                               ; preds = %mdp5_write.exit143.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_HSYNC_SKEW.exit.i.i:                ; preds = %sw.bb13.i.i153.i.i, %sw.bb9.i.i151.i.i, %sw.bb5.i.i149.i.i, %sw.bb1.i.i147.i.i, %sw.bb.i.i145.i.i
  %retval.0.in.i.i155.i.i = phi ptr [ %arrayidx16.i.i152.i.i, %sw.bb13.i.i153.i.i ], [ %arrayidx12.i.i150.i.i, %sw.bb9.i.i151.i.i ], [ %arrayidx8.i.i148.i.i, %sw.bb5.i.i149.i.i ], [ %arrayidx4.i.i146.i.i, %sw.bb1.i.i147.i.i ], [ %intf.i.i144.i.i, %sw.bb.i.i145.i.i ]
  %168 = ptrtoint ptr %retval.0.in.i.i155.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %retval.0.i.i156.i.i = load i32, ptr %retval.0.in.i.i155.i.i, align 4
  %add.i157.i.i = add i32 %retval.0.i.i156.i.i, 76
  %169 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp.i159.i.i = icmp slt i32 %170, 1
  br i1 %cmp.i159.i.i, label %do.end.i160.i.i, label %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i.mdp5_write.exit163.i.i_crit_edge, !prof !23

REG_MDP5_INTF_HSYNC_SKEW.exit.i.i.mdp5_write.exit163.i.i_crit_edge: ; preds = %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit163.i.i

do.end.i160.i.i:                                  ; preds = %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit163.i.i

mdp5_write.exit163.i.i:                           ; preds = %do.end.i160.i.i, %REG_MDP5_INTF_HSYNC_SKEW.exit.i.i.mdp5_write.exit163.i.i_crit_edge
  %171 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i162.i.i = getelementptr i8, ptr %172, i32 %add.i157.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i162.i.i) #4
  %173 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %15, label %do.body.i.i174.i.i [
    i32 0, label %sw.bb.i.i165.i.i
    i32 1, label %sw.bb1.i.i167.i.i
    i32 2, label %sw.bb5.i.i169.i.i
    i32 3, label %sw.bb9.i.i171.i.i
    i32 4, label %sw.bb13.i.i173.i.i
  ]

sw.bb.i.i165.i.i:                                 ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %174 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i164.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %174, i32 0, i32 14
  br label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i

sw.bb1.i.i167.i.i:                                ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %175 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i166.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %175, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i

sw.bb5.i.i169.i.i:                                ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %176 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i168.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %176, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i

sw.bb9.i.i171.i.i:                                ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %177 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i170.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %177, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i

sw.bb13.i.i173.i.i:                               ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %178 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i172.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %178, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i

do.body.i.i174.i.i:                               ; preds = %mdp5_write.exit163.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_POLARITY_CTL.exit.i.i:              ; preds = %sw.bb13.i.i173.i.i, %sw.bb9.i.i171.i.i, %sw.bb5.i.i169.i.i, %sw.bb1.i.i167.i.i, %sw.bb.i.i165.i.i
  %retval.0.in.i.i175.i.i = phi ptr [ %arrayidx16.i.i172.i.i, %sw.bb13.i.i173.i.i ], [ %arrayidx12.i.i170.i.i, %sw.bb9.i.i171.i.i ], [ %arrayidx8.i.i168.i.i, %sw.bb5.i.i169.i.i ], [ %arrayidx4.i.i166.i.i, %sw.bb1.i.i167.i.i ], [ %intf.i.i164.i.i, %sw.bb.i.i165.i.i ]
  %179 = ptrtoint ptr %retval.0.in.i.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %retval.0.i.i176.i.i = load i32, ptr %retval.0.in.i.i175.i.i, align 4
  %add.i177.i.i = add i32 %retval.0.i.i176.i.i, 80
  %180 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp.i179.i.i = icmp slt i32 %181, 1
  br i1 %cmp.i179.i.i, label %do.end.i180.i.i, label %REG_MDP5_INTF_POLARITY_CTL.exit.i.i.mdp5_write.exit183.i.i_crit_edge, !prof !23

REG_MDP5_INTF_POLARITY_CTL.exit.i.i.mdp5_write.exit183.i.i_crit_edge: ; preds = %REG_MDP5_INTF_POLARITY_CTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit183.i.i

do.end.i180.i.i:                                  ; preds = %REG_MDP5_INTF_POLARITY_CTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit183.i.i

mdp5_write.exit183.i.i:                           ; preds = %do.end.i180.i.i, %REG_MDP5_INTF_POLARITY_CTL.exit.i.i.mdp5_write.exit183.i.i_crit_edge
  %182 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i182.i.i = getelementptr i8, ptr %183, i32 %add.i177.i.i
  tail call void @msm_writel(i32 noundef %ctrl_pol.1.i.i, ptr noundef %add.ptr.i182.i.i) #4
  %184 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %15, label %do.body.i.i194.i.i [
    i32 0, label %sw.bb.i.i185.i.i
    i32 1, label %sw.bb1.i.i187.i.i
    i32 2, label %sw.bb5.i.i189.i.i
    i32 3, label %sw.bb9.i.i191.i.i
    i32 4, label %sw.bb13.i.i193.i.i
  ]

sw.bb.i.i185.i.i:                                 ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %185 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i184.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %185, i32 0, i32 14
  br label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i

sw.bb1.i.i187.i.i:                                ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %186 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i186.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %186, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i

sw.bb5.i.i189.i.i:                                ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %187 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i188.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %187, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i

sw.bb9.i.i191.i.i:                                ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %188 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i190.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %188, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i

sw.bb13.i.i193.i.i:                               ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %189 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i192.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %189, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i

do.body.i.i194.i.i:                               ; preds = %mdp5_write.exit183.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i:               ; preds = %sw.bb13.i.i193.i.i, %sw.bb9.i.i191.i.i, %sw.bb5.i.i189.i.i, %sw.bb1.i.i187.i.i, %sw.bb.i.i185.i.i
  %retval.0.in.i.i195.i.i = phi ptr [ %arrayidx16.i.i192.i.i, %sw.bb13.i.i193.i.i ], [ %arrayidx12.i.i190.i.i, %sw.bb9.i.i191.i.i ], [ %arrayidx8.i.i188.i.i, %sw.bb5.i.i189.i.i ], [ %arrayidx4.i.i186.i.i, %sw.bb1.i.i187.i.i ], [ %intf.i.i184.i.i, %sw.bb.i.i185.i.i ]
  %190 = ptrtoint ptr %retval.0.in.i.i195.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %retval.0.i.i196.i.i = load i32, ptr %retval.0.in.i.i195.i.i, align 4
  %add.i197.i.i = add i32 %retval.0.i.i196.i.i, 64
  %191 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %192)
  %cmp.i199.i.i = icmp slt i32 %192, 1
  br i1 %cmp.i199.i.i, label %do.end.i200.i.i, label %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i.mdp5_write.exit203.i.i_crit_edge, !prof !23

REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i.mdp5_write.exit203.i.i_crit_edge: ; preds = %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit203.i.i

do.end.i200.i.i:                                  ; preds = %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit203.i.i

mdp5_write.exit203.i.i:                           ; preds = %do.end.i200.i.i, %REG_MDP5_INTF_ACTIVE_HCTL.exit.i.i.mdp5_write.exit203.i.i_crit_edge
  %193 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i202.i.i = getelementptr i8, ptr %194, i32 %add.i197.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i202.i.i) #4
  %195 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %15, label %do.body.i.i214.i.i [
    i32 0, label %sw.bb.i.i205.i.i
    i32 1, label %sw.bb1.i.i207.i.i
    i32 2, label %sw.bb5.i.i209.i.i
    i32 3, label %sw.bb9.i.i211.i.i
    i32 4, label %sw.bb13.i.i213.i.i
  ]

sw.bb.i.i205.i.i:                                 ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %196 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i204.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %196, i32 0, i32 14
  br label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i

sw.bb1.i.i207.i.i:                                ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %197 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i206.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %197, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i

sw.bb5.i.i209.i.i:                                ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %198 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i208.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %198, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i

sw.bb9.i.i211.i.i:                                ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %199 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i210.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %199, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i

sw.bb13.i.i213.i.i:                               ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %200 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i212.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %200, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i

do.body.i.i214.i.i:                               ; preds = %mdp5_write.exit203.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i:          ; preds = %sw.bb13.i.i213.i.i, %sw.bb9.i.i211.i.i, %sw.bb5.i.i209.i.i, %sw.bb1.i.i207.i.i, %sw.bb.i.i205.i.i
  %retval.0.in.i.i215.i.i = phi ptr [ %arrayidx16.i.i212.i.i, %sw.bb13.i.i213.i.i ], [ %arrayidx12.i.i210.i.i, %sw.bb9.i.i211.i.i ], [ %arrayidx8.i.i208.i.i, %sw.bb5.i.i209.i.i ], [ %arrayidx4.i.i206.i.i, %sw.bb1.i.i207.i.i ], [ %intf.i.i204.i.i, %sw.bb.i.i205.i.i ]
  %201 = ptrtoint ptr %retval.0.in.i.i215.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %retval.0.i.i216.i.i = load i32, ptr %retval.0.in.i.i215.i.i, align 4
  %add.i217.i.i = add i32 %retval.0.i.i216.i.i, 44
  %202 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp.i219.i.i = icmp slt i32 %203, 1
  br i1 %cmp.i219.i.i, label %do.end.i220.i.i, label %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i.mdp5_write.exit223.i.i_crit_edge, !prof !23

REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i.mdp5_write.exit223.i.i_crit_edge: ; preds = %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit223.i.i

do.end.i220.i.i:                                  ; preds = %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit223.i.i

mdp5_write.exit223.i.i:                           ; preds = %do.end.i220.i.i, %REG_MDP5_INTF_ACTIVE_VSTART_F0.exit.i.i.mdp5_write.exit223.i.i_crit_edge
  %204 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i222.i.i = getelementptr i8, ptr %205, i32 %add.i217.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i222.i.i) #4
  %206 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %15, label %do.body.i.i234.i.i [
    i32 0, label %sw.bb.i.i225.i.i
    i32 1, label %sw.bb1.i.i227.i.i
    i32 2, label %sw.bb5.i.i229.i.i
    i32 3, label %sw.bb9.i.i231.i.i
    i32 4, label %sw.bb13.i.i233.i.i
  ]

sw.bb.i.i225.i.i:                                 ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %207 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i224.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %207, i32 0, i32 14
  br label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i

sw.bb1.i.i227.i.i:                                ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %208 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i226.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %208, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i

sw.bb5.i.i229.i.i:                                ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %209 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i228.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %209, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i

sw.bb9.i.i231.i.i:                                ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %210 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i230.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %210, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i

sw.bb13.i.i233.i.i:                               ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %211 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i232.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %211, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i

do.body.i.i234.i.i:                               ; preds = %mdp5_write.exit223.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i:            ; preds = %sw.bb13.i.i233.i.i, %sw.bb9.i.i231.i.i, %sw.bb5.i.i229.i.i, %sw.bb1.i.i227.i.i, %sw.bb.i.i225.i.i
  %retval.0.in.i.i235.i.i = phi ptr [ %arrayidx16.i.i232.i.i, %sw.bb13.i.i233.i.i ], [ %arrayidx12.i.i230.i.i, %sw.bb9.i.i231.i.i ], [ %arrayidx8.i.i228.i.i, %sw.bb5.i.i229.i.i ], [ %arrayidx4.i.i226.i.i, %sw.bb1.i.i227.i.i ], [ %intf.i.i224.i.i, %sw.bb.i.i225.i.i ]
  %212 = ptrtoint ptr %retval.0.in.i.i235.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %retval.0.i.i236.i.i = load i32, ptr %retval.0.in.i.i235.i.i, align 4
  %add.i237.i.i = add i32 %retval.0.i.i236.i.i, 52
  %213 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %214)
  %cmp.i239.i.i = icmp slt i32 %214, 1
  br i1 %cmp.i239.i.i, label %do.end.i240.i.i, label %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i.mdp5_write.exit243.i.i_crit_edge, !prof !23

REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i.mdp5_write.exit243.i.i_crit_edge: ; preds = %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit243.i.i

do.end.i240.i.i:                                  ; preds = %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit243.i.i

mdp5_write.exit243.i.i:                           ; preds = %do.end.i240.i.i, %REG_MDP5_INTF_ACTIVE_VEND_F0.exit.i.i.mdp5_write.exit243.i.i_crit_edge
  %215 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i242.i.i = getelementptr i8, ptr %216, i32 %add.i237.i.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i242.i.i) #4
  %217 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %15, label %do.body.i.i254.i.i [
    i32 0, label %sw.bb.i.i245.i.i
    i32 1, label %sw.bb1.i.i247.i.i
    i32 2, label %sw.bb5.i.i249.i.i
    i32 3, label %sw.bb9.i.i251.i.i
    i32 4, label %sw.bb13.i.i253.i.i
  ]

sw.bb.i.i245.i.i:                                 ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %218 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i244.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %218, i32 0, i32 14
  br label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i

sw.bb1.i.i247.i.i:                                ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %219 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i246.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %219, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i

sw.bb5.i.i249.i.i:                                ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %220 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i248.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %220, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i

sw.bb9.i.i251.i.i:                                ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %221 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i250.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %221, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i

sw.bb13.i.i253.i.i:                               ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %222 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i252.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %222, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i

do.body.i.i254.i.i:                               ; preds = %mdp5_write.exit243.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_PANEL_FORMAT.exit.i.i:              ; preds = %sw.bb13.i.i253.i.i, %sw.bb9.i.i251.i.i, %sw.bb5.i.i249.i.i, %sw.bb1.i.i247.i.i, %sw.bb.i.i245.i.i
  %retval.0.in.i.i255.i.i = phi ptr [ %arrayidx16.i.i252.i.i, %sw.bb13.i.i253.i.i ], [ %arrayidx12.i.i250.i.i, %sw.bb9.i.i251.i.i ], [ %arrayidx8.i.i248.i.i, %sw.bb5.i.i249.i.i ], [ %arrayidx4.i.i246.i.i, %sw.bb1.i.i247.i.i ], [ %intf.i.i244.i.i, %sw.bb.i.i245.i.i ]
  %223 = ptrtoint ptr %retval.0.in.i.i255.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %retval.0.i.i256.i.i = load i32, ptr %retval.0.in.i.i255.i.i, align 4
  %add.i257.i.i = add i32 %retval.0.i.i256.i.i, 144
  %224 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp.i259.i.i = icmp slt i32 %225, 1
  br i1 %cmp.i259.i.i, label %do.end.i260.i.i, label %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i.mdp5_write.exit263.i.i_crit_edge, !prof !23

REG_MDP5_INTF_PANEL_FORMAT.exit.i.i.mdp5_write.exit263.i.i_crit_edge: ; preds = %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit263.i.i

do.end.i260.i.i:                                  ; preds = %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit263.i.i

mdp5_write.exit263.i.i:                           ; preds = %do.end.i260.i.i, %REG_MDP5_INTF_PANEL_FORMAT.exit.i.i.mdp5_write.exit263.i.i_crit_edge
  %226 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i262.i.i = getelementptr i8, ptr %227, i32 %add.i257.i.i
  tail call void @msm_writel(i32 noundef %format.0.i.i, ptr noundef %add.ptr.i262.i.i) #4
  %228 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %228, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %15, label %do.body.i.i274.i.i [
    i32 0, label %sw.bb.i.i265.i.i
    i32 1, label %sw.bb1.i.i267.i.i
    i32 2, label %sw.bb5.i.i269.i.i
    i32 3, label %sw.bb9.i.i271.i.i
    i32 4, label %sw.bb13.i.i273.i.i
  ]

sw.bb.i.i265.i.i:                                 ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %229 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i264.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %229, i32 0, i32 14
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i

sw.bb1.i.i267.i.i:                                ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %230 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i266.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %230, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i

sw.bb5.i.i269.i.i:                                ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %231 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i268.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %231, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i

sw.bb9.i.i271.i.i:                                ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %232 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i270.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %232, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i

sw.bb13.i.i273.i.i:                               ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %233 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i272.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %233, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i

do.body.i.i274.i.i:                               ; preds = %mdp5_write.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i:       ; preds = %sw.bb13.i.i273.i.i, %sw.bb9.i.i271.i.i, %sw.bb5.i.i269.i.i, %sw.bb1.i.i267.i.i, %sw.bb.i.i265.i.i
  %retval.0.in.i.i275.i.i = phi ptr [ %arrayidx16.i.i272.i.i, %sw.bb13.i.i273.i.i ], [ %arrayidx12.i.i270.i.i, %sw.bb9.i.i271.i.i ], [ %arrayidx8.i.i268.i.i, %sw.bb5.i.i269.i.i ], [ %arrayidx4.i.i266.i.i, %sw.bb1.i.i267.i.i ], [ %intf.i.i264.i.i, %sw.bb.i.i265.i.i ]
  %234 = ptrtoint ptr %retval.0.in.i.i275.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %retval.0.i.i276.i.i = load i32, ptr %retval.0.in.i.i275.i.i, align 4
  %235 = ptrtoint ptr %enable_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %enable_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %236)
  %cmp.i279.i.i = icmp slt i32 %236, 1
  br i1 %cmp.i279.i.i, label %do.end.i280.i.i, label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i.mdp5_vid_encoder_mode_set.exit.i_crit_edge, !prof !23

REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i.mdp5_vid_encoder_mode_set.exit.i_crit_edge: ; preds = %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_vid_encoder_mode_set.exit.i

do.end.i280.i.i:                                  ; preds = %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_vid_encoder_mode_set.exit.i

mdp5_vid_encoder_mode_set.exit.i:                 ; preds = %do.end.i280.i.i, %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.i.i.mdp5_vid_encoder_mode_set.exit.i_crit_edge
  %add.i277.i.i = add i32 %retval.0.i.i276.i.i, 168
  %237 = ptrtoint ptr %mmio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio.i.i.i, align 4
  %add.ptr.i282.i.i = getelementptr i8, ptr %238, i32 %add.i277.i.i
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i282.i.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intf_lock.i.i, i32 noundef %call116.i.i) #4
  %239 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %crtc, align 4
  tail call void @mdp5_crtc_set_pipeline(ptr noundef %240) #4
  br label %mdp5_encoder_mode_set.exit

mdp5_encoder_mode_set.exit:                       ; preds = %mdp5_vid_encoder_mode_set.exit.i, %if.then.i
  %241 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %242)
  %cmp = icmp eq i32 %242, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %mdp5_encoder_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mdp5_cmd_encoder_enable(ptr noundef %encoder) #4
  br label %if.end

if.else:                                          ; preds = %mdp5_encoder_mode_set.exit
  %243 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %encoder, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %244, i32 0, i32 5
  %245 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_private.i.i, align 4
  %kms.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %kms.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %kms.i.i, align 4
  %ctl1.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %249 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ctl1.i, align 4
  %251 = ptrtoint ptr %intf1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %intf1, align 4
  %253 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %crtc, align 4
  %call3.i = tail call ptr @mdp5_crtc_get_pipeline(ptr noundef %254) #4
  %enabled.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 2
  %255 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %enabled.i, align 4, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool.not.i = icmp eq i8 %256, 0
  br i1 %tobool.not.i, label %do.body28.i, label %do.end.i, !prof !24

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #4
  br label %if.end

do.body28.i:                                      ; preds = %if.else
  %num.i = getelementptr inbounds %struct.mdp5_interface, ptr %252, i32 0, i32 1
  %257 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %num.i, align 4
  %intf_lock.i = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 1
  %call31.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %intf_lock.i) #4
  %259 = zext i32 %258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %258, label %do.body.i.i.i [
    i32 0, label %sw.bb.i.i.i
    i32 1, label %sw.bb1.i.i.i
    i32 2, label %sw.bb5.i.i.i
    i32 3, label %sw.bb9.i.i.i
    i32 4, label %sw.bb13.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %260 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %260, i32 0, i32 14
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb1.i.i.i:                                     ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %261 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %261, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb5.i.i.i:                                     ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %262 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %262, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb9.i.i.i:                                     ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %263 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %263, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

sw.bb13.i.i.i:                                    ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %264 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %264, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i

do.body.i.i.i:                                    ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #4, !srcloc !22
  unreachable

REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i:            ; preds = %sw.bb13.i.i.i, %sw.bb9.i.i.i, %sw.bb5.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %retval.0.in.i.i.i = phi ptr [ %arrayidx16.i.i.i, %sw.bb13.i.i.i ], [ %arrayidx12.i.i.i, %sw.bb9.i.i.i ], [ %arrayidx8.i.i.i, %sw.bb5.i.i.i ], [ %arrayidx4.i.i.i, %sw.bb1.i.i.i ], [ %intf.i.i.i, %sw.bb.i.i.i ]
  %265 = ptrtoint ptr %retval.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %retval.0.i.i.i = load i32, ptr %retval.0.in.i.i.i, align 4
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %248, i32 0, i32 26
  %266 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %267)
  %cmp.i.i = icmp slt i32 %267, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge, !prof !23

REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge: ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mdp5_write.exit.i

do.end.i.i:                                       ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 169, i32 noundef 9, ptr noundef null) #4
  br label %mdp5_write.exit.i

mdp5_write.exit.i:                                ; preds = %do.end.i.i, %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.i.mdp5_write.exit.i_crit_edge
  %mmio.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %248, i32 0, i32 15
  %268 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %269, i32 %retval.0.i.i.i
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %intf_lock.i, i32 noundef %call31.i) #4
  %call38.i = tail call i32 @mdp_ctl_flush_mask_encoder(ptr noundef %252) #4
  %call39.i = tail call i32 @mdp5_ctl_commit(ptr noundef %250, ptr noundef %call3.i, i32 noundef %call38.i, i1 noundef zeroext true) #4
  %call40.i = tail call i32 @mdp5_ctl_set_encoder_state(ptr noundef %250, ptr noundef %call3.i, i1 noundef zeroext true) #4
  %270 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 1, ptr %enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %mdp5_write.exit.i, %do.end.i, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mdp5_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr nocapture noundef %crtc_state, ptr nocapture noundef readnone %conn_state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %intf4 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf4, align 4
  %ctl5 = getelementptr inbounds %struct.mdp5_encoder, ptr %encoder, i32 0, i32 5
  %2 = ptrtoint ptr %ctl5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctl5, align 4
  %ctl6 = getelementptr inbounds %struct.mdp5_crtc_state, ptr %crtc_state, i32 0, i32 1
  %4 = ptrtoint ptr %ctl6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %ctl6, align 4
  %pipeline = getelementptr inbounds %struct.mdp5_crtc_state, ptr %crtc_state, i32 0, i32 2
  %5 = ptrtoint ptr %pipeline to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %pipeline, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %6 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %7 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %defer_start = getelementptr inbounds %struct.mdp5_crtc_state, ptr %crtc_state, i32 0, i32 7
  %8 = ptrtoint ptr %defer_start to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %defer_start, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_get_mixer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_set_encoder_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_ctl_commit(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp_ctl_flush_mask_encoder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp_irq_wait(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cmd_encoder_mode_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_set_pipeline(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c", i32 326, i32 3}
!2 = !{ptr @mdp5_encoder_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c", i32 357, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 175, i32 2}
!7 = !{ptr @mdp5_encoder_funcs, !8, !"mdp5_encoder_funcs", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c", i32 26, i32 39}
!9 = !{ptr @mdp5_encoder_helper_funcs, !10, !"mdp5_encoder_helper_funcs", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c", i32 253, i32 46}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_encoder.c", i32 47, i32 2}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2157250993, i64 2157251499, i64 2157251030, i64 2157251086, i64 2157251120, i64 2157251144, i64 2157251185, i64 2157251206, i64 2157251234, i64 2157251268}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i8 0, i8 2}
