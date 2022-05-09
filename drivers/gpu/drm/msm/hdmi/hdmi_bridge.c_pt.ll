; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_bridge.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.hdmi_bridge = type { %struct.drm_bridge, ptr, %struct.work_struct }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.hdmi = type { ptr, ptr, ptr, ptr, %struct.hdmi_audio, i8, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, %struct.spinlock }
%struct.hdmi_audio = type { i8, %struct.hdmi_audio_infoframe, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.100, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.100 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_platform_config = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, [6 x %struct.hdmi_gpio_data] }
%struct.hdmi_gpio_data = type { ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@msm_hdmi_bridge_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&hdmi_bridge->hpd_work)\00", [54 x i8] zeroinitializer }, align 32
@msm_hdmi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr @msm_hdmi_bridge_mode_valid, ptr null, ptr @msm_hdmi_bridge_disable, ptr @msm_hdmi_bridge_post_disable, ptr @msm_hdmi_bridge_mode_set, ptr @msm_hdmi_bridge_pre_enable, ptr @msm_hdmi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_hdmi_bridge_detect, ptr null, ptr @msm_hdmi_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"requested=%ld, actual=%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power down\0A\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to disable pwr regulator: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"htotal=%d, vtotal=%d, hstart=%d, hend=%d, vstart=%d, vend=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"frame_ctrl=%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power up\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* failed to enable pwr regulator: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pixclock: %lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to set pixel clk: %s (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to enable pwr clk: %s (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to configure avi infoframe\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 339, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"msm_hdmi_bridge_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 303, i32 38 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 295, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 178, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 70, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 211, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 246, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 141, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 32, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 35, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 38, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 46, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [42 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 91, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @msm_hdmi_bridge_init.__key, ptr @.str, ptr @msm_hdmi_bridge_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_bridge_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_hdmi_bridge_destroy(ptr noundef %bridge) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msm_hdmi_hpd_disable(ptr noundef %bridge) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hpd_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msm_hdmi_bridge_init(ptr noundef %hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 328, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdmi2 = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %hdmi2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %hdmi, ptr %hdmi2, align 4
  %hpd_work = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %hpd_work, i32 noundef 0) #4
  %5 = ptrtoint ptr %hpd_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %hpd_work, align 4
  %lockdep_map = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @msm_hdmi_bridge_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry6 = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.hdmi_bridge, ptr %call.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @msm_hdmi_hotplug_work, ptr %func, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @msm_hdmi_bridge_funcs, ptr %funcs, align 4
  %i2c = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 16
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %ddc = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %ddc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ddc, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 11, ptr %type, align 4
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %ops, align 4
  %encoder = getelementptr inbounds %struct.hdmi, ptr %hdmi, i32 0, i32 19
  %15 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encoder, align 4
  %call8 = tail call i32 @drm_bridge_attach(ptr noundef %16, ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msm_hdmi_hpd_disable(ptr noundef nonnull %call.i) #4
  %phi.cast = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end.cleanup_crit_edge ], [ %phi.cast, %if.then13 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_hotplug_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  %call = tail call i32 @drm_bridge_detect(ptr noundef %add.ptr) #4
  tail call void @drm_bridge_hpd_notify(ptr noundef %add.ptr, i32 noundef %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_hpd_notify(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_detect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_hdmi_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %config2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %config2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config2, align 4
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %kms3 = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kms3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kms3, align 4
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul = mul i32 %11, 1000
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 8
  %round_pixclk = getelementptr inbounds %struct.msm_kms_funcs, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %round_pixclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %round_pixclk, align 4
  %encoder = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %encoder, align 4
  %call = tail call i32 %15(ptr noundef %9, i32 noundef %mul, ptr noundef %17) #4
  %pwr_clk_cnt = getelementptr inbounds %struct.hdmi_platform_config, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %pwr_clk_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwr_clk_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pwr_clks = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 13
  %20 = ptrtoint ptr %pwr_clks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pwr_clks, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call5 = tail call i32 @clk_round_rate(ptr noundef %23, i32 noundef %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %actual.0 = phi i32 [ %call5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %mul, i32 noundef %actual.0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %actual.0, i32 %mul)
  %cmp6.not = icmp eq i32 %actual.0, %mul
  %. = select i1 %cmp6.not, i32 0, i32 17
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_hdmi_bridge_disable(ptr nocapture noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_post_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %phy2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %hdcp_ctrl = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdcp_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msm_hdmi_hdcp_off(ptr noundef nonnull %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #4
  tail call void @msm_hdmi_set_mode(ptr noundef %1, i1 noundef zeroext false) #4
  tail call void @msm_hdmi_phy_powerdown(ptr noundef %3) #4
  %power_on = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power_on, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %dev1.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdmi1, align 4
  %config3.i = getelementptr inbounds %struct.hdmi, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %config3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
  %pwr_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %13, i32 0, i32 10
  %34 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pwr_clk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp17.i = icmp sgt i32 %35, 0
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %if.then5.for.end.i_crit_edge

if.then5.for.end.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then5
  %pwr_clks.i = getelementptr inbounds %struct.hdmi, ptr %11, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %pwr_clks.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwr_clks.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %i.018.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %39) #4
  tail call void @clk_unprepare(ptr noundef %39) #4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %40 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pwr_clk_cnt.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %41
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then5.for.end.i_crit_edge
  %pwr_reg_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %13, i32 0, i32 5
  %42 = ptrtoint ptr %pwr_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pwr_reg_cnt.i, align 4
  %pwr_regs.i = getelementptr inbounds %struct.hdmi, ptr %11, i32 0, i32 11
  %44 = ptrtoint ptr %pwr_regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pwr_regs.i, align 4
  %call.i = tail call i32 @regulator_bulk_disable(i32 noundef %43, ptr noundef %45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %for.end.i.power_off.exit_crit_edge, label %if.then.i

for.end.i.power_off.exit_crit_edge:               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %power_off.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev5.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %46 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i) #4
  br label %power_off.exit

power_off.exit:                                   ; preds = %if.then.i, %for.end.i.power_off.exit_crit_edge
  %pdev.i = getelementptr inbounds %struct.hdmi, ptr %11, i32 0, i32 1
  %48 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i, align 4
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %49, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev6.i, i32 noundef 5) #4
  %50 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %power_on, align 4
  %hdmi_mode = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %hdmi_mode to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %hdmi_mode, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool7.not = icmp eq i8 %52, 0
  br i1 %tobool7.not, label %power_off.exit.if.end9_crit_edge, label %if.then8

power_off.exit.if.end9_crit_edge:                 ; preds = %power_off.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %power_off.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @msm_hdmi_audio_update(ptr noundef %1) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %power_off.exit.if.end9_crit_edge
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef %3) #4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_mode_set(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %3, 1000
  %pixclock = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %pixclock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %pixclock, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 4
  %5 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %htotal, align 2
  %conv = zext i16 %6 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 2
  %7 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %8 to i32
  %sub = sub nsw i32 %conv, %conv2
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %conv8 = zext i16 %10 to i32
  %add = add nsw i32 %sub, %conv8
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 9
  %11 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vtotal, align 4
  %conv9 = zext i16 %12 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 7
  %13 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vsync_start, align 4
  %conv10 = zext i16 %14 to i32
  %sub11 = sub nsw i32 %conv9, %conv10
  %sub12 = add nsw i32 %sub11, -1
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay, align 2
  %conv18 = zext i16 %16 to i32
  %add19 = add nsw i32 %sub11, %conv18
  %sub20 = add nsw i32 %add19, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv9, i32 noundef %sub, i32 noundef %add, i32 noundef %sub12, i32 noundef %sub20) #4
  %17 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %htotal, align 2
  %19 = add i16 %18, 8191
  %20 = and i16 %19, 8191
  %and.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vtotal, align 4
  %conv29 = zext i16 %22 to i32
  %sub30 = shl nuw i32 %conv29, 16
  %shl.i = add i32 %sub30, 536805376
  %and.i111 = and i32 %shl.i, 536805376
  %or = or i32 %and.i111, %and.i
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 704
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr.i) #4
  %and.i112 = and i32 %sub, 8191
  %shl.i113 = shl i32 %add, 16
  %and.i114 = and i32 %shl.i113, 268369920
  %or34 = or i32 %and.i114, %and.i112
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %26, i32 692
  tail call void @msm_writel(i32 noundef %or34, ptr noundef %add.ptr.i116) #4
  %and.i117 = and i32 %sub12, 8191
  %shl.i118 = shl i32 %sub20, 16
  %and.i119 = and i32 %shl.i118, 536805376
  %or37 = or i32 %and.i119, %and.i117
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %28, i32 696
  tail call void @msm_writel(i32 noundef %or37, ptr noundef %add.ptr.i121) #4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vtotal, align 4
  %33 = and i16 %32, 8191
  %and.i122 = zext i16 %33 to i32
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %35, i32 708
  tail call void @msm_writel(i32 noundef %and.i122, ptr noundef %add.ptr.i124) #4
  %and.i125 = and i32 %sub11, 8191
  %shl.i126 = shl i32 %add19, 16
  %and.i127 = and i32 %shl.i126, 536805376
  %or45 = or i32 %and.i127, %and.i125
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %37, i32 708
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i131) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %or45, %if.then ]
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %39, i32 700
  tail call void @msm_writel(i32 noundef %.sink, ptr noundef %add.ptr.i133) #4
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and51 = shl i32 %41, 28
  %42 = and i32 %and51, 536870912
  %and57 = shl i32 %41, 25
  %43 = and i32 %and57, 268435456
  %44 = or i32 %43, %42
  %and63 = shl i32 %41, 27
  %45 = and i32 %and63, -2147483648
  %46 = or i32 %44, %45
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %46) #4
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %48, i32 712
  tail call void @msm_writel(i32 noundef %46, ptr noundef %add.ptr.i135) #4
  %hdmi_mode = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 20
  %49 = ptrtoint ptr %hdmi_mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hdmi_mode, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool68.not = icmp eq i8 %50, 0
  br i1 %tobool68.not, label %if.end.if.end71_crit_edge, label %if.then69

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end71

if.then69:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call70 = tail call i32 @msm_hdmi_audio_update(ptr noundef %1) #4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end.if.end71_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_hdmi_bridge_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %frame.i = alloca %union.hdmi_infoframe, align 4
  %buffer.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %phy2 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %power_on = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %power_on to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_on, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @msm_hdmi_phy_resource_enable(ptr noundef %3) #4
  %dev1.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %8 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdmi1, align 4
  %config3.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %config3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config3.i, align 4
  %pdev.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev4.i, i32 noundef 4) #4
  %pwr_reg_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %pwr_reg_cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pwr_reg_cnt.i, align 4
  %pwr_regs.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %pwr_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwr_regs.i, align 4
  %call5.i = tail call i32 @regulator_bulk_enable(i32 noundef %15, ptr noundef %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev6.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev6.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, i32 noundef %call5.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %pwr_clk_cnt.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %11, i32 0, i32 10
  %20 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwr_clk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp sgt i32 %21, 0
  br i1 %cmp.i, label %if.then7.i, label %if.end.i.msm_hdmi_power_on.exit_crit_edge

if.end.i.msm_hdmi_power_on.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_hdmi_power_on.exit

if.then7.i:                                       ; preds = %if.end.i
  %pixclock.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 6
  %22 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pixclock.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %23) #4
  %pwr_clks.i = getelementptr inbounds %struct.hdmi, ptr %9, i32 0, i32 13
  %24 = ptrtoint ptr %pwr_clks.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pwr_clks.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pixclock.i, align 4
  %call9.i = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.if.end15.i_crit_edge, label %if.then11.i

if.then7.i.if.end15.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev12.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %30 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev12.i, align 4
  %pwr_clk_names.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %11, i32 0, i32 9
  %32 = ptrtoint ptr %pwr_clk_names.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pwr_clk_names.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, ptr noundef %35, i32 noundef %call9.i) #4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then7.i.if.end15.i_crit_edge
  %36 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load i32, ptr %pwr_clk_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp1752.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp1752.i, label %for.body.lr.ph.i, label %if.end15.i.msm_hdmi_power_on.exit_crit_edge

if.end15.i.msm_hdmi_power_on.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_hdmi_power_on.exit

for.body.lr.ph.i:                                 ; preds = %if.end15.i
  %dev23.i = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %pwr_clk_names24.i = getelementptr inbounds %struct.hdmi_platform_config, ptr %11, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %37 = ptrtoint ptr %pwr_clks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pwr_clks.i, align 4
  %arrayidx19.i = getelementptr ptr, ptr %38, i32 %i.053.i
  %39 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx19.i, align 4
  %call.i48.i = tail call i32 @clk_prepare(ptr noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %tobool.not.i.i = icmp eq i32 %call.i48.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.if.then22.i_crit_edge

for.body.i.if.then22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then22.i

if.end.i.i:                                       ; preds = %for.body.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %if.then3.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %40) #4
  br label %if.then22.i

if.then22.i:                                      ; preds = %if.then3.i.i, %for.body.i.if.then22.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i48.i, %for.body.i.if.then22.i_crit_edge ]
  %41 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev23.i, align 4
  %43 = ptrtoint ptr %pwr_clk_names24.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pwr_clk_names24.i, align 4
  %arrayidx25.i = getelementptr ptr, ptr %44, i32 %i.053.i
  %45 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx25.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %46, i32 noundef %retval.0.i.ph.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then22.i, %if.end.i.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %47 = ptrtoint ptr %pwr_clk_cnt.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pwr_clk_cnt.i, align 4
  %cmp17.i = icmp slt i32 %inc.i, %48
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.msm_hdmi_power_on.exit_crit_edge

for.inc.i.msm_hdmi_power_on.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %msm_hdmi_power_on.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

msm_hdmi_power_on.exit:                           ; preds = %for.inc.i.msm_hdmi_power_on.exit_crit_edge, %if.end15.i.msm_hdmi_power_on.exit_crit_edge, %if.end.i.msm_hdmi_power_on.exit_crit_edge
  %49 = ptrtoint ptr %power_on to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %power_on, align 4
  %hdmi_mode = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 20
  %50 = ptrtoint ptr %hdmi_mode to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %hdmi_mode, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool4.not = icmp eq i8 %51, 0
  br i1 %tobool4.not, label %msm_hdmi_power_on.exit.if.end7_crit_edge, label %if.then5

msm_hdmi_power_on.exit.if.end7_crit_edge:         ; preds = %msm_hdmi_power_on.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %msm_hdmi_power_on.exit
  %encoder.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 19
  %52 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %encoder.i, align 4
  %crtc1.i = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %crtc1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crtc1.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %55, i32 0, i32 22
  %56 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %57, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame.i) #4
  %58 = call ptr @memset(ptr %frame.i, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %buffer.i) #4
  %connector.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 17
  %59 = call ptr @memset(ptr %buffer.i, i32 255, i32 17)
  %60 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %connector.i, align 4
  %call.i = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %frame.i, ptr noundef %61, ptr noundef %adjusted_mode.i) #4
  %call2.i = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %frame.i, ptr noundef nonnull %buffer.i, i32 noundef 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i23 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i23, label %if.then.i25, label %if.end.i27

if.then.i25:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %pdev.i24 = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %pdev.i24 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev.i24, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %63, i32 0, i32 3
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #4
  br label %msm_hdmi_config_avi_infoframe.exit

if.end.i27:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %64 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 16
  %65 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 15
  %66 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 14
  %67 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 13
  %68 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 12
  %69 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 11
  %70 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 10
  %71 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 9
  %72 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 8
  %73 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 7
  %74 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 6
  %75 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 5
  %76 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 4
  %77 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 3
  %78 = getelementptr inbounds [17 x i8], ptr %buffer.i, i32 0, i32 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %77, align 1
  %conv.i = zext i8 %80 to i32
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %76, align 1
  %conv5.i = zext i8 %82 to i32
  %shl.i = shl nuw nsw i32 %conv5.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %83 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %75, align 1
  %conv7.i = zext i8 %84 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 16
  %or9.i = or i32 %or.i, %shl8.i
  %85 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %74, align 1
  %conv11.i = zext i8 %86 to i32
  %shl12.i = shl nuw i32 %conv11.i, 24
  %or13.i = or i32 %or9.i, %shl12.i
  %mmio.i.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %87 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 108
  call void @msm_writel(i32 noundef %or13.i, ptr noundef %add.ptr.i.i) #4
  %89 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %73, align 1
  %conv16.i = zext i8 %90 to i32
  %91 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %72, align 1
  %conv18.i = zext i8 %92 to i32
  %shl19.i = shl nuw nsw i32 %conv18.i, 8
  %or20.i = or i32 %shl19.i, %conv16.i
  %93 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %71, align 1
  %conv22.i = zext i8 %94 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 16
  %or24.i = or i32 %or20.i, %shl23.i
  %95 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %70, align 1
  %conv26.i = zext i8 %96 to i32
  %shl27.i = shl nuw i32 %conv26.i, 24
  %or28.i = or i32 %or24.i, %shl27.i
  %97 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %98, i32 112
  call void @msm_writel(i32 noundef %or28.i, ptr noundef %add.ptr.i75.i) #4
  %99 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %69, align 1
  %conv31.i = zext i8 %100 to i32
  %101 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %68, align 1
  %conv33.i = zext i8 %102 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 8
  %or35.i = or i32 %shl34.i, %conv31.i
  %103 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %67, align 1
  %conv37.i = zext i8 %104 to i32
  %shl38.i = shl nuw nsw i32 %conv37.i, 16
  %or39.i = or i32 %or35.i, %shl38.i
  %105 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %66, align 1
  %conv41.i = zext i8 %106 to i32
  %shl42.i = shl nuw i32 %conv41.i, 24
  %or43.i = or i32 %or39.i, %shl42.i
  %107 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %108, i32 116
  call void @msm_writel(i32 noundef %or43.i, ptr noundef %add.ptr.i77.i) #4
  %109 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %65, align 1
  %conv46.i = zext i8 %110 to i32
  %111 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %64, align 1
  %conv48.i = zext i8 %112 to i32
  %shl49.i = shl nuw nsw i32 %conv48.i, 8
  %or50.i = or i32 %shl49.i, %conv46.i
  %113 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %78, align 1
  %conv52.i = zext i8 %114 to i32
  %shl53.i = shl nuw i32 %conv52.i, 24
  %or54.i = or i32 %or50.i, %shl53.i
  %115 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %116, i32 120
  call void @msm_writel(i32 noundef %or54.i, ptr noundef %add.ptr.i79.i) #4
  %117 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %118, i32 44
  call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i81.i) #4
  %119 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %120, i32 48
  %call.i.i26 = call i32 @msm_readl(ptr noundef %add.ptr.i83.i) #4
  %and.i = and i32 %call.i.i26, -64
  %or57.i = or i32 %and.i, 1
  %121 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %122, i32 48
  call void @msm_writel(i32 noundef %or57.i, ptr noundef %add.ptr.i85.i) #4
  br label %msm_hdmi_config_avi_infoframe.exit

msm_hdmi_config_avi_infoframe.exit:               ; preds = %if.end.i27, %if.then.i25
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %buffer.i) #4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame.i) #4
  %call6 = call i32 @msm_hdmi_audio_update(ptr noundef %1) #4
  br label %if.end7

if.end7:                                          ; preds = %msm_hdmi_config_avi_infoframe.exit, %msm_hdmi_power_on.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %pixclock = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 6
  %123 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %pixclock, align 4
  call void @msm_hdmi_phy_powerup(ptr noundef %3, i32 noundef %124) #4
  call void @msm_hdmi_set_mode(ptr noundef %1, i1 noundef zeroext true) #4
  %hdcp_ctrl = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 23
  %125 = ptrtoint ptr %hdcp_ctrl to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hdcp_ctrl, align 4
  %tobool8.not = icmp eq ptr %126, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  call void @msm_hdmi_hdcp_on(ptr noundef nonnull %126) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @msm_hdmi_bridge_enable(ptr nocapture noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_bridge_detect(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_hdmi_bridge_get_edid(ptr nocapture noundef readonly %bridge, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi1 = getelementptr inbounds %struct.hdmi_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi1, align 4
  %mmio.i = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %call.i = tail call i32 @msm_readl(ptr noundef %3) #4
  %or = or i32 %call.i, 1
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef %or, ptr noundef %5) #4
  %i2c = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call2 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %7) #4
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef %call.i, ptr noundef %9) #4
  %call3 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %call2) #4
  %hdmi_mode = getelementptr inbounds %struct.hdmi, ptr %1, i32 0, i32 20
  %frombool = zext i1 %call3 to i8
  %10 = ptrtoint ptr %hdmi_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %hdmi_mode, align 4
  ret ptr %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_set_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_powerdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_audio_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_resource_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_phy_resource_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_phy_powerup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_hdmi_hdcp_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @msm_hdmi_bridge_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 339, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @msm_hdmi_bridge_funcs, !4, !"msm_hdmi_bridge_funcs", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 303, i32 38}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 295, i32 2}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 178, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 70, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 211, i32 2}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 246, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 141, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 32, i32 3}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 35, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 38, i32 4}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 46, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_bridge.c", i32 91, i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i8 0, i8 2}
